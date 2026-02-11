Return-Path: <devicetree+bounces-264659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMixCDc/jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:35:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4EB122481
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3247D3012CFB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E1E34FF77;
	Wed, 11 Feb 2026 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MBTqQ1PK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7680349B0D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798899; cv=none; b=iIW1ub1JRdWJX+RxdxkWK+fDdgS1SqbZPG5iMhtlvfNs3Ake0kt/opmw6bz3IxK+DhlOnf779+sdmelR4hXlPaVuC/uQZjhbqR/Qwgp2UlH5hAzg9FrUlgy+ldpoClZ/yn4U/4w+b1MWCKN2Vl3V1waHqg2xii6JvlehcUnUmBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798899; c=relaxed/simple;
	bh=cGq5QWXO0T3OHCprd8pgvsBLcjOO3QjwLDHuarQ5fkc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=F5l10QUe1bM6tQUblt+Kq2N3V3uM8iDJrB8B+8uG7ljomn5GGMCUkWNyWh0mF+Twz+Dph0inrHx7JrsHVRFWqTTtFjss7Mj3KQ7XzwJXlmEv8hMKfWy8mGaxcRuAj+RnEz4WRKPUwxklY2vjVsabILS/nNk4w/R1/4bnRnO/y8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MBTqQ1PK; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4362d4050c1so4921285f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770798895; x=1771403695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vfdcqFM0/eCHybIVXUmOHj6K5wyJWfZBIgSuomD2VWA=;
        b=MBTqQ1PKIlSd0cw60gvXDDHslwgDsssI8qvUYs8262Dp99GsXPuLStgX9gxwmVkD/D
         SAY2BePdai+nSqFLG3oWEI7bvrbMlbrMCtVf3uC9Q0bQDcM5iGpRb7HSJ10DfKp2fWNp
         xyXmDbSaXw2TJVR8wxFjFl3CJ7wM620w8Rh42RVpY5zG1NNO6uxfMR8n/LouRgxB4DJa
         BDVbscLnjXqJZkx5ok+KwyE/V/m1vkDpg0ALl0yvhRf52ClI/Okdpkiycz0oTjwECwKT
         7anU9AkoPrISvtB9R4GRoE7T7SZwd2EfaSlTx/At45uT8utf5Ffp5DqBOJuvuw4ZYbMP
         Xw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798895; x=1771403695;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vfdcqFM0/eCHybIVXUmOHj6K5wyJWfZBIgSuomD2VWA=;
        b=DhTHdO2YllDClO3VV3UMiKIqn1Z9c4s1ME1KJ7Q5/VtD/WWqIAqYljLwdzk6+b3fnE
         4Gj/zKcSNNWgloNFYFX2lt5HAy1mpaxGxs1VzxoG4fL13KksdVAjfScIsjucm+Fk5yAO
         tfAE75VN5hhqQO5VkyHaU4zeOsRdXls5uirxiEfr2Usu5LbiqZfrxeXNEr7pNdKjWLzX
         L27VBVmeq3wgfgHxVvMyxXSuIkehwDCQ4rK5xLg4R0V/puRIFpT5Bz5YUoehviblYrsI
         Y702tUDZ+Fu23w0/N5wQYWBrGgXbOXvh9i2Hb9Dn0dRaDwgKCcwWJWJxDJkhkZ19dFOc
         AbmA==
X-Forwarded-Encrypted: i=1; AJvYcCUraQQV3VyXztDsO9rBMbU6XqkEiegsSoLfXGOlq6dfCcllik0hAKKn8qZgN/A8dUoescZef59MLU7M@vger.kernel.org
X-Gm-Message-State: AOJu0Yz74JsCnXvl53QeP9eyYFvLyiC2LlyB+wNvF3S00PRFRdlbnQIS
	prDMEnYW+N25y6zlSF8Se4ifCyxOVy5liSzV9FOtkX6YUIQFxmcLWR08IFOkhRmgH5I=
X-Gm-Gg: AZuq6aIDzVnNdK+XjIdDKFDAFgTYbPi0Edr5zf0iBP0paAopFt4qIO78yz+tX9aS9S7
	3u12kNosyPAlUPHVrL+lyVn+2HRrhyErV/6CFuFkld8pUv5d0eUtk4U1nyC/V4vFVNj5X1BgB1Q
	DoHqCyadeT89jAtSEU58aDBHFUUEYIQwvZaTwSJHnJSoLnoxNQP9lMgk65Fx9SwbAuG8hZ8/CGE
	Dd8DuKNWDtF06Hoa7uzviDlfkLTkVVu8RFsSTbShtqgDFwzCgrDifgds2RZ9v1Eyve494kGddvg
	7oyF6kcbEyTQNvuXe9/wzo7VtbPEznNnhhmbb8Q5rhcfC1axGMDrQ90y3+t2X3od56k4af2YsNJ
	0NxajLhKR0nIycOj8vMNa1G80jLOoZxgO/oY1NNJKCDgUAzxkZKvxQBq1OKgxLUeNDCakGhgCzq
	21AdnGYmfc1jt3d39lirN0oQ==
X-Received: by 2002:a05:6000:2386:b0:435:dd81:4f4d with SMTP id ffacd0b85a97d-4377a534f67mr8447959f8f.26.1770798894983;
        Wed, 11 Feb 2026 00:34:54 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:550e:9544:443b:8507])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-43783d746a3sm3075953f8f.17.2026.02.11.00.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:34:54 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  chuan.liu@amlogic.com,
  linux-amlogic@lists.infradead.org,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/13] clk: amlogic: Introduce A9 PLL and CCU driver
 support
In-Reply-To: <20260209-a9_clock_driver-v1-0-a9198dc03d2a@amlogic.com> (Chuan
	Liu via's message of "Mon, 09 Feb 2026 13:48:46 +0800")
References: <20260209-a9_clock_driver-v1-0-a9198dc03d2a@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 11 Feb 2026 09:34:52 +0100
Message-ID: <1jseb7y8yb.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264659-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,chuan.liu.amlogic.com,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,starbuckisacylon.baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 8D4EB122481
X-Rspamd-Action: no action

On lun. 09 f=C3=A9vr. 2026 at 13:48, Chuan Liu via B4 Relay <devnull+chuan.=
liu.amlogic.com@kernel.org> wrote:

> This patch adds driver support for Phase-Locked Loop (PLL) controllers
> and Clock Control Units (CCUs) in A9 SoC family.
>
> In the A9 SoC architecture, PLLs and clock control units are implemented
> as standardized hardware instances to reduce unnecessary differentiation
> across individual units.
>
> All A9 PLLs and CCUs are exposed as device tree nodes, providing an
> accurate representation of the SoC's internal clock hardware structure.
>
> These drivers are designed for reuse in subsequent SoC generations,
> guaranteeing code inheritance and maximizing reusability.
>
> Makefile rules compile A9 PLL and CCU drivers into clk-amlogic.o (see
> drivers/clk/amlogic/Makefile), simplifying deployment and enhancing load
> efficiency (single insmod for kernel module).
>
> Since the foundational A9 DTS hasn't been upstreamed yet, I'm temporarily
> pushing the PLL/CCU DTS files to github for driver comprehension [1].
> These patches will be included in a later release after the base A9 DTS
> is merged.

Creating a new vendor directory and re-inventing supported driver
without an explanation, coding style, build problems ... the list goes
on. You've outdone yourself !

So NACK.

Chuan has been warned numerous times about his submission to the kernel
mailing lists, without a noticeable effect. I can only suggest other
reviewers do not waste their time reviewing this.

>
> [1] https://github.com/torvalds/linux/commit/d6a82e4cce675fa5146c5f638c2a=
926c1c8cb1d9
>
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
> Chuan Liu (13):
>       dt-bindings: clock: Add Amlogic A9 standardized model clock control=
 units
>       dt-bindings: clock: Add Amlogic A9 PLL controllers
>       dt-bindings: clock: Add Amlogic A9 misc clock control units
>       clk: amlogic: Add basic clock driver
>       clk: amlogic: Add composite clock driver
>       clk: amlogic: Add noglitch clock driver
>       clk: amlogic: Add duandiv clock driver
>       clk: amlogic: Add PLL driver
>       clk: amlogic: Add DT-based clock registration functions
>       clk: amlogic: Add A9 standardized model clock control units driver
>       clk: amlogic: Add A9 PLL controllers driver
>       clk: amlogic: Add A9 misc clock control units driver
>       clk: amlogic: Add support for building as combined kernel module
>
>  .../bindings/clock/amlogic,a9-misc-ccu.yaml        | 523 +++++++++++
>  .../bindings/clock/amlogic,a9-model-ccu.yaml       | 435 +++++++++
>  .../devicetree/bindings/clock/amlogic,a9-pll.yaml  | 134 +++
>  drivers/clk/Kconfig                                |   1 +
>  drivers/clk/Makefile                               |   1 +
>  drivers/clk/amlogic/Kconfig                        |  52 ++
>  drivers/clk/amlogic/Makefile                       |  23 +
>  drivers/clk/amlogic/a9-misc-ccu.c                  | 970 +++++++++++++++=
++++++
>  drivers/clk/amlogic/a9-model-ccu.c                 | 475 ++++++++++
>  drivers/clk/amlogic/a9-pll.c                       | 156 ++++
>  drivers/clk/amlogic/clk-basic.c                    | 219 +++++
>  drivers/clk/amlogic/clk-basic.h                    |  39 +
>  drivers/clk/amlogic/clk-composite.c                | 280 ++++++
>  drivers/clk/amlogic/clk-composite.h                |  20 +
>  drivers/clk/amlogic/clk-dualdiv.c                  | 365 ++++++++
>  drivers/clk/amlogic/clk-dualdiv.h                  |  27 +
>  drivers/clk/amlogic/clk-module.c                   |  42 +
>  drivers/clk/amlogic/clk-module.h                   |  53 ++
>  drivers/clk/amlogic/clk-noglitch.c                 | 584 +++++++++++++
>  drivers/clk/amlogic/clk-noglitch.h                 |  29 +
>  drivers/clk/amlogic/clk-pll.c                      | 701 +++++++++++++++
>  drivers/clk/amlogic/clk-pll.h                      |  43 +
>  drivers/clk/amlogic/clk.c                          | 464 ++++++++++
>  drivers/clk/amlogic/clk.h                          |  56 ++
>  include/dt-bindings/clock/amlogic,a9-misc-ccu.h    |  53 ++
>  25 files changed, 5745 insertions(+)
> ---
> base-commit: 4d310797262f0ddf129e76c2aad2b950adaf1fda
> change-id: 20260130-a9_clock_driver-ddd90357848c
>
> Best regards,

--=20
Jerome

