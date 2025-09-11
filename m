Return-Path: <devicetree+bounces-215748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C745AB52848
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:49:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76BEF567779
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 05:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1E824DD13;
	Thu, 11 Sep 2025 05:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQzlHgXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5137E242938
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757569752; cv=none; b=Hvi71iNjbRF7ZkEakwUqFSYqrH/4d7sZ5B6guo87MSss3RjqeDTSEAplOWTqeWLsOMTuYgW54/lqX1yC50L7w79ivmoHViD7GQL92Rgeiu87uOIHuLseY1b6FYjt5qSxEh4GOjONA6IEA+NH1+qzl8igPZUBc5IgJWy/CxYfrFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757569752; c=relaxed/simple;
	bh=CNfDazX35H0BrnzRvDVB6jBjp52YwfrEvQB1d/G4PFE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YOoOHNEF+Wa8irghLxFGozOiOD1umDk25f/+uzFQV7Cm3XPDVXFVNNqOBusziwkBAkDJqTGX0BVg4BOHGB/fV3R1i8gWUa43gPGGAeUv1AFeKMWHAUScF33L2Sw+BPI2ZyBWh6rp18X0g/stGBYjVGmqyLq3ois7D+VgDRKvZPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQzlHgXI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IVPs015051
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XAJVBX/BV2Mp43aITD557dcejFKZOMYbma50zk6ukeU=; b=PQzlHgXIm4pNt/a2
	5UrvXVufHJZ0SMx8tHL4Eujlxv9DNau+CemTElShteZHB2bGj/0Se5dXT0tE3gVk
	B1EhVYZJtXmKqrR6Mr5HDxCFLltIbyIXSfaqDByKUScnyqdGz0Bb7vwlKoIcY9Pt
	r1onn8e/6dlabWMj1ZWsuGcgyJHwBXo7XrWeKHS02G2vuJ50/xt6HixN5M+L801F
	c41vE1uhuGEO+qBURInUSK6yNOvtMLopEtyvFT8/5pYXoBghMEuS6bcC44Qt9O+z
	C82TfbhVif+9mkNKTTgNiCKi0NuXbZI735IGN+YqeVJltQxmEf78GoRktkN6E5lp
	FH5/mw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m6a39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:49:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70edbfb260fso6784756d6.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 22:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757569749; x=1758174549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XAJVBX/BV2Mp43aITD557dcejFKZOMYbma50zk6ukeU=;
        b=uttSTS3+c4qOUccNAqHzbABWezasS/quYs6NMfMGIMJwY71kR7ml1KNwh2/fQ8PL+e
         eYk5n4qXh0p+5YYHIbhg6jAxiUQAnl7N2SbxpLx+b5REIVmDxlN7b9R4l6LfYlkdr7kZ
         3nsi2D2ZVx2noelIhSXDuhV1OPx9eobmrMw4MynC6LLRkhoXyyc9rRbeAcRjFlOn/hrM
         wM8PWlyp8Js7iUcfbauE/IoIsN28hNV9DyaC69MvCTQCm7eS0UCJHwYeWrOQJGYLHSzH
         Tbn/qxqk6kwYqwtUrmvgMVW/wbAe40EGWoZwq3fdE/AScAxonunEASdUXbwSea/dEd2Z
         cKOA==
X-Forwarded-Encrypted: i=1; AJvYcCU7kNMIWyce8O7O365nmqz/b2Eytv0muWx+jODlchdeOw3XzF0bVN5+fsua0473b/GDZTgmtNpSNkyG@vger.kernel.org
X-Gm-Message-State: AOJu0YyQS9xOKNP0gmEXDBKTu/X5STSgbl38m/DMmpx0paSCwMnTyWCw
	OHRVnSm5DC3a9O94UOcld3cadhYmwoM//9zxqJhKv2GA4xAuO8LjKQUgkkdbgTXsIICFFYHuXJz
	BUjcry5kVt/EX4S+BiiqvqjY3eXjNuPIsIDhZz71Qd6vq0o2RjsLDPbusAlvHKTFf
X-Gm-Gg: ASbGncuVU1XqQN50sJoWiBkmkRf8KJCSSlDhs8+YYiB3EWlUJN5UdOdffh1/M06UV6/
	esdnRCn6TVEJxWmJ/6UOZN9gErQ2BWLlRcvJUZ/qSFFqHVSZl/LFyTpQvX2fuaL8nlmI2jd9bd3
	DRMNAvwh+T33wpPEBOinwl7lzOtTgEwluFuexVQYok22yw/7EFy2oWnZ7wxrWxIyExN26bWXBwV
	CiZjVILHoczcr7RUe/vgHQT4t4HsHCJivqsSJGJdCSB0BkBxDI71+UifwuxGZrC1y1k3DC3aYgK
	1t8l97G/6WQPHFQ1YqGYE0CeelGTuSuPzN+rHC8TKQemuBV4wRxo/TyFo3AlGvO8QSM=
X-Received: by 2002:a05:6214:3015:b0:72a:679d:3560 with SMTP id 6a1803df08f44-73940bb3714mr189836616d6.51.1757569748842;
        Wed, 10 Sep 2025 22:49:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEv33l1lT3f5JIUGjoNlxGeEhADQaiwhDfuuPedj6AJUeuHITft8OXqXep9x1O23/mT5xinFA==
X-Received: by 2002:a05:6214:3015:b0:72a:679d:3560 with SMTP id 6a1803df08f44-73940bb3714mr189836386d6.51.1757569748212;
        Wed, 10 Sep 2025 22:49:08 -0700 (PDT)
Received: from [192.168.68.120] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3e7607cd329sm1020544f8f.31.2025.09.10.22.49.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 22:49:07 -0700 (PDT)
Message-ID: <7b7db1d2-5f53-4b08-920d-67a57d975313@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 06:49:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] soundwire: qcom: add support for v3.1.0
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
 <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <DCPK67SQ5DEI.2AFDVRKZSEWTS@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXxhXGj/l7GTuJ
 rhicVUTkRUsbNnS0yLlPTTjw81OH3URXHW7Eu2py44gxJ8GK63d/TxFGrb4gQ7sbn0Qoi+g9e8O
 tXB+CY+5RiHhsVy8cJnty5RhjzunB/Ko4AOebHx6EfKGphNSXLCfMj7+nT7FIDS4Bszf8VGfv3o
 wU8icddbnkeM+mRM7HAe4XrJXo3jbsgmlKKtc8gd6P2nCOY9PFPuxsSIkNXCDmJkenzW2kOdAO2
 4OK7wdZ5tjKt9sM3/GLsUQ32DP4fdY12LtYhjeCWi6H/Rr2jyqzdaWm8C3jBMOxSpl1AEuWYjnM
 na/dweIourVvkoku1EQvOwVL/xzuNNccronuKCqPtuPEYZr60bTn7pGewOsJYfIxYD6xApRDvjt
 4pjfdkIx
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c262d6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=WkAs_pJEH6EIBUO6gLIA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 7hcAwy3lZO3ZF8aCNFMWO-7A4PdW0rQV
X-Proofpoint-ORIG-GUID: 7hcAwy3lZO3ZF8aCNFMWO-7A4PdW0rQV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038



On 9/11/25 1:52 AM, Alexey Klimov wrote:
> On Thu Sep 4, 2025 at 11:56 AM BST, Srinivas Kandagatla wrote:
>> This patch series adds support for Qualcomm Soundwire Controller
>> version v3.1.0.
>> As part for adding this support, a new macro of_property_read_u8_index()
>> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
>> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
>> the register offsets, new entries are added to the variant data.
>>
>> Tested this patchset on X14s and Glymur reference platform.
> 
> Well, I don't have any Glymur devices and no idea what is
> x14s (I guess some laptop), but I picked the series locally to test
> on sm8550, it seems there are some generic changes, and
> qcom-soundwire probe failed:
> 
>  remoteproc remoteproc1: powering up adsp
>  remoteproc remoteproc1: Booting fw image qcom/sm8550/adsp.mbn, size 8364
>  remoteproc remoteproc1: remote processor adsp is now up
>  qcom,fastrpc 6800000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: no reserved DMA memory for FASTRPC
>  PDR: Indication received from msm/adsp/audio_pd, state: 0x1fffffff, trans-id: 1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@3: Adding to iommu group 12
>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@4: Adding to iommu group 13
>  qcom,apr 6800000.remoteproc:glink-edge.adsp_apps.-1.-1: Adding APR/GPR dev: gprsvc:service:2:2
>  PDR: Indication received from msm/adsp/charger_pd, state: 0x1fffffff, trans-id: 1
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@5: Adding to iommu group 14
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@6: Adding to iommu group 15
>  platform 6800000.remoteproc:glink-edge:fastrpc:compute-cb@7: Adding to iommu group 16
>  qcom-apm gprsvc:service:2:1: CMD timeout for [1001021] opcode
>  platform 6800000.remoteproc:glink-edge:gpr:service@1:dais: Adding to iommu group 17
>  va_macro 6d44000.codec: qcom,dmic-sample-rate dt entry missing
>  qcom-soundwire 6d30000.soundwire: probe with driver qcom-soundwire failed with error -75
>  sched: DL replenish lagged too much
>  platform sound: deferred probe pending: snd-sc8280xp: WCD Playback: codec dai not found
> 
> Are there any dependencies I am missing?

Looks like there is a bug in sm8550 dts, its adding incorrect number of
ports, which is why we are seeing this error.

Its good that alteast this series is detecting some of the bugs.


--srini
> 
> When I reverted the series the audio started to work again.
> 
> Best regards,
> Alexey


