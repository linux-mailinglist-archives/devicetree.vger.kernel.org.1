Return-Path: <devicetree+bounces-256113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C564AD32420
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34E86311EC4D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C757728C864;
	Fri, 16 Jan 2026 13:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DgfXFS5S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DVftt1GI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2BA287263
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768571905; cv=none; b=c9CMQuREcAgngduujEzdaIv2e1RRDgC++BJMA+w4u4+9lSJlF1Jvkwz4XrObkXnZ/AL2rNEJy5e8qsgKtQaSh/XD5CwctMavS7FYlYc1/YfkTXedW0psQTHVORKook3yOupemhYvKxghNFtHGyg+Q/NDZhjxBh5XR/njtH2xxrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768571905; c=relaxed/simple;
	bh=kfQSZHrSVdF5x1/EhlvZZ8On2MIbxaieC0nBq36IeUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BsZ27un2gF2JQNrFHVmGcWUEGut5+6hn1UB0f5mfbUOBpC+dB+8MQUn9IL9eqCgAYVJ++v4oS/Rb3JHZUVJnY7W6KF8AqlLQLI/h3OO74xdDMVHYj6CVoBfYeUbIXo2B+Tr9x2Xh7I5W3QXm0/LikHSqh39gqWGXokPO5luUaPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DgfXFS5S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DVftt1GI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8RIDn1240858
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:58:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IajFANFp4pMuuPZKB8iLv8HMo1BZW4PXkR6TrNFXv14=; b=DgfXFS5SmidKS0C2
	Ynf2tWaTErOuTlC92hSvrMjVt/x+ikHkQ9dbHp//Pzf0d/kGE/yRE+a/0FJvZHNt
	+MBQt67r9af/ddpx+G4ERzuYLzSYb9wwUp4qoQff7QbxntPlckqIAkkXqczcmQ5e
	mTXo2qcoQeaVFF+nuWxbPfhtl/xZ+Oh9NDiqYQvGmVFC0SSj0sN9oJyoOqFY9+mW
	1aBwwRzhjLu2vzvOD5WuIkHfuD2OHN7Jaua7MweNiawwFJx/TrX80riNxrV1exH2
	qkYKUWH7h/KOivDYFoT7FQiB+/s1lHG88XcrT9D/TEFWsQ8EpiNioVyMDTdX/mGH
	3gUUUQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96stbux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:58:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bedacab1e0so61726385a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768571902; x=1769176702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IajFANFp4pMuuPZKB8iLv8HMo1BZW4PXkR6TrNFXv14=;
        b=DVftt1GIPpE75/qMzLk5Srcq3ezodJWUUnO6BHOntZ7OhUvi7yByhwqUb+RrzowEXR
         pB5or6D4YScZ1O4VcOXGdEZv7Ja7sIphNuGEHqJlaHYSpf96LX0T1gZoedpiOtbyp57m
         RnZh9ox9FNPJUm6lSudNY9FvdCRVUq6Jd7VTZckaeFHaKadjHpu4Robs0Bskd9in8L/g
         44ferOXpJUS6i2WainBp+bmILi5+EzdrANlc5bHBL2OMGDOqvdizm6xm1NghMNG5e/zW
         1BDdCKwb2QArHZr1F7Tj2a0+3CAtQkztr0dyPpTAqEfHvzTosD71JXGYYA371A3/Jg0A
         WSMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768571902; x=1769176702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IajFANFp4pMuuPZKB8iLv8HMo1BZW4PXkR6TrNFXv14=;
        b=Z1cJbKipkhW4+ugG3IqT+ctDiZNPCdBtlSWE5hxDpww/M0olU8GGpS8yu51zbvPr0J
         MLjz6nZqGhVDm+R8qGCB+5VsjPMy8CHc2WuwJZzDaD1B4LBcay2Kdslp/rDCg3Gna0T9
         EeXpvx77dfu31BvARtm8WPqzs7uqAFnyWBwjkXDv4WSnW2oqGbq0S+n1qgYkPRq8o8ol
         WO2HSO4SCB2RfZAZtbezvQUijS7jG0hq5gbDbWsjoPDWQmvWo+LixHEnhKzTkWHw5ZZb
         5VJKPBrKWLQxvYpXkdKa+4/3O+KxkeBsS5tBCw49eCmiG43Tg68kahQslseveSPOqouV
         mL9A==
X-Forwarded-Encrypted: i=1; AJvYcCW7XqcGtB0YkjTUPVPRtyAx7ACD0UkuaupXbGKrzxBwib5heQ1fiougefRoiAQ4H6fMJa4phSsUr2ts@vger.kernel.org
X-Gm-Message-State: AOJu0YzOpqM4wVciStNaLblNnuVm3sS0VoCs+Ug04d1V7SS98ib9NJUh
	98fbFxNk8YconJnI9HBapNdKp99aJSVjoH8ar16mU3THXXy3vNDo0ToTRKOskTK27T2Usr+TVpa
	Scs4DFHUToawQnlG2Fh1aNrZW2KCEfPn5QbvajWplh3g9VJqKzPPseNGZQJpw03aU
X-Gm-Gg: AY/fxX7WUp+hC39HMDiLsjYuWagALKjxhiVyTNusaPOHjKd2jvvcuLmZTqAY3tbh7RJ
	Zwunen9JG0/BmixIOKWFiDsJOL7JlJZtClyrdY9fIHrlz2fsLiFEGYOELsDH4vTntbahyvbmvDo
	bZ+P6OcCIdtpIgn1Qo9gXU2GfkYfiCG5PK6xQUZ159ByxV5AXJVyxZqN0qnZ8QkVs1MK/nWGozv
	49WKG6EsClN7jg/Fb9eoZtNM4zf2ndLTsAtdctZgHll4x71yHxCt0mMHvdCkuCQWTGnfzV5b25X
	k0cH5TKjdEclGjHQft/AgckXMgr5uOR/7Wlxk7n7C8ZJDo7H3DDVG9MKKG7IldctrEkPDferCpW
	tJ2xadQemWI6MPuf1RsrF0Vt6jx963Jwfsl7hO799+cqSFZKaxErA1fbXqGRFwSdh8T8=
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr319993885a.6.1768571902379;
        Fri, 16 Jan 2026 05:58:22 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr319991885a.6.1768571901943;
        Fri, 16 Jan 2026 05:58:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c38asm772659e87.84.2026.01.16.05.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 05:58:21 -0800 (PST)
Message-ID: <b558d5b3-78f7-41ae-8cfa-f54fcfbaaddf@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 14:58:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: eeprom: at24: Add compatible for Puya
 P24C128F
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-1-28e01128da9c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-milos-cci-v1-1-28e01128da9c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yfgTuosWtxgD-voMlKxTUhfk3jBhXK-_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA5OCBTYWx0ZWRfX4sIfA4BJ7sdY
 Bq2HuT3dICf4DMO865Nd/uRoF5nh7igCouLoI2+7eHMvdKCAZqZPFYx/P7vIzvZp8/5fnjpzYBl
 jV5Ojph2WpFNzDV2OKA+Q9WtmTUMUpo3+w8pVJJaAl1afNolj8qzKaWAqrjrMirebwZiPpxq1Gk
 vfsj+mziOU8GAZLAVvTNAQEYv3iHx+eRdIYJnXrR1CI3eXldo4P1xq67ERWqwIn7btTYY+SCP5v
 6CUA2/S9ZIdavnZDsGWlh1RqJdSKaXnyPvqx25NdJdWkHNAGXPviDOjckZicuXmH5mQUPdJXnIx
 bSSa5MZF8Vx7s+nhc41TjVTrJTbnBGh0nr/MLhz7mii6vSk5Gdx6nwcMCVQ6BK43IakNdCAcvZX
 UJD9WumDXyPsvqw5hXOA0JbndAb0IgvNCgdV6iEQN2LlUcV/ToQc0jgSIFt1CewKL9Ulma8+1KE
 5CbXec/pqk957VAUYcg==
X-Proofpoint-GUID: yfgTuosWtxgD-voMlKxTUhfk3jBhXK-_
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a43ff cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_05,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160098

On 1/16/26 2:38 PM, Luca Weiss wrote:
> Add the compatible for an 128Kb EEPROM from Puya.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


