Return-Path: <devicetree+bounces-257375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NsFDqJqcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:56:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BB951C72
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F25E950B1C4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363124218A5;
	Tue, 20 Jan 2026 12:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aV97lcSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D3131281C
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911585; cv=pass; b=ZUzLwyu3OyMF19Q4S1dVlDI+d5s36Nn9l4sS9atCg0R9lBdLCdL8erWI0ZCAhKzpuMCteL1wbPalFe1/9RjlZ8YxJY3+a/gHugHuaSE1UNsKZAXflejGvW2lqzLl2VYhcaMX5mWaQEyoNf6KbwVG0gu0mUSt4tWcDgfXUMFww+U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911585; c=relaxed/simple;
	bh=LsiJYu5acxwlmoQ+GMxHNspHmvGoa/T0GCo4wToiK80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I5oLUAY7tbUvIJZA3KpB9EjGgiay0ZHivkBJNwelFViZSQKbcF9pZOzVvcfgjnYzIHagDpBfv/BV6UZ4JZh6J7oY28xIlTr1g8/U+kKWJ/yTg0nl+xYzOVbCuFPIRf4t43zyIslPKreA0ZdTJWYDW2MlsKOc1oldV/iqK7at0G4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aV97lcSs; arc=pass smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-79276cef7beso45575097b3.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:19:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768911581; cv=none;
        d=google.com; s=arc-20240605;
        b=IKdHhVg7avsa1MNuZhFerbXzoGD2d2mUeQoGSGVcgGzKJOUjY/6yrv8qfUsDFohXqW
         2MInxXVLfvvK2prVTmdZabodTRjiht3mfLFWTRK77MBPQrAj3ytqIjcRCBp7nPfPlI4r
         KDc+zmq0cmLR8ioDS/GR4RVO1QbTfLI1bFwD1NCv3zR7CexiFzWLuuVIiWaTFH70aVJE
         1fiZLN7j59s2cO/KQ+zj+nV7ZdSbEBwl8T0J0vN8PRWrO/beOGf+2QsZBDuxyNJoNlVD
         Pc0dlz30RzXyqM8LVGSCkIWJ1fC6g6i9lmy2co5GneC8MjP7BkB9XGbQWbcMzGsDzJ27
         l92Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hXaB+rRblVbZQvSIZXsi1b0KhXGaFyJ7cF5b57eRTUc=;
        fh=s0EJf6axmSA0koIZE8SWZZqWFO2Cbu6xcizXI29vFbI=;
        b=ldqAiGs66ZycmjLsiwKQJoITvdrbOizxyFh8Z4RtyzFNUe1nwjUpOMIgrU2bsWQhqS
         BizZ45t2kDykaNamCCFGLR2boi5Cox9dASlELaQsWUMMFxNJEFu9kE+tu4Qgfcmvpw6a
         Kx3+D3Ao/oUuau60fsjm5ooXEs9C9rcQRV3sfL6roVeHvm+hQHgHwFoPqiLIoVsSW39t
         ncRGvTCfpqJMIQJYRVVfl90zui+LLBw/pXFle0WyLMCOw4wL0l2d436PfNjIp5Lu4+iA
         NrKVfimWOuFy2iUisLXtg2hBBiclW2LMGzBQdPCdnh8JbJDXXg72Bb2aqW9OmTliYabn
         qejQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768911581; x=1769516381; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXaB+rRblVbZQvSIZXsi1b0KhXGaFyJ7cF5b57eRTUc=;
        b=aV97lcSsdOLkgbaqDj5wDywfD85PIw5iUJBYG/pC5jlmUXjwOGx6ykq5Q/cCX7jQvq
         18U1IQSINWSyyew636vcSqRs6i1uI14PECIQxWdTAZekgO5FK7DbxrXhT9AM5j6ezX6V
         ubLjdnqdGNCmR9EatVytxA/NqMwbRpV4ZdxNGjGzYIrGEHJNenaxV5PiHC+FxbdqjXNy
         EGKZX0rO5xYbDcAp2BRfBIDIc5qOQZpZYXzG03C+gEVjKm+Y6RhFkWXqNjybO9XZXwhL
         UrwHcaFHuEwe/mWkIKaK8kyWd8Jp+GvtcZ1YP9LVsJStpHNRTDXp9SdhkzyMQQlB9K/m
         7JiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768911581; x=1769516381;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hXaB+rRblVbZQvSIZXsi1b0KhXGaFyJ7cF5b57eRTUc=;
        b=gigCQ0UakNXy0ghjVdmp1+I+Q3WO1HgRfBigISaJP4Qh19KLG6iD/JQtwi12eMKVVd
         BgJd6h10kGQqaj1en9EJeWjHk0y3yzCCf3ivprZr+mNO3EhmLFnWAjHQpy+kOeHm61wm
         unkyHbdGxnsmXGLKwHe8XsaO9JaU7x5bSCfz5DpdwKhvJRJj3VxndTVlX+sYgUYuYJFH
         BJsa63XYptMIev4LhCGq3J4C134ZaaKUcrJNo9BhE/OwLFqnjNJsLvBzfHPb7sBZUoG1
         GPnlcASZTWZuXBKdFmvS+LSUiU4v2n919789L+ovqI+tucTR6OchGOo0F8+tVlx8Jlcn
         V0Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUOmY1iQkXaX7v9T+X/dHVQct4tEhFmwCsKGT2ldi8EsCkfIAc74+RhOONf/KQxGfWPuWJ9z+P8Hz99@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4QAIOVJas6S4jJIQ08/j5XG/6oU8X81fjWChKEwN2Vem7Z37R
	wrn8piwdfU7EpfJzbr4xWLVmQdvwpt+qsMm9ndr53+SxYAms3EI9KyN1KNmFOeYA+DrWAPlJ8f6
	77HrXf9wy/lVZSjM4lYGASs3bXy/V/POUc5So3Jxosg==
X-Gm-Gg: AZuq6aLrXXMWGoVXPZIWEn+QNjH7KdmRxnfjawfnWkeHzUsZNz1cL4kj3RWRk3fCmgr
	GtRC6ykN2b8Y7CfrSUGSZY2WRHVtFNagpGQU07H1hRpoie1KrhFtqJcrRIPLTsvywQKjwjjibf+
	LzQJv1+2iDW6u0QxEdk/hPeQjVuCv2keDdRMhNvP5piVQRFSN5kf0xuzIePIwVVYPUzLx3H7NCN
	shKrkxlSNRpSA+358zNSSOTwNWvxj7SiSJ83NR3jnUqzBKLK7JRYbOmmUjCVOSOSYNz7Wdt4wlv
	LF7guKC/BGY3VAJb68ApCMEEDeook7Kb7fOs/yY1PFC/gOaPhGrmngU=
X-Received: by 2002:a05:690c:dc3:b0:783:6f68:2a05 with SMTP id
 00721157ae682-793c5262618mr117640327b3.14.1768911581006; Tue, 20 Jan 2026
 04:19:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
In-Reply-To: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 20 Jan 2026 20:19:29 +0800
X-Gm-Features: AZwV_QgnDKIFyIp77S13MLZLNCHgwh0zxvlAvzBrnx4VVxVC0QrI7vSOpSwulKc
Message-ID: <CAH1PCMaewGAC4J-w76Sz1L838BHO3Zz4-E47vq02cwASkz2wkg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] reset: spacemit: Add support for SpacemiT K3 SoC
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257375-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,riscstar.com:email,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 90BB951C72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 7:11=E2=80=AFPM Guodong Xu <guodong@riscstar.com> w=
rote:
>
> This series adds support for the reset controller found on the SpacemiT
> K3 SoC.
>
> The clock driver changes, which defined new auxiliary device name
> patterns for reset on K1 and K3, have been applied to the clock tree.
> To facilitate merging, Yixun Lan has created an immutable tag
> (spacemit-clkrst-v6.20-3) within his pull request to the clock
> subsystem [1]. Hence, the dependencies mentioned in v2 have now

Apologies, I noticed the link [1] referenced was incorrect. Fixed below.

> been deblocked, making the reset driver ready to be applied, if it
> gets approval from review.
>
> In this version (v3), the entire series has been rebased and tested
> on top of the linux-next tag: next-20260119.
>
> General informaiton about the series:
>
> The K3 reset controller shares the same architecture as the K1. To
> facilitate support for both and future SoCs, the existing K1 reset
> driver is refactored with the following changes:
>
> 1. The existing K1 driver is moved to a dedicated 'drivers/reset/spacemit=
/'
>    directory.
> 2. Common reset operations are extracted into reset-spacemit-common.{c,h}
>
> The K3 driver is implemented using this common infrastructure.
>
> Link: https://lore.kernel.org/linux-clk/20260114060410.3340540-1-yixun.la=
n@gmail.com/ [1]

Please use this link for the immutable tag reference instead:
Link: https://lore.kernel.org/spacemit/20260114092742-GYC7933267@gentoo.org=
/ [1]

The code remains unchanged.

Best regards,
Guodong Xu

>
> Changes in v3:
>  - Updated dependency status and base information.
>  - Patch 1:
>      Add Acked-by from Krzysztof and Alex.
>  - Patch 2:
>      Removed trailing blank line from Makefile.
>  - Patch 1/2/3/4:
>      Add Acked-by / Reviewed-by from Alex Elder.
>
> - Link to v2: https://lore.kernel.org/r/20260108-k3-reset-v2-0-457df235ef=
e9@riscstar.com
>
> Changes in v2:
>  - Patch 1:
>      Update the commit message to explain the why.
>      Update the spacemit,k1-syscon.yaml to point to k3 reset IDs
>      header file.
>  - Patch 3:
>      Use dev->driver->owner for the reset controller owner instead of
>      THIS_MODULE to fix the module reference counting issue pointed out
>      by Krzysztof Kozlowski.
>  - Patch 3 and 4:
>      Update the K1_AUX_DEV_ID and K3_AUX_DEV_ID macros to a simpler but d=
irect
>      form, one benefit is to improve the code readability. More discussio=
n
>      can be found in Link [4].
> Link to v1: https://lore.kernel.org/r/20251229-k3-reset-v1-0-eda0747bded3=
@riscstar.com
>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> Guodong Xu (4):
>       dt-bindings: soc: spacemit: Add K3 reset support and IDs
>       reset: Create subdirectory for SpacemiT drivers
>       reset: spacemit: Extract common K1 reset code
>       reset: spacemit: Add SpacemiT K3 reset driver
>
>  .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   8 +-
>  drivers/reset/Kconfig                              |  12 +-
>  drivers/reset/Makefile                             |   2 +-
>  drivers/reset/spacemit/Kconfig                     |  36 ++++
>  drivers/reset/spacemit/Makefile                    |   5 +
>  drivers/reset/spacemit/reset-spacemit-common.c     |  77 +++++++
>  drivers/reset/spacemit/reset-spacemit-common.h     |  42 ++++
>  .../reset-spacemit-k1.c}                           | 107 +---------
>  drivers/reset/spacemit/reset-spacemit-k3.c         | 233 +++++++++++++++=
++++++
>  include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++
>  10 files changed, 583 insertions(+), 110 deletions(-)
> ---
> base-commit: 6ada99659c6d6a0cde83e6c0f4ed0ef0ba1867e1
> change-id: 20251229-k3-reset-8d9b751ef391
>
> Best regards,
> --
> Guodong Xu <guodong@riscstar.com>
>

