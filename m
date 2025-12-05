Return-Path: <devicetree+bounces-244682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B83CA7C6B
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BF9F311BA12
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F7631A814;
	Fri,  5 Dec 2025 13:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cSda8SHG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aTU4ea56"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B1732AAAA
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764941596; cv=none; b=V5M+DW99lUWdD40RGxWUCuwukFynER+WiqaOo3EH59SBzH/eCuFqTw8vMblWbAPAJuJji6QJQS8taWMgXlYOe10QyrIQJ4T2J8qLeFV5LpkDi6nZ6qbTUq14vF9gC17bonma7ShPLbxfn2/TfnOGodndzybN4F+FO4bZx4+cCDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764941596; c=relaxed/simple;
	bh=QHj3xnwky3Uk8wvgmY0YtvTjrcA0L0RkTeArbF8MyRY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iMGGhJTLgeMMY/LhIZI7jTFSrzker/QALhDxAYbRehFQynL7Nmz/LucHSoy2cAQ7HJZ7g7FQ2QpwLX4vXEQLFCgjswJvc37KLzrLWv0CA7AFzS86NpBuU2UUkIwD8BLmbhGDW3VYCQOeiX+fSU5EV29A0g4phGP1DPo2PK5YJmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cSda8SHG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aTU4ea56; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B596oTZ2896655
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:33:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=; b=cSda8SHG0x0quEaG
	GAWtydV3y9Wbp+lRLauKv7Uy8mxi1yFesPQxDhZWN9ukaS+i30X4xo1nOb5qWnRz
	nddeVyN32tEWqBvBGDtfMULci74mKkMYDe2xjgGp9B2bFCw2qrvnaZzu//2Agluz
	uDlV4B55DvULh/eGItnhnr40UiODJdiGkb9ZN/QQj9774GyxsTlZLJiHB+JnDmgy
	J/opFDtW22q4AQcA0Ycu7Pz6joaGCR+bLmF/Bckmt7fU9DY5vI2ds8I6mumZoAi2
	AihT6GucHRk7pPojt9Q3RI3+S55HiiXl/8IkZuLaEaz4VqtkcQ1tgSSv0WRWspfV
	CE3rwA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj2475-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:33:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b222111167so42518385a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764941590; x=1765546390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=;
        b=aTU4ea56GMgyqE0d8V3eu/v3HhSsSfNEdbIAV2/2BcJaCxyp6kEaD/zGCmDjEVRO4z
         2/UB/HeVcQ7J5GC47OANfIpyRfztHy98bDS9ebObUtH6GWC0aX6eclY82qHh+wOnQ9PI
         b8mVa/tBESoqE7Q+gqdp+hJy64TUQHPOleWcQtWKk3jDP9C0qWD4pkN66h9bT1Tli2oi
         OU4YAxEiNVkOp+sd4RExOPBw1SgQPmsDeazubN0mLbm01bARTBayOWuJsm8mV0EUfatX
         xyOpKKu0Mbia7ixJRtGOVZrAWIbHQuUFdi2didh37DD06XD29MRqIH1R/5/xXJWn9bWa
         aE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764941590; x=1765546390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEilRw3Pm5b/R4XVm3+IxDimgP8gvCmGMXBVBgylipQ=;
        b=Z9e5lCqe55UO9KWZpeS8U+49qfiFEjsZqr/Z8d7pp9N1giwwcDxjc0iiCubEj7nhhs
         vHSyQmIVFb/CJfJP2jA78FjFK+cO/x02596q5uFqDwVJLogCfGad7piX42kSb0wCmjV3
         KsIMtC/yznun5w+qHY8inxteXYWBw6CGHfZO7q4U9zMC6X0v3GJcG3AuGaBzxVxwYkBb
         JftjNx8YtDZtS1dh1zmCYpAIZPcEA3KtmXxX1NaBucv/Gaq1kw226ffRa5OQH4ep8Mf/
         n7fgBqWi25oNTc+4bR4cYKj6qnD7rL0FvXt/NaeAzzK/xo6SPSEsI+N5X+sYKBybObHK
         Q22A==
X-Forwarded-Encrypted: i=1; AJvYcCUzgRsJQVxCRtQTvq8LWzyq/gSpMAzgkgMaTvaLEqTtgt+CwXOKC6GZmNF/3nvonCO1KJajuSpnBPI1@vger.kernel.org
X-Gm-Message-State: AOJu0YzWNytk17fBfPoqOhZ/YbP3rYquMepdhwnwY16RlqLSkgqTvy3F
	YSohtP7gHEhE7axhYtkdxf2qzrQrvnXdIWklVFo4LHAmuE/lHTQtUEVWHOxoDXTH1VjJM4KdpeV
	G9P5M1O+Z0OWhw5Z3URQl4jyyM7ZdeDqgG3aM0BVZLxzyXiqldFAy3spa6/tZn/kr
X-Gm-Gg: ASbGnctp66Ka0hHU3EQIgBExERqzeTtG/DGTotKSFoyCDtEvNlZd72X8v4XgW0r/xLJ
	X4YKswBxOjLh+VT2k8yVQCM+Bk87vyj/tr7B+OYxF2i4v61b1Crk+Y2nviPLWiBUjvXbK2u7b++
	9VEm3pPfxGzHQMaxdw1w7tJNnsCZpi6stuHNjhhL+Xh02aNIwJCF7Qt+r5jAZD30sIlfisIWF87
	V3ZnOc4gm5Uu3gQ8lMvDf/NkhGVUE2yz1pun+4nka/CufuCYJqiDVAMMGME8aI+RQMc7f6mVFGJ
	OmHrS6NmvlvkucGTKWxoIQSdzaFEgD/3rN6h6nxGNkdhB5Y8yELemsY90nU3Fnz3xDjs50wN+WF
	RL9NmuGH7Yny0VDweHnIqGwHauZ79Mxn6vTl628sES0aDtmY7O5k5K75u1jNzbdg2aw==
X-Received: by 2002:a05:620a:1a9c:b0:89a:7d24:f5eb with SMTP id af79cd13be357-8b5e6e8350cmr974019385a.9.1764941589744;
        Fri, 05 Dec 2025 05:33:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTjTKXrFKkSK/V0KfZ7fy94EAD0Cg10uR1dF7MXrkT0U1GkoASZlYw6J8tBsUcuJVDIGH08g==
X-Received: by 2002:a05:620a:1a9c:b0:89a:7d24:f5eb with SMTP id af79cd13be357-8b5e6e8350cmr974014885a.9.1764941589261;
        Fri, 05 Dec 2025 05:33:09 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f44d3d9esm357996666b.30.2025.12.05.05.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:33:08 -0800 (PST)
Message-ID: <2190ecf7-5dc3-4264-b2b9-e8a20d099b40@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 14:33:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932df18 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7xTNHD16rym9O0bEjTgA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: uZEO1nQI6xJ368aJX_XDftRrP4d6P30A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NyBTYWx0ZWRfX/M1ba4W5xShY
 o1csMx8PT4TDTyDS8wjUdbOaK4hYtSCOPfjrcpV4S6/JsD632dYhbccrfafLoMY6xOeyRWpl+y+
 VGtI17tCqC9JhFMPsDIq2528bzwhG8QfADO3qgQGsJJFj0PxWAxS1a/rOg3t8WrkFGcY0Cd0+NH
 DqtDh7FQnBTIerlX3ZqG7laYMb6dpnrLJL2mETELmNiitEHSjS5ZMD4KhCGDyxyllQu3DrkiiW7
 DPtzmLKdf0A0QmqQhBWkfLJv5OhqmWhfVQVH9qdf+5jeNj7gZ9YJ7YmfeOkTSVC26p9LBHvNgp0
 7twj98HYwhHatQEt2rDxROH7qzsgbZYkjHiSJUGtIkrCvvFrxhBzaPKMv/xzW55c7qBgcP7Idbr
 G9QO3tzPSdyHih5DBsXJ4wT0qoOPTQ==
X-Proofpoint-GUID: uZEO1nQI6xJ368aJX_XDftRrP4d6P30A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050097

On 12/4/25 5:46 AM, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index c8cb521b4c26..b9a4d1c99816 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -1041,6 +1041,10 @@ wifi@0 {
>  &pmih0108_eusb2_repeater {
>  	status = "okay";
>  
> +	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
> +	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
> +	qcom,squelch-detector-bp = <(-2000)>;

This happens to be the only(?) node in this file that has status first
instead of last. May I ask you to fix that up, since it's even visible
in the diff?

Also, does the QRD also need a similar update?

Konrad

> +
>  	vdd18-supply = <&vreg_l15b_1p8>;
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };

