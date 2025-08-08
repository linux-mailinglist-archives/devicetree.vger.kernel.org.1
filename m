Return-Path: <devicetree+bounces-202684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DC2B1E5E6
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77BD518916E3
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 09:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985BF26F45D;
	Fri,  8 Aug 2025 09:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gkMAqT5t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA3525DB07
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 09:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754646439; cv=none; b=qBMFbM/RJ6+PFjQf8Kq2hQ3X24MvWribqpMscE4oCO3l0kab8EA0retI0MUiPePDqwMnaJK3qP84cvgFM8kyYP0Hfy6rhFBsv3bkMZYTJwdZp9sJVPWZpMwyFCZWplGaAhoHyJhWdLIcu0mRWIqdGjSacH6ZxoNFSdGGKX0TJ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754646439; c=relaxed/simple;
	bh=N76AjeKqWWaDCP1rb8c1+wvNKkVDpoXrk1DrDsc9vc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Go+zfsb0FG1Fsjiq8T9qarTHIidsRx7a2NLRDznUIMP+YHgB1MzPrfK8NWExXOh1o+3wDvc05T4e9eVj9BcoqITtmr2aQaqQhr+WFKdRTyFzRUpx6Mq3ugHq4xCXaRUPCl32bmQ25VsE20ltNUnQWtEJtFuwn7xQ3HhV/MDZeKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gkMAqT5t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787UXVP024747
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 09:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c5LHAQzvnX1on7gg4etzzi9ms/GGnbrPCaWqPhltrcE=; b=gkMAqT5t8cQfD9cS
	qcYMunlCYEiEYe3EyORPs9nF8uLZv36b20wjbimXWWWE9FbJXQVZfttf/PRvlors
	GY/fOxK5yXW205ktkdNQW2QnGpU/F0jfjnT+NE343saXYDjeGoR4Yc6s4iXZTpYh
	WnfiY7SiKWsAtSoOtn2XPndGq31sAOnYJgWLxl8EB+tmEL0uqufsOyZL8ajxFZvf
	ihUjZl3sxUL4PzPGYBZbT8dFgZrG1MAK4AabRWhKKiG9YHQfezvYijya2MDNVAgT
	AkTt6XuyZIovmdU71kcJcrMGeRKeNNRfkEomxHHUrxLgrnDHKHh0mIu/FDg5iRYf
	tsHy6w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw1hfpb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 09:47:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7073674bc2aso6394736d6.3
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 02:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754646436; x=1755251236;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c5LHAQzvnX1on7gg4etzzi9ms/GGnbrPCaWqPhltrcE=;
        b=ot8PxiuOOgS0Co/5oEUHaplpFYEZF1FkbYI4Vjnf/Gnr9MW8gTAoAfY3udFfABX4nb
         wpiZaD78tU+KHSgOReoo44v164l1HcGk7NUbFLJM6p+G3dlHISauaDyBgXTgw+Ai9SCG
         Uo5AIH+UyGhG4OWgGrETF3VLAe8p8mHEybIYdtDykVpzEqtFKpklD03Riq7NYUeEwG17
         ++a+xp5pO6e5cDNck3D1THWViXIBMqgUpbB00UAyXafR+W1u+3WhCRPJTUdLpomIaZKF
         OjNvFKvyO98Nz66rA3X3cUbBCl8wpolIHl05KAOKipTAjVNcMVcPvrS0XVubX8NFdPxz
         FLDQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4X2LqbOtnwzpPr4z6b0GoT0g5iWyXaxTbuAp4aofLu3s2zm/D+1CHjFzTOmFlVYxp2ttxmsk/JTSO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8VYL6ixUZTw7+bN12a08lBaDMetg5afStnHrm5exmPSHpgXem
	Jkt5PjYUxiSMmX6IxTD18/6G+XsMWm7hvgH4wP3WFcgyg0vuK012k2KYu1CZYTiyhyGWd90C05R
	+DUq523nU1bk6TuS5h8PMdrZQ8BOOiaZbObyR/obxvvM5OQjdGNZwZMhCxyJ7poDm
X-Gm-Gg: ASbGncs2XJDOb3cgSmo7BtotOy4rpBqss+TF9CS7Uo37zS/MxLP4W9cNFXKx31RYLIL
	6oFzdL5kxy5qpmv0TULEpByUGK3Em2TD4Cykx1gUHN6cWXIVd3/P1q2X1slkVGBP46vkaqGaNkg
	n+YO8Fs4fD1oWvW5OrMUSMhyKEvwqlUszV0wbTK+jhaboKthYjfWUbZ8BTEjlF2ZCtBZnybLIVS
	a2aFmDWdFBeHPBOUW5wlqyVl8puHSZa6oJE5EGxcV83iSomab78nfVlIuzfxdD+ChfgTZeBePDU
	nKCT8U0KlYK4HYd4nmr9NDjnnMvWG2G+PsSVH8vjXsdl+aWPFoljGWhgyfRtPYCgR6egLaS4dto
	/Z5zgtxaI8ps8aiGHMA==
X-Received: by 2002:ac8:59d2:0:b0:475:1c59:1748 with SMTP id d75a77b69052e-4b0aee278c8mr15475181cf.11.1754646435981;
        Fri, 08 Aug 2025 02:47:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf+bmZXtrB5iN1ZcDOo7CVlLIU0Jwj0Do2OpnxiPusVz7TYkqt0exOl8J3+oBRed9YiUlNlg==
X-Received: by 2002:ac8:59d2:0:b0:475:1c59:1748 with SMTP id d75a77b69052e-4b0aee278c8mr15474971cf.11.1754646435422;
        Fri, 08 Aug 2025 02:47:15 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a076620sm1457229666b.10.2025.08.08.02.47.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 02:47:14 -0700 (PDT)
Message-ID: <488da4b7-1017-4582-808e-f8f244d8a975@oss.qualcomm.com>
Date: Fri, 8 Aug 2025 11:47:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Add Xiaomi Redmi Note 8 support
To: Gabriel Gonzales <semfault@disroot.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250308013019.10321-1-semfault@disroot.org>
 <20250311003353.8250-1-semfault@disroot.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250311003353.8250-1-semfault@disroot.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX9e2q23/LpJRP
 apSld9Xaw2cNlcHkwCw0+PZ3u6FLIBubdJ+seccEkot7wb0prSY4zvuGVdzdppN5p5iGWg6VYBo
 wiSJPQ6CptwYQIELlR7yXBpG+Gk3JLUcViZGorw1i3lfzc8qrGQlUvlJSuXMUynrcnfw4d78VuT
 EEXorYWmL+WDrKxEHaywbRVdPLAmmchmYBgqNL7Y61FfxroA1jd/Kv6RnIl49upnVoQMJkVHqld
 UeRyGuBRDYqV4ycpxoC6N++5+Kkpm32TaGkaExAS1hB/tqvRPvzZvqRvrUP8+PL638dsTSzEkrF
 jRyZIxGbvlq2g7SerGtlD4YD66BdNGc7a7u0aNfXjMvHJ8mhJ1CyKcnb/j4feO/+362g+Txw/W5
 pj+AsGIa
X-Authority-Analysis: v=2.4 cv=Ha4UTjE8 c=1 sm=1 tr=0 ts=6895c7a4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=dqPQs9Fgn_eni4IfNrgA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: FeFoMcnOaSROxwWOLUdRjBv2RQgdzXzy
X-Proofpoint-GUID: FeFoMcnOaSROxwWOLUdRjBv2RQgdzXzy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 3/11/25 1:33 AM, Gabriel Gonzales wrote:
> This patchset introduces support for the Redmi Note 8 (codenamed ginkgo). 
> 
> Changes in v2:
> - Add missing cover letter
> - Fix up commit message for schema
> Changes in v3:
> - Use qcom ids instead of hardcoded msm-id (and other changes suggested by Konrad)
> - Switch up model properties and qcom properties position

Hi, I noticed that the msm-id is failing the dt-bindings check (need
two values, with the first one being the SoC ID and the second one being
the revision - 0x10000 as there was only ever a single rev of 6125)

I also found this dt:

https://github.com/xiaomi-ginkgo/android_kernel_xiaomi_ginkgo/blob/main/arch/arm64/boot/dts/xiaomi/ginkgo-trinket-overlay.dts

which suggests that the board ID you used may be incorrect

(you put in 22 and the link above says 34 - FWIW 0x22 == 34, maybe
that's related?)

Could you please give the below a shot and see if it still boots?

From ccef64e4058ba657ada5000ec3c2aa9b682c552b Mon Sep 17 00:00:00 2001
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Fri, 8 Aug 2025 11:45:06 +0200
Subject: [PATCH] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Fix up msm/board ID

Include a version in the SoC ID (mostly to appease the bindings
checker) and fix up the board-id according to match the device's BSP
kernel.

Link: https://github.com/xiaomi-ginkgo/android_kernel_xiaomi_ginkgo/blob/main/arch/arm64/boot/dts/xiaomi/ginkgo-trinket-overlay.dts
Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
index 68a237215bd1..52f74f22764d 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
@@ -19,8 +19,8 @@ / {
 	chassis-type = "handset";
 
 	/* required for bootloader to select correct board */
-	qcom,msm-id = <QCOM_ID_SM6125>;
-	qcom,board-id = <22 0>;
+	qcom,msm-id = <QCOM_ID_SM6125 0x10000>;
+	qcom,board-id = <34 0>;
 
 	chosen {
 		#address-cells = <2>;
-- 
2.50.1

Konrad

