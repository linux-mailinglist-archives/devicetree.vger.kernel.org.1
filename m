Return-Path: <devicetree+bounces-131009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D0B9F1B25
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 01:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6543E16AD63
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D2D1F03C7;
	Fri, 13 Dec 2024 23:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oVbq75gX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA8D1EF0BD
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134179; cv=none; b=aLT32hAjiEJZSMpeyf8uaPRnm6ESkKfmPoV0FjHA7H4dgtZf1ncQCe98Ja48Y6Z39+0YWzFPsW2lBZGJc72WnroImRJlSIrg6XlBd9POiqmU2yQAllbK/+iHeMUP/4NGkOIY40K2rhmyKZ5jXZKXNRvdf8Q4YouRD4oW413dyTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134179; c=relaxed/simple;
	bh=eB5hO81qvELqW1QVwzwykvukceZ8/b4PMpblBqb8Ec8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E2Z+SLmutARfEr9bF3GnNGMr8cJtqOSN6+QxfytckZ4MI4KGjAX5M5AEwAj3iWzue2CrdFY+7c/Uo6xsRcLNdriG+XRPV7X550twHHBlD8JKki7WC/S2cODFksXQIeNu2MOcmdnBWq0P94C8Zcis+XzGJD8ZETjIa/HZWokRtq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oVbq75gX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDNNxnq018942
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:56:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mBfG/0PIjoHp4oAUPd3vdYoV7y4Iyy6FP/GMZ3kUMk0=; b=oVbq75gX0Jdii2f4
	hT+6nR8fNoBzXancBaX8SEhqeAl4EMEkRs6CvwDvUVcWDxPoOT8GUV0d7HiRMr8h
	5W+i6W21IsiTyJVUluDc/xaXKFpi56XDvSLdqdFEyJIPmk1r6P9IgACME/1Gg/82
	yTgC8BCtWbTfw+ZQGU957AnCos6j0gZABaytXAs1Sl2HHRMxyFaIP24Emk+0dlqN
	Wxh9ze0lVUbfCT9Jzd2Lp+4tFvF9y6e1d+KAF6R6QKyBUV4JEI7CwfvUxbK/f3Tr
	eXr6+Teullg45G3mz+03g0c7SO0zXZIaQkEBPWx1ILveCoQHZtUZra2ur+At5Mi+
	SeuyEg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjnb1x67-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:56:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679af4d6b7so4177901cf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:56:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734134161; x=1734738961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mBfG/0PIjoHp4oAUPd3vdYoV7y4Iyy6FP/GMZ3kUMk0=;
        b=rdppHpm/RSzXrhqWNtNsztOVTsRfu5QkFtSkh87Dto3dn6DkoHo46VQBnMS6XgnMG/
         v524EpmblE/XWToa3pLAc2aUH3cDXdgC/ouX/0GFimQVPNlLn9QRifumotxe7KAO5oyT
         Byg44dQ89y4mAMsKcL1jxjndu4dPQWGPs2GeKGwDlJphl1Jn7Cyb3lsK7ZHYIH0Tpdl+
         /2rHB8kfCnD4QmcZRhvJNL5Uib0K8SGAAV6qSp4YfwxoCSRqOZj3MOwVTPXCTgQwS/O1
         ggyoBUR9aOD07jtze3MD9NyR8SUbsQc16ZCQgwewXwgUKvcyY5x3sHbo/ZEzo/4zR4fD
         EG9w==
X-Forwarded-Encrypted: i=1; AJvYcCWZalm7u48aiXl4W61ukWZvYjhT19r8qB+20OHWiQQQlijuLBH3B3MkXyiY4Nq7qACjdSab8CKOYgGn@vger.kernel.org
X-Gm-Message-State: AOJu0YwbVSf5Ol9sSdM/kxzDjz0yNKFkjdC+Tteq6wvQwp3U0CPgK4uN
	62SH11ugYlJbCzADe9rxBZ2c7di6sw04kHkmjje17JaxTFRVxnmZ9KPWF9CP5OY8SxkfvlDzChj
	guOY748dWnM+/kk9H16+MQEWot91BtsJdgKUmUvCuIOjlU3QmfYVkuCPSMi8K
X-Gm-Gg: ASbGnctvKZK+M6SYbdv2Xu9aB4Wea1WZ2dV1om0KKGezooTl5QmkTJG1FGyXU6y7DRl
	zbP/QrrqsZ9+w6XKVmBWyY7YsINKTfSn0BEhi7+a9DP+KhnywY++sS/jylUlKevtTTgmNMqJ/iv
	Ng5dTuxrB76UkwaI/L3/vzj3I2cMXrXdo5CG7syhiu6l8EBhTG+6gWtlxlBDzS9T7zVPPvSN5bW
	DqQlU25O4UTY86dmWYxtRoUTx9dDnF/VLahufKGYW+CHA7wM2jQlFk3E/nd0iNU/580RvoRijOA
	2Auyj3AbVGxdAnOEI2jbnxT56GJP80ErH7c=
X-Received: by 2002:a05:620a:191c:b0:7b6:c597:fb4d with SMTP id af79cd13be357-7b6fbee75e0mr249124585a.5.1734134160880;
        Fri, 13 Dec 2024 15:56:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkQ+V4mTkhQO2bVQpzfTauk0x3WapSTTM9VWOMeUP6/EPzzWU8xSQnJaVWpSSlnYUHGIC8pQ==
X-Received: by 2002:a05:620a:191c:b0:7b6:c597:fb4d with SMTP id af79cd13be357-7b6fbee75e0mr249124285a.5.1734134160575;
        Fri, 13 Dec 2024 15:56:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96006c3asm26507266b.19.2024.12.13.15.55.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:55:59 -0800 (PST)
Message-ID: <a106e659-1ab0-4eeb-bac9-ec882766094a@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 00:55:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/14] arm64: dts: qcom: sdm845-starqltechn: add
 display PMIC
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241209-starqltechn_integration_upstream-v8-0-ec604481d691@gmail.com>
 <20241209-starqltechn_integration_upstream-v8-10-ec604481d691@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-starqltechn_integration_upstream-v8-10-ec604481d691@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4gRcTcaIIWosoEYce3WN_Ll6eZw0F4Ep
X-Proofpoint-GUID: 4gRcTcaIIWosoEYce3WN_Ll6eZw0F4Ep
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 mlxlogscore=759 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412130171

On 9.12.2024 1:09 PM, Dzmitry Sankouski wrote:
> Add support for s2dos05 display / touchscreen PMIC
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

