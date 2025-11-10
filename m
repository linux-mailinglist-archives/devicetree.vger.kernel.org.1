Return-Path: <devicetree+bounces-236484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB5C44C8D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 03:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D19AF3AF300
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 02:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4481E32D3;
	Mon, 10 Nov 2025 02:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ku5wY8+B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GjoFKyRV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34D81553A3
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762742547; cv=none; b=bQWL3r54svTnlDwaWDKkQccV/pMHtwq7rmSuBHp+Q4MhH2vSViWR3hgAp8HNiC5yuMFWr+3oI0BkAXBwDDl4CO40eL9+XlXIr4vOj9oj5mMS4vrMvncOz8RjyqVrufCD8XrsCoz0Cq0F8xQOqI12hxSLTbYqI5217y389lWDwfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762742547; c=relaxed/simple;
	bh=jUY2UWKqbgiaiqlTpfs14wF15mfVG1aRriGhhiH8ST0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dI1fr8ef9zPFyLMVfhtDBBbPzrq3vPkRbyLZfmqSkHFMwF1efXU+MAf9HZlDpVErCGqklWSvRVOW91SOebl7imDvW8reeH20tO9p4TQngQYM2PYGXUYe3KBoPiVPsL1y3qxFRDD2gduLzzpplTrpk+NMP/ZWcpxF3eHl8CAZHCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ku5wY8+B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GjoFKyRV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9KOA101558322
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lsW9bulkHJOywC2vSc0zo/W2H3K/TyzL35br8IJ+ghE=; b=Ku5wY8+BGMALbOHr
	IrFXDYaZQTwqNWl0rNbFmXBx2CICaPKs56QkhacrXlnQTU5uthXGxE/pIW2htvtr
	m8OW19m37e84rtsTLKLJq9cl4GH3wxkECkyNxoB5fIF0kwY8Eij7N4lWaZajZlQj
	l+WCAxArmlQDGYxrMza34QHtTTcssTR7t/9QJOfF53mh6eAc3RoWGLJkxRhyMwnz
	F4o2cWxe9SAKdMqHXR8qWmqOqU/Z4jC4SKYkEuEAHGIRChCLSM5IyRORGiMmeQ3V
	6ouA5Gz4N+p/iecfkRfe9L5rclZWsX8f917X5QYQ5DTkcc5XLNoHOUxNQtjHw20P
	OK2VRQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xuek3tx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:42:24 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f3710070so37976215ad.2
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 18:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762742543; x=1763347343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lsW9bulkHJOywC2vSc0zo/W2H3K/TyzL35br8IJ+ghE=;
        b=GjoFKyRV6az0IvPTu39Aklc/gCvsBCrweH2TZzH+6EQla2gxytJXzGLJhOtqn4aBet
         18img9JSvvEPXPl/3YDIV+nRfkuuPQKnfBv5YRE0mZMmkE7mOqa+xJv+fjZYei2LLIt4
         qqu1TtyW4GWdJsu6vvW49j7MHL20DXMRPQmBTFOEP9kVKqUF3kzjxKhYVaiU7sFI5kO/
         kXqn9j1k33hyk4LkoyFmi7kUgFtpa3bLtF/iV4bHEwhwork6djoyOtXrv+mlt8S/DDEX
         OK1nNIr+pUsAQGsFPq6JrTbaZVn5j7egXC84SjCUjUjUt1F3OdU7whKMbu+TksLlopEk
         ibLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762742543; x=1763347343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lsW9bulkHJOywC2vSc0zo/W2H3K/TyzL35br8IJ+ghE=;
        b=ll02WRfJFSwDHaRMjY859FQk9z7dVjd6uSd4nHkGDN1xPQS8fHUgWXsJKifIZu0qmV
         7XG2wBS/4Jgm2k/IVTosRuUPZ9m/+saPlYFgXlAHYx2zshAQvlwXwO2zlLK0RdLUTAxa
         VafSGF391oyiwTDapq/NAXuPFJXBBL5LMuorWgV7IxYZinIuVnMKXCivmIxXp9sb+9hV
         NSUCOhWlrAkEClYtE3BL6QUDCJKVCWjpn6ovg+J8NxSYjkMpa9VBJXjseLhM4sroKNVt
         eAiFfkFlbVAwtE6nGP85JE9zKJ2wDOICWA+6msOrXw6tbea4zLiQRs3xiggG0P8krm3L
         T5yA==
X-Forwarded-Encrypted: i=1; AJvYcCVHPMJicy8B7N/dvAD1TrIaRw46XVC1alrS0m4RqleQZ6Hwfq/dDD97zsHefL+Y2aAWzsTs0rWkkteu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8jY2mbTxEGiccKpwuc+jGNhoOF1EP8Q63AeWTT4fQwqCyVLJK
	Af8qUybZmWfUdjNUUpqgg/hlsg89tQBIZumwijXx/SgLvJA/HBvdwjKvY6t61L6AxYMzMjo/1u0
	LH9AcJoigMkfSPKgiXkE5bnkG/PcEKMUufBnEeZmH6JNhvD67oDb37L8Y+lvydFQs
X-Gm-Gg: ASbGncs/2Q8zd0hlkdSpcOctZ6SdvcNoC6NyYcONqgIm5fzuTuIuDdHUafOKTm9jHHV
	AU/7emJtzFvIUNAeNjcd1c9cFRYKJ7La0OGMySOtoe/Rvo1ub6v0XbfsB6TpgB74xEW8A0Mvl9/
	XOe5npsr3Bt5YIABtXfSmsIytJ/KdlGfIWIWqUCHconfsK/WUH9YLhrqGywaUyQOqYzW1ZAR4KN
	wj3wocEe8A5HIDUeDhHfEm0eHdFtNZa9gzN3lYJLTylxravwBNiP2CIH6hP6FraDQwGvI+FV1YW
	FZ1EbuH0VY2kfpNS2PuanBfLIEcSpVqskBu2J2aPVdLsnnKxHPBi1Noe5Ib3ENo5dRHWjo8E1Ck
	g4B74UPD9WaWLyWw0VTTjf6qRP4ncsVrfihhhfwIdMq+4uulUF3a3LNwNAoQJbcby
X-Received: by 2002:a17:902:d485:b0:294:fd3c:6de2 with SMTP id d9443c01a7336-297e5408d00mr89906645ad.12.1762742543497;
        Sun, 09 Nov 2025 18:42:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2NVHwCXqcL83f9zw0coAZMOtqfj0Uy6PSoNGjLNcOLPwcx3nLqWE6a1Jjg4u4EQJp4JwPEA==
X-Received: by 2002:a17:902:d485:b0:294:fd3c:6de2 with SMTP id d9443c01a7336-297e5408d00mr89906185ad.12.1762742542978;
        Sun, 09 Nov 2025 18:42:22 -0800 (PST)
Received: from [10.133.33.229] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297ddde1e7esm66639765ad.77.2025.11.09.18.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 18:42:22 -0800 (PST)
Message-ID: <30cc9d63-72a2-4dbd-89c5-d3a84e5a36de@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 10:42:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/9] coresight: ctcu: Enable byte-cntr function for TMC
 ETR
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan
 <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDAyMCBTYWx0ZWRfX80G7lfI3DkIh
 /pNmwqEzimoYDetJmRnQzaeRBuUC1J4P00+J8CKTTjMTivCvIi0MP9a0wPe4pcQEAW+7mVip56T
 ktLeSbGsk12dp9AoF5OHHlwIRY2HxOCggiLKFKpGUrA6FntFABjwwb6SHtfx8zt+GtQSQfp1Ldc
 c9zHWTzLABTmtuNCgDc1Rb7iKp36HuvL0Vl0ih8JbVq8t3v37chkUPMwhzajYYrie8Ot6tVKZwU
 6YWUOrL3WtaoUKAApVKuz2G6ICqtyAz2Bae6fUj7/5puKCeVX6WukKL7yGOCJ4TzCXUdauO6hsp
 4PEgpMDVCJIRozcagRfgw7pmdJnc6ah/GRWeP82btqPZDchBeM0fdob+on12K1IUll+2evl2eVj
 uk9iEgxmiUH4wp7yL1aXEEl7j39yYA==
X-Proofpoint-GUID: LiGoa_M-mwd73pOckE4yp3TalI8U8jWe
X-Proofpoint-ORIG-GUID: LiGoa_M-mwd73pOckE4yp3TalI8U8jWe
X-Authority-Analysis: v=2.4 cv=BOK+bVQG c=1 sm=1 tr=0 ts=69115110 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DxhRIveLkXWR0EuVxScA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_01,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100020



On 10/13/2025 1:49 PM, Jie Gan wrote:
> The byte-cntr function provided by the CTCU device is used to count the
> trace data entering the ETR. An interrupt is triggered if the data size
> exceeds the threshold set in the BYTECNTRVAL register. The interrupt
> handler counts the number of triggered interruptions.
> 

<...>

> Enable both ETR0 and ETR1:
> echo 0x10000 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_threshold
> 
> Reset the BYTECNTR register for etr0:
> echo 0 > /sys/bus/coresight/devices/ctcu0/irq_threshold
> 

Gentle reminder.

> Changes in V7:
> 1. rebased on tag next-20251010
> 2. updated info for sysfs node document
> Link to V6 - https://lore.kernel.org/all/20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com/
> 
<...>

