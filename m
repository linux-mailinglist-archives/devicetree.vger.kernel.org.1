Return-Path: <devicetree+bounces-127713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C8F9E601E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 711DF1663A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6601BC07A;
	Thu,  5 Dec 2024 21:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iHr2z5Hd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638CE18FDCE
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 21:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733434248; cv=none; b=ZlVOCRn67m2FMM45CtHHiyNiXKBXVVqZy4SyjwznMv8TGmVynmNHwjtzdnvbou6lCXUw7PFnTgctKIgOUkyCJGqXkIsWHOMxtkVb8aKNkg3LuUPoI2aBGZSop3aImbUKeIWPApygHZVi8Eb42I+Y2zYGsz7oipu37UDQO2QBFFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733434248; c=relaxed/simple;
	bh=Dk1ZS+GRTSpcu51g1k28hBgaIdDpbhkym/Q7g2lSf9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WmB9rcLWOyrWjXWsvyWyZPsv55Iew3w5MjDExMldkDAfjdO3Zuya0fK0bEviYIYo9boCU+kpz3n48jQsRFK5prusbDRDEmpNiPNdKcQLkXr0N5+ic4187ABbjdorKQJOHESNWqCErpg2gMictZmbtegkempgwB8OGMHpMbvcKps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iHr2z5Hd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaNvP015836
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 21:30:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nd0u8LVE49Zsjorynlz+VwADLKhOL7qlzALMovLJgII=; b=iHr2z5HdE2me8fgm
	TL6ycqT1czvB6Pg9shfhkMjiCLVf9dJqf4r56C0k5t8c/OMoIDaz8brl7wxiqg9o
	x9FLVphPQThNWibpvizaYEBNQ86yfWXIp/TxfwIg9s5ZGWOpAQqv6aAuonwYos8W
	eP6HmLb2+G+EhaNgPXTFpcSlN1cXUyF+PD1GtM2I2hxzruPIsrSUa7oxV7z+UHhi
	U7Jm4npZGOErxL+j7tBWZTIKha68iJonJ5Sgg1eGHlkh4IBeaKBQFPgLFzVTTogm
	ROkwBugG1AUTAr8gXpGPOi6i/S2VCNbzYKKYGLjgOvb7frbeGCHEe56X1Tb0nfDo
	61ykcA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbnmhg2a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 21:30:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d3b1d1d8c1so3198256d6.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 13:30:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733434245; x=1734039045;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nd0u8LVE49Zsjorynlz+VwADLKhOL7qlzALMovLJgII=;
        b=f/bMri/MbhAP5HIzGH0KhfLsqiGkn3uZ/2csqYi1+aCW7sSMWwwwx+J4MLrNDCpEfS
         UmbxZywHwqWWR6oh9YX16s1ZIx2sABa1K2NfKsv1L3WSvC7Le91lJFuAjVG8n/fY5QyO
         TFZ/UXGqVRd9RgYX+Hp6O7X3srEgSzAktwRsFSx4DNU7StlcHGWuJyG2LjkS7WOXqN1p
         xF8BuIoHysHQM1TCRQw+qLEvsYzzTQ367f6ep90dz/iSUXiwwVcDOU7HKlQAVubGP6DM
         Uprs49+wHCk0B98R4djh1n+nj8p/ZAWGx0UoWpCoM4DmMCUrRXHwgVxGum95qfGn2uq3
         2kSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYiG6XE+7sXkP1mqZOlPckPj9G4zWMjcM7Uqrfk2pTMjrAGcdRHhmAaAuyE+eMvJNSNNo1VXbeMyTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzvtD3YKWYiEPvHgBWq+9Y58g+3NUfsc/1kZLr0GbZw48Pmrymq
	dxwD1Z8+Sp/Ixui0LYxZbtecZ/Hlft1fWpmx6DtCP8D6wWz+QSmssFzLTwLOONjGvzCL2WTt7zp
	xO+2dMdB1rnVvrWT7wPxJUzLprS5pJvIMvqjwagFtY+vO836RXsTwZXgbb3Vm
X-Gm-Gg: ASbGncsBLAbb9l8azlxYzO8WFhqf6K++7nZrv2zgHTwg57lwNC4TZCe2vL1KW1mvlIz
	wZfxEbTAp2jYVkjvt0bSqpSwQzA9z6ibEpk3NAF8DKUHSwETTqlzdQb1Zyv8SkmH3Od0is35chJ
	Mo9Q97u5M//dVaAZsKvxF/FWVSsq2fzFRgQQ/iTF+jkD77c5YntboGhmOcQNztPgILU8M53e02h
	wAZy7FxwsC57YCIITrd1XBpaZGixykxwUEp10gUsLjboqAJD35aA5tGmHXGSy/fwsS15QCm63iP
	sDWv1QlckTBHuvGFKnLAVDYVSHzJF8w=
X-Received: by 2002:a05:620a:462b:b0:7a9:c0f2:75fc with SMTP id af79cd13be357-7b6bcb4e3fdmr48657085a.12.1733434245237;
        Thu, 05 Dec 2024 13:30:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxeKWkaQPCpadeF0rPd3t9rOnnOYAGLyEXBvPD4ZBjOIHDTBFU6PJHKs5xFnhBgeH5nnsgHQ==
X-Received: by 2002:a05:620a:462b:b0:7a9:c0f2:75fc with SMTP id af79cd13be357-7b6bcb4e3fdmr48655585a.12.1733434244915;
        Thu, 05 Dec 2024 13:30:44 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dc8asm143185966b.35.2024.12.05.13.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:30:44 -0800 (PST)
Message-ID: <af0f6e79-cc98-4f95-91df-b940b5471149@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:30:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add the first 2.5G
 ethernet
To: Yijie Yang <quic_yijiyang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241123-dts_qcs8300-v4-0-b10b8ac634a9@quicinc.com>
 <20241123-dts_qcs8300-v4-1-b10b8ac634a9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241123-dts_qcs8300-v4-1-b10b8ac634a9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gv5jWbH6IfZ2mTsH3sEKO29rpqaceUOK
X-Proofpoint-GUID: gv5jWbH6IfZ2mTsH3sEKO29rpqaceUOK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050159

On 23.11.2024 9:51 AM, Yijie Yang wrote:
> Add the node for the first ethernet interface on qcs8300 platform.
> Add the internal SGMII/SerDes PHY node as well.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 43 +++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f289d5e2e57e0e30ef5e17cd1286188..718c2756400be884bd28a63c1eac5e8efe1c932d 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -772,6 +772,15 @@ lpass_ag_noc: interconnect@3c40000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		serdes0: phy@8909000 {
> +			compatible = "qcom,qcs8300-dwmac-sgmii-phy", "qcom,sa8775p-dwmac-sgmii-phy";
> +			reg = <0x0 0x8909000 0x0 0xe10>;

Nit: we pad address parts to 8 hex digits with leading zeroes, maybe
Bjorn could fix this up while applying

otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

