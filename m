Return-Path: <devicetree+bounces-163609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B12D9A7D835
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 10:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14E3E188A6D0
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 08:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7718C228CB2;
	Mon,  7 Apr 2025 08:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VOIuQ/Fg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1E612C544
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 08:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744015255; cv=none; b=F3cnkmBALRG8MasVFtbvTzOnwtkb7O4Qyb7b0K3pj7hhx476HZT/lFj5IbdoRpGwE9iLe3yv6tFMnpHR0AgTPMOC9WJWYkM3jARUGS2buufexb6RKhEfaGnXzQY1loXIHI7aw2K9fXl0kjIGbXCUlC895vgikd8koh4aYrUVALk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744015255; c=relaxed/simple;
	bh=onZLseSQqRpgk7xz8fY3EmUBMLegLFqoFajCvjWiZiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lHfOrBWBN7MFmRDZv4aBNI9jEi/dgObEwMB0FthA/c/TXhKl69XQL/sWGm7Jx5Qcv/y3IwzQnsumh4uI6iPtHAAOMkHj4cY9ZxH5K3Zs+fFbr7HLMH16BaPbpgfVdWr/A+AVVm4b7TO8jgf+g513sXgz1yfoEcEJL8ORlpl2bH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VOIuQ/Fg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5378dkA0022387
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 08:40:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cwWO+kRWwZtdaXCwtTkeE3DeChgwl5XhdMAVcSTTaXs=; b=VOIuQ/FggEfjWtaZ
	sbpFY8lSiISTDqAh4/iH33p9nKWCwqBojDZncXN1d7lKC/GMYMwaN04l8YuciECG
	Jz4PBjMNxhhHexDA3eKwcl1UcPXdUUBwJ60CPvb7THSMneyBUJCGeOCNGWlAOP1n
	5iO8NsydiQmiEBdLeRqHbzOe+QLDL1d338LfHCLGikqROvO5YeKGzW24Qds+1KgC
	YqnJPzCxD81xNfyDaRnFL8wpQ0/gE34xXzUVxidOEmBFzXZpuyaQObJ+9b9as7Xg
	KSvH2+hloaN+vWc+S7HSD2dtiBNiNgfbkAaZliM7RKlwyzGUoGJrIuWK1uydZlNw
	etar+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrbknp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 08:40:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53d5f85c9so105610185a.1
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 01:40:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744015250; x=1744620050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cwWO+kRWwZtdaXCwtTkeE3DeChgwl5XhdMAVcSTTaXs=;
        b=AiGw0KcHcebsJMCIrCc3PRqGiJebL95J9smSowuSXmpf+tYY1KI1uPaGIdVzLFcywZ
         9PhT9Varm/YGwzZIFNilwaSIR+6KOSFIzsXIjPcIduFWPcYq9kVbjW5GHdRY40p4W9EN
         psOtR+X9AnGroK2+kPd0Ky1Rp5jfyWzl/E3WNyuHwNf5oRA/O9t1j9Yat66kKjzrHPyd
         edPu64W6dP66ebjNjO6g+ZI+Sf1kCNlay6Mb8svKlDGHJHvGb4H6FRl3IKCmlY9w2FAl
         Vmi0GpV/Ba3psg8mH2oXpeYHx0EV3N5S1OpyGCiYUNd9pNg7z3ztfeuGo31JL90SuVT/
         Db7A==
X-Forwarded-Encrypted: i=1; AJvYcCVLAiTWUdERw1mcb/p/qDpJo+8bWB+CneuHPVYdYjP/AVQO4af0nv9yrY0ioSCuFG8k73oKKnxH9yC5@vger.kernel.org
X-Gm-Message-State: AOJu0YxmgZ0Fc1rssI8G7/Zeaz9QCMK8tHtcM1mUXpT1RgsVoyQdK3IG
	dlngSMT/pxMDP2FhNODvDt/oq6W84QtvkPIbFaI0sOJDNPukADPRMF0o22I7z9aiCI3Ov0z76Mq
	sf0lNc3oUNmutCC6qnuK3l8W4PsBU9AoQuPDOf3WgHn8Gq8kQEg4TDBgL67z3
X-Gm-Gg: ASbGncundLEjHpSE3ycOnU0RrJM+aLv6rWgCLyC7QqBUyIZgZfo/6umEeXs3XfcutP3
	f2uBJTykY95LaNnN+L5A/tUN7iSkKY2ksIHD/YsonwquamEnGkYDzXhN2ndfo+hFe6Mu9L7/kDQ
	7XmsZLjVU2BloWYPs/R3JDdNv9M765sBIMIXSMKBhwAB55u8suT3CDhjblkuWEQ+n5ntwSszfRs
	aj1ID2EBj1hgAykfOE/rR+otnjHABGDIRITy1J4GPVoq/3VRKUd5b+CB/u7m4c/zDDZ2nBzhMfl
	OcRw8x5WVUKoD8rgVtvk/ekVXNRYOyp0W34uOGHLLET/eYT3fSfERYxJ56sOhkzXmFThXQ==
X-Received: by 2002:a05:620a:2849:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c774bedaf6mr590208385a.0.1744015250614;
        Mon, 07 Apr 2025 01:40:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETuFZ+vsD5+Sv9K/PkFBkn5sgkSbEsPdKQDRnhPrYiuCM1GOPeod7sM/VUOp7RK+3maRUJxg==
X-Received: by 2002:a05:620a:2849:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c774bedaf6mr590206585a.0.1744015250316;
        Mon, 07 Apr 2025 01:40:50 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe9ae46sm723668066b.60.2025.04.07.01.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 01:40:49 -0700 (PDT)
Message-ID: <0c374a5b-b2fb-410f-9d2e-3b42e8eceb0f@oss.qualcomm.com>
Date: Mon, 7 Apr 2025 10:40:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm632-fairphone-fp3: Add AW8898
 amplifier
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Weidong Wang <wangweidong.a@awinic.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250406-aw8898-v1-0-58a2d554693f@lucaweiss.eu>
 <20250406-aw8898-v1-3-58a2d554693f@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250406-aw8898-v1-3-58a2d554693f@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dVp9ZAw7DxRSk8pNmX-LofEws-cUcekC
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f38f93 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=RC7kgf61jvLRIQ5xqpwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: dVp9ZAw7DxRSk8pNmX-LofEws-cUcekC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_02,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=809 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070062

On 4/6/25 3:03 PM, Luca Weiss wrote:
> Add a node for the amplifier found on Fairphone 3, receiving sound via
> I2S from the SoC and being connected to the speaker.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

