Return-Path: <devicetree+bounces-139050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 385F0A13C41
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B53DB3A2AE8
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F00146D40;
	Thu, 16 Jan 2025 14:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="tiUus4CQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E13A24A7C9;
	Thu, 16 Jan 2025 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037836; cv=none; b=Edir48VTfThuWgceoYQ9q8qLFmI0ET3laZVYqp/88WkKcoCLE8b4QWKXWFlQ4tfJUiNXR3FVvtXqlmbDLWgcH7rwWr2S59R/7hcHLUIQq0wmp+cuPpKHY6RXMC0Fe54RQpCNhPIq5VWFX133SEhf4tzm3teC9OjstXvvnwsM4qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037836; c=relaxed/simple;
	bh=VyQzi3f8geThEMNjp60ErA8QGcIQGAkPBUlRvjYVFac=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=RNJvjRi2XfTZ7yWuQH/tr5wn0k8s8SVGceV3kiSgBOkcQVXI5Qg4lztvcpq+Z3ZtHHWXOee9Jv9cAmOtC1TJQhdAqUlxpIA0qUAChrPLrziqcNtqr5HUZItyzvWn2w990crWPam5QJmGucn23j/o8NPzOMvuk/VEWEk2E18wBts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=tiUus4CQ; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GCMPgY022802;
	Thu, 16 Jan 2025 14:30:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=pHS0Fn
	61rhNPulYZt6CO+SM6wBYoyMhn/IvaB4skFsQ=; b=tiUus4CQ5KOVLwSSpt3KQv
	CGxavg6M6mrjTVc7bcMNJ6tcQrm3z7feowhOwYn6P4awZtD/QgouqNGCW4S8yIUK
	e3RjO21Kbw87oyye2EoNwS/rcduQQw5ZabENsZo5eMnZTGC7hz9At+f+tbALyUSd
	CoqjWEyTe5wMgbRqZ4ddrs/7W2MhH/9fMd4xHbzdKV7yF/31NkTTnEgeH304q3sg
	luEcvJCBPcdo2gbzixy4Svok+huIP3/cBLMebu/GDPbZ0dOV16q3SSOopqZwlydo
	FEGtNMoOulQRG5x4aua/N+7Xfi7GFRl+tPH8Vknh1kJ2oDw8i0ML3Zff4sEnIreQ
	==
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 446pub3j3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jan 2025 14:30:15 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50GB4bAl016490;
	Thu, 16 Jan 2025 14:30:15 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 4445p1wux1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jan 2025 14:30:15 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com [10.39.53.233])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 50GEUEeH29688478
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2025 14:30:14 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8523158062;
	Thu, 16 Jan 2025 14:30:14 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D161458055;
	Thu, 16 Jan 2025 14:30:12 +0000 (GMT)
Received: from [9.61.59.21] (unknown [9.61.59.21])
	by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 16 Jan 2025 14:30:12 +0000 (GMT)
Message-ID: <ae14daf4-c7fe-4fcc-89cd-5d1d8b320193@linux.ibm.com>
Date: Thu, 16 Jan 2025 08:30:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: aspeed: Align GPIO hog name with bindings
From: Ninad Palsule <ninad@linux.ibm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20250116090009.87338-1-krzysztof.kozlowski@linaro.org>
 <cba3c5e0-624b-40a2-8b52-8d07604676a1@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <cba3c5e0-624b-40a2-8b52-8d07604676a1@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: rJ3dDbNz14S5BMjlPMGQE_49alAp4k4J
X-Proofpoint-ORIG-GUID: rJ3dDbNz14S5BMjlPMGQE_49alAp4k4J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_06,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=726 clxscore=1015 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501160110


On 1/16/25 08:18, Ninad Palsule wrote:
>
> On 1/16/25 03:00, Krzysztof Kozlowski wrote:
>> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
>> to fix dtbs_check warnings like:
>>
>>    aspeed-bmc-lenovo-hr630.dtb: pin_gpio_b5: $nodename:0: 
>> 'pin_gpio_b5' does not match '^.+-hog(-[0-9]+)?$'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   .../dts/aspeed/aspeed-bmc-ampere-mtjade.dts   |  2 +-
>>   .../aspeed-bmc-arm-stardragon4800-rep2.dts    |  4 +-
>>   .../aspeed/aspeed-bmc-asrock-e3c246d4i.dts    |  2 +-
>>   .../dts/aspeed/aspeed-bmc-bytedance-g220a.dts |  4 +-
>>   .../dts/aspeed/aspeed-bmc-delta-ahe50dc.dts   |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-bonnell.dts     |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-everest.dts     |  2 +-
>>   .../dts/aspeed/aspeed-bmc-ibm-rainier.dts     |  4 +-
>>   .../dts/aspeed/aspeed-bmc-lenovo-hr630.dts    | 46 ++++++-------
>>   .../dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dts | 68 +++++++++----------
>>   .../dts/aspeed/aspeed-bmc-opp-lanyang.dts     | 14 ++--
>>   .../boot/dts/aspeed/aspeed-bmc-opp-nicole.dts | 10 +--
>>   .../dts/aspeed/aspeed-bmc-opp-palmetto.dts    | 40 +++++------
>>   .../dts/aspeed/aspeed-bmc-opp-romulus.dts     |  6 +-
>>   .../boot/dts/aspeed/aspeed-bmc-opp-zaius.dts  |  8 +--
>>   15 files changed, 107 insertions(+), 107 deletions(-)
>>
Reviewed-by: Ninad Palsule <ninad@linux.ibm.com>

