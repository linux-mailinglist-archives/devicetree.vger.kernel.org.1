Return-Path: <devicetree+bounces-104077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5517397D2AF
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 10:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F313E1F22350
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 08:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32084137C35;
	Fri, 20 Sep 2024 08:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="b1RHTMVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504577DA9E
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 08:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726820683; cv=none; b=Hb6g8IxPK7w60TpDpGCpcf4z9VKBUJOZo6ylON80AQD/zAJZZaiNa8a2sV+dU5x0XH3RylkdG6uRS89IDxW5nNXset9ByV+pPZu65r9SDsX4gJMePEFDlyDQcTYexX5ocoCnDLWJ0JMA3uJQPIwBhxVoRhcADi0tWPyr90DrYcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726820683; c=relaxed/simple;
	bh=LZ0S9KTwGYU9nXfsJU/kvnMaq8Zh65FI0uhO7otglZE=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=UNy9w5RZqLOUwc4vSJSiFEHC3EfkvMkGzDJjUbM8LJSyO4VZKTLMYea48ovc7ZVwfBGzItIQroEVKBo20BpMJDFe6kZ8yiPF0uRA/8p7EkUBkQxUEItwoDLyPm29OFdk5XTO9SCvo4YygNciagvlN6CJ0XKnY79rrgW1ca4FYOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=b1RHTMVg; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7d4fa972cbeso1290197a12.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 01:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1726820681; x=1727425481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=18bFlmoHAy/k1n0ja9d6oNofVKOr2ShiamuID3ftTZo=;
        b=b1RHTMVgHde9JxQ8aIG2gx4mSnfp1y4TabYIbddr+3DPwgoxP1q07D+uB0Vyo86/DY
         Y3wN0pGd0BswQiwaYb0X16KQQWDafBQnRr3/m7v+anAnVuWBP7qWnhqjUERrSFWwLV4o
         eT6ig/ao0lsIjo3IEAYTQrJOt3FLqUOvlv8pj7uM0yQC8rAJTrInL5gneOMqomO/rp3V
         X3/nbrCNQdHJcqAF6H4CJBFmsJw1pjn5moQEaqbLjyvfAqyQFvMAb/pqSbXz9ojdrYmi
         l2IKCt9s5pYm1OEQZbt+E5WMNxxV/MFydAwvyl++mivZ8rV/6zH3de6XY/mfoXRWbKgy
         B6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726820681; x=1727425481;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=18bFlmoHAy/k1n0ja9d6oNofVKOr2ShiamuID3ftTZo=;
        b=XbhqHH0NZKAqvjjuthK3dg4MqGwAVjntKcYPCi48PRhdfB8quOfmvmP9FM+HwADpSU
         Lk6aNo6aGrQNc/lmzUdhgJh11xE62+cW4Xf6Ol46dHCCgXHIZtyjvCGIgAWYsvbB+F5p
         FVSsKDR8QuL5krubNOrTYFMTJ5a2aGDodNQro5I0gYzV65TuOWNqZfeEDYPKfDnKzCTg
         mH6PgPgC3zzl53+dGSVI/6SInLVHRGhey+Ua9OByfEWwabRWbYrQ46E70ElT/RIzDhWj
         H38IpgD6k3+u+TOPMd4tLuFT9mXE6zFCgWfLY8vrKepDDrrq0ksAVvcATM7PiZvxVLU9
         DIgg==
X-Forwarded-Encrypted: i=1; AJvYcCVwyAP3qVrmkHK4qnIN1fSsgzK+jgMxNX0LPfA1i5OkvtDNeIfe0/PjfvDc3lG//mGeArPNzVv/f5ge@vger.kernel.org
X-Gm-Message-State: AOJu0YxGdF0f/9ZNjhCsAq18rCEcN6DqvfrKfSM0ZKm3OdMVWehjGb0a
	EnX0JyxgyNvHXA2e+Qh65FazVdJpS4e8PWzgMkZmS2FuF2E9G0xyH5Pn8oAgAqM=
X-Google-Smtp-Source: AGHT+IFSZtKOOZ0ZGtfJy8TSl2mYrPI9rQ+0czpD45eDZJ1l4epVAz6I6h9Cl8Y9/3UZm+rxKYdIXw==
X-Received: by 2002:a05:6a20:cd0e:b0:1d2:e4dd:dba1 with SMTP id adf61e73a8af0-1d30ca2006dmr2657696637.25.1726820680549;
        Fri, 20 Sep 2024 01:24:40 -0700 (PDT)
Received: from localhost ([83.68.141.146])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dd7f874fe7sm1252593a91.30.2024.09.20.01.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 01:24:40 -0700 (PDT)
Date: Fri, 20 Sep 2024 01:24:40 -0700 (PDT)
X-Google-Original-Date: Fri, 20 Sep 2024 01:24:32 PDT (-0700)
Subject:     Re: [PATCH v2 0/2] riscv: dts: sophgo: Add i2c device support for sg2042
In-Reply-To: <IA1PR20MB4953DB82FB7D75BF8409FFF4BBB72@IA1PR20MB4953.namprd20.prod.outlook.com>
CC: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, unicorn_wang@outlook.com, inochiama@outlook.com,
  guoren@kernel.org, Arnd Bergmann <arnd@arndb.de>, chao.wei@sophgo.com, devicetree@vger.kernel.org,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: inochiama@outlook.com
Message-ID: <mhng-3dc6780d-2176-4f40-80af-ecd595f5f361@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Sun, 28 Jul 2024 19:12:51 PDT (-0700), inochiama@outlook.com wrote:
> Add i2c dt node for sg2042
>
> Changed from v1:
> 1. split the "interrupt-parent" change as a separated patch
>
> Inochi Amaoto (2):
>   riscv: dts: sophgo: Use common "interrupt-parent" for all peripherals
>     for sg2042
>   riscv: dts: sophgo: Add i2c device support for sg2042
>
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi | 54 +++++++++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

