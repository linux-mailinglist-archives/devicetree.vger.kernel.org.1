Return-Path: <devicetree+bounces-140770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC2CA1B552
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 13:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 524FB7A46F6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 12:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19CE0218EBF;
	Fri, 24 Jan 2025 12:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z4KQcaWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395971B3948
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 12:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737720544; cv=none; b=A9BxuKLx8gEmqZCuaRuPWLx+fmjESVN2kRptvE9R2PdbmSBp9zjelvh1tReYAjEq5SUllzCjAsRofmvb/4D7rbmY9TZVLiVZ2rAsCHVo2rFDniAwJ7R9JDmO/kYZMcJt4P2s737rAwQ5ft+8jrdYHDChVbamjWje/jIyFkrBsx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737720544; c=relaxed/simple;
	bh=sathMMYpkd9IE0uKf0R4f3atWBV9w8lHu5rElf14cQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fKbkoIN47QV8gXd6HRlYJ64A/0pDRBntKx5tZPG9DRngMh7MMPt0qW/e2GN19tZ8RCzcUuXY8EGjTRtF/IeGGkKDgzyBM2S+rmMYzpoyV4k90R4bPaswu5YGzFGI/Mvk57I/Xe82NuLLPUny67R/LZuuO6ZrpFJxg6sncHtKD5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z4KQcaWr; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so1500060f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 04:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737720540; x=1738325340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g8iXRUajdsrMRbaddd2Fj3z0NrBTrdrHV4nnZ8KPUYE=;
        b=Z4KQcaWr3zyVzgar7eKGP2u+EgOyOrQHqSugBCDREsEpaBCpUhRamhs0Dxqk5AsywG
         +KbrOSEzY85dD4GadDQbRTzmbV3OCJsQKNvIp5ZtDijRjVT9ro6n+7R8VAtiZuzZo8vv
         5iv9HcyTB/J03PcDWnEaV78w7YG11J5hIpiKdjaXpG4WBN5Uel+aF7n+13JcqnDoLfIQ
         RsrcI2dCbH48+kFZoomIeDEB8PjCUYyV2NYwfcIpHn5E74CVBgv/ohf0FYOhfGOM0Qdy
         TStSV79a80h0A5tQv+hUxSlLxFROeuDUxZZgYDwZBdzFVv5Yn7dt7wK361m6jR5qgMzm
         DdKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737720540; x=1738325340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g8iXRUajdsrMRbaddd2Fj3z0NrBTrdrHV4nnZ8KPUYE=;
        b=OCUm5RyGW/OV6wO4PuzVKbuNPlLRQiAwA1Q3YeZKEkbOFp3EDH+UomIGuR1xs8VFVs
         snEN9OLondWQSl2LQw+5jHDYADPBCDRSI+MD3/XDoHfoY8KkMlGo/WGnovyv2BnmQoWn
         sl7LcWczmfsW06v6pEnTu5DP8UZBMYVZegDFlxx2JOd7+qxlz7wk4KvO39qDCI0nbuKq
         2PYhTZBd+Mm/ttaJgNmTs4vLvEY8KIPMfRc1B6zTttHTxJV966hJ9ZPBOIbJLW8A5t2b
         Xi4SMzX0yDDBekGQ1MAmiyrNCYaCy/6szgVE5RkAsJIGLz/Zu4Gt8L4AUH+7BgJQvRpa
         fKfA==
X-Forwarded-Encrypted: i=1; AJvYcCVKMZYL4EdA1tlB3TQM3Iy0gRIvQgXYhQ1fEa6aeNXmjSCt+q1AgPFvXsDxeaXPUBNLXGWiNAbbjJeG@vger.kernel.org
X-Gm-Message-State: AOJu0YysqD7nAF57ARB2dK8TPRjsVsjbl9XnGYeggOcZgr51z4q+qRf+
	5Qz2nWJI/0hi9HmoBO1/I9NdFgLqR7yYLL8ECFNmkXwLA5bF+d5VJIobQM86DSI=
X-Gm-Gg: ASbGncs3TrWxbWtmJmxJk+yLoMRD07hAUHK4Bsx6GjeUYZeNyc36McICYJc/ZzCMGEC
	eg2QoqSAECqdkoxjmy6Fh+bWP6LC40ffG+chVwPonHGYlOxRtvfFTZjxPp1UgYf+dREm47TT7m1
	3eN3oSzg4rDlhCEgiiiB/Zx7FKaLUG36+tv73zNlt2uNnONqhcyThJ08JvzrNuxrR33Af1Liq9V
	Pmu0WZeoPW2LvsZh1TNZ8m8R1+SvzMfxP29MIhZx+BrgkHWxphIefijAwC8e40M9VAPUKbMRPtE
	NDKb0PIS04y81kE=
X-Google-Smtp-Source: AGHT+IHOVyv4rF1Ie9u8PD45exHzGa60S5mXYDhT21RSV9wThybLuUYDNdK3QGFTrCOWKSuQcJXjJw==
X-Received: by 2002:adf:ee0a:0:b0:386:380d:2cac with SMTP id ffacd0b85a97d-38bf566c309mr21561411f8f.26.1737720540517;
        Fri, 24 Jan 2025 04:09:00 -0800 (PST)
Received: from [192.168.68.163] ([145.224.65.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d6b2sm2566833f8f.34.2025.01.24.04.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2025 04:09:00 -0800 (PST)
Message-ID: <da7dcddb-d407-41b2-8343-a0ec21914606@linaro.org>
Date: Fri, 24 Jan 2025 12:08:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/8] Coresight for Kernel panic and watchdog reset
To: Linu Cherian <lcherian@marvell.com>, suzuki.poulose@arm.com,
 mike.leach@linaro.org
Cc: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com
References: <20241216053014.3427909-1-lcherian@marvell.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20241216053014.3427909-1-lcherian@marvell.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 16/12/2024 5:30 am, Linu Cherian wrote:
> This patch series is rebased on coresight-next-v6.12.rc4
> 
> * Patches 1 & 2 adds support for allocation of trace buffer pages from
>    reserved RAM
> * Patches 3 & 4 adds support for saving metadata at the time of kernel panic
> * Patch 5 adds support for reading trace data captured at the time of panic
> * Patches 6 & 7 adds support for disabling coresight blocks at the time of panic
> * Patch 8: Gives the full description about this feature as part of documentation
> 
> v12 is posted here,
> https://lore.kernel.org/linux-arm-kernel/20241129084714.3057080-1-lcherian@marvell.com/
> 
> Changelog from v12:
> * Fixed wrong buffer pointer passed to coresigh_insert_barrier_packet
> * tmc_read_prepare/unprepare_crashdata need to be called only once and
>    hence removed from read path and added to tmc_probe
> * tmc_read_prepare_crashdata renamed to tmc_prepare_crashdata and
>    avoid taking locks  as its moved to probe function.
> * Introduced read status flag, "reading" specific to reserved buffer to keep the
>    reserved buffer reading independent of the regular buffer.
> * open/release ops for reserved buffer has to take care only about the
>    set/unset the "reading" status flag as the reserved buffer is prepared
>    during the probe time itself.
> * Few other trivial changes
> 

Hi Linu,

I tested that decoding a crash dump of ETM1 (trace ID 17) from panic 
kernel works:

   $ ./ptm2human -i cstrace.bin

   ...
   There is no valid data in the stream of ID 16
   Decode trace stream of ID 17
   Syncing the trace stream...
   Decoding the trace stream...
   instruction addr at 0x140c9afc, ARM state, secure state,
   ...

I noticed that once in the panic kernel Coresight becomes unusable, and 
the Perf Coresight tests fail, with no obvious way to reset it other 
than a cold boot:

  $ perf record -e cs_etm//u -- true
  $ perf report -D | grep AUX
  ...
  AUX data lost 27 times out of 27!
  ...

I didn't debug it yet. I thought it might be something to do with the 
RESRV buffer mode, but it doesn't look like that should be the case from 
the code. Perhaps its the claim tags and coresight_is_claimed_any() 
lingering, so it's not really an issue that's introduced by this change?

Thanks
James


