Return-Path: <devicetree+bounces-185460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEC0AD7D4F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 23:20:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0ED03A48DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 21:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7E623099F;
	Thu, 12 Jun 2025 21:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EaxjjFpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECDF188907
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 21:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749763202; cv=none; b=AQQacZGuzKwdavPY5bFt+xdnomhJQYKh4uLkYBXnYFfT7/2m5QSKmqy0zR4KUDplZjxh2Eg2D7xOzqJNfOadycfuuqoFsmcLOM0c1fJ+fKjHabYZbAxm7a4EPTcLbb3NrqP6WXRZE2w4Me5mBlh65foyJajAKbUBy0Go3BDakEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749763202; c=relaxed/simple;
	bh=H3ogvr7A5eaCLCoobtUF9Y+ndFSfv9DKlh2LHMiNqnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BT6bDZbD3k84awMCd31k7d+CfkrHOiNoDxYtS5e5bQyrqYmY+jLqLNNtE6sS4WpFOs/Bgchtx23V8UR9xJRIqmREdfLWG/9v+EKiFbkkEwh4vLKgi+CIILJ1P+HMJ78r9TGTaRmJs+kcw2riUj8PndL88kXfAGY54596Z/aFXzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EaxjjFpJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55CGLesu008366
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 21:20:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Zmr5+JECjNDrTnuNUMITpmDMpNItBuB/kFf5nbp53s=; b=EaxjjFpJ7wS6WdqT
	Al1W1Dj40l1WVibjXSMhFBkQf7/kUWFEy7BYQ5Xh1aoIZxivt/1erMUK4pXf9IzK
	D6GvU6tPk97CzCjDbyjp4RBj9ZR2Q1Hvg6pEjCSoSHTOS3GpK1i0MNQqh6ss9Eg2
	SsavzA5JlzCtAdLE/i56RtkKXQdF9mkMe7qiHQCpIWSERGU97gZWoXfBPDeAs+Jw
	GtAZTZSGbvNuZJ46oglDZhV60SoySDp0yIswVG/qv1FuDvK6FXSbAiIjtNYMBxKL
	RYCYlTJN6LekxjS9R3Ha9R4GwWOjrVcR9JwvsLgw9wJq8Ykq2S9uhRG9dXyOKWIo
	0C2X8Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmnhgmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 21:19:59 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-313d6d671ffso364994a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 14:19:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749763199; x=1750367999;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Zmr5+JECjNDrTnuNUMITpmDMpNItBuB/kFf5nbp53s=;
        b=PytgBQ3G968mx2ReakTXOAy+S95fY/V5M2L9JwDWbtNrrLSOLAltbzLrU/vTFaGfw6
         4HAcPNioY1m8ixLndUyv4MXjnxyvmhalA+IgbfT5GzEU+uACR+8quSIYn+MkcUcmlz0B
         FvIfzfFuvSZCXmfBPeiRxa43t/bQ+3id+rDLZciUHR6bblOX55/7ng8tLP6EZS+7fvF2
         x0VVM28HlZlAUkR5CEQKGBODXyJC7qIRmxOKooFMmJHJ7bW4GAz5+jx9lXgl6NcTd7vQ
         pLgdS4TNBVDG10+1gFU8HxnNQ33Xl9XPL06U+cv2we165J58ut95HwfEaKiEG1IGNNCC
         OTIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnNgEoum5S8RheGsIwpcAcl5P+DkqmSqkbvhQIWXYx7WwQWZQqB1FTuRtS9au7uF/CNlG2ylc5kaK7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1nJLFGp3C7OwF1m3nqAosgi09hQyHj8Jty7NoGK881nARn0mk
	oppp/IihJu0JfgnBUgyCAANcVvx2hOaGDWWlRQQ2t5IWEeZoevmbCY0Ja+9Wy8HATbC84a1nJBf
	F0EY8nVT/tWpsjPtP9l/YYUCPw7cNBqsjGzwWncSO5NmszGJuvw8xuq9pRGGdwRW/
X-Gm-Gg: ASbGncv3yqHYe7MsQdJYTg/q0c04ciBgB+n4lWZHDjUKv74SqQPmN9kmRFZVoaCKiVH
	1LIhCmsSCfBSDbFS3J8kG6qRlV28gYrUyBJFJfBGgJEgM0fERC6bpaiggi093nHpocWGiC7JgOX
	7dWgJZv835Xp+PHBafmgnB+goG0eGMUWtggd5XCkWvqkkRxRn/FMuqGS+d2t6D8cyu9NhHVY39J
	5MYetO7WrxjcbRQZqjmxYJ5QAjvmBVO9b5KhZnzq3RQGX01hNqYHYu16OQNSbqC/YCHoVKduBmY
	BgyJ1UR5CMPgJplrAHX5aFSquYmGNeI6X/za/JwoxQ==
X-Received: by 2002:a17:90b:1843:b0:30e:712e:5739 with SMTP id 98e67ed59e1d1-313d9d71383mr1065549a91.14.1749763198853;
        Thu, 12 Jun 2025 14:19:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcEB2oQFFgVMym1bB2VUhhziP7lQFCJfNjFpbKCnIdWSG44vwJc/VtPEHqnpJDg2SoasT6AQ==
X-Received: by 2002:a17:90b:1843:b0:30e:712e:5739 with SMTP id 98e67ed59e1d1-313d9d71383mr1065512a91.14.1749763198422;
        Thu, 12 Jun 2025 14:19:58 -0700 (PDT)
Received: from [192.168.1.8] ([106.222.228.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-313c1b5a882sm1990932a91.40.2025.06.12.14.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 14:19:57 -0700 (PDT)
Message-ID: <036e739c-54e4-4252-b6f0-c8eed5557d15@oss.qualcomm.com>
Date: Fri, 13 Jun 2025 02:49:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Support for Adreno X1-45 GPU
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
 <0e6fd97d-9a56-426b-8b98-dc8aa50d02d2@oldschoolsolutions.biz>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <0e6fd97d-9a56-426b-8b98-dc8aa50d02d2@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 7ICWcLRg46bxIQwAwh3K51hyM50YHn4e
X-Proofpoint-GUID: 7ICWcLRg46bxIQwAwh3K51hyM50YHn4e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDE2NCBTYWx0ZWRfX9ceJc54TqRBb
 6JQEeYKfRYYMqiOAHvZT5qIO6+KLqE7Tqyp0yK1t2n9FlRBXC91N+gVc03vccRv37n/jv5IhSYC
 FD0LZ+tmX4Q0pO1cH3j8EaagQiErfWx+fQe681am+HJND5ClcGmn+acM2056y9Ij3qquBRhbxE6
 91mF4wACgudkJyR0/CTwyY7eAeeOov8dJVXZVPr90OXVvqII8x4ivNBAIG/QzEEfH/hGR9IBIu7
 15d3kHDlvf1acZEOLuIcTAqEQ2W7zftr/ye4BypZmkjTQOYsTiQjrG2LJzbu63FFkThVIiQd8be
 ii7vP7lFXVuzZykvvRl5oDNM4EQpyTfQszrFrnCb++asWpOVeybvsLA3MkIIIoDHSY1IGqOzyx8
 sQpKKWzlKrKA+Y+9zf7qHp8WWQZLElpoJr3xueJHdXTRrRrRINKae5a4qmuj5Xd56CYqvvKM
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=684b447f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=8TKXt+tWyFtBY9WE4KDEmA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=uKUkM4gl_lyc4tR08vMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_10,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=999 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506120164

On 6/12/2025 5:32 PM, Jens Glathe wrote:
> On 6/11/25 13:15, Akhil P Oommen wrote:
> 
>> Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
>> version). X1-45 is a smaller version of X1-85 with lower core count and
>> smaller memories. From UMD perspective, this is similar to "FD735"
>> present in Mesa.
>>
> Hi Akhil,
> 
> when loading the driver (still without firmware files) I'm getting a
> speedbin warning:
> 
> [    3.318341] adreno 3d00000.gpu: [drm:a6xx_gpu_init [msm]] *ERROR*
> missing support for speed-bin: 233. Some OPPs may not be supported by
> hardware
> 
> I've seen that there is a table for speed bins, this one is not there.
> Tested on a Lenovo ThinkBook 16 G7 QOY.

Hi Jens,

Could you please try the below patch?

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 2db748ce7df5..7748f92919b8 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1510,7 +1510,8 @@ static const struct adreno_info a7xx_gpus[] = {
                        { 0,   0 },
                        { 294, 1 },
                        { 263, 2 },
-                       { 141, 3 },
+                       { 233, 3 },
+                       { 141, 4 },
                ),
        }
 };

With this, you should see 1107Mhz as the GPU Fmax.

-Akhil.

> 
> with best regards
> 
> Jens
> 


