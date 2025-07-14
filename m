Return-Path: <devicetree+bounces-196161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D03B0441D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 17:37:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0EC81888FCF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 15:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FED25DCEC;
	Mon, 14 Jul 2025 15:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p7U+IPM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8327D259CA0
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752506778; cv=none; b=lSQbQ33MFJa0EkIeNzSOxzVDh0DGX/JmSlO6m+RcRm73cAG7L3jjBSECj40Wr5WOP1cYM+HaDSk1el+5o+yVmjLywukjaEKi6PmNnASl3S/bW2RhqSuG3f9s0sHCQT/a2o4mcCGh/eb0p0/Nyy7BuPh1iCUq/61TZetS7Akqm9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752506778; c=relaxed/simple;
	bh=vF+3oIvR9G4hKNt5aFVVvJYF/1g2cRUpSfW7rhM775U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jYEvccZtRbIATot//KTgpozuUexJoM2T2twAIHyZFvOiTzRWKGaW7E0yV4IsQP/ETlnCJ+U1G8CSiVuRJNG1I9NK4crM4cm/rJZJGKDQanVOToyru7fiJIDlJD4iKDtjbaOisbil7vU4VWBGs4tE1qB+hBU/FiUdnzHcMbWOGgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p7U+IPM9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9BpZF021479
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P0KRc7GaMj1tOTzPOduI20ILL8jxHWMuo/B1S/LPmPY=; b=p7U+IPM9yFev0Ztr
	7fs7/0q1vy3dqA4l6r/cM7wp+gal5U++3vS2iDY0/d3oK4ipsOnMvheV5Jwh6XKL
	iehvLY6jz88N79HW+sbrvn4tV2Z20MGCCcQ2VOgH5OnO+e423lm7Xt2pD9M9ZnNa
	zuz6bDDtey1v4Y8x1CDFwlta6y4+s1ZK0G7Idk+nnKe7UTpwOe7oky7Gu9yOJ+8y
	XDGCKnNq1PM0pm3lyUYRHPW5WrAsnZsOdfIWXDnSVdApEqjW3IH0dV4SxhwlDUs1
	MsDJVEUReZzX4o6qgKyPFwDkiTDnGU2gpmed3RvB2iYqO8IDzts7dD5o/71u1RwW
	XlV/Vw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugvmw3k1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:26:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb030f541bso16236376d6.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 08:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752506775; x=1753111575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P0KRc7GaMj1tOTzPOduI20ILL8jxHWMuo/B1S/LPmPY=;
        b=sLSBat/TAopwxs5CJNRiElT/kkXdnDE+dXsWYMw+7CiOTMPbdJ4FBgTjoYHXEJcqSy
         WpnuQTBwz4ZElZPG0AD8f2mYgOoB3oqkXaISG7TbKfBqT2K3S2F1mN7rf38ACxku91Ri
         UTekmKCu4d0vfIGuf/KqPRaBJbn6kP/vHaAzpvPiUJla5FvNzAdpaQiiUI0weJft2cwi
         SmJJKfAAzfhVKOhsNR4mgq4NB6Ew/TF8a132hxz3W/4BKuwyaWgrzrhorF2SZGSKcH8u
         eKdAsszQXZd2IiyefZ9kiWDQb2MCNsCF447cni7WOD3W9FKww6uGzut6xqypB3HcoB7g
         EEqA==
X-Forwarded-Encrypted: i=1; AJvYcCXkwv3+jcDlofCbQsJL0BjcAYWgtQd+M9giPdMTGo/CHRixMWK77g63oxFIn1NgR425BmBFI0jQjlUJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnjcf/kX0Vk6qrS0JDyZJv3kvODo6FgBjOv0yCSo3HIEc+gIrb
	86cfq2b6XafpFrImiVmuGEGmhLdT8IayeJFeENfYVbrRMaaWZ4QwXehDbxhq+bRq70mcSD0cEPs
	pg+eM6OnKlm1/xa1AddLhROcL33IMioFPm4wvIUmD5BJoAnGuctl5y5Q6acJWHxRn
X-Gm-Gg: ASbGncumtoPHY0yHbc1tHvu3ev/gs2qW24hGvt90Wo4lzFLzU546e57rnDFvjRYKWkS
	JMRJd2c/n1Kmsf4spJaiHQY8YzttsOEo3rZoi/5DuQFFsoEApErKDG5gp8X+n+uaQDSHXN+F0YU
	XHolFHoF4vNA87nKB29ag4lpdgnhpY/QNv57EQP/Ck5BQKXIIzcugL4A01Rb2TbpFGPXGr7Y1B6
	/N50tVoXUKlXXBgaqMEmoERu0YbwdcLPgHwHck2XGmU9pdCPmHkVDe4ZV12fPC8FRgJdmHsChye
	QAJGWgb/MrCUNaXKw6lP18HDSJO9jqGjGEq/cdXvJ4cJnXmzZRODboE3fYwwgBrElSjsQWQ2CZ+
	Lzxsb5hztqWXK1R6mqxIh
X-Received: by 2002:a05:620a:4611:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33001b554mr110229785a.0.1752506775197;
        Mon, 14 Jul 2025 08:26:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEX6IBsdWI9mVsEHLZqT+fwHbjjGKMDEgd6Hp1+Vyy78VGrEJC5/M7BkrDO1voksLgqSiIbnA==
X-Received: by 2002:a05:620a:4611:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33001b554mr110226885a.0.1752506774578;
        Mon, 14 Jul 2025 08:26:14 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294b7bsm838033166b.136.2025.07.14.08.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 08:26:14 -0700 (PDT)
Message-ID: <dd2754ee-ce89-4335-9974-6df4b612d3f7@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 17:26:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -5R9ZiEx4SQS5fb8KYFmFIZ5mbBcXEfC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA5MiBTYWx0ZWRfX21aJRjn1ySWp
 UO3ll4h7lQKBKIAz+v9epxC6JpArl20H/YmLa9SgDm+becpfQn9UFwU0GDKpUubMup4mmmsF5pt
 W75fzVncuPUWkW93TeWG1CsrXxQZFBUWEw5HD1YvlomJ4knLZ0kpnap/OoFNbTckn9YjH/WmMJS
 zIwy8sc7RT0OYqGBqbPJmec83NIYFycwO+dCvuxvvA2bxwtT9M59E7ozpyavNOxp34RdFb8SA93
 Hp0Z88x2OJlD1DzhLxMEnbBsY9J7iLggbjPzBF2kiU/ATexZ4rzTKTliTWcZNAlYpmJwYwFuPqZ
 TEjM8Xw9N53B+WhfplTntETEyDOQyeqaqZirC57c2Ge/wwjGwEEg8CsNUR6pQ5K8dXDLKV4WpFY
 gPAHOxPDpHEbQ7pdxMY1wNJyzHDU6ngymRHky9pVpVaYTzn8zs44Yo1xMzVAXI6Rzdb6ecF0
X-Proofpoint-ORIG-GUID: -5R9ZiEx4SQS5fb8KYFmFIZ5mbBcXEfC
X-Authority-Analysis: v=2.4 cv=C4fpyRP+ c=1 sm=1 tr=0 ts=68752198 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=IbGhK8io7uJmbBfgTJ0A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140092

On 7/14/25 5:17 PM, Bryan O'Donoghue wrote:
> On 14/07/2025 15:58, Vladimir Zapolskiy wrote:
>>
>> This proposed device node scheme does not solve the known and already
>> discussed technical issue expectedly, namely there is no given way
>> to describe a combo mode hardware configuration, when two independant
>> sensors are wired to the same CSIPHY. This is an unsolvable problem
>> with this design.
> 
> I think that is genuinely something we should handle in camss-csid.c maybe with some meta-data inside of the ports/endpoints..
> 
>>
>> Sensors are conneced to CSIPHY IP blocks, CSIPHY is connected to CSID.
> My understanding of best practice is data-endpoints go into the consumer not the PHY.

At least in the case of USB, the PHY's of_graph includes signals that go
through said PHY (so HS for HS phys, RXTX for SS PHYs)

Konrad

> 
> These are PHYs with their own SoC pins and voltage rails. They should look like other PHYs in qcom and across DT, IMO.
> 
> ---
> bod
> 

