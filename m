Return-Path: <devicetree+bounces-249451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B87CDBE13
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D0A030161B1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25753329E73;
	Wed, 24 Dec 2025 09:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LPi+nkv7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZVVYdTTs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6ABF194A76
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570261; cv=none; b=UBwE9jV5+sHlWMVpcHrVFQLZR5plwe0RyWAKItkaxjRwpMx6uuDwkiyBQU9FVVOLnC6uMhHFFWOz7lIWDhV+7YCDv8rU1i50cJ2SAR2wTpMGwhIDPrJxYBXl/eXvkfxEIkBM27m9QHYROG73DyhDe+1BRostAIlxZ6hUfjTKgMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570261; c=relaxed/simple;
	bh=/Q4CkAcas4h1N7lcP34o5Srjcu5xfeeAGTwIdCoaygs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bh4zkZtnsa3yLgRfIzOll/84/zccpQO1xeewxNoESEmJ7KWEEqJJ9nmwXhu9S+UBaZ1rZcftCv9jgQDTHjbVDya8s79WGZtC41Mh48d7xhVefv1K++tBaE0FVrcKl9hdaSQiyj5i+WfTut2CUnbGv/pObZmt1xSLTtbpvCxdUSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LPi+nkv7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZVVYdTTs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO5oui71018493
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:57:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zw3noBsFzXaFPcg5rptBWHvBfDfNjU9mdwsPZFGR+Lw=; b=LPi+nkv76TjyHtGH
	d5TNH7iyn8Nt0cygmuZ5wCxqF/eDRoUWbsl+INLNbzl/nd8PZh56IwGYnHf2ft45
	JZYV3DRNlACDoR0667E/6p5Bo9KueRphJSTeaYNFAbh7f0E35sRcmOfUqLREW7EK
	KCj88sag7dat+fLZuc4IDlyDXQIvJOQiwORvx510lGGK3jCTihJ4U+KtyRxj4aex
	RAm6auLwsnxH+WBrDOxTo24nGlUJSgOAYXM9+ZGhqJttC5Sb2Lkyql90JOTQsSt3
	uT21brPZOQnewrzQAyFBEj223LYcncXPurO5KCtL5QjYAEfuadUFcEbObhFVlSKH
	HjG8cA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjsah93-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:57:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0a4b748a0so138033565ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766570258; x=1767175058; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zw3noBsFzXaFPcg5rptBWHvBfDfNjU9mdwsPZFGR+Lw=;
        b=ZVVYdTTsnLbOIHk0J+VW3wA+JErStYHcGumzSOViJk+TThcRRmCivqplFzLwvvpisx
         nOezqDUmvTh7LzcqHqBZd63d6qlZQNVwFCewAQSRemL8SFvcZ1Xxgb6XV8CPksXma2uO
         8B4TyVyljF6mDmMBu1LV3e919eUEznGBRZyRMUFzg01C+vC5qXMsWNAs7fPREodaOYeW
         Rw/m9/RXmpsBmRerOH9AS4e3vHaXQDOZxVBXsZE/BYW0luTV49CFSzHrtRPbXVYF94Dm
         Ha1AcoK56+dMDNTLKHeTryOCYF9RVVLyVqNKoU2igbfGnhZcK57XCkfwX6eaSeHqfAkZ
         AzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766570258; x=1767175058;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zw3noBsFzXaFPcg5rptBWHvBfDfNjU9mdwsPZFGR+Lw=;
        b=KNBiEXu2c6+fNg3mphT/uHKJAuWZxHZduMLZ1Rck8YiR4VWVYvFGzE81cViK9WnOZz
         tsEMhVYeAu5jIELxvTjr5AF9eipDjYRj0yBRDFS/LgQJzcNe7OC/J5+k+NL4w50nId4m
         QZJydBt7xxurg0gRW24Q5WZopRDqeI5KFQiw4xx7YZ5AELFBpJCYK//Lr39BDtLUDOEP
         J2PgzmSZmlTCbXuBRHwDoaZBQ5Yu0sShtkFWp4AqHxWq4qWJrns2Nct/EGcy3uT+XvkV
         XsrW9ZeAP+L5hGykRe6u2raTrPOU2x31+OHCkRInUp903WhYG25YA3I3wqHPSMRwNufo
         oGZg==
X-Forwarded-Encrypted: i=1; AJvYcCVTy/00YoLgrOWq2nzLujT4vjnZZjT/HrZHgJGJoeKBCSIR4gaKJpFPOMggUZ53v1PYg4gKdeMUXH6Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6P7rAss7MScfOt7jtfp9JfaMlKdkKeW+we7oYd2dQb2AO7b6H
	hGoIE+/wPzlqShJYkLkxEg0VU2uXBivAsO2wlE8CF36XufpS7Z3mrG41CsYq/epp9gWLQgH0S5K
	H7mswX6I3Dqut068FEj4Q35eV0/IVRorekABo7Uzc42SBv7OaS3b4fsbkExQwz7do
X-Gm-Gg: AY/fxX5gQ/y8EWaAxqoI66nlEj6Hnlwby1BK+C6w6uTpvdNgXbSxfYNPJc8CTdmjH1u
	NbQOeYWdEu5SGBKG/h608jTMQ75LYbAGSK3jlb9ywX2S6Dms7w5DnUj40mybpnvvhTtDFgQOgrY
	dzcUGZkwgamqlWJlfKEcxlavJ2d0zbaF2AseqqbZLTptLMzmYEvFwV9REKHpvDkUt4wBBYBfMPF
	MAo9n0Adb/XVWjMx8aM1JnFcSMesNrvroaO2IIVpmPOrBVPVN6dWW+76oO5+Pr9OvjUREuqgzWZ
	siu8Z3QLyZK2GhmxV4wj8nEc3Ut1eAkWxYNIIiGG/I59JDAZPz7lbTv7qL9sdRXb1ORJkrq/oKp
	W8kVbqe0f1Yka3LT75kfY4uSoKOO4UnN0ySgAQqqTWGHp5/U=
X-Received: by 2002:a17:903:3d05:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a2f2a507bfmr174447455ad.44.1766570257554;
        Wed, 24 Dec 2025 01:57:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9+54wdsQF+AiT2sPrIEfFOGcNzD0VqXPNu6/Lruw8qWONgqw+u0NWES62QVhZI24vJat+xA==
X-Received: by 2002:a17:903:3d05:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a2f2a507bfmr174447275ad.44.1766570257038;
        Wed, 24 Dec 2025 01:57:37 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm149180925ad.82.2025.12.24.01.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:57:36 -0800 (PST)
Date: Wed, 24 Dec 2025 15:27:31 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <aUu5C+evZ/ECJbGQ@hu-arakshit-hyd.qualcomm.com>
References: <20251224-enable-qualcomm-crypto-engine-for-monaco-v3-1-6073430bbc13@oss.qualcomm.com>
 <f11d339f-5400-42d0-bdd1-5723083285bf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f11d339f-5400-42d0-bdd1-5723083285bf@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4NSBTYWx0ZWRfXwEYgWI7dSD4I
 7GivDLgIqKu++N93EArSaRZUTbBUmnHIR61rY9doTUhMsGt6yu5rbjyPjTS44aPk7IN8z8Hc5bl
 NG6HKvjOfTMjZ3okjrGq9fKQsOAbf+n5sfpXDsIu9kmFCT9RrNbCWwbEmj0L3nSeMQpj99kiYQq
 7y/Un8smDVObVEj2JhGRmWhdnxHUx2mgGQ4yroWT9FkPFpCpzfGQAB9GfUEVNk09rL6j8mStYmp
 vHbs8GW0NnFtMzVGBaQWHLrXWrwRBkS8RZRUUb4MqMwApJNVyLzNI/f3QUn3Wr8Z7pXgUJ4ieBK
 fLC3c5jhWt3t1UKFf+ePj4WykH2VXKV2lOvLuSLNgAFgBdNM1006emCTpRnplwsvaXxIg8ndjQo
 qkBjnJw0nvTlZN5iAMq2zUacbTxmDo3Mr3sqY/2c5ZzlIlEl5gDdCq/nF2p+VKlH9Bwj6Aijawo
 uwX96AyE4mpbOn3MPZQ==
X-Proofpoint-ORIG-GUID: SVUaPfkL9nKV8EuWkBA2EQ0rK1dmofKt
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694bb912 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=53ezCMPwJD-X8L-UFSMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: SVUaPfkL9nKV8EuWkBA2EQ0rK1dmofKt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240085

On Wed, Dec 24, 2025 at 09:42:03AM +0100, Krzysztof Kozlowski wrote:
> On 24/12/2025 09:33, Abhinaba Rakshit wrote:
> > Add Qualcomm Crypto Engine device node for Monaco platform.
> > 
> > QCE and Crypto DMA nodes patch was applied as part of
> > commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> > however was partially reverted by commit cdc117c40537 ("arm64: dts: qcom:
> > qcs8300: Partially revert "arm64: dts: qcom: qcs8300: add QCrypto nodes"")
> > due to compatible string being mismatched against schema.
> 
> ...due to Qualcomm engineer not ever bothering to build test the code.
> 
> Was it build tested now? Typically this is implied by trusting people,
> but not here. Trust is lost.
> 

Yes, the updated patch has now been build‑tested (including DT schema checks).
The previous issue happened due to an oversight on our end, and I agree that it should not have slipped through.
I’ll ensure future submissions are properly tested before sending them upstream.

