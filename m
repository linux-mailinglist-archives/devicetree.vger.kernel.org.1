Return-Path: <devicetree+bounces-166854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB62A88AC4
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 20:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7837E3A6500
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 18:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC2F428B4F6;
	Mon, 14 Apr 2025 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="TAap0tnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2192749E2
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 18:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744654354; cv=none; b=YLMbPyFzLBZo20PJSY4ZaXQuy4WzzBJ/GUVrTnSR0lEKKPGSUV9+07cqpkAMfFu5CET4hSmeAdFtYVASkcs+5Aq0wwC2JpAqUWN2xHUEx9r8dYVSloflrPJ4cbAIzVDdbk0VN2zz5Clk51wXzgYJFXLELBCAGq98OLuv69cIZ34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744654354; c=relaxed/simple;
	bh=r8A1/OXEw484ZNsSIzg2VWYDtiy/WuZ8xA8QHJ5Y0E8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q3mhS+6m2rZPIOW7gV8ZdEf4e7LURqfBl89GmU7jHVX1hy8ZFPk9jdtVCp3JFQSp7VnTeyOJhr95i1ioGu+VjD8GTviMndvp3fkLrmf161Sso5bx7cFLbAq997ZHUvp8KEbIQPk7pRcIUKGWAFxG1fHAnROGuM7aZ0/zWcY4wQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=TAap0tnB; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-85d9a87660fso403602839f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744654352; x=1745259152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W++7Ey3dQSUtlzRbYLNczC2fDf4DSp323YSWaoMgCKM=;
        b=TAap0tnBPpph09KS8EjY/gxjodkQWdTfRIk7pfckV3PqrgPqFJzS8TB4rSV1EoqGPZ
         1IY8Y5GfJ4KNTLQw9wfSSFGiFNiqY/57H8RC8rAGQ87BqEBRQowyme034nNZjhhYl5qQ
         0WrZ4CJTxn+9XLho5DProBeb3M0VtQ3e8tsTaprWkPJaTibrasAeLO1WuRxsGLqAS0nb
         bBOjgR4VjJqVI1CbC5S9eT62PdUelccYuSnwLYo7DNP+OBHRstwfXkwgv1XNwjmVsVBd
         PzRg5+RstcLUIr/pWteLX3LP71feMU/+6b3AYf5MJ6wyb2LXn3Y4v3+rG0AkuhibJ7qG
         HKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744654352; x=1745259152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W++7Ey3dQSUtlzRbYLNczC2fDf4DSp323YSWaoMgCKM=;
        b=fFR7+cf/gZQwfAp7S5M5VR3j1g2IEYedlLHaz9OPsEnsvEyRAmg9c+2j/H0zWW3YfP
         TfMPPtFLIxn4Per8E4kgBDfw5vE/XuM6Uh+wzTbrwPKGwVKOEf9ydvVo60nTTVkpDCMK
         U+2/mnQ5eBIQ/x0iHB4TZP3JK/Eh2qD40vB4DYhFxX7fH30z+3eIEFAPdZQ63IZXD0e6
         NPzDRNppF/lkwPxqjU24kMQ20y/1Y41FUvTzp0nl3m8vQKwa+cM+kkbr7T6E3arEPh8x
         +cYRvCl/Y5SE9Usf2mDbjT3NttkjKerXGN/aA+dSYUW8Y8vd4/mZ7YN6y5qnoV3BiTfx
         OJzg==
X-Forwarded-Encrypted: i=1; AJvYcCWxPlDVZypziNwQrATPZx6DCoYkaxHtMNsAP30prNkMuIU7DsIdgbNplk5cK7J5oIgdT8txY8D7yBWf@vger.kernel.org
X-Gm-Message-State: AOJu0YzImuiC0TQEpfehUDBkaKwy9lkHVDsMgUZejw+crFnXmH7zZHaY
	bZiwVMhBOhtqWeuZ4uskcSe2CBcvwGFEj/NopPday6lBZj7lea5rPIKMEhM5qqk=
X-Gm-Gg: ASbGncuisEXAJumRz895m3UYzyZKOjy0ghVfAZWwjJ0eEOCON4g95cQ6mCYuLJlAj93
	8wkwV9pu7ymk4E3CqZMbH2A/rqDlmjw+wrlBlhbRLKqVDwwGSGY7xap0ckQBm2uQX4vjKx1pKkU
	nuvYdnQa6yco6QJT5kzxVtlw5sYLJtQ2MMAEEJBDtoRasjmFg/FG1y2nNB6YprXzf5LDDzfSi5Y
	TrFjR8aVCpzN00VFWJNHq/KRcx1+NGkQISCZ2Xia66ZTwaT6Xz8ahGWu13WFV4C+xLBon0W5v+n
	yBpQYOBeh7dmU0f9eQpbcuULkiz9V6fOF247w7vTVRE7MP6HiXSbmpX7J88xjRiPNXljgT3Jgpv
	4Mp9t
X-Google-Smtp-Source: AGHT+IE/wgwkbNsHlK2gyNx1GJkEELkMB3G+2KIj9Z8NP9udlt6BR88zVmXF8+R9i96TFdJe49eIEA==
X-Received: by 2002:a05:6602:728f:b0:85d:a1c4:ee03 with SMTP id ca18e2360f4ac-8617cbbbb51mr1548100739f.7.1744654351717;
        Mon, 14 Apr 2025 11:12:31 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-86165428af3sm219588339f.15.2025.04.14.11.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 11:12:31 -0700 (PDT)
Message-ID: <b557a075-a184-4234-9793-ca1d13eac9df@riscstar.com>
Date: Mon, 14 Apr 2025 13:12:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/6] clk: spacemit: Add clock support for SpacemiT K1
 SoC
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250412074423.38517-2-heylenay@4d2.org>
 <20250412074423.38517-5-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250412074423.38517-5-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/12/25 2:44 AM, Haylen Chu wrote:
> The clock tree of K1 SoC contains three main types of clock hardware
> (PLL/DDN/MIX) and has control registers split into several multifunction
> devices: APBS (PLLs), MPMU, APBC and APMU.
> 
> All register operations are done through regmap to ensure atomiciy

s/atomiciy/atomicity/

I think Yixun can tweak that for you.

> between concurrent operations of clock driver and reset,
> power-domain driver that will be introduced in the future.
> 
> Signed-off-by: Haylen Chu <heylenay@4d2.org>

This looks good to me!

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
>   drivers/clk/Kconfig               |    1 +
>   drivers/clk/Makefile              |    1 +
>   drivers/clk/spacemit/Kconfig      |   18 +
>   drivers/clk/spacemit/Makefile     |    5 +
>   drivers/clk/spacemit/ccu-k1.c     | 1154 +++++++++++++++++++++++++++++
>   drivers/clk/spacemit/ccu_common.h |   48 ++
>   drivers/clk/spacemit/ccu_ddn.c    |   83 +++
>   drivers/clk/spacemit/ccu_ddn.h    |   47 ++
>   drivers/clk/spacemit/ccu_mix.c    |  268 +++++++
>   drivers/clk/spacemit/ccu_mix.h    |  218 ++++++
>   drivers/clk/spacemit/ccu_pll.c    |  157 ++++
>   drivers/clk/spacemit/ccu_pll.h    |   86 +++
>   12 files changed, 2086 insertions(+)
>   create mode 100644 drivers/clk/spacemit/Kconfig
>   create mode 100644 drivers/clk/spacemit/Makefile
>   create mode 100644 drivers/clk/spacemit/ccu-k1.c
>   create mode 100644 drivers/clk/spacemit/ccu_common.h
>   create mode 100644 drivers/clk/spacemit/ccu_ddn.c
>   create mode 100644 drivers/clk/spacemit/ccu_ddn.h
>   create mode 100644 drivers/clk/spacemit/ccu_mix.c
>   create mode 100644 drivers/clk/spacemit/ccu_mix.h
>   create mode 100644 drivers/clk/spacemit/ccu_pll.c
>   create mode 100644 drivers/clk/spacemit/ccu_pll.h
. . .

