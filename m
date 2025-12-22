Return-Path: <devicetree+bounces-248731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DEECD54EB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFDFD300C0C3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE9D30F80A;
	Mon, 22 Dec 2025 09:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WUcYiTkj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bimtCLx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A18D30E821
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395381; cv=none; b=JqacZZ+k59L6yrH91ppxTuiQmLJyFg3aiAc+VsDi/b/4B/VI64DCg0mIZSm6U30R7ki6R+NMV3R2PY7R5dW+TbFa3wGStC8apjMUYV8T+vt1FQ15sD4Mbk5NAb6BR4nIboi6HF9qoiXqQKdgAALJjgF5ge1h9OcW53YxbrOVOXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395381; c=relaxed/simple;
	bh=7yJuxATnyLkfkoLPxrmVGI6MM5nwXmTgqXnq7zpO/1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cOUGXlxya3WJC2OAbgLe6bmCiBmOdZJ91DmdCJW2iIyERn7fWFsiwh5wa7IpNtPetqKjYQKg6y6H5ttuEleHnGYxhW3WoFnGgNsm9tnMeVg5mvYlkFDqr8/HFPbWRRQlxm8P1MFALAm8/v14Tw9GHcfEiPWVRJYMg1szlfmObY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WUcYiTkj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bimtCLx/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8G7E33788963
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:22:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aREKUxVq6sS5MOhED3wHnKMJ
	OF+zY6ruztOajYpelyM=; b=WUcYiTkjxpAR1gRLAl9Gc1ApII4k3ZxrsyaXBxog
	PtVJ15w7taspKfe+RDjPujjlAeDxLaBR9RLKpKFdoduzoLB47bmniUL9DLT2PnYy
	WJyBQgy/8FZ3kWVqdfuY38DJQFWI6MZ/lsLIzPDT510XT7p1W5DhhIy2QAQHfJY3
	tx1S+xPYZ+6kXB3zizSkHTIZYShcr1qkQSMauoTNP8oWOfV9/sChzWyJ5I8MYg8T
	pxNCUvibI6HIRNzGXUzMmW9prDPMVDaT5vJPHDJ7/wD1tW/oO5rHEYXnmfnITGVQ
	5MXQQe07b5SObQ/dfTx1KwN9AolH3lm2ECGhXWL9aNMyfw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry4e2g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:22:58 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8824d5b11easo73462676d6.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395378; x=1767000178; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aREKUxVq6sS5MOhED3wHnKMJOF+zY6ruztOajYpelyM=;
        b=bimtCLx/IHbjgBdtltrkfGvvLgHadGJy6dArHq2ITsl6RPm8vCafXje5ORNcAcDLrL
         L/04o6jMquphDyBoTmIgjvZIWPfvw2UWsCZkSbTBF9iPtf2a/GFTBx7RFVTY1CynSO+K
         mySl9Q6rjDn8C7XQRKjudX1uoJam/nsCVZWzk5yzlxlIZoSC1MYzDEMlR+UPkechA++q
         6L3xZt1ag7zIqg82ppQDBNrNSd0SpTIE6O8uHuGBSSEe+pBFas8iii0IVOZSbpEI7wOV
         YcCGKMJjiLdyj5MSOAeylwCA/gQdJuHH3T0aWLqxHyY5q3QDWTb6SNr2FVPrZ/FJduLv
         Oe+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395378; x=1767000178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aREKUxVq6sS5MOhED3wHnKMJOF+zY6ruztOajYpelyM=;
        b=iCXtgXb9djuW7/SmlKw1j6Z1cOHwVh4hz9X+cjLewLvjp0fKZg4c0iQSfD4AZsMTu+
         EJus25s4ezQ7HG/Or4p5jLyE70WrT7GgNbMxBA3y5mgmiPBsm3cCzeg0mGyEUs7YdOqE
         fdnjBYYTWq9GZrzY8ZukvX/lv4DSzbimdq7gMoZ426UKBALJmHgfxhE9BTONnzFirc0a
         3XZ2uutkv+px674t33q8a/9mT02QTkYcbQh6JZ2tI0FnyYbI77rEkxHNltaugYBBuu6F
         srcp7jFnk0DHn5qz3uYOCGKgltINZmbLXaCaUghshLCTkaVfZ9emdSAywkVkKDPDyii2
         RM4A==
X-Forwarded-Encrypted: i=1; AJvYcCXmKdcpIA0gbIGlfWezkuC/qL3DW7D+S8OlCc1t5NZWzMhibjW1EUsgQ7oy1mHvde6DJtV5qSonnHkR@vger.kernel.org
X-Gm-Message-State: AOJu0YyfBOR9QOqCOt6IjxS8kneVk995vCi40cbmfs01ciyN8hjKEMj2
	w+cyStq63hQLI9Dda80FydXabr1c+ryaKXMWPo9xYpfSyED8U7510k1cuzL46FWxwcJG6ybskBI
	tJ0Sgsjq4yr0LmurHl17dijcgdIol7Janlv2f6V8Wn/iYsn+i5OS4Uw7aDYN0xK94
X-Gm-Gg: AY/fxX4HOt/pwrbNw6qY4SympcsqFn7A6XoWuP8Q4IMVxpr9Ca7G8uTLKNZ0X/4zSKo
	RaMdnD8dmIF+rT/6ZqE8oQ2MkeI6NCzMrGvjNVPw2mNjK6Ii5dGXlgEs+AbYAXpUPyy9chvdDYg
	XcCXkoxxJoYUemLe4yRr6T+gSrQ+OGA9aqXHNlYSfyoXWJBsuMBtOYDRJuc++11li3pmt+bNAB+
	cw6xaUGAlsDPee6e1l1Vv087g4Ys/MLbjh6mmtF0t1f5+rxfd/KyDdA5gqL0YCc29Bm303n1aq6
	1bCKyEhomXs/tjXggQ5W98RaPXu1Vafq2hmPZXxJkXw8Q3pOqWB4v2oxcjraXs+CaX7qVFBu9Ub
	krWJ9A3qDGj1RCBwCT0yOis0E8YwX4dHeGHSnoZm57pSYqoaayaIxXe6AD/QOEwo5DOW+UqwWvw
	bBjBWjfTKaNMQcHPxRPefhov8=
X-Received: by 2002:a05:6214:3da0:b0:88f:a4a1:bc96 with SMTP id 6a1803df08f44-88fa4b1000amr79460186d6.1.1766395377783;
        Mon, 22 Dec 2025 01:22:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLDuXOV41EBm8nviqCiSFnHZG+qYsOLuSxbAgaqw4VJmP/J18EWVd0wHz5C0Y2gmgf3WN9Lg==
X-Received: by 2002:a05:6214:3da0:b0:88f:a4a1:bc96 with SMTP id 6a1803df08f44-88fa4b1000amr79459966d6.1.1766395377317;
        Mon, 22 Dec 2025 01:22:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812264c8e9sm24494321fa.33.2025.12.22.01.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:22:56 -0800 (PST)
Date: Mon, 22 Dec 2025 11:22:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <woqdn6gvlkgux6nuixpcwmcqkl7siqajgwrvd4x5cuuw3nlrpp@vmq63mgudnoa>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-4-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222060335.3485729-4-yijie.yang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=69490df2 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tQhhYgK4JYXdd8RpFbQA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4NCBTYWx0ZWRfX5To3k0rQaHQC
 iKLQhGJWnlPmfk9AjrvlhCo4SVrO0D0ow1x8429UHWk5qvtjOLTTBMokMR1nIQSIi3cJ3gwmu5u
 if3sugbHEp/Fq5Cchb7OOii5egdnrRLbRXCXKQ70F4IzRAYfkc4o2pK5o17MpEvcrsiiovmEEmx
 MEROdqeDdnRTkmjaEoJLKOwIRGZs4U/w1sx75BRub5ctRQkAKXdYxo9hSOVyjlET9NRwcM4tNUK
 oITQQdX3pjTycH25Bw5r62ZPVUbk5C9HvCzYszlZ4FBOEi6DOoA5GUFiCmrrXWhXXxpq9u37xJe
 DLd8Jp7Rv6PtsT9KF6P4/MuM/Y/rN99VTaZAxzioR8Lh+Ft++K+v4NxIBSggSh5qRKSr69MEhNl
 UNWw5gBLPbF7WI0IQ0W2HQKPECpNi65+aWdxeSy/1PuOKRL9wwZL2Wqg6+dAEYpcED+PLnZvFdj
 GJOcSAGU4w31GuMITXQ==
X-Proofpoint-GUID: Ei1jCml5hQHYhPg0I-jNs1Ldy-pUgY6B
X-Proofpoint-ORIG-GUID: Ei1jCml5hQHYhPg0I-jNs1Ldy-pUgY6B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220084

On Mon, Dec 22, 2025 at 02:03:29PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
> topology differs from that of HAMOA-IOT-EVK.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - Regulators on the SOM
> - PMIC GLINK
> - USB0 through USB6 and their PHYs
> - Embedded USB (EUSB) repeaters
> - USB Type-C mux
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - Reserved memory regions
> - Pinctrl
> - NVMe
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)
> - USB DisplayPorts
> - Graphic
> - Audio
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/purwa-iot-evk.dts  | 100 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi |  11 +++
>  3 files changed, 112 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> 

> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/x1e80100/gen71500_zap.mbn";

This wasn't tested.

> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

