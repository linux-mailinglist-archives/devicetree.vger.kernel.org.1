Return-Path: <devicetree+bounces-135324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B392A0089F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E67F93A1527
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9481F9F75;
	Fri,  3 Jan 2025 11:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a+dSub32"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D91F9A91
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735903824; cv=none; b=Sww5Y9R2kPLNd3QHgBzC9VQhqlikDQJib+ki70kCoyR3l1UV5sfJ9hYgB3LSWdLxz+gJB6tiqkW/w0WGa71ASg97i4uhAVqo34VBHLTmXxmUAt0+VnR/+6ViCns/rO8y4mdhe/gkWSc/9C7J2XekWvVtPdJVsLinjsk1iKUSk0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735903824; c=relaxed/simple;
	bh=xIe09ebymTzrmNS3ehuwtU+HDBREWaPhxBx+WASpvJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gPHgGGwOvhiMWJRk5HsQ50Y+cVN+7o8I5XkYT1f0YSIF5R60c9vYK/MoGReN1TXercmEoFOn+ryOG2E+vNwz+3vxJAKksAILgoGcLYkj+sJRf8IpEJAI3fpoh+nMj7TNCofOLvbGoXO4/FipMrLbDLc9gwuAzrf/KyLpMSurkBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a+dSub32; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5037NfYH022923
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 11:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o2MRsFx3bMUSG9QzwttMjqbwl6vaosB+gmA/2Y/BBj8=; b=a+dSub32uRRJEQ48
	Qz5RsRK4oDN0DlX99oW7yw6XZ4xlb4mxu1Znf/G7AoMajJ86Zw4VLiklK6DgWvwa
	IbcuRwMK+7cXwkrIn1Rozz6kSvt1SnHrxSBaZh6j+qL6uZofSPQt0b5KLpwbR/C3
	788tpHNVDg0ynkLvaSFi8FYQWl1khoqnrfNxuepTPx38/tPnZx+quEqhGqdEXrs5
	qb+Z/qjTv2OZ0MKQXYuhvJ1Y86ZhWTyVV7KU2PEINRZP1r8fZgKYiZEYYgr069uY
	bcGSFz6BB915hC8ggydBwnZ0cibrgM2YkzYIndliFQvPpAMSv0pZNVoJe4AH2I44
	AGLlvQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xbfe8hdv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 11:30:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d904ac0ea2so18610646d6.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:30:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735903820; x=1736508620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2MRsFx3bMUSG9QzwttMjqbwl6vaosB+gmA/2Y/BBj8=;
        b=lpM8nKbzTn5zR3f4oe1J99TtjUP1VGtFroNFrPE1XTtrdX8R6lGq1aokSjnTfYD/BT
         Lo0+Ep2UtY835R2RKxGN8wC7iDI46TUSTJfDtp7twT5kIJpBQs5DKPHxoirlBc3b80nH
         PsT7AqvNyBIurARHad7bujfw/ONBjlXAbmtwUKShLLitkVNaRL0I2M9waZgb+6KwbQ8w
         M4L9wTCnRlDSOCj28hIMEhEkvoTLqauTtD7lHm37LqftREo0BU6/6aZsOtyQ0/LReZZ1
         eEHHrYdXP0Rj2Ysd1yh9eYf6Hdwz9HXYF6Jwm/xQry5O5nmQ/Es7WMbqXjhlXVA2y8CZ
         TNDg==
X-Forwarded-Encrypted: i=1; AJvYcCXw6mq8GhsxMgkOL42hYSmm4/G0m1TLAlpGtRjUkb3Y38/D2nlAWFupSDrLn0BoSW8wqxD+cKmIHSnD@vger.kernel.org
X-Gm-Message-State: AOJu0YzEsBqLqSkq5kDtBxO1VWLjbLvgNzgGW5QwkOklm7TZ8CTMcq4U
	EQw57KRjV8+esU1gsXNIntXjgNHxQ6czmZzoqhwoiljHwxu1H81vvGfGVcQNcq0FUzneoQw7ZE0
	0baiGtaueLzuXP25B4Ynh+3q5Jasev7m4LkwxlHEH5NCYC+jyBloTBqlkDR86
X-Gm-Gg: ASbGnctXRzpaZLPdHjTFj7XaH5cVBGRwddr5zLjCRGfLBV4MpA5y9vvISxmPe0DMjso
	ywYUVHy05Ubko/CIa1Vkgpuvcn18wh2w9vYBBeArLLzBDHkAx0zPmcQLjmeLMeh6JeKgpvMu4+L
	LF+HVDagUC4XMFwU3/ZuwmuqqbmhjF99dkqNOsXDKSJiyVIXgIViPjjG0JmkhoSgXvYm/jWTttX
	yAk+Kx+txQWk5PUBCTEKnWPf13nXjme78IUHVHNGUuSiSYPy/4gekgMht9pydZxIxloGIA2GrDu
	DigmGrsRUTNLdwmrA2p0TXjwHxZhXmhZJjk=
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr278472071cf.2.1735903820376;
        Fri, 03 Jan 2025 03:30:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH6yfhfXdw6egYbhDHkpAKPnsfYJ/f65rP+b7aYP2oQNqtV105SjlWWqv3GWFFKMbv3p8e9EA==
X-Received: by 2002:a05:622a:1a03:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-46a4a8bd016mr278471971cf.2.1735903819989;
        Fri, 03 Jan 2025 03:30:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f01285esm1888510066b.141.2025.01.03.03.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 03:30:19 -0800 (PST)
Message-ID: <1e224db1-04d0-45a6-b0e0-e43de7c7a0b4@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 12:30:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 camera EEPROMs
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski
 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
 <20250103-fp5-cam-eeprom-v1-5-88dee1b36f8e@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103-fp5-cam-eeprom-v1-5-88dee1b36f8e@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: P2siSjsmifXKsfacOJcLHblPsPAA3YCH
X-Proofpoint-ORIG-GUID: P2siSjsmifXKsfacOJcLHblPsPAA3YCH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=813 mlxscore=0 malwarescore=0 adultscore=0 suspectscore=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030101

On 3.01.2025 12:12 PM, Luca Weiss wrote:
> Configure the EEPROMs which are found on the different camera sensors on
> this device.
> 
> The pull-up regulator for these I2C busses is vreg_l6p, the same supply
> that powers VCC of all the EEPROMs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

