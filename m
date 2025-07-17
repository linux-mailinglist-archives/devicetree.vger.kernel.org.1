Return-Path: <devicetree+bounces-197468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7802CB0963F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 23:06:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E8C73A76B1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 21:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D02222AE7A;
	Thu, 17 Jul 2025 21:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCQ6Zj5t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E89221C177
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752786382; cv=none; b=l02g3/4LxkV2cRss/G9KJmiFA7TuMANlxh/O8HznA1MRzXAsQ+5sJAtWxbLaQ6BcaX0TiMc/w1d+uFK6T2bypHdpjsCoq6DjfSbYdIVzdeq6o4IpNbukKNY1upkNwe5IzPgQFJM07o3qYj6GxT8j3/oMPYDPpEPutZ6VBalJX8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752786382; c=relaxed/simple;
	bh=Fu5f1KYcPNBKXbwBLRZ4Cig1/7uNC4oBZT6MsGsCCXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BsX2QgOnui6jKxlicpadtSOuRKddRArxXSfR+myIxhlcLHT3m51Ph0g+fPiy9wiF5WF6d5224gAj0pC6JMMhjd8qLbqD+Isg2IZa7IGe6fPR/GJu6+VO/FDay/L+Kn8UjGk6qm5xLQUiKv8KgQBu7fcWgntfUYQpfLqiprSRssc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCQ6Zj5t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HFQ5IS016095
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0pHw80GM2tQXK/P5MspgwmNzeXrdomfpLEtnn34M6J0=; b=CCQ6Zj5taIIZgg77
	BjsrbRhNCnxCoHw75tzik23Z5SkOjFbzC3ZWStbyKsGNyAA/8nYux/lu0Gdwf/EW
	F/FadNR3e4hcsj/VB53T+14onJAyrVEondsZBKolYuQGymdKLSABgFCT9rPZ3yez
	0BVC8k3zrT3sMnUxN+05vHZX8BGVDhUZ7MNuObkXxagKVeRUfFHuthRc+Pk2PvO2
	uFEKBcvvsFQevJDztr3weGvJqNWkUsRWnusS7W5tfSf69ECcOrSWR9LiOaRoIe+e
	lfdZ4WWm+mgi0hE9jTKA3ud+aIcxLDy4bgzq0McXapnCbw4I2pd6aVwOABwgVtzb
	hAFFdA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc10cn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 21:06:20 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab60b83e11so1482491cf.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752786379; x=1753391179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0pHw80GM2tQXK/P5MspgwmNzeXrdomfpLEtnn34M6J0=;
        b=whLVADWafTA2MaiGPPwhWKcEdsMCf3UrMMFGOHA2rC+aF04gZv8Hlk51aKb7HDSXxb
         6t3e1CfQIeY2xStBGVYIPbSSOhAoZzuXBl7vXqvZb7Fl3Gldli9adfEAEspLCucVZ5rP
         WVYcruB5Qq13Ag66tCqmIcA5euQTy/twwp2MyoUWh+AHFU9E299H5wlErarKS8fyNMaO
         4OnO65Yfz2t9ukQgIEO53hoV2DLPf7P69v5FsoaSv0JGRAt7a50nYm6DCwRE7rBDwyLB
         1Iw+NzIYJe0h/LN+Mamb6Ddu+DUoNgHo1cZ8GLThPnLChVuc9LHjeTRt2zXhUzB5dyYJ
         XB/g==
X-Forwarded-Encrypted: i=1; AJvYcCWn9a5BlbDUnYJ/fjlXI6nsYvCwhO8r3oEP5F/QTC1talNS4YmxrQiLzPQj6ndRtoIpWn+thQt32pkz@vger.kernel.org
X-Gm-Message-State: AOJu0YyZN4lKcxzYUBwIajNTzcw/vuRt/H8ThUqRUCnubSMV4KO8DvRX
	vxGG4lUay5i/H3OvIhqaz8HeScCqpN1ORrNAFQgMZJmtQchQM4x8EBiO/YdsTiVZFaJ8CCnGahZ
	1FvyfdlMylsSKDwxgVGjijU6pqrkFxzfLFLyUDKkUoJotTIOOznHxVIZBi8X8mRKt
X-Gm-Gg: ASbGncuuEW4PC0afUfD8SFoRA4Eh1oiUfUsxxKcBd16ODi2hDjLJ0pxqnUGmIzPi4dx
	1f+qm8QUoWZcpuNOXhwFYbzCS2ikQNilCPSYDUDiiMBKTYgCfBQrkZPsEguqVAN4xRyiYLgXMC9
	h62V3UcwFuwzMKmq9x/ZM+1ZDjqy0sb5rRkBjhLMWr8rZdqaJGRB7pjRxiiZXld2qY6Z59uI8M3
	oKGP3Nh2r3Uhss5oVuTC/WTsku7e79CO6tzHv/92fGJ5VIFTZ4g9EZS38kIss97n+RmSkvmUHg2
	xGOcL5rzyZjsuYZmvpgz4g+yZRryJOta23Z1wjlAWVVYCdQcXgJE52ae6vSb0TjRQuhbKeQc2Qm
	8OPzXRsw2ZGPn28N4WJ8r
X-Received: by 2002:a05:620a:28c1:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e342b37074mr503118185a.10.1752786379395;
        Thu, 17 Jul 2025 14:06:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgsvETj4x558m5O4J1Q3oaDXiBHmdl68wKzu5lszhWnL8Pa+XlDwiszt+zOKmmwEGKjcAMgg==
X-Received: by 2002:a05:620a:28c1:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e342b37074mr503115285a.10.1752786379004;
        Thu, 17 Jul 2025 14:06:19 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294bfdsm1408812966b.120.2025.07.17.14.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 14:06:18 -0700 (PDT)
Message-ID: <b5a1314e-6733-41e3-9258-c3a88b2c90e7@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 23:06:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/3] arm64: dts: qcom: qcs8300: Add EPSS l3
 interconnect provider node
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mdtipton@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250711102540.143-3-raviteja.laggyshetty@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711102540.143-3-raviteja.laggyshetty@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=687965cc cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=yqcj6WI3IahE-w5yY7AA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: ACGcLik-AE9SjhjR6roJ5p_WJtJ4JMuI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4NiBTYWx0ZWRfX1iUfjnTmHhpL
 qk35ayQuzX+Dkbl65h1tmO2L77VmnLGrhu26BUVPF9JReE2j1u6l1rJXUhNkU3Q+GLpFJziaI0j
 w4UsVcTSj4zZOT4IrNrWkVLsaqKgAYl40DLcODzcXPNrV67k9HAyTzMtptFP4LW7aHDTyyDIyO0
 UK5aSHvhq3MTV9mI0BBfHF4uNrftGbm3w/aBE7FGAaFWI9FerKmdxOkZ7KrzuoTkD+JXgNMF8BX
 vaWJcAGTy5x989+x6C1bAaAyr3mDsu3yQN6oK/MxpnIM3KoHDBWTz06SK3XPxYe6kL02uNJZMQ6
 jKUMKvEUlREsUW+rJZ20XAA3FKSZ7uFAvgRGfc9+z4soDSv0HLgXsaA5k9Ia349TZcpBtfje4X2
 342T16RZS+816yZa7tF/t9LhssvhNmAGIcmnKuWMy4ZQEJb8W/UWW+18Up4+4bPGVCv6vm0G
X-Proofpoint-GUID: ACGcLik-AE9SjhjR6roJ5p_WJtJ4JMuI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170186

On 7/11/25 12:25 PM, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider node for QCS8300 SoC.
> As QCS8300 and SA8775P SoCs have same EPSS hardware, added SA8775P
> compatible as fallback for QCS8300 EPSS device node.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---

Squash patches 2 & 3 together (because otherwise you'll still be hitting
the issue I described the last time)

With that (modulo me trusting the numbers you put into the OPP table):

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

