Return-Path: <devicetree+bounces-157962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D86BCA63804
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 00:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E108F16BDBF
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 23:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DD81A0BD0;
	Sun, 16 Mar 2025 23:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BfZ68ByC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF4D19F11B
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 23:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742167483; cv=none; b=ZU8kK1QXWtTz1jp+AV47EDUxddBH4kg6KOoIcJjbHZr3LcA+4fUrizpa5mqEgvIJbaJXDE9W4wVft178Tu1nv2CwpLk3KpLAh5+JcpjX6dpBlPcFJcYF2VtfFhS0EXu3YEmK20hMWxQmMTS6BWtxT8gVxmCWHsblrovPjzixdUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742167483; c=relaxed/simple;
	bh=csBmAWx4188LdtqFCso38hP0iT5E9pWN1eYO45SYy2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cRdc5ZZtblfvnP2uL3v0kkLTsXi4u+4K6ouaHfyK5OoTuIAHZA5wO8VbioyKiWCTovjLA8q13Qrra9WKr3dgxmrlqjOzhIedYmMyahTbdetC2FEg7veaWmkId5RcuE/vcgj8To1EJ2zt04mFDzhTCNBCJJUO8xYnBQk4A4kJU6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BfZ68ByC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52GIniXN010426
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 23:24:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IVYXHxBH6seE+vmi8RgMEu0w
	KLEvS3tZo1XfgA8OXEw=; b=BfZ68ByCOmnnxz10F5osrpHSbDwiSji/extGaB9A
	8deqDFF1lB+h25FkuLwl50I/oP8MsdI+kJdtRKebamF1XjN15NJE9FgdRmlp74Un
	u8yX7JIjX2E11K+d5OdT2n/Oo5+NbDgepNaFowVyu5dlixsoNKSXZ4eWVrUtRvzg
	1qGROtNOOOn1F2RNVl77fxY9CNDAzoyXYgllUj5Y4DPgPx3LPRAS7tZNk9802yqZ
	veIUSdlKfKo3Tde96tBjVrYaWjfZpOEaeWnBN3zAYu+aKxQZJoO6cAsonU5Sf5qn
	Kyqxed5Z1BHW/XTfvcT9PA+DHbYGZpBjFv2/JOT8PZCrbg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1sxtu3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 23:24:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ead629f6c6so83494296d6.2
        for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 16:24:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742167479; x=1742772279;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IVYXHxBH6seE+vmi8RgMEu0wKLEvS3tZo1XfgA8OXEw=;
        b=nS779jAI1rUZK8FwtsJXFODGG/4J/YFYlpZZ4qkRoDTQ7rXHsc7GXjflFNzBQYVMtT
         TpCN3Jbl2dGqKiMzEQxcZB+7ES7Ff17NNw7KR0jaE7hsigj0XjJ/BF915GTGmcoyT9lz
         hBPeoIWs0G0UqmoqrnHr/tXU7lE222RohqyNE/IyUKuNy1mMWea0eTxBpKDPpWCUzRI/
         qj1pBMgZoSxH76A6yV9y6iQ7XDum9XgLU4F1dq6bXCiS12oaU/71lUDe4jYT43tcfahp
         STQu8ab+UXyjnSbIZLQb/VYnUwYITQIdWptsc+AWJq1/58co86HkO2a4AOiRfXP2PJEj
         6TkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBGkE2+HFHeRcYTRBat9kd/+yoTGXu2RfPwHaPi9JM05yQcnGdwPGis+KprzVh2Hw8K5tf6hYdU5I8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu0UmE2heFZo8kQWQJfQ4mQKiOV9XmOTGKUDe28QbbJM63rbIC
	S7B6nlI8P+XCcpUs1+gt1Tbw5ssX6/g2wdjRgpq2FHsVQW4w9FmERwYXxdndCpqryUDcg9E7m1w
	mJvcY1UFiCKTLL2Vy0ldLPoSp/5NNn+GlRpMgRaf94/CQA+CV6E2q/6DoCiCy
X-Gm-Gg: ASbGncuWGTaKYx47eMNc0IohI2pzZXj3xMPuyt0GtoEKEa/rClBA9/ldnAJVOpSfqgq
	Chf/01Kg26TuNPl2W+Bv7FgQYnq6WMw9vb0yvGGWX79/pTCJbF5OkAqMABnOmgUbl8e1UYIPgB5
	ONsOx8Tadxe0a6BJyqFKGFJuXNk35PVnKXFizq1dUbPo4y8V7jeG78fpp2YQPBTs9Y+sNTFarVg
	d10Iyon51fxsrGkSkKrHoYXUUEBEe5Y0bBSuF2QZzLVGvbpoZurL4AwiqHhUguJCauR5v0qv4zA
	31S77sAFUV1Zk5noI9cL4Hyld/hDsAAyzU5CzymZGl/LX9C9Ny+fomyPi1nk6os8nRyelH6OEV2
	m7c8=
X-Received: by 2002:a05:6214:20e2:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6eaeaaaa4f6mr174116986d6.32.1742167479486;
        Sun, 16 Mar 2025 16:24:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDshq/n3e4H7Bf9jNDINDm6F1zU4lmWXf3G5XlWq5YljQ4EqxJd4/CbFMcXmB7cUAootLCaQ==
X-Received: by 2002:a05:6214:20e2:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6eaeaaaa4f6mr174116746d6.32.1742167479107;
        Sun, 16 Mar 2025 16:24:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a8516sm1209750e87.31.2025.03.16.16.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 16:24:37 -0700 (PDT)
Date: Mon, 17 Mar 2025 01:24:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        Ivan Belokobylskiy <belokobylskij@gmail.com>
Subject: Re: [PATCH v5] ARM: dts: nexus4: Initial dts
Message-ID: <qcgdpylp4xxyb4zhazbur3mq6sayvftdl7b3ekpkrjdqmjuvdt@rrmu5nolqgan>
References: <20250316-lg-nexus4-mako-v5-1-79feae815a85@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250316-lg-nexus4-mako-v5-1-79feae815a85@ixit.cz>
X-Proofpoint-GUID: zhdNyBYicOfOuQVTY4L1-1W26R2j8Hmg
X-Proofpoint-ORIG-GUID: zhdNyBYicOfOuQVTY4L1-1W26R2j8Hmg
X-Authority-Analysis: v=2.4 cv=XKcwSRhE c=1 sm=1 tr=0 ts=67d75db8 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=ZTbHHU_yaQzv_LtAvXsA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-16_08,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 phishscore=0
 impostorscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503160173

On Sun, Mar 16, 2025 at 11:16:55PM +0100, David Heidelberg via B4 Relay wrote:
> From: Ivan Belokobylskiy <belokobylskij@gmail.com>
> 
> Add initial support for LG Nexus 4 (mako).
> 
> Features currently working: regulators, eMMC, and volume keys.
> 
> Signed-off-by: Ivan Belokobylskiy <belokobylskij@gmail.com>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> Changes in v5:
> - Sorted nodes alphabetically.
> - Link to v4: https://lore.kernel.org/r/20250311-lg-nexus4-mako-v4-1-3916c8ec7edb@ixit.cz
> 
> Changes in v4:
> - Sorted regulators and added regulators compatible.
> - Corrected pmic include and references.
> - Moved &rpm outside of / node.
> - Moved and simplify pm8921 keypad.
> - Added chasis-type.
> - Dropped incomplete WiFi node, will be provided in future
>   contributions.
> - Link to v3: https://lore.kernel.org/r/20250309-lg-nexus4-mako-v3-1-1dc2807df296@ixit.cz
> 
> Changes in v3:
> - rebased against next-20250307
> - dropped backlight until driver gets converted to DT
> 
> Changes in v2:
> - lge vendor doesn't exist anymore, rename to lg
> - sdcc@ to mmc@ to comply with dt-schema
> ---
>  arch/arm/boot/dts/qcom/Makefile                    |   1 +
>  .../boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts  | 341 +++++++++++++++++++++
>  2 files changed, 342 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

