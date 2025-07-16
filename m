Return-Path: <devicetree+bounces-196864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32419B07688
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4278B7A3051
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 13:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD0ED2C15B8;
	Wed, 16 Jul 2025 13:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MnE6UyyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BC752F88
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 13:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752670964; cv=none; b=JM4hn3ezlkZYmOVPpU+xaKnZYZghlGloAjopaL7eZ43/M7es2uiO3/kD6uJQm0V+aHfjJW5HYyTg5ePL3uMscADB90CZI5rMisdKVn+TR+9fdNqmhdkZE2dm0jUNomEDybV2Ep8mBZNOc1QkcF4RWD3zShIhAoWwfD9TYU7ZId4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752670964; c=relaxed/simple;
	bh=2n+yEqRmpHWX55ymaGQwEcO5PTCabHBKt4em2S2nQWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=srTGFDqSxdCy71GHL4UqnEmD2Von+uu+YAT5QRLx7nPpyxi2SJ0k1x2WiDTJim+99NWIqv0YSrYIRDmyScQvq6kAWsGT9wKTdRSFhpiGl0hYy0l6SyeoDxOYakBeqeWlrkaypl97QGSCngLCBiqOSEMo5U/B2Y2sQS/2h0fOsZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MnE6UyyH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GCsMYG003257
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 13:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nbwfXFuBFxnOjI7T6twSdJDR/3cB26VOmjbK5IrO4Xc=; b=MnE6UyyHfZ0YXRqu
	8J0WeRFTtmcikbH0hEoZyJRjqI3QIUZngUYM91lRGunMI4FJn6dhbkQv/Dpul2Vd
	qkgTdU3G6ijnHg4sIT2BKIv2Z4Coy7ZlYqkEKRDbi9J7bujWhN6TQMGyedP1YawE
	lkXib5WzzRG9ajf9tEePxrWoYZ+m+5leNPTBHOfbZNH5PM04gG9220GL+x/7A8xA
	U8ksYoeCqCfimPkl/mMc42Aa3aClMk2SICAx0llxIiK+pCYEFclF53M2X29ZHBwR
	JTHa1B6jebloBlsXZX409RKhRlAXbgRVoBkcQaBBA7QxWBQwOg4hG42HlYSeMjmw
	l0vQjg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drpwwt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 13:02:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f539358795so18083366d6.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 06:02:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752670960; x=1753275760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nbwfXFuBFxnOjI7T6twSdJDR/3cB26VOmjbK5IrO4Xc=;
        b=eoLYkwSRFntsazAg3OMVPvuV+rfaIqxdbG8+fkeddKngyskPxFWOKYKMQaarpr2SqF
         Qc+pa62EY19X2MTIv+NN0Gd0QffAExgttdAEmhAK6MIwc2OdRhMaE6uKpAn7rSZpintW
         a4qjg7fp1RUriS+Yg96sC4IkClMeAjjGhCjRkZ0pnSIjuak/2xedNP5QOgQhWm8NZrIN
         0gyfoBgRnRZMoW9CKWv4w34arIZfcJYB+g0Gk8LJAgPoB53TMuiaOPVNBjFPP/wUKZac
         yXUrKzrcWVgTwV8/jHVfCAhnPdz8Y/W3CFeHxqiUN6elVGp3TWTEcf38nEo2n7vHj9gn
         luZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQjY63dayhLB6LVphWgRIiItx0y5YbckIdRI3VfKDLYy+FGdTZC1XSXIpugjsOUOBdrCtnxwnd6CKn@vger.kernel.org
X-Gm-Message-State: AOJu0YxxUvXJ4mAhX0Km6/YrlOElGx1ZhyNpjo8xdf+QK/GBtLqU+tf3
	FjPRd3bFHTvDeBOSpzXx3f1u0hVrtjXNkpkJLQ9MADxxCLGti09jdPOVFW5KBwO50dMrO0AoqhG
	M+lAJMpam2FbAjqTqCcApFHlSRrIpMBDyaSfZmlCPasqK3sQSRxS9VPYFot1Cl4/b
X-Gm-Gg: ASbGncuyONQXudwrPHixJ7te6hxUYjo2fkFe3h68hXpSnDxLI4tZFt2zeY6+cOFKISr
	nPlqnCOGQQ66v6n+154gNaEUVs2BX0USAYMdLHFuiSWF+plVqS0E0pHZHI/lwueVfWW2MzCY2s3
	K1Gi3DDA1maa+bIvOD66B2V2uiXN0WzMOI9M9TJkqRzFx+UnWuZcn5rR2gJA2fGq8fW1K0EVUsh
	BvKb33pXXq/O7/wLGTDjQMa71EIvkiWRmzV8BZDKTpIOq2ocZOWANkyriuxDQQYlUTXaNVAmmIq
	dZHpUL4a/otUCoz5t+HeHTVNl36E7lhIWd6QAEged75pj1a4ss4r5BeX6hvvZZyTbwEJEdD7v4N
	vN9CyJx5RrwajtYWA7VBC
X-Received: by 2002:a05:620a:f0f:b0:7e0:1602:a4f9 with SMTP id af79cd13be357-7e342b735admr177287485a.14.1752670960209;
        Wed, 16 Jul 2025 06:02:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7HT9MPyzsZ1m459bgHi8F8nr4lOxvRazSKaZ/G/h/LdCB+WOUXISiLr7eVmDce1y+UDGzHQ==
X-Received: by 2002:a05:620a:f0f:b0:7e0:1602:a4f9 with SMTP id af79cd13be357-7e342b735admr177284285a.14.1752670959667;
        Wed, 16 Jul 2025 06:02:39 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294bc2sm1190983766b.135.2025.07.16.06.02.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 06:02:39 -0700 (PDT)
Message-ID: <4a189f35-66f1-4c1e-a9f5-e9ed01544538@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 15:02:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Add support for Dell Inspiron
 7441 / Latitude 7455
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Laurentiu Tudor <laurentiu.tudor1@dell.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716003139.18543-1-val@packett.cool>
 <20250716003139.18543-4-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250716003139.18543-4-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6T0Qdu-888Yni2M1cVO2ieMqMa9o8Pxt
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6877a2f2 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=iLNU1ar6AAAA:8
 a=EUspDBNiAAAA:8 a=M8z6rC266kevX9ldIuUA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6T0Qdu-888Yni2M1cVO2ieMqMa9o8Pxt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDExNiBTYWx0ZWRfX4B1AYqkzzCtT
 Y2u8WJxLgtFuXnGtoBujFi1S1AXVqkWP0VxUvaV4hD9Meb4tcv4hgBvMri7ltkQUohoJKqu4N3s
 KLT/VIWZTUTmQY+PntgMCHtxUIoaOkNxEP0ndTigVWsZZnlRHsL1u4o/scRYKwnGUkTgYTDBSHP
 /0CSP6JDMBa+Bo2H5U55o0CjDfS82xlGYJO5V5cWhT+A9YN0PicrxPzCqRYd+Buyx77YIyWVV3n
 r0i/1fEFipbOSH6pkOmCffuYTevROcAQI8XLhorDcIK50c27Sz4R/rmyg/lDmZZ9YOQEyxsVonO
 vcr73HjvdNZesqvWmf8vRBEkZW6NFchf4aG5KsctkQSuxiHhe7YJwce2o6OxEsHlBD4qFShoYSH
 AP8TvQQ5xIByIpOEtcQOmyREC0oQYwYO40Mnae/dql5xEnncsIAfryDwf2LtEBO4CkXEMAMr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=965 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160116

On 7/16/25 2:26 AM, Val Packett wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Add device trees for both SKUs of the X1E80100 Thena laptop:
> - Dell Latitude 7455
> - Dell Inspiron 14 Plus 7441
> 
> Works:
> - Wi-Fi (WCN7850 hw2.0)
> - Bluetooth
> - USB Type-C x2 (with DP alt mode)
> - USB Type-A
> - USB Fingerprint reader
> - eDP Display (with brightness)
> - NVMe
> - SDHC (microSD slot)
> - Keyboard
> - Touchpad
> - Touchscreen
> - Audio (4 Speakers, 2 DMICs, Combo Jack)
> - Battery
> 
> Not included:
> - Camera
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Val Packett <val@packett.cool>
> Signed-off-by: Val Packett <val@packett.cool>
> Reviewed-by: Laurentiu Tudor <laurentiu.tudor1@dell.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

