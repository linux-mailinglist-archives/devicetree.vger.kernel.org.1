Return-Path: <devicetree+bounces-238334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D0FC59EE1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2E6664E70C1
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69FC31326E;
	Thu, 13 Nov 2025 20:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z0l1U0QR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S2jgeUOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39C30E82A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763064880; cv=none; b=BTMQaE4S0hezS104K+uikprLOcFu/KwBJ0lBJE1U4wAQFNWfaPkU3WVen5MMdmlXzYoCUxf4NH17YNX+A/7GtuSRqqa7N2mJT575J3R5Rrhdw1rx84mRi7mQD3hqmJl+nzpAM7BapK7GdiFTTcp1P9PNI77K77RjMx/dTwYK760=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763064880; c=relaxed/simple;
	bh=AI/sQdV27pRuG1UG93jWy8O0cfI7jlAIBk7rWDkB574=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TVWIKNAxfUYd2eml1GnnwVcaEkuSKI4fxr5EUQPhZ/5g9nBVshfY6KcoLjPg9dDCHBIz3hFSKX9Qsjlx+GOpXIIACHkdkzz8bY8PE0bQt1RB8Pb04yfiVKm3eyq1Nx3xGIQ1RcaTbWnYpz8r4Bwxf2va6DyAzKq6Tu6XVBrs4S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z0l1U0QR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S2jgeUOu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADJN67N1062164
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PN5o3JxT68gD62VcfZEL3Ebk
	8On0PDZMV5SQeeSv2nc=; b=Z0l1U0QRe+5Z3laKQk1X/sUI81ErD6j4oCHnvbat
	E3mmXqEajKCbno1nfP7Eek/UB98l/bE+64k1CtCWqgXRNeVpmbvWqzZ9Pr1zj2AV
	2CHps/Q+AJmhZLjNSvj6IIM83Uq2Qm8Hfnc2clhwTRyBeSCMitcukgdCiyxGPaMR
	YQjeTePPiHkgQj0y5+iSm0+qr63Sym6mOjeIJJ414YjlSTiF9NetQYUSF/FJlnhS
	b5ONlBoCNYi/Sn7hwbsiwaQQ2Ms1blJs3/nJ88qV2MM7tP8MDIKcJh2gjTpXG/2t
	cudmqU59lKmNFi2JTzeEZ4+qAib7ekQVUT7r7n75lB7OLQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adnen0484-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:14:38 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88233d526baso45029856d6.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763064877; x=1763669677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PN5o3JxT68gD62VcfZEL3Ebk8On0PDZMV5SQeeSv2nc=;
        b=S2jgeUOuVxAol1EHKO6OSYgST0siriSlRxuI8bb+QeTWMGAaUySq3bZ1CTum30QcNn
         lUjSg5b9Liyoa4roizOhtDpby9juJ1+0wpLcivPyykwUecKxi7BsMlNxhQTOwC5Fq6/Y
         kMZfG87XnlzBFg3L5u+5aL6DS1wiyC+k6P4P0BwWfQgY7eazrouJnSrEm9bKIJ+EPvjf
         hafP7B97dZ2h17CFlNMs3QutfBEvoXZJ+M7GE2pKsph8yST8mvkbFjOW+9SWVNIA8JLO
         IEfZMuDF2QFTYQUY0ZbnklFtErR+4D0fpOKcAw+6vt+VZrFCbYhjBw9BPZno3Y+2tV9T
         ubhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763064877; x=1763669677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PN5o3JxT68gD62VcfZEL3Ebk8On0PDZMV5SQeeSv2nc=;
        b=kW5n+ANpligDiAYQOALBlD+KnX5OU7Qk96/L07Zx+KMRF+GQs8AIfEaeNSj95mzi8r
         NY2OaVdL4aOM013UUz0gj+FfpmJv7kHTj9NAzT4iiGBnvfacV3KbydXcngHS2U3auRI9
         Lx63sZfat4GWgGwhkHRTtrjojmKD1trQ+vMOyylxrRbINX96CDP+LKjYXpkbi8bJ1+Z4
         /4koKOBNV/6rAEt0JhAqN1Tb72UZOV9miS9Wjn1yPe1j2YTYoC5h+zopkTFKCQhKEZnW
         VObZBazO/kAzSFqCzFcZaQnTuMvfm3RUR1uuZtuk56RVr2HAhT65mKawU4Le5n1VVQn0
         RpYw==
X-Forwarded-Encrypted: i=1; AJvYcCXjevfZZmooXHOHS0SXSRaHIEYoene2/cLh1YatAYZZzTGT5NCy6fgIdjX1I9+i7dPRX/t3u7lOfvJD@vger.kernel.org
X-Gm-Message-State: AOJu0YzKyribWsAHkHvB8upd3/qtus1oSxOMxJ0c73jVCkuQRqzEbUE2
	y1VWFYJ4PMbYcVJ7TZB6wksvpkZtDXXx1C/Jxv7kERTcjItJvR+Qv5igtwusYfrzpIc8YCpcfrg
	CiqkJXayH9bdzN/c5wLmYDLRBr/3wCBRl5ciH9TIw2EPizxPYZX9j+AAvnHf2sGyq
X-Gm-Gg: ASbGncvELOsxr1RmWjM0Z2dw2xp91LRk5xQWLCvgoKb5ZPRiEo3WJKaPfM7uR81atv1
	hE/rfO7Ic9C7nQz0i29LSRzXGKgmpKlFu/R7YwElk905rnWAhfV2vZkHp5VbgqTsZakxf04p6h4
	CSskKMT7xIpVACbhPCK9ExWNfzD68dDX0qFBa3/q5/1CuUSERcBx97U+ZWCU9pm4OjezXkFhiiS
	mW48pttj04xMTZjvkqZUAHA7xtdA7x4rh7cAdmkIPqkFax+KEffRM6sHFm6JCqOawOOQCoXLjyU
	L9eFYApc2294HJ3g9o7Mx1PKN9MOIicaBBqZN1CuBPmLJYW5WAk77tYfVqLbPYZJJAnR+JJxThU
	OpAtpIlPx7NxSInVXdPCGIOUSA+3ru2YhKsBi7wqyR6JTXNEJJ5HkNTL8wMZx+WgYbS0VhLenhG
	U0VNi4o8ArUWej
X-Received: by 2002:a05:6214:628:b0:880:4dd6:20c4 with SMTP id 6a1803df08f44-882925b634emr6722076d6.25.1763064877383;
        Thu, 13 Nov 2025 12:14:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7gf2nNHl2mDJHcdRunnsr1cDxkVTsv5LoLojLfO7ZxN24jktHyKPFTPyMsxGUSBzT78TNdw==
X-Received: by 2002:a05:6214:628:b0:880:4dd6:20c4 with SMTP id 6a1803df08f44-882925b634emr6721736d6.25.1763064876942;
        Thu, 13 Nov 2025 12:14:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce2798asm6298391fa.23.2025.11.13.12.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 12:14:36 -0800 (PST)
Date: Thu, 13 Nov 2025 22:14:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Deng <wei.deng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        quic_jiaymao@quicinc.com, quic_chezhou@quicinc.com,
        quic_shuaz@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
Message-ID: <nh6rlcyamnm2spm54oitckujnxp7wna26vomxvlrik3mlhh3no@22skfvcsrfhj>
References: <20251113130942.2661069-1-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113130942.2661069-1-wei.deng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Zpfg6t7G c=1 sm=1 tr=0 ts=69163c2e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5bVZ9rrVUiTTcsr0HSkA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE1OCBTYWx0ZWRfX7143ykTBSNlN
 shGQ/nES/vDXshJmU8xdMfBRdk2p5RlwVH44uqgq/v7qU9r4arXlLNe0mlQeRf5BFQSwr9Hb8VO
 0JEJuUEWRc1xJX9peB6Z/wBt/+d3j3+Kkwl0vQQuw41lLhXuO1lVSEZ4CtZW59VbcA5+u5tC1PB
 sySBylNZdoPFW0nNATe8OWwI2a+PRfyYNVBYG6YjAmNCKTbDV/trqJdS4dTrpjFFUtx6KY78ItI
 lC6SZRaIhbnyfjPiCeVqKgBdXoI24h7h4t2bcE3Wt8nl0Pb/xwdl6PnJ9zeil0VHiOD6CauUkKh
 X7YrvLxSGV2zWhdBjIxKug2q6qx3CVCF+RsPL5f/46oCILyrGpEA00/NmtWNMgvyW2K3cPGCJV9
 5Z4FRLh25ARmVDBqSwqcXEa8rhbJOA==
X-Proofpoint-ORIG-GUID: NvUaf9xeOP2fSLRwMOVH5YrvOsl3SWtz
X-Proofpoint-GUID: NvUaf9xeOP2fSLRwMOVH5YrvOsl3SWtz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130158

On Thu, Nov 13, 2025 at 06:39:42PM +0530, Wei Deng wrote:
> Enable BT on qcs8300-ride by adding a device tree node for BT.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---
> This patch depends on:
> - WLAN
> https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 28 +++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> @@ -571,6 +580,25 @@ wlan_en_state: wlan-en-state {
>  	};
>  };
>  
> +&uart2 {
> +	status = "okay";
> +
> +	bluetooth: bluetooth {
> +		compatible = "qcom,wcn6855-bt";
> +		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";

The reason for these firmware-names should be added to the commit
message.

> +		max-speed = <3200000>;
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +	};
> +};
> +
>  &uart7 {
>  	status = "okay";
>  };
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

