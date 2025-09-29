Return-Path: <devicetree+bounces-222284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD95BA7D98
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4096E18967F2
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 03:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7223221257F;
	Mon, 29 Sep 2025 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hdh1EeSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03F8149E17
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759115123; cv=none; b=Fw7ObKbaB031NdevctnVjYZ+nA3iXQuL8M2qEQwiYIbf2iyFdKWfBPuG/mMzQ19Ed/PIvzXH8Km21p2yon6qW2cWf6z4ioDygyYi/Enj0FLEDjj7zZjoy+UijA//jAh3xOqbdlVJMICCSy+AtRxFGB1otR+8yyu5vhGhCGYtA+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759115123; c=relaxed/simple;
	bh=JPKGsUhS1I4F3zb2eZVXvGMv/pIU9wpYzTUlT4YHMoc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LPXqy9XC3YTZNvAUT0IAvbwaArQ3X5cl0O4S75j7GI2WTRv+7GA0dxejUVvcShN0nrRvIvOQI9V9aQBBwHbeyyCGJETcM8RHrNVEyikL99PjAvjl1pXc/XLM9CyDICZtxZzfGdhB7c/R5+XwREiB7pSFF3tQDk7EV1pFkLnzFHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hdh1EeSa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SMvHt7026887
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JPKGsUhS1I4F3zb2eZVXvGMv/pIU9wpYzTUlT4YHMoc=; b=hdh1EeSa+69kM5sU
	rQniWmkLicB2MilQfeQkgtIB0IIabiebzUuxl9DUlwC87cg06vIbVOMm/WrhsbIP
	ulHpsQFX6X4qOScfvptpgTsSonhUMTbhlyERvUBpZW3pYqIreGhw8rex4k2Yk9Lw
	730xt9pNFvHW4f+kijb9XCrmu0gQm65wfLNkxn5skDtaRRyQ9ENkWPuK5XOdnqAB
	ligly1pjdJ/ilM2BC3aYOjVWw22etV6izHQQJIV6Hts9fM49zVeuEoQnZfyxwVr7
	gJ/Z2EiuPZh4sUt7U8F4lxoIVh2C6HH/iOP9Ktl1EXZDD0HfxcapogZNjm5+DcO+
	YASgng==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5krks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:05:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b549a25ade1so5659036a12.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759115114; x=1759719914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPKGsUhS1I4F3zb2eZVXvGMv/pIU9wpYzTUlT4YHMoc=;
        b=a36mqYl+s+/RM5WLkItBIpMuMj9G8d4ySb43pJqggwx4P2MOdMecYAS4veWaFNjr3t
         TN+efIpL4IeVPoHrRJVkS1DfnYBgQmM7TXVBmE93Jv/kazz4X1xZf/58hcFACRhSwiW3
         1a4N+vFAHIolvMCQXdyzNF2EZpzVibPIveBEl3UJppfkMqzBvC3zJR6AiyUGwTQFbsC0
         qGQLwhsWn4y8bsny8GfyXyUfgPhxz3WCfgLRkWwva3t8bAxhzNCCVuekW/83OyW/YstJ
         e+sj/Uf/9kXi0h9aJ40ZEGm6DAvnVRU26FqWZQ1wwovHuqrt5qy3z6vZbYh/K0DXSbiU
         8sGA==
X-Forwarded-Encrypted: i=1; AJvYcCVuZPX8ersuXJ9Yc2e59ekOT+7tDM7+Uh6WS+mNfjW/Jf2N/nP7PmiuQmI+ZMXLyX6axV+/N0E43lT/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywphyb8tw7jV+gN4nIyR9Axr3zdrQKmijQmiPiCNiQ3dlPcJwhz
	1FJTFBn8f0BqnKHXXHkVvRVgLDi1d0ibvRa2hAB0pyx/GFr+Sd50GE0v+MaRQ4bAM5FEktRvDnV
	nQC903WO/FGyu3qOVEpuJ4j5iMy9sDkK9oCoMq73K+ro5+c5xuQAdFDOxAUO9S9TU
X-Gm-Gg: ASbGncucGvBTz4EJLVSA7L+W0y38OqKPs98K7Jp8ErkgIRyxaJUK/ZZQ1KVZgvIJEJq
	1th3MPoBkMJ+BWg1F9c647NB1s1QVHT9QBvFT2w4qKkhyV9884xV8qfFoQFbINUHT1cuu5OuI//
	4sS2Be+49wfyNOMBcmKN678gCdGlUXBjXDWTGBNAKnxtQPx04rOjmhzVKv9oY1jOHhEB6JmY0zu
	PCCH2IYxyHhtvZ8Y0bQQa0Y8Mx8ITQTkxuhs5WbrTXgvqqn4gT2lXad2kclTCk67Oqm8LgLfmGx
	AO4zUH6wsSvGSanCBdQF6bz8HwyMiH+kmiaQKVXC46GQV9GeoSiUP0Tgvnib1msRP0b8n0KbvUl
	oVLeuTTsbE4teMHTYliL/ekSYPJKBSuUiZRY=
X-Received: by 2002:a05:6a20:1582:b0:246:3a6:3e5e with SMTP id adf61e73a8af0-2e7d707acffmr18032367637.54.1759115113753;
        Sun, 28 Sep 2025 20:05:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWFNyeqDnmRHVAipVXJyEJJIaL0vAdHMh8QGKf6yP6H+QJ2ETt1/DVkuRpuwmDnFuSxNKchg==
X-Received: by 2002:a05:6a20:1582:b0:246:3a6:3e5e with SMTP id adf61e73a8af0-2e7d707acffmr18032327637.54.1759115113309;
        Sun, 28 Sep 2025 20:05:13 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c5574e99sm9872814a12.35.2025.09.28.20.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 20:05:12 -0700 (PDT)
Message-ID: <389183b2-4a97-4c86-8785-6ca8f4a74669@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 11:05:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] arm64: dts: qcom: kaanapali: Add QUPv3
 configuration for serial engines
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-13-3fdbc4b9e1b1@oss.qualcomm.com>
 <9685e29d-bff3-4188-b878-230d0f161ce3@oss.qualcomm.com>
 <CAJKOXPeFKN+yV4eitGgHPUYibE1h8RH274b6N6ovz_PR5BYw4A@mail.gmail.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <CAJKOXPeFKN+yV4eitGgHPUYibE1h8RH274b6N6ovz_PR5BYw4A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ml8UMPzfyzzxswf8zHWuOhcJmB_iyhX3
X-Proofpoint-ORIG-GUID: ml8UMPzfyzzxswf8zHWuOhcJmB_iyhX3
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68d9f770 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=f29FfwvlPiv84d7zfGUA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX3lP42WphFD67
 Lq7CY288egbHnWGVC8d88QYs84wAfYQ1EjcQDb7vD2Pe2+In+C64EvP6H/nneTRYl57DdDw2QQB
 n5ADhbRVXSUId8SR9rTF7DVXNKO/ppDR/G7zn9/vhWrcI9yJHf92v+EZl4i89c6oumOAabBP/Ki
 h8ouKzC71fUUggF1vmF1neU/Ic68Qcr0JB3H39JVBWsm+cwbLPQy0AvXE4+kgfSw3YLknuMsZCc
 xBnKBvTp9xrnZh0B2wLCv/ro+F/4zES+mFOEKuH5CYb5DOek5IRhbKi5BMejGK/plzjf0S1YdjF
 O2LCqRUjGWzjcnD7SnyQlA14yout+YoR0EEuqMPl9SWhE5fWRD2ZOcmgfC/8E2fUccRtW6WFkDI
 U/RdOAV67NiZz/mTQXFL3mwL5Xv/Ug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018


On 9/25/2025 9:19 PM, Krzysztof Kozlowski wrote:
> Well, maybe it worked help, but I claim the author did not review
> their work before sending. If you remove lines you added, you clearly
> wrote buggy patches without any sense of proper logical split. It's
> not gits fault. It's author's fault.
>
> Best regards,
> Krzysztof

This patch didn't remove lines added, it is because uart was added in the patch2,

adding other nodes for qup3 which match the same lines and cause deletion here.


Thanks,

Jingyi


