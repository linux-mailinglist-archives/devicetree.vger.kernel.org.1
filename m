Return-Path: <devicetree+bounces-239178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DECC626A4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 06:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C61463A670F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 05:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1062730ACF8;
	Mon, 17 Nov 2025 05:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsy/mbjj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cMmxB+qO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9156523B63C
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763357811; cv=none; b=r9LancOzleKnQvdy69HTf7nIv+2qyWIDEFkQBm5rE8M/8HNyh/5228WT3gt5JXck1nIomR+dHKWm4ITOHEh88cqVaaAgfFSlXBPaZfmNHYpI/5i0dAjxJ+Yx4IREU/TsQ/RHYl3+oM8qk9pkCVzajYPNiWaR0WOkOT7p1KBzRCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763357811; c=relaxed/simple;
	bh=6cYa/F1AJ7SfGa2agSMS+Ony+EmE7NoQL01K2TCIJ4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O00VOqFwbM70dz/I6Jjzbx+2TcXidLqKoR4QFYylPEFXZ54RzaysDIQWzBtLgvkrhm9ZOiA4cTkpG+8Fhd2EYxIKij15jlHZiZ4ybpM3mjYYFtI7Yd9n95/ZXOaK64lgdF9rA4f8n4+A/9/GCiqc59CZmM5EOS2rXUa/nm9ajoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsy/mbjj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cMmxB+qO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AH4nh0C2582098
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:36:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mXdl0jN8pfbf4b4QgywubsZIm/6LqcIO5GONFIxeVf0=; b=jsy/mbjjP+u0E8Nl
	TJDPo+sqB6/NcrFbjTJW4o9OwQCOfkA8WwozFZxUGqDWmH/ad837kf52NTO6JOeI
	FXXpB8GiP66T92x1GkI691qOIoWGY+d39uaEP4xekhfz0yBj1pjRBu/wqxfl7muS
	78gBAhRs723xBdfBGvlrO/idoM/bZgH3G3kpnOe3j1YInMZAR/529nCCGmTHk4cG
	OJ4N9nFJBV+k7tDmXsOBdc+5ZFsaIBZBBez1oWVijqcao/g1ptDPjX49jB72kDcf
	7VMIAFMKKad4FtSPC5sF8tkJYuXV+NXdRzNNBnNyBvUcEO6H1vHVoWujpM0qTFTo
	mfcYOg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afssf8h1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:36:47 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so5208964b3a.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 21:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763357807; x=1763962607; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXdl0jN8pfbf4b4QgywubsZIm/6LqcIO5GONFIxeVf0=;
        b=cMmxB+qOELOZ5k91tGxHThheOABoKduOjFtZ9hNtAfC57KVP65Dd9a6udLPWv0fzCH
         4Q5HRkbzT/R8Jeeqc6K2qP96EqO9uT3nVG4vILTCUskayob1wave4rnWz2z1BRmvVrqQ
         GianDY3KHiihuf85VgWdkTzqHB4SVKLgU8pI2aVWIraTvsrMPTVDlKZ5/1s1cXTUpeVr
         JIRUf/eHwmRim3okCqIR+aLCFBEXiOaJR6qkyEB8YcdjzQo3zngt5EPNbVHu1IXmrNFb
         0sCqFx6+6sRYZUYvwznZntEFeUFY4+O70gDyGJ7TRQ/laFd/7+wEZ9HdVSI71vL+S+A1
         FrFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763357807; x=1763962607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mXdl0jN8pfbf4b4QgywubsZIm/6LqcIO5GONFIxeVf0=;
        b=OImHSkTCrvrKrUuGmTu7ctXeRvP8aVxFYmd7hXKNsPp5S6RoJj9ZoWbrmzzSIHLRMo
         9LmG/jiKcdKpT2LqGAq5rqj7K7/9K8hCOFy3erRvq2KzNG1CfyFs+4nEhb4J35G4PmEe
         ZFoZbCUvwf4zpMCOhQ5pyIn1tLjgb47lFQGlvukWU/hpS/CwC8wkn737uW5wHTvjy+4f
         OJbqiCxwI7S+Vrqq0ZCGC2pU51S+5YM2iyvqjO1Ya3pG224Rs7MQWWwyCKxIoav8NZ5z
         VYPHNiYM5r4/1UvzTBojttXAEcKbvHjzcfgBwPu/oAKf+Hx07eWHd81hjOPTXOAxsg67
         TpWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg5kxEK2gNp1l3w3Xe3GpmV5GvkGNgq7E9TW76grAvPj+KRuxgOgZjoco3QLDQDHNK9tz/xWa1uuWg@vger.kernel.org
X-Gm-Message-State: AOJu0YxSL5oyi+64yt1BZ6C7ZRA5OvGZYEeHBJ0AT7NaM448Z+EOKqhn
	2SmTpfvmzyhOrdca8EAMUzQ4M8O6EuppeBAYWvR5TpP5kFDcLneCAMd0OgonSUEirZQRcUnxACM
	fZdJZ2+8Cdm1qcBbn618Y/cnCrgVTZ3zvEdJc1VPYJpg4YUgEjsYRma/Qg8+SQgAB
X-Gm-Gg: ASbGncsX+xQhx1kXC3QLuBejBM+L/bPeOpDxit1jLPtpbwvMhxjDjFJ/9k/ijFgjJIz
	vjYcSoA2pjacAxsi1GDtTBjvRMmY9gOX5vAB99cHkM0Yr0SSJqnDuBsiI1npDpvR6smKDXUT9gD
	0ftRCUh3kFKIeS7IJ1Eipn+4lcb/lmNHBw8EixC92hQ93g+ow8XRU3vpmfJB3sLQJEo+B/haMZo
	Z9G5bn5s7aF/GMwKcB1ukGwW+dngURBclEMMUatOgu2nKckpu5IxBHfadWB9XLDscd9A587ShuZ
	LVshN0MwtaRdHxLQR83X253P1cb+E0eGKy/3WYo65a5hU9UUqqRKsnsJpw8vFrHx6hE704/muxh
	6yCEGv+/9HhVwA6FHsCzzBQS63UQ15pmWuJl7gMr2nJPatn9jKXX5AQOxRh00rmA=
X-Received: by 2002:a05:6a21:9994:b0:35d:d477:a7d6 with SMTP id adf61e73a8af0-35dd477ac53mr6614908637.13.1763357807088;
        Sun, 16 Nov 2025 21:36:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHF1tN1XzMSXB/nPnMId8DMIGw+Lv6MXfcOkHqT4SE1jddGONdK5QNeYcSLwMHKLFAhlZ6tnQ==
X-Received: by 2002:a05:6a21:9994:b0:35d:d477:a7d6 with SMTP id adf61e73a8af0-35dd477ac53mr6614881637.13.1763357806590;
        Sun, 16 Nov 2025 21:36:46 -0800 (PST)
Received: from [10.133.33.82] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9251c9a50sm11657433b3a.27.2025.11.16.21.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 21:36:46 -0800 (PST)
Message-ID: <e1d27829-da3b-466d-9734-927780174160@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:36:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: kodiak: add coresight nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251104-add-coresight-nodes-for-sc7280-v2-1-c67fa3890c2a@oss.qualcomm.com>
 <e80e3937-3e82-4769-a2cf-26fc5b3ccfa9@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <e80e3937-3e82-4769-a2cf-26fc5b3ccfa9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Wiii7KRtfE6KD4HRfz3fIY6TpTDaLc2B
X-Proofpoint-GUID: Wiii7KRtfE6KD4HRfz3fIY6TpTDaLc2B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDA0NSBTYWx0ZWRfX2nwI8ARQ3RR4
 CXhTROPEp9NtAURkPkM5e/yooDFicu/v/SRdvcSN37oHaoj23jQsF6mMM+wkFy0cABQpOgq+tlK
 g1KtKaYUyNh1WsapcH0dDSCRaabIJH07Tn97+UUzeh/5Yko3YubWKik1Rl0FgYrKwXy9QHfyn0y
 lCvCwmrhlzOy8xdf/yG1QzAFxrgseC69qPGl3moEQfZZ2tmvKkK56gPpvDjhLIsW3qLMaLZEJIY
 XLoAXc1vtd5l8EIkekGVHbkc/1YuRSJa7CifXpqz48tvUeKdqmoa/h9ETIfzuXZmppQ1vwAAEvm
 TtHQUzLYoEKzpmTy9FIuQU6mADVpF6K+SqBwxZznP3OPOntLbQJbTeKBHnaj7gs/EKuGqFWpjD8
 LaZDvTlCgBTWmSvQUOdPUR8flIqIDQ==
X-Authority-Analysis: v=2.4 cv=IrkTsb/g c=1 sm=1 tr=0 ts=691ab46f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GcdsnbNUYbwPMujkRKMA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170045



On 11/4/2025 7:55 PM, Konrad Dybcio wrote:
> On 11/4/25 6:48 AM, Jie Gan wrote:
>> Add TPDM, TPDA, CTI and funnel coresight devices for AOSS and QDSS
>> blocks.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


Gentle reminder, do we have a chance to apply this patch?

Thanks,
Jie

