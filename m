Return-Path: <devicetree+bounces-219810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA6B8E5FA
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 23:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D74E3BF423
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 21:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8338D1E8324;
	Sun, 21 Sep 2025 21:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NWkYl/ol"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113CE1C84A0
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 21:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758488826; cv=none; b=PhiJPPEc0On8VJipR+giwyOtgpsTWXWmVhrAOLqDtOTA/8E5ddTOg5nOr6D0u1aRyJN2nYunl7Z55ypcowRpjvNHBQA/1DUMP6Ip3s/kT3wm54yGW6Cl6V8k8V3+/Av+GCvrFoR9LHO9IxkXVWB26LyShsCmVJUQInlt2HH6DgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758488826; c=relaxed/simple;
	bh=Bnii5D5R+f0E2i4mZESrA1Cqh+1ZTJqhCJX9nj+/ucQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=L8CAEnv7b5C3kCPiL6JfjgjCqOzt/WRqFJnF0G9NE9LI77cl6m+Jj7L1SVPuraE4cujxr/sRwEq+RchpRq5tK4vvGwfOr6ndV8WzhKo5TACrsVw/pZD7btn2pGMhutWnt3neIFj+O24w/tGrslXeJEUZBYbQLFz9VPvlGwqEI80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NWkYl/ol; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-33082c95fd0so2961425a91.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 14:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758488824; x=1759093624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EV+MWhbWq2Q6vqymybluCls4t1NNkCevTKd69KW1i7o=;
        b=NWkYl/olQPAMoQKg/AToB+k9wke9GIcmJuvCW9FeO8HcE+dYHN1kwt1Z46hO820uOV
         PivxTlNKqY3oMbsOLXI21ELN1vFO5fjdED9dzP8bSZLTtvCYyl7sXhwkV+oe7rX7WJ4j
         WNWEgUzm2SziLEiHrzHOhz00xtJeHhLz9E1jjdHjkmd69dl04mLbYZ57juccHAyrkc21
         JaCcFYeHT3M0V/s7WmCAyiRnRdYe9jIPF5K97TeHfLbCQO4TtVEhLmU6Kp6R1Yy4a0Jm
         lkG/I1HDbY69nhIOT119wQrhY4yFXlAqHObhGiL0IsGof1HQzfPphH7rHt9mq+vfRAjr
         qxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758488824; x=1759093624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EV+MWhbWq2Q6vqymybluCls4t1NNkCevTKd69KW1i7o=;
        b=YIoiBIZIesTUqnbcu51mY5Nu8Mhf/nPlV2n+XSi7nUJ/C7e4d4uf+VyrdsraSOYKF3
         cQX+mHEMhMz+aYV/5Q5vGZ/KLPwvpYoOEF2V82stWVSlK1bvNjbR3YlL1V0UW8qVCEuc
         wtjPOHhKiBhR8s7WA33B1l8A6i3/EYpKa2XitcGIz3nQnZfs2SkEkRktxE/alzj3NONE
         3OW4eOnsZj1XTZI+ncXrNpLpqdGqkY86x6en0tLeYrvE4a37rU3iZLiGIZNKE2jH9vbM
         ilAhvBXpwqmIwMng5D/2j2e7DocFI7yLLd1a/tRe5vP1Q+pasoDo7GNNMFJDAOWTQnbn
         lmZA==
X-Forwarded-Encrypted: i=1; AJvYcCWZX7icbPdLez7tkCPN/rEhfHsIb7b2y7er4O/nMSO4oOu30b86eAKO4gHHB9aXohE8uHTZ9+un3lC7@vger.kernel.org
X-Gm-Message-State: AOJu0YwLuMSCS2fWVaUDWptBuPmAh5SEPq1WTvCieY9kLrG8n14q6S4p
	ymC1ypMvjIPzFleSc4fjZyhIlVUfl1UNqCImjjNW5qtvKrcclPbRo9m7
X-Gm-Gg: ASbGncvRJCplXzm83iqGpH9hU9WPE+KZnuc+g+NRpXaZqJd9p2VK0zBXnH+ZBwWJI6e
	DSruIcvssCnbBtdWP1UY2+442YveatvU7hq7LM3Ywx6MuC+NgP42WvT+Z9CbajdtbubFNQw8Kmk
	72c8xQUhq/yx1DWB5nLYNiVP0f6Ftuns3K79X8UXaG2ZUQckoxXwnDgYy7xp1U06suaKSQEdQ+K
	0jk8ZGKJfEn+tVGyNCJxbhdKA1z1EyIMSZ2Y7+KaWlu++/d98cdBM7yQiRzqdD5kgc6ao7TW1OK
	rAytPtXnm2swIQ2nx9pLGAIrElnEQPo3Ewcnxg/Q4ymEwdvrUGixRdCAAH9X7sOdoK9caoI7uLp
	WvZXtJ41saJIN5mNTj5JgkvaCb/6iCdGlIZ2Uq2A/PoHpQkW16ActyWpkBxQ97R8LtuonpOfCee
	XA
X-Google-Smtp-Source: AGHT+IEBhz4Vgcda0CmzO3ZZWUM5pIo4myqFp0/op8mgrMOJGUmsHkIt9o5tgVJoYdz7yYLG2MoAFg==
X-Received: by 2002:a17:902:fcc7:b0:24c:cc2c:9da9 with SMTP id d9443c01a7336-269ba43410dmr99531245ad.14.1758488824280;
        Sun, 21 Sep 2025 14:07:04 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802e14f1sm110134725ad.71.2025.09.21.14.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 14:07:03 -0700 (PDT)
Message-ID: <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
Date: Sun, 21 Sep 2025 14:07:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rk3399-pinephone-pro: Add
 accelerometer sensor support
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-2-e6bcc6ca74ae@gmail.com>
 <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

 > I'm not sure where you got this patch, but it's not from me (I know 
for sure
 > I never did any mount-matrix testing/DT patches) and should not have my
 > Signed-of-by.

This is where I sourced each of the commits:

- Add light/proximity sensor support
   - 
https://codeberg.org/megi/linux/commit/f171bc7013bc7ad3de9af817bfbcbfa548ebe01c
- Add accelerometer sensor support
   - 
https://codeberg.org/megi/linux/commit/b0bb7633e073a6760fa213b8c4a78ea2e73c7bf1
- Add magnetometer sensor support
   - 
https://codeberg.org/megi/linux/commit/2f7e67f451f16eaf15b81aa1dbdf126d54927d35
- Add mount-matrix for magnetometer
   - 
https://codeberg.org/megi/linux/commit/d7cd2eab931e32fa94408a96d73b4e6c0616107a
- Fix voltage threshold for volume down key
   - 
https://codeberg.org/megi/linux/commit/7c496a5cc27ed4e38b740f36c2d8b2c62f80ae54

I will add my sources to the cover letter moving forward.



 > Looking at where the magnetometer is mounted, it's mounted on the 
bottom side of
 > the PCB (U29 chip):
 > ...
 > So based on that mount-matrix should be:
 >
 >         mount-matrix =
 >             "0", "1", "0",
 >             "1", "0", "0",
 >             "0", "0", "-1";

Thanks, addressed in v3!


Thanks,
Rudraksha


