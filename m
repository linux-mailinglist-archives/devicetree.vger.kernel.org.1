Return-Path: <devicetree+bounces-204240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15514B24999
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 14:37:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 649021BC0242
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF86923C519;
	Wed, 13 Aug 2025 12:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="pD2miAJY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA623A58E
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755088624; cv=none; b=ahKFdiJOT7WJeOAytCiOwDNmEXqGluv7sBgKfJOnXPiqOmbyGq3yg5ZQTIynHoE7os5H9oR1PKcBBxO9wnBNxGaLvfm1HAf3BRIBMiGsiw4LHxgA+no+O6SUcxlLct19DwcfPusL8dM3YYVTvLMBOBeaTayUttV/jr9daW4poa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755088624; c=relaxed/simple;
	bh=Dio7h+uqlbgU4biS+L4BkekXjii6MxHsEIflkjyhoZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uC+mqOsrVTJzcLAe1QSRwHp8TUiwHpQpKtQFJBbVldSkFyhh3opSh9HQBp0i8S+5/vefCOQQQIrG0W4Vtm3LiPVGILaRSnIv5B4Mlr0hL91fhBdM8BFCouO/l0l4cs6os7naWqMSMAwsC7cVgvrqN/8pidzXks07v+iiF3Vfo/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=pD2miAJY; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-881833b7adbso459631439f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755088622; x=1755693422; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QJSNE7TDIwDdVBJivdzquzFfOdkEAZ/NqbU/Si8oVJo=;
        b=pD2miAJYs2q425XHx+ErrycxYy0aWLorgV+N+BEtt3PMXn3QTBQc/Ah2lGcPD820qB
         E74DBg1bPByO5HSYdhTSwYD8bLUEOJbDQ8e2jnpIxNCtYRhEbfo9Ix2NstSBBhnBZNGZ
         WXznnvJABFi6BtCd7FMr9GLHJRXQtW5SPUrTMGlIuSnKIKYS/yTJsFRUGaxROJV8BnxB
         Xqz4eBXVQvTghFNh36w7NyujD/mC72zb1456B9zuk2Ga4ljDPb8Qkc1D2Wp3BpZj83eC
         NHoCOcwXtoo03WoOygHQxYbRa+JDrrGHjBxXfWDr1UtYeyMDwEyWqIUHHQe+xmxfoBWl
         TBeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755088622; x=1755693422;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QJSNE7TDIwDdVBJivdzquzFfOdkEAZ/NqbU/Si8oVJo=;
        b=mj8/8/dR3ZARwIjyxn/EhwVcOmPrXIqpvA146kx4Zp/6l6PvexVgmCN/JrZVzzikMF
         DdbOcaWp5rpyTL5El0hFIaBvVNk1w2lQDtWN6+EScjNUyi2pTvhF8d1MKhg5zOHynGwV
         r6qkOfrWJrLyITrv2ylSzO8hMFp0juxtX+2vGQIu+LTBNfReVECUav/BAIA7SwRxO7Z4
         fsIAxhJ8vS+G0pQSwl/VdKGYvdMn5crGLzCboRtnfg3jChe98FnbP4Sb1JUkPIne4Mbl
         eZdUVfwrwotR96i4qF8Xz4FwMux6KlZYridePCQEzIdvi6KGZh8q7KBx5NOOXbMba6f3
         NXsw==
X-Forwarded-Encrypted: i=1; AJvYcCVaxOmE7SCFamuZ7Rt5o7e9iq4zJaJNaK/91yTCCP+//ZvlDbSFMJs/7XZvaqT6eC6fVGQLGEswrmwo@vger.kernel.org
X-Gm-Message-State: AOJu0YwVgAE4mn16qgA6T0kdI1Ufi0ZWychDTUAaCzJ3GWxBjwmyIii2
	cNl//XyczyD241hE2smMySVoTm8RSRK0qpRkLBtk1fp5B7H5Qe+EMwvGhCGK5dXrH/Y=
X-Gm-Gg: ASbGncuFv9LesbdeDDz40R//o4s1DxjB0L6o9FTD1GLNYcUKJbq+68bJcGZiKmgT+AI
	6HL0ZkP9p20df/9KPIpL5qombpmpynwSOi5Pe2klNJxk7BPEdsNRBOuwwYuaMQWsxjUj+deQI2C
	Ft/0zI3G+J2Qdjnv3P18RjcWkKIpXvXUCIxwq7phng3s+WP4U0B/vksZPnqLR+n/1y4nprYB1Mv
	U1xkomQBZ0WOMQPkBA18IioahJjUKFydfNRbjUt2pv6SsG6amJQNU3/xFLTfxzGrQ+FgwRYlqOJ
	DulUq6nSm6uZsBV9MQCPj2FkO1IkvIDK0K2tSiTopSXGdGU6Wz+pUFEdWpQ0huCIryQlTXIIrLt
	F0aLzcIjsfVDAyf5jjt3vPl40ndjqdGG4sjkv1MfXY+voNGmd0vMoOB0xRN+WAk/TS/HN3FR2
X-Google-Smtp-Source: AGHT+IFnwEFQtUPVw9g9mmFiyfGLoS5nlr8HAUmqQnFfYA2GdWoqbZqkoS/L9fICYJiWR+VCb+vYyQ==
X-Received: by 2002:a05:6602:14d4:b0:881:7837:6058 with SMTP id ca18e2360f4ac-88429514720mr521566239f.0.1755088621539;
        Wed, 13 Aug 2025 05:37:01 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-883f19c1475sm445898339f.29.2025.08.13.05.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 05:37:01 -0700 (PDT)
Message-ID: <fd7ac07d-030c-41d6-94dd-da53b593f5ab@riscstar.com>
Date: Wed, 13 Aug 2025 07:36:58 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 1/7] dt-bindings: mfd: add support the SpacemiT P1
 PMIC
To: Troy Mitchell <troymitchell988@gmail.com>
Cc: lee@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mat.jonczyk@o2.pl, dlan@gentoo.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, linux.amoon@gmail.com, guodong@riscstar.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250813024509.2325988-1-elder@riscstar.com>
 <20250813024509.2325988-2-elder@riscstar.com>
 <aJyC5q0X8mj1xbSB@troy-wujie14pro-arch>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aJyC5q0X8mj1xbSB@troy-wujie14pro-arch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/13/25 7:19 AM, Troy Mitchell wrote:
> You can change it from this to my company email:
> troy.mitchell@linux.spacemit.com
> 
> Acked-by: Troy Mitchell<troymitchell988@gmail.com>
> 
>                  - Troy

I will make this change before I do a final version.	-Alex

