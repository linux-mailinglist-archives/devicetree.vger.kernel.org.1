Return-Path: <devicetree+bounces-172657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 55967AA5D24
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 12:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB49A1B624BF
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 10:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D0A21B90B;
	Thu,  1 May 2025 10:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KTtSNLeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE959216396
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 10:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746094763; cv=none; b=W+BHaedgclY08f66EnX7OzDdLysYGC2mgTPBiV9Xa4kaoO1YMflGG1EuSidStLjduIV1SPGCROZ4Un2p6lhC6zhVXMO7NF20xDthhmlHQvQi7w+zdpfdFdl7uN7EKdx0jNUjnCAapb6K0OP8KfpY8S7l5425GRmZqKfLmov6aLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746094763; c=relaxed/simple;
	bh=qcDUFQxHUyNZknUCKfm3IojNc+trsUyfhy/vChwE97g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nRBTG54+SNaRA9ngMU2/s0oe6yydouNTFai9CRlKK9fPcukG7yWQIWirYqURm7/bZG/+rRQYeP95ipJY5ajQD9Lui2xVTCXCAvE4sZNkviFY1qk/UF7gL2e1UEAsNNBOKl3Z9e9GRvolozl21zo51dfp4CMcB+b0zgobdghIwFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KTtSNLeq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5415ZEeK014995
	for <devicetree@vger.kernel.org>; Thu, 1 May 2025 10:19:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fZ1XuECjDv+ed95P9xYwiZkwgD//IqgLjrzUycy5GAI=; b=KTtSNLeqef+7whTn
	2+3csjoE9lhUngLbSlY5MOsyzEf7/gPM0TIK3i2dSIM2WH8QW+DniuAPcMhoab0Z
	VwTuxXVxEHwDr+wn+prio/LhZoDJc05vezciKpIQ2+F3dXrJQgbCZjOZH/mdhCRW
	otqSwKhvum5BbcGI3rWbDSs/8j4J46yBdIok2OQJ43cpRt/RNdu8Rq1vmCB65+hU
	GL4mE0uqMHNeD2vuiRIsjbp1Hgelj1tjg4dLN9qCEq4qcDYN4AYyWjWukswzymlK
	O4cYEOgAj2WpDyKWV9hf3aT813eplkwgS+Ril6EPo3CB/j8sc8ACog5HmJiYsTnr
	69B/EQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4d0kb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 May 2025 10:19:20 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3766737so2395106d6.1
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 03:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746094759; x=1746699559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fZ1XuECjDv+ed95P9xYwiZkwgD//IqgLjrzUycy5GAI=;
        b=am/+gX1nUT0uRTwlXiIP/nMbXNtrBadbQ7fwRYdIAPI5eFhOBn8PCakTfb/VkOMrAY
         kISsHUaUpWjH97d48BDVGdC0hr+it3mUyS0zm0lnkGXT6lm0Cw9cv+Ye3ICzenM/l9HN
         IX0Pr1K73HGj2F54FWdXGSQTgHHhUEHl3rXD5p9SmmV/RQ32H88Gh9Movrvs52gYwiT7
         mCIPRwrqUVAeHAdrlPlH/+OfLhRPAbMff/4OC1jjCxmFX0dVojXcCzIN4grtUxypO3LD
         xb0sBDS61B0nOulaZSt0qgxmcLwYHHpCO30/P6ZyJbjc9MpF9pFnqVFylukjAbUhj3ci
         tOzw==
X-Forwarded-Encrypted: i=1; AJvYcCWjR84kliwbqK9gojeG5We4tdRrekHbkjx+AYAIP17V4jG6e6yU+pINdmCwiSMJBPvHROla/2REZsqO@vger.kernel.org
X-Gm-Message-State: AOJu0YxSDGN2ag221Pnk6qPyvJTu9bYl+aBF6K+elo6RnPHgzbGG62St
	QP+LBlnW4A+aHvJx3f9bbB7Gyi3/C2NyFwemUh5SNIIRSKYk2c5Ap93kD+vArU5MJPYOTLBW+yO
	FZU1mxHEavYkQsXQ2+eheLs4jAJWfNy3EcnrrfrS3SC7kavNYEhhwGm74Aao+
X-Gm-Gg: ASbGncsBlGaS3kk7WkPH7i8iZOlZgF1enPQhKGhMSEUlbOHfzCRCEFeoPAeXt+v+n4S
	af9fc/c3GOj7xA7ykqiDpVTPrv/RLYNFfMFPAAqA6l1/eOEw3EMvt8cjD7uhGTtTQ8PXbXJJDQ+
	BvJuutoK9UUw7l2WvG7hTeWgZMMA01/ovnAx6zGnZ+Ck1A6pzg6YJvL2ggoNW92hoyEXeebYAsj
	gsb9DO51+Ej6DmNmtbgFzQ4IuWAnP8ajin50ad8dOOPWr1NlwbOwTY9PsqBV0cRkbIP27t+cLfP
	DMMdW39QUHyuVb9jgtnNWnFsVe9pNY9OWidpmJT9q7cNpVVhFnnFLNwtyIhkHbpzeDE=
X-Received: by 2002:ad4:4eef:0:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6f4ff62b7a2mr29343286d6.9.1746094759403;
        Thu, 01 May 2025 03:19:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnWkkppAR1J5LwLt/+BiVd+PZ/zdfpyrTEdEjDFy+FAitwdWPxbK35SmvLa0AFubP84Ny+MA==
X-Received: by 2002:ad4:4eef:0:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6f4ff62b7a2mr29343166d6.9.1746094759120;
        Thu, 01 May 2025 03:19:19 -0700 (PDT)
Received: from [192.168.65.219] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad0da516a92sm19952366b.103.2025.05.01.03.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 03:19:17 -0700 (PDT)
Message-ID: <cd8c674e-2036-4fae-bff1-cbd3537b7bce@oss.qualcomm.com>
Date: Thu, 1 May 2025 12:19:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq5018: Add SPI nand support
To: george.moussalem@outlook.com, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        sadre Alam <quic_mdalam@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250501-ipq5018-spi-qpic-snand-v1-0-31e01fbb606f@outlook.com>
 <20250501-ipq5018-spi-qpic-snand-v1-2-31e01fbb606f@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250501-ipq5018-spi-qpic-snand-v1-2-31e01fbb606f@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: MEqSRW8BfDvYGdygusVkjogvbMtZt7hm
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68134aa8 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=w5towEkYDENzPYN5PyUA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA3OCBTYWx0ZWRfX6S0QWdtcqyXb U5hGQ7ckedxBI1XrlvCESjmzR2s9kChOm6MPyXPLZyeleyC9MOhMGHIfuwLVoZlJizvFIo3bb88 3oeIGJmRscWsFsUKDLrRFVkq+8SKJO3yDBIElGJwSPnII/7KP4jiGFEpAh1lk4LZS8dPbMHWBLq
 q1MwII64aVJoad8EIts3EvJurZobv4LWeHhQzatrqv7utuxYRGMBEhFZaJcA6Z3LCCtqFmLScD9 bB6Fw72tM20x0OOs6mKeGrPWehpbrfkFDVkjzyUlyOphi6mxpwy94JRmyvjVDkI1x0KMknz4vYC pvKp154bAUCiYF59JSNsW4jFooXdxQicZpagsBiuLagUlIqZMhxRMdbjP24r63fJg6UPA4sBlGg
 iuIKlQqiO095GYakg93J+WNrpmD3bT2xOPQVAdweUnDXbo3BNQOd0INy3v38UTEWomMxBV3z
X-Proofpoint-GUID: MEqSRW8BfDvYGdygusVkjogvbMtZt7hm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=695 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505010078

On 5/1/25 11:20 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add QPIC SPI NAND support for IPQ5018 SoC.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

