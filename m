Return-Path: <devicetree+bounces-220262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98507B93A79
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58A5B3A7583
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 23:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C035A255F28;
	Mon, 22 Sep 2025 23:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kJW0RerF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C72925FA0A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 23:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758585434; cv=none; b=okzvk1UsI35bD81/GaXpElUp5bs3RmeZcf43KsXSWOx9SkNjTpAf9oPwuiAHAZlQueOICAKtM8705w9QDRZYtYFCHOM5zlNYWte3tTr0gJbUmY5BBKFvyiyOqI6KA0eEw7bZTYYgvXrPbWfeY9uMyatZPAFFBYhZ3BXOOHyWQ7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758585434; c=relaxed/simple;
	bh=B63YuYx5gKQMFWvVm9fq5GYU6bV+k57a1fas2yIrTxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=flhVHnoHvHxBHMDPchUXA3Lk2fI7tlDZ9tFGQqYr0jEqvNCiFvmOTO0fSC/b0zWB63BscFFchW1r8hzwNW7XhmGsekFe4IBpYV3/z2t7u6uwCqDy5HA0cvVkRcXXql0tyUEJNVRK45GRhWhWKx/uLNWmEhWOpvpsSgXBF2+AV3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kJW0RerF; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b5507d3ccd8so4528425a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 16:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758585433; x=1759190233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IODUA9zga0m/nOGRKLCJjuNE/B+/uoV/AOO8W3swHIU=;
        b=kJW0RerFNPIXvrsJg/WaefyDyydMJO+FT1tDVh1nJyCSRhGnu5IjESJOTvp62Hgloy
         48WfYqqZGyVCEEfCjJlTkO3+v5e5yzM2cAdjrTpuHlcvTqGQapT5MoybhVy8Dr81i6IM
         dIluqnW2jcwDqwDI/WxK2v3rWOOMOTtmGRkztVfuxLUCKbLAtkEGfzT5QrdQ9Z0hlmpf
         DjDg5LpyjARyy4iXN9yi06acwE5c2XuORdXg1oik7rkXHXYED0Yz1KSgueP3eWBAh4ni
         zwVIPZ8LcU6CZSi3UW+HkBgcNEQeruv5qnK4SR5eMwJPOk42jl1Q+ahUWtkAqga6PlHk
         ZU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758585433; x=1759190233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IODUA9zga0m/nOGRKLCJjuNE/B+/uoV/AOO8W3swHIU=;
        b=Bb7mHzm58NVKfSkqKHEUipmxqRrJBC7oZCNNKWTM3twWolyi1+2NMC+u8+BPQasxSF
         WQo399BJks/zI4243F8SpLP9hWPZ/egvwW8JeJU35calNskw30G3ifkAmgzC4nFXuTPI
         BgOI9ng2xnFtX7raDYCnu6EBFJfscxkncq24JWYU45x/fDs7viGunE2Gfl8hbMp8HSuz
         pN7O385Bz23Tra/U4cN2R5rEp0PD/goZj0PoGlNYE488myVLhsoGKi/sabSP0AyQWhms
         R2RD2SlQpDdOJw10E2vwPnJb+Nk0fBmzwHCyf+Jpc07JC5wkugppM7HiLgg68dF6Hglx
         mj9A==
X-Gm-Message-State: AOJu0YxpF8nnW1BwwZ+qih8Lo716eOX9UE+3lVVSx2ogNgKV9+7coeI8
	Q66aU5v5dKYOeP5c2e9g+cdWsYPW+aWD9Jm/BOEciIMvShnK0gqP3SNb
X-Gm-Gg: ASbGnctKnBTycdWNggmYtfVPLv3hS4qPL6L1FBdotODnhcPtYOWdn0mcnOGdtOElO+y
	UQfcG+O6mDpKfTUSsk9ZDv/RgDLFF1aXXSfYDF1/Yc56bPCIPZZmkTjlpW9H/vkerhW3wJ2J2fe
	BNjcvBdY+1Obi0BN4BTuVEqGIlfYnq8BhHaxRVMI835VRhfd4qgr+zYw8NVcp3ZIOLg5tVVGQGw
	eQwwCE4jXkJZ/B0G6VxGmpgwaGKpgqQpqHfz03sY8aALZdguLtFjE2Yd1Ldba2lFlEJ2H/U1Yts
	Hg7n9GwwLS8zPiilbSAck2myJPwLNLMkb0366tz+FRiSTnUFWWEY/ntusoxiqqpSjzJ1YsrElJJ
	MSgvI8iTQipqL8lhxHBU90VP7
X-Google-Smtp-Source: AGHT+IFLSQPMmtJG7J8JigPkcsPkbNvPUMLxpyd334NCh2UapNWwuDV3lLZRY3JDLwxXh9eDESpAQA==
X-Received: by 2002:a17:90b:55c6:b0:32e:dd8c:dd2a with SMTP id 98e67ed59e1d1-332a8ceaae3mr951669a91.0.1758585432510;
        Mon, 22 Sep 2025 16:57:12 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77e0bb98790sm11669657b3a.9.2025.09.22.16.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 16:57:11 -0700 (PDT)
Message-ID: <8ca8192e-ccc1-41bb-a913-dd633d65ac54@gmail.com>
Date: Mon, 22 Sep 2025 16:55:57 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/11] riscv: Memory type control for platforms with
 physical memory aliases
To: Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Ghiti <alexghiti@rivosinc.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, uwu@icenowy.me
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20241102000843.1301099-1-samuel.holland@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/1/24 17:07, Samuel Holland wrote:
> 
> On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
> RAM is mapped to multiple physical address ranges, with each alias
> having a different set of statically-determined Physical Memory
> Attributes (PMAs). Software selects the PMAs for a page by choosing a
> PFN from the corresponding physical address range. On these platforms,
> this is the only way to allocate noncached memory for use with
> noncoherent DMA.
> 
>   - Patch 1 adds a new binding to describe physical memory regions in
>     the devicetree.
>   - Patches 2-6 refactor existing memory type support to be modeled as
>     variants on top of Svpbmt.
>   - Patches 7-10 add logic to transform the PFN to use the desired alias
>     when reading/writing page tables.
>   - Patch 11 enables this new method of memory type control on JH7100.
> 
> I have boot-tested this series on platforms with each of the 4 ways to
> select a memory type: SiFive FU740 (none), QEMU (Svpbmt), Allwinner D1
> (XTheadMae), and ESWIN EIC7700 (aliases).
> 

Hi Samuel,

Any update on this? I see ESWIN has started their EIC7700 upstreaming
effort, and it'll likely rely on this. Is there any follow up series?
BTW, Icenowy's working on upstreaming the Verisilicon DC8200 driver.
His work also depend on this patchset in order to test on JH7110/EIC7700

Thanks!

