Return-Path: <devicetree+bounces-230669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F9FC04E75
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:00:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 95D0B4E121F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7952D2F8BE6;
	Fri, 24 Oct 2025 07:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fHs5qyfc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C462F7AD7
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292798; cv=none; b=WsU9zCaLCom9nwCsbcEvU041rnDNUyx24jCIlo5dhdKHfI32BgiW05IskFk+FTlBisj3+4MzcZUo3ROEl+GogbrJzUWnY5f/l0bJJNbSHNsm3KMUfLacrjDXBQtQo21wA3kEUythb8am22iunk4qdNcjIeQjMPdkwy9hLWqjKfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292798; c=relaxed/simple;
	bh=9qdzKkUxNwidtGg5qokIRznrRuUeGNDdt4Ipztm1jJE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KvbgvErYyM5foV6aqu4fSz7P+ysDFnyMea5bL41xn8u0KbUYsFUUGK2uovWBhlgP7lJQPnGyHys3JM8/8PZOC8FF68UuJHadv+I1FUsTolbEyTeVzLsTd1d6ghmlrT88kwmN3D8Ii6ij2lRB2Dc+T3jpkd7PYXkmzcYiUyzlT7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fHs5qyfc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FpRI003822
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:59:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fuIyGKnq00sfHTyE/opfe7bmLAvpc40709+4IDJlYKQ=; b=fHs5qyfcJixJ/hon
	pAeUe+dzu+VSHymPluV0BQnzsGcUrtfYCzT+3IbnK4a/S3H7bT3fRffpMxHO7oCO
	JT1dkGsy98MDLYtwLovkSNQXmUYQFRoeowWgtr/y6qbL+SV5Drs+G5sBJV1Hi8kX
	VVq2gryAGNEgdLc67HkO5i19PBqm/STA2vhmsFu+DKyd9JMq9BbYA0xj+UMWNyUG
	QvwgR8CVdRV0rwuawxrYGxoH216QK1qaXXfh6ubeaQet7QqG0H0omSPuAnjLRH1O
	kLsTta464MPdT5irmdI0VjnqS8eWoR6n8vevrHYVCluMJq/MesAZW801+7rZnUV6
	rFfQfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jb626-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:59:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e886630291so5206941cf.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761292795; x=1761897595;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fuIyGKnq00sfHTyE/opfe7bmLAvpc40709+4IDJlYKQ=;
        b=Z0ig00G+UDeL7NXlo9GncsVQmiQkNE24QKuwBel+sjafsBj6Wa8qsW2cCXz7ENUTf0
         cY//hf/XGEUtk8c5N/HJC1O8srl7DHXXrsJCd6dK0kN+f9vw1jtDCv4wqPAEbs9qrznM
         sA9Adb1tQTHJ9AWYjh3SsO/DVieYCzPKD8pfuR4pYOIUMmBlmrL8MlWnIFlPV5pGCJDp
         boMnfCp5wosJc9tHrywZbUafYeaONfitRm9uX1bQLQdXjU/+RsYsPy7bP9yJemm/M8KU
         EhITvf4BivJyawvOFwdqFaHhZzzMFeVxg6hMgsRtxuW9RYNne7iLX+fOgf7UdyLE+nvr
         +V7w==
X-Forwarded-Encrypted: i=1; AJvYcCVi/RvvfCyP9teAIYo+8H7MLQIeVxVznZA+2CvwWMm+a5Hpul8Pbf7rFpZBRrUnDXzeNAA+odn6o/Y0@vger.kernel.org
X-Gm-Message-State: AOJu0YxgmDf/ENuJXocnVn04f/M+SlEIL/wwKoD07FmJrstO9EYvCTlc
	00yg+P6DxUPRnFvcjjACl9QGWucZ1PaDQyGaBRSUSABXFjcdtFNmdQvJMHkrFLecvDNxt6Mj8vW
	CFSl/jHCZ9t7WKvjGcnKihYZ2VgJYaW1kFq7OD3mYbx78UA+hssJe1azRKCfCu57d
X-Gm-Gg: ASbGncuUGBUttOo8z5WBQL6GV7LJL/68v7bhIiHgiQFH81SfkBN2bhSsTftAQZXufAD
	r/IUYVTYQ3JVJa9kTrleYaz4DAAXulNUgsWFUlWVGQoYeFiMwjX8GZVBorDzsxfpnNn4F58pJvX
	CHm34VCXwbWbA9ZvWiFfTiabqk+MEbyJ0lvX2bIj1x8SO8SkQd565lu61tFy6aOWNSZ6mgR+ioT
	BKqaetg++5IuK4CaWNtojlOetxyYVIbTm7W4dM7R802jeSCABk+dsr5XG5ET0o1LWkqcyx/xEHz
	l4iNg2z4UFzDhIb+99FEU1BMt17SrKtOlNuzhoqcoPh+nKri22hUz1DfrTPJ7u1jCBArGn29ggW
	txLAq3O0Hz0cfL68V9BmICyOvT08jgXXK5OpKo40eeUma9wkJ9yTh8PaO
X-Received: by 2002:a05:622a:1a0c:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4ea116e2fb8mr114380571cf.7.1761292794865;
        Fri, 24 Oct 2025 00:59:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrPmBQGWI5ofRE81ElAyZ58hzjoOsMkKuLVYPW5g1VjELKe0SfysdfObTDgxtmAz9Kjx5wLw==
X-Received: by 2002:a05:622a:1a0c:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4ea116e2fb8mr114380371cf.7.1761292794282;
        Fri, 24 Oct 2025 00:59:54 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144efbcsm472338466b.66.2025.10.24.00.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 00:59:53 -0700 (PDT)
Message-ID: <150836aa-b69b-4dfa-8118-4c32f181e03a@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 09:59:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251024023720.3928547-1-le.qi@oss.qualcomm.com>
 <20251024023720.3928547-3-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024023720.3928547-3-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfXyTKQ4Xk/wonQ
 4+lbT6hBd9vwBrT9GruWv2Mr2KBYo09TgZzQ1EkyScTtaI6DP4mae6P6pZ7qZ0PucN9TyS6UeIv
 AnQXua1gs2iVBcrWBGcEtUpZoGe4gWgo37sDR/GeZ8KSYhXOO2zAzsLkMKnxwA6+8CCCtXksSYL
 IjtDli3ORqAKEbXDEAoz9zs8nN+YH6QWkRYmPHs8AZkIetSQnLiITcBe11da6gBmbnVCxZP5Y1o
 qc/05lEXyeyhcChv2SzHcDrl3RdbQy/6NjVGsU9G8nLAkpA/irdPeKIN4niW301TW4nxC+3FSym
 9cri+ojXIapS1mA9F61MpGOmEJ9KM1JVVIcY2rsjsAjKcvMXy+yvsJbff7dKB+MHqwgsNyVk2vp
 e5Fjr3+ORsV0NFz16QrJSU5AKfR0Lw==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fb31fb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Q3T1G7DDasfguL93IWYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: iHvNnwtHKYIUFRZkEoD7tjXHHFZNcl3D
X-Proofpoint-ORIG-GUID: iHvNnwtHKYIUFRZkEoD7tjXHHFZNcl3D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

On 10/24/25 4:37 AM, Le Qi wrote:
> Add the sound card node for QCS615 Talos EVK with DA7212 codec
> connected over the Primary MI2S interface. The configuration enables
> headphone playback and headset microphone capture, both of which have
> been tested to work.
> 
> The sound card integrates:
>  - DA7212 codec on I2C5
>  - Primary MI2S playback and capture DAI links
>  - Pin control for MI2S1 signals
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---

[...]

> +	sound {
> +		compatible = "qcom,qcs615-sndcard";
> +		model = "qcs615-snd-card";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&mi2s1_data0>, <&mi2s1_data1>, <&mi2s1_sck>, <&mi2s1_ws>;

property-n
property-names

in this order, please

[...]

>  &tlmm {
> +	mi2s1_data0: mi2s1-data0-state {
> +		pins = "gpio110";
> +		function = "mi2s_1";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	mi2s1_data1: mi2s1-data1-state {
> +		pins = "gpio111";
> +		function = "mi2s_1";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	mi2s1_sck: mi2s1-sck-state {
> +		pins = "gpio108";
> +		function = "mi2s_1";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	mi2s1_ws: mi2s1-ws-state {
> +		pins = "gpio109";
> +		function = "mi2s_1";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};

You can group these together (i.e. create a single entry with
pins = "gpio108", "gpio109"...)  and move them to the SoC DTSI

Konrad

