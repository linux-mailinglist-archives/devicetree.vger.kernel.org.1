Return-Path: <devicetree+bounces-127714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CE89E602E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:36:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD43B1686CF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F031C3C1F;
	Thu,  5 Dec 2024 21:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ncs6g4QI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9651B87C8
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 21:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733434584; cv=none; b=fFsQsFiEnRZiQENaXSzi9jKmVyF1lYmuOP3B2HU2hN3v2T5HIznUAp3KxbYRxU2llwid+8Z9HJzh5+j9aDfw04pDZuJ0NOrsG6hDDgjjAGeqPyRToMexCCcucNpI1GSNBn0X8PFDLgeN/GkXQeqP1wvQR/elkqbLb6RS1afTZdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733434584; c=relaxed/simple;
	bh=qxHeTYzJNmJuLcSV3rPAJwiQm3gS8Z6fFNGrm799O0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qjXUis8Gjy0SFqZqFj1Im38Osr/FQzXJ+wuD6slUrbi9p8NKaxiRu9pXuDw4LMCjYcF9Ry9EjWVMe00lw/u5f+Y3o24DGQyb0ccCJzX4Zp5ctTPO3sITvI/BZLJ/3lU7v1x0VqWWTLTHuEgR8DcpITDaSyaVA5LgMEilTBSTseo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ncs6g4QI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaM7h015724
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 21:36:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wstxbk1OnzD64Npc360Pi802BNMyNjIUJQlSGDml8y0=; b=Ncs6g4QIGGVSfyBt
	HkxkhJQ8wCjloM7vs0fjN6hyfNBvrYXEEvZBqywUV/l75XiXsoP1sVuqejTHrs/A
	9q/VEBJ5YwJEjzsI2yB9xZ8Flaul0q3N3RmzFRepreX9esokca3TFJCagiV7AAF8
	mgiPlU9NLl1TwkT+73kEAddm5EfMqsmlN+17ZsTkj7x8VK3aw20nfHvF35dKZsHn
	xB5JG7I9uqxHhom3g0yUl0PO4FyAQrd9H/OA2KsiSBZnB17dNw1QrvldS/J2ZrfL
	Nqc36w/S6o5U7V30eqw+7WBvjElHoRcn4CnRs+aUdLHhucCjDbOUNeVf2irMpzZI
	P8N/Pw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbnmhgc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 21:36:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b67127ab77so12629885a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 13:36:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733434573; x=1734039373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wstxbk1OnzD64Npc360Pi802BNMyNjIUJQlSGDml8y0=;
        b=t8NsL6kHJ5UQgpzzMRw32DMbrddt3LT8S52G2jKANE/uZjz3T/tbSQG3Y7YKfJn+FI
         a6WL4PBi699nRCTpigrLAwvWYHjgAKEVpmqm0MO+BMQBdVh344+5t1FLWRhlrwPrpoBq
         OPZTKn5nbNGT1GVJ42ARvRlqVZZVE2SFJhSLGEybZwfDcBv6Zb8HufE0u/dNGjQWES12
         6v3+J4QF/f9FwwwhPJTARKQgtlWlMqlGdE/eYkgR/xZS84IuuIN8h54wp4C2l496N38W
         FVjJgzFgKAdQozsoWw6mPbmnTRQF2XgZDjyq8rPFptyZlLEjLujNoniUp4l9scIhLg3i
         zfbA==
X-Forwarded-Encrypted: i=1; AJvYcCVduQrLL8XpO/1jR6acRa84RXW526ctNc/SUQ85tNVl7t9KMEWwLDDusy1pKbqdgPPM2AW9rjlJoeJw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8I8KVxva4IhMj5qXOHHuY+qTxf66nzqGF+RlojrCkY3fwokzB
	rBVj3XztoC3mF+jT1BUhtNKphgyKp2thViEUjMiVEjoDTuuCiGAkepzAnqxb1qVIx61G6JEVaQH
	6AZx+tMBb4eZbcOycZ8znsbxu2h4WSOqD0h/eKfxzEv4GOAWzXd8LTnKeMlev
X-Gm-Gg: ASbGncs7tHk9W2iD+UDUVh/gV1YnbBMMJaw92Izmw6beWXd4PH8dx56+ojWdJtR1Ir+
	E3N5/gO/CNi87lrBhWFeSgUNg2O/The33wxPMGNu4EkMlmhs6RJbRKFNrO3XD0QcHoretaWYs77
	kN9vyhqYTbRz5rJqTVrZaRHls872F85rb6xa2t1nFREQ4Ruxxh6c+HcVuuoxpPgtZE6dGf0k9Y7
	f9qoshriQDoJYMbXw8ZtMf/wRn/b5/TK2U2VJA1wveWvT+m9bxHbgPgrFroaDM8T19K2Nqe95tS
	8abXU2tnq+CwvSk2/oqyx7+8LejmscU=
X-Received: by 2002:a05:620a:450c:b0:7b6:5e36:224c with SMTP id af79cd13be357-7b6bcac4fbfmr41655585a.3.1733434573588;
        Thu, 05 Dec 2024 13:36:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFV9ITN/o05Lqn7Hr8u38lLoE4ffPCZNKa+aOC+yUI+vFQdyY90szfu5RYo/Ll3Req0anAMFg==
X-Received: by 2002:a05:620a:450c:b0:7b6:5e36:224c with SMTP id af79cd13be357-7b6bcac4fbfmr41654685a.3.1733434573247;
        Thu, 05 Dec 2024 13:36:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ebaabsm142014466b.198.2024.12.05.13.36.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:36:12 -0800 (PST)
Message-ID: <45643708-c138-4c77-85ce-fa7d49f2aa72@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:36:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs8300: add DisplayPort device
 nodes
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ritesh Kumar <quic_riteshk@quicinc.com>
References: <20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com>
 <20241127-dp_dts_qcs8300-v1-1-e3d13dec4233@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241127-dp_dts_qcs8300-v1-1-e3d13dec4233@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fREYuQHS3fiIgvBnvr1D1DSSbRov26HI
X-Proofpoint-GUID: fREYuQHS3fiIgvBnvr1D1DSSbRov26HI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=970 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050161

On 27.11.2024 11:45 AM, Yongxing Mou wrote:
> Add device tree nodes for the DPTX0 controller with their
> corresponding PHYs found on Qualcomm QCS8300 SoC.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 115 +++++++++++++++++++++++++++++++++-
>  1 file changed, 114 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 1642e2863affd5af0b4f68118a47b7a74b76df95..28deba0a389641b4dddbf4505d6f44c6607aa03b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -987,6 +987,19 @@ mdss_mdp: display-controller@ae01000 {
>  				interrupt-parent = <&mdss>;
>  				interrupts = <0>;
>  
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						dpu_intf0_out: endpoint {
> +							remote-endpoint = <&mdss_dp0_in>;
> +						};
> +					};
> +				};
> +
>  				mdp_opp_table: opp-table {
>  					compatible = "operating-points-v2";
>  
> @@ -1011,6 +1024,104 @@ opp-650000000 {
>  					};
>  				};
>  			};
> +
> +			mdss_dp0_phy: phy@aec2a00 {
> +				compatible = "qcom,qcs8300-edp-phy";
> +
> +				reg = <0x0 0x0aec2a00 0x0 0x200>,

0x19c

> +				      <0x0 0x0aec2200 0x0 0xd0>,

0xec
> +				      <0x0 0x0aec2600 0x0 0xd0>,

0xec

For lengths

> +				      <0x0 0x0aec2000 0x0 0x1c8>;

This one's correct

> +
> +				clocks = <&dispcc MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +					 <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>;
> +				clock-names = "aux",
> +					      "cfg_ahb";

power-domains = <&rpmhpd RPMHPD_MX>;

(or maybe even MXC?)

> +
> +				#clock-cells = <1>;
> +				#phy-cells = <0>;
> +
> +				status = "disabled";
> +			};
> +
> +			mdss_dp0: displayport-controller@af54000 {
> +				compatible = "qcom,qcs8300-dp";
> +
> +				reg = <0x0 0x0af54000 0x0 0x104>,
0x200

> +				      <0x0 0x0af54200 0x0 0x0c0>,
0x200

> +				      <0x0 0x0af55000 0x0 0x770>,
0xc00

> +				      <0x0 0x0af56000 0x0 0x09c>;
0x400

for lengths

Konrad

