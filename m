Return-Path: <devicetree+bounces-181856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0736BAC93B1
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 18:36:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC683A42A78
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 16:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267BA1C8FBA;
	Fri, 30 May 2025 16:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hS1NY1XC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E4D60DCF
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748622963; cv=none; b=OjbYHts7mFh17YVWjpP7wyEuE+eRq4dlT/GhustvOi/RVhocHn/Ks/ZhiJltgGfJInhVVB0P89WwGhjuYpYpVNV9ld/Z+dK1kqJ6EldUDS+DuSas2lzRZFnC8BJ0TIVcO7q3g/IBAbXSiVSUNutu/pMkXIKpdkL7tp6Wl93Hsr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748622963; c=relaxed/simple;
	bh=Ou28K7mPcEkrpg2bOaExpVD2dLuDalrqTtn2WNwNvfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WtdY+q+jJnFoDRjn89vRCQl7A6dwA6MXHbzXg75mThCgQq55Hw0DyHDR9HTwliH20QqfAOQ+ZHnTEyBb33vrkWg1zmqU3Q+R/Dlme5B6n8jV5N6pr3hYiPEqcGqaVYvH5EhFX0d5r02yIFBvMKWwPuVxDzzC+HYR0csQFiWI/MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hS1NY1XC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UAGVWw011700
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Shoo0tKVIcVl87O2cZuDQQ6KICwG3ajVLpAaOIpSTcE=; b=hS1NY1XCWJaI/L0a
	dJatO4IlRpSEMzQwwY6c+SNFZcYQnB/2uVSktsWPY/evcTwsqeyAoC8RlpC3jRT5
	PwBJxfWcS17aLFb3MyLV2CuDAdNs1tTCeaxyyHtzHnyQLmbFeJdD9x5lNa50Q63o
	tK5NWCrkoAz3Vd+a0iuaQBZe/GiJczyWL5VGp56jwk5No9co1fSOJzDRGdkezfD3
	Fmua1tTrWJBWsx97/dseKpjIUR4Egok5O8OUgpIBEPv+Zyzv0KGRUXjXIuwejRjs
	D13y+FQ5Tm0r0DiJGB+WMLhkIhJWdzZ69i6suJJNMWJ6ViZ9ISgdlRQMbWenOjmT
	+ru2/A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g99u7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:36:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-311b6d25278so2346143a91.3
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748622959; x=1749227759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Shoo0tKVIcVl87O2cZuDQQ6KICwG3ajVLpAaOIpSTcE=;
        b=Zdds4Y9SwxwXGp08Tsu4ErBzx3rCYurZNiOWOR0szo7meNqbvEuZ+bXaF0h6Ne8Ob3
         pJOGnV24j0u/pDnrTprlMTYHccC5yGMBdll/0Q4DyVZMTl4c+OBEa9iM+h6r+LwvZUd2
         iK1bt0YNZHowxXL1Vv+kTRLnNL+9Nwsv/YzUcmLG6Upgj72mMoPEe7D+2GfcGEwICmCF
         8ffY6Mkf7lRPHuSF2WuchXiKt2n09sz+OOswRbKt8tcwF+snvRTwkAQX4S9AuQFxNWgk
         2MdTzXYR1TVxVDdQI8hgvJse9hGoc3UegD75gSoWEZ2ORyxq8iAbyyn4EA1+YCpHa/tU
         S3sw==
X-Gm-Message-State: AOJu0Yz4K44N2MYL8eLhdUAjbRPsorVmM8D94aWWb0M+rgGtLjveb06S
	O7k6a1SYF9pLhvK9wMxknAPi6K5lNmDxkoUt6rPJeEkxBiEc+tkjyZVjXn5brIqTmOmjk2DQgL/
	XJvmR6LjM0/FrXaK8uACLkqJvsHXZDUq3iZd2F4+BY0hynqGMI8on6d9f6i60CLkW
X-Gm-Gg: ASbGncsZxa8602jUqoxKLOf+gU0WcTpTo8Z2L1ngV22/qf0PxHG3iYgo8VgXVveSjbB
	oeDHdMLFZgSkQAhFh87Ob5x+1FSVSjc0+1wcjsJbnsUMP4Rn/WmlpzQAV9hbQiATi2GX6imwEQQ
	jODY4RlTKzi2Ci8GrUGJTeHOYh94Dtsd9nJxu98swsTfyM9R9VfYPV0zMT8HukrU73rlzPewI4S
	MeIYr8NUaR36sztRPJft3WeFp5G/KYC8EqGTM4LwxBM9Yb4AW7f1ow/GPooMcR6DjOfKXalA13U
	FI3wHNyA72sdD1u6bMITBPnRJFChNfJIVUBaXmgjAz49rWKCOO/NYdUXqJi12g==
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31241e8cb1dmr6395373a91.24.1748622959255;
        Fri, 30 May 2025 09:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7gZlETTzuM/nB9i8V58eslnhzSbt76+bQeUPi+dwYMc6LXYsmcqrpPQXpymgaj7IkyAYV1Q==
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31241e8cb1dmr6395344a91.24.1748622958819;
        Fri, 30 May 2025 09:35:58 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e3c1358sm1544883a91.37.2025.05.30.09.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 09:35:58 -0700 (PDT)
Message-ID: <bf24ba20-dad5-410a-934c-f5963a2769ec@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:35:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/10] accel/rocket: Add IOCTLs for synchronizing
 memory accesses
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=6839de70 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=DISFzqtZAAAA:8 a=EUspDBNiAAAA:8
 a=CskBsiFdeBhsZAe0Fc8A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=aug85vrO5LANNmmtkfAW:22
X-Proofpoint-ORIG-GUID: ayfczXm8cYxa8fXIFFxKyajUo17xsla2
X-Proofpoint-GUID: ayfczXm8cYxa8fXIFFxKyajUo17xsla2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE0NyBTYWx0ZWRfX/I7XgQy5egsZ
 cUDCzTmw7TrTKbE0hdNAPk6qUd++WEPboBt7jXJ7ZbSHPitMD8zgt51SGzuCmvKwnqQWNSaxkxS
 AwOZgzhHyjQ8nDVcee+Z7Bwxf57MOxr7cd8Jd2eKki+S81qtbucxbWZ7R52gXnaiZQ3/wQn9UDe
 cB+RcgThQ/10itR7r1Is3hFO8L6V3mCxF/6wPi+kbypxq19dbBOmxKdcJFTDHMq+sEszT5e0NUZ
 3zFqi2r0+XxUb1dogxFAwajl1aZEUyLfoRvKHJ/hCIq/WSumiO93eLjWn0dYSjuo9fgdPLSX7TP
 XmuTJ17cVUxWTKkF3v2Nz6TWyOsM21bGqd+fEkB1HLAR5COThk72RuoXSeNF29VaFV1DQ5+gHkN
 AsB2WhGyXYsd/yYeSZ96t/15gApVQygqJTf3WvAfcSF0ofC5i80Q4RjXb8ZSi+JEiKrFXWY+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_07,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300147

On 5/20/2025 4:27 AM, Tomeu Vizoso wrote:
> The NPU cores have their own access to the memory bus, and this isn't
> cache coherent with the CPUs.
> 
> Add IOCTLs so userspace can mark when the caches need to be flushed, and
> also when a writer job needs to be waited for before the buffer can be
> accessed from the CPU.
> 
> Initially based on the same IOCTLs from the Etnaviv driver.
> 
> v2:
> - Don't break UABI by reordering the IOCTL IDs (Jeff Hugo)
> 
> v3:
> - Check that padding fields in IOCTLs are zero (Jeff Hugo)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

Assuming what Lucas pointed out is addressed,

Reviewed-by: Jeff Hugo <jeff.hugo@oss.qualcomm.com>

