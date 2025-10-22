Return-Path: <devicetree+bounces-229848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F3BFCAD0
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:52:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BCCD1358259
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A3234C9B1;
	Wed, 22 Oct 2025 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="huYSaP9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EBF34C833
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761144633; cv=none; b=dTGrqelgwMOfTIB0wbASQF3gMfKRh5fLmkm28xF1lOnls8YnPbqGzemwl2FB/ru2drVdT3K1oKFuBxJcMRADCJ+7DukcYkNA2Qy4uVuXIS2KMJuh2Ta2pty+JhCoyQDHvTu+w8OwjkAMZkOgA2BbSQaZrWutlbYjowvGNgOQ8WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761144633; c=relaxed/simple;
	bh=1/KjRrMsZ/XCDGwFexf3EAhWXCX98/VuB2qIhSrUi7w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OP4AO1As1fif0v21rg5gfuptv4XBrK4VOIo+b/5e3fWs+lsWIPt338xg/HHj6uIf41CjJBoqGUOvDZYp4DzuyQeYyOYwNiQuANAiT89lHlM70wgFiClmEmt1WUoWCnH2jfY14+LdJma93SEXcF/XjgFVzCi69KVhxKaa6bHGuSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=huYSaP9C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MB1R7u026889
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:50:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	INq9WPyFfBY9ghUyC/moYyME3bMMJgDJZ6a2dYdOhJE=; b=huYSaP9CnOQ1bi0l
	rgZhra3KiW+/C/yFDmnWt30f5/a+iW8a5OJNOk9Too93qN1VgXzlJAADJ/+44WzD
	9j5UX4NjYpQ36yRC9GTtKKc7Y6Df9ghIj8oaj5wWeR+9aBK1E0hchzlRnr6CI33Z
	zYzFDRKUsJ5Ktx/VninPR1qTaP8WazK1hv5yYj2Dah2Vpo6x6AUpcg3ulB+Kpdb3
	SIdkwQzr5e2pLvZgQ1fPvUgutuHIKvelZ/h8Zq73cfmgQdQiZTUT+aX2VTCA5e/L
	j9WwZsa3x8ym2ljn2LdgV4NYTovjjmxEw5gezOI2Lu/Wh+X9eDbQfqEq+Myn+LK/
	Cg0i5A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pn87r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:50:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8b86d977fso4371501cf.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761144628; x=1761749428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=INq9WPyFfBY9ghUyC/moYyME3bMMJgDJZ6a2dYdOhJE=;
        b=dRisYpjKdN895h74GDizPdiwXPDAglBTiz4igfiZ2BpxY3Wy0oPBCBHK8AeCW+PjM+
         m1nrxt2rlYu1Nuj9wW2LWiVeHimbyT0Tg8X6Z4ClgE0PbQaDnDZgjzxybYi5eEnaxUqg
         O0HUOrcohyEomwZ8s301xEjPdrJUD4lco4+62SZUmUDFJdKfFhV1dYMqGVplPiK7ls92
         WZcqsmH1Y0ctJk8ktCVy7RjUnK8C1e9L+0aIYQy7BRBlPDMz7ENA57UuNMV+8ESel3Vz
         GLR4zHXoHWgnlJS1tFgxn1Ug380aazYkUZ7ushQejyaeu1NMQxzm1PqWJVoBxu/sKFPE
         JgxA==
X-Forwarded-Encrypted: i=1; AJvYcCXtWOThszTdsxJic+mpLMO2GoUsUVDardA7ttKM/p43pkGhPobQKiCxoIcHI2HFFuwqMHGTgOINh7Zg@vger.kernel.org
X-Gm-Message-State: AOJu0YzWOiN/5h+KklL4OSmo6KnP6Ozp/mk8v5StZoRCZLnlgnKKEBpp
	vgUjMURcDkXSi8sP9qUvt/MYy+/l04bFk3MBAC0TRFQpqman2rddxa2CIMjeszACSOIExShD0BT
	QpPtsPg9vceQgb7ymjh6VbyR27kmONiTR+hmdh4fEOArVQcXL+KieHTp2YkddKer/
X-Gm-Gg: ASbGncsWIt33WDtye6wB/weyRJEFiqHXErWcwYzQbUxeRcIf8Z9pq4mBSXw4bEwIS68
	1IxHEX/wg6tf/pBzTqkE2b7mbdBBMLkIB7MB6kpUCNomUc/BvDMdCLhl+ghZbakhyxd5NUqIIw/
	F/KJtS0oMNajfmD02pbEdtZCjsMZRT52JFEeBEAGHn/HfXum8PnW53g85mnPJ6zKwKifEpsz+ZA
	VkcpET+BfwyU1g3+blszt/ep1mAPVyLlBbmWYaVvQd3Pz/F31TT1GgsBaelVQVZ2RcYav09OyV6
	CyuXrDBpWlHOhRFRytZdxjt+m0p2omkpW5iajTqreY3HmKnH+CDRUduhqpyMVP5SC6IiCHlkiH+
	a2PX7co5r3stuzwk4pTVKQRj2NIBxqLncwp6GEX58VlE7aoy/Pfm9bs+C
X-Received: by 2002:ac8:5a88:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e89d1f794cmr163149931cf.1.1761144628222;
        Wed, 22 Oct 2025 07:50:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyMZ9k+YL5Wi+O8wwfKKdoq08qbg6uZyT+lVQy1vWpqtzoyM414DZneAUJEWMiRHKY4+8HcA==
X-Received: by 2002:ac8:5a88:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e89d1f794cmr163149711cf.1.1761144627733;
        Wed, 22 Oct 2025 07:50:27 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c48a8e4easm11883700a12.5.2025.10.22.07.50.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 07:50:27 -0700 (PDT)
Message-ID: <acf7b931-eb67-49fc-b9ec-abd56e636263@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 16:50:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-shift-axolotl: fix
 touchscreen properties
To: foss@joelselvaraj.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251021-shift-axolotl-fix-touchscreen-dts-v2-1-e94727f0aa7e@joelselvaraj.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251021-shift-axolotl-fix-touchscreen-dts-v2-1-e94727f0aa7e@joelselvaraj.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfXxfM+M4bNtued
 s+NICCF6qHzm4UqS3+rAqWIIyLr+jOvZacELcwhS+Mj6Q/nUbuuS7m57EK/n8vofwlAxPPf2WjR
 NMXqYeCDEoTnnIIWTFsNKqL0kiQ+KHH3j2MgsgXws57GspjIexJ4Ko/USlE4u1Utdlx+ZVetTls
 JMs1dLyKvY1ZvuBNnypllPSt/AMh9mFdtdz6HCJfAZxFdnHZKyA8efv8tECGLDqDK9ihDLCYTNr
 LNeAcUiAXR+2EpyR017pdyMUnAcgRBtCB/hoT+dtrRuCwHURdoJGZmR3uz6hassgz4R4ieAjWiJ
 DV0NS3fY0xJBRP3FYA4FSLKc24SRiGr0u1ij2Ty/wo4iUmLYHTwoNeZIJJHle3Tb136lxah9l0L
 YMjLPr7jRVyZc2ba5wDkSEEd1/EvGA==
X-Proofpoint-GUID: V_SZ5TZSV8QwWuYyoc76Dxo8Sqj6hyBe
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f8ef35 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WFa1dZBpAAAA:8 a=EUspDBNiAAAA:8 a=HvsTOjCDc2fgz3nxQJ4A:9 a=QEXdDO2ut3YA:10
 a=ZXulRonScM0A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=MZguhEFr_PtxzKXayD1K:22
X-Proofpoint-ORIG-GUID: V_SZ5TZSV8QwWuYyoc76Dxo8Sqj6hyBe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On 10/21/25 8:20 AM, Joel Selvaraj via B4 Relay wrote:
> From: Joel Selvaraj <foss@joelselvaraj.com>
> 
> The touchscreen properties previously upstreamed was based on downstream
> touchscreen driver. We ended up adapting upstream edt_ft5x06 driver to
> support the touchscreen controller used in this device. Update the
> touchscreen properties to match with the upstream edt_ft5x06
> driver.
> 
> Also, the touchscreen controller used in this device is ft5452 and not
> fts8719. Fix the compatible string accordingly.
> 
> The wakeup-source property was removed as it prevents the touchscreen's
> regulators and irq from being disabled when the device is suspended and
> could lead to unexpected battery drain. Once low power mode and
> tap-to-wake functionality is properly implemented and tested to be
> working, we can add it back, if needed.
> 
> Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



