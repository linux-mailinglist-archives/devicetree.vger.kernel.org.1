Return-Path: <devicetree+bounces-267696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNN9DS0WnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 04:08:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD5A1814D1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 04:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC371303035D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFF4287257;
	Tue, 24 Feb 2026 03:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GjQVQi75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504BD70810
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771902502; cv=pass; b=SXGEUTQvaeo2D252szK+juaGKyB0SYv8eFlDBFT46xoI8D2KKniN6sO95RPR2eIazYlWWVLep6CJPb/Ps1Zl4vnhpQnoWQpvMmvTVhH8TCMPDiqetdQoUwZorU+x1mq8XKnvzm7wBgPK6QGrnprEk4OUogwxxCJ5Ir1lRYB9Ny4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771902502; c=relaxed/simple;
	bh=MB3cu4Hjbrcw6vQYy3xqvFyNo4jM11gJv2VecpsQoq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TJrHIkAnlb2koWUdpKWLxICQrRm164jADSMirK1OkCYyFJZwp6l3H/IuazJxi+Rh+kxUd+e6CsrX8FUf3wZWMDWrbP5a70ofirFbzaxzxcolZ3jNyPujRp7wW9hTSTqaTRS3Y3ubYWa3IK07WKVUTilvccBDdqTklRzVW8gStUs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GjQVQi75; arc=pass smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-798527f822cso11865627b3.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:08:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771902500; cv=none;
        d=google.com; s=arc-20240605;
        b=GqTICZ2im0KentA0yWyXirkrkYx0COJKD8GOA3hpjB6FxY3q0l9TDQOmDL2LmeOvOY
         Ewb2TBttmAfs+mu7WnSeOB7KuRydFuBka3m/zlpcSE/5cHTC7qsPVEZ7Xu1vhc6lr5Ul
         y9UKgjaSKyWYHoz1yYbyClylOds0a0cvtlWHR6BYYyNhyiHg2R/EkFWNBsPRR8QAzgK+
         fc+47Kbr+n4xfoNTH9eB1wloRMvx68iJzT5zyyZKEKwjBDXUEDUR4Amgi9xPWUyQxsbz
         tuNd7dsP6OxJaNGfmMwcz1mf63oE1g+M1GDh+L8FscqywNHTcKFe5Lex594G6m9T5+us
         JDdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BycvdGp/z9gEQo1VCtrRiWndisDEJHCvcJytLoYubq4=;
        fh=fZRMzEPSGeZ5yueA8E+GpbFfoW/dJu7UGOP0pHOHeZM=;
        b=ZTjAnjyD5y1AZa/fqCsqvXUFPUKijwDeWA3eAHJRE9WlDaQiqAcDdMFt0ukt0NYh6Y
         Xl8I313ngISlWRjMaUmwjEkYcXEwKNUodO20HaE60kpO9Hx8n/TBqBMoOftREphTMN+i
         Y75V2SCrOm5Ny4tUirfWtrclJmLoHOAOmdgKAUhwlUf/hfe44f900MUb8LzeKRqjoG78
         Ssq92vZ5bbCrKyGoYrSwhWUSrwx1jgE7SrMZiS1O5JAYEeRc8qDK1DZOaVJ+hgCFpfVx
         Vcj3byMvYAvl1vq0L7jb0d+BWM5NcnFGw8RhDKR70xOgDEdv6/g1STXu8jGyUMivrzXr
         wr4w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771902500; x=1772507300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BycvdGp/z9gEQo1VCtrRiWndisDEJHCvcJytLoYubq4=;
        b=GjQVQi75Qrb1V6GFiI+vya1/j0D+A7y+MWtEDHWjWt3r52NZr37nFE7aSYFIKT4v1A
         s0RZUdQBOaTGtCQwdxBGJgRDr5vR3X2JRYSKaXaAbo/p7nkQCi9NEyJ16BYpRvjxHz9+
         MCN/Xqd60wRpyx4hH9KcgDvThnbBELEaIkjLYFm1koEGIvGmhZ4IN/DaRmTE+RaOHn9U
         qSRHy4igKiJcwzFedfbflM2ox4quCYOy9jwJvyg3qUy9IF/G9lpT+ux3GAFFB5IshX4c
         4wct84x3J0uTzAUwC5STUwNxMo+A9xKi9/kpNTIJWm4+wL7RzQAAdgtgZUxU8g2ufhEW
         rzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771902500; x=1772507300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BycvdGp/z9gEQo1VCtrRiWndisDEJHCvcJytLoYubq4=;
        b=dGiRTKFQCIUBT8S+BxINreobBxub/IGiEpa6iQde1jF8Vwd/byKy8IoXJUTcUdLNnW
         m+pbcwVtAPBSd/zyEbv6HGjslOZmeVI+EXS0mdt7f2hLzFjP6COQNBf4SSAFYKhD3AVt
         EiGNFpzmVUDkxtWwKJgQvVEfniGCgzhQ6RW529ISaCiGDmGxHBJiQXe0PYgs0rL9DM6G
         LRIs6aVeYmJcDTGhJIAaa5+tFO7Vf0YC5MiU/95Es1EpvsOKLYCmu3jNUZUoSfqC2woJ
         hnQQcM2td2wszgnDrayo5iNm1b6Nf8pSPnybIPXK6QnWKkkhkY98in8qOrc+ZvjCDoHS
         GJzw==
X-Forwarded-Encrypted: i=1; AJvYcCXnW0B7kDxJkeCiAZAuPkUhWioQi8/VCLGSQzDwbK/dM5bxKnaaG0nRQloEqK8jFPDcv7MZhIQq7Dxb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk8HberycabV8IU1VJ/NsGApXAKL5MkrKWkacRXhrgwTbC+tp3
	xZq/w04+YIHYmSV334N8WvmvIa6z4ps74arPW/ApNKj9K0hKvoSUmjLSZwAnQdpyQF0ph8D77w6
	pkmGu6zwT54YhnlbCjJ0+/+6Iwago5w5M5YzRJmGyzw==
X-Gm-Gg: ATEYQzzHt9cEFpXCiCB0sIySmxLp9GRJ9RhIoBW+/IgwOwSa1ddA3E+JnUD0dQMqU0u
	nhd8Pxekx0XFsoKBwWGDnZr1svVx7mXmytKKoiTgz+KHSmD9rxeYx1Hf9iUzFJjSUKG/rg6CzhJ
	aQYsLKs3mDd5NqxfU2quLJTnARn2cw56MAm975QTIb/DqUFdfnvp7/PJWvi6bTRxXdVoGibxgKJ
	RG3GfkU32L0JnRXtgttyGkgfL8JM3WluGqcsrhfzC5N4kYImmr4AG0+38qxDcaVbKpd2hwSBmkP
	mJ7LXlYEgg==
X-Received: by 2002:a05:690c:4984:b0:794:ffc8:659 with SMTP id
 00721157ae682-79828cf7240mr96664067b3.12.1771902500382; Mon, 23 Feb 2026
 19:08:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-sifive-pd-drivers-v4-0-2a523d7d51a0@sifive.com>
In-Reply-To: <20260108-sifive-pd-drivers-v4-0-2a523d7d51a0@sifive.com>
From: Nick Hu <nick.hu@sifive.com>
Date: Tue, 24 Feb 2026 11:08:09 +0800
X-Gm-Features: AaiRm51hYev0P2yjDadOZi7PKWo_siHtRuCOZQk8OpSAHm9eqQ7TOSuLU00jpjU
Message-ID: <CAKddAkDKzFewnDVJ8x-oCn=xO72Ps8GevatL3wgmQwiErtqPSA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add SiFive power provider driver
To: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Anup Patel <anup@brainfault.org>, 
	Samuel Holland <samuel.holland@sifive.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Cyan Yang <cyan.yang@sifive.com>, Nick Hu <nick.hu@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267696-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hu@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,infradead.org:url,infradead.org:email,sifive.com:email,sifive.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4BD5A1814D1
X-Rspamd-Action: no action

Any feedback on this?

On Thu, Jan 8, 2026 at 4:58=E2=80=AFPM Nick Hu <nick.hu@sifive.com> wrote:
>
> This patchset introduces the SiFive power provider driver, which sets up =
a
> generic power domain (genpd) provider to coordinate with the RISC-V SBI
> CPU idle driver.
>
> To enable this coordination, split the power domain initialization out
> of the RISC-V SBI CPU idle driver. This allows coordination between
> power domain management and CPU idle states on SiFive platforms.
>
> Changes in v4:
> - Split the power domain initialization out of the RISC-V SBI CPU idle
>   driver in PATCH 1
> - Refine the commit messages of PATCH 1 and PATCH 3
> - Rename cpuidle-sifive-dmc-pd.c to cpuidle-sifive-dmc-domain.c
> - Rename SIFIVE_DMC_PD_CPUIDLE to CONFIG_SIFIVE_DMC_CPUIDLE_DOMAIN
>
> Changes in v3:
> - Update the explanation for the absence of the SoC-specific compatible
>   string.
> - Drop the smc3/tmc3/cmc3 bindings.
> - Separate the genpd init and the idle driver init. The genpd remains
>   functional even when the idle state is absent.
> - Address the warning from the kernel test robot
>
> Changes in v2:
> - Add the driver for SiFive TMC, CMC and SMC
> - Drop the `sifive,feature-level` property
>
> Nick Hu (3):
>   dt-bindings: power: Add SiFive Domain Management controllers
>   cpuidle: riscv-sbi: Work with the external pmdomain driver
>   cpuidle: Add SiFive power provider
>
>  .../devicetree/bindings/power/sifive,tmc.yaml |  58 ++++++++++
>  drivers/cpuidle/Kconfig.riscv                 |  11 ++
>  drivers/cpuidle/Makefile                      |   1 +
>  drivers/cpuidle/cpuidle-riscv-sbi.c           |  46 ++++----
>  drivers/cpuidle/cpuidle-riscv-sbi.h           |  20 ++++
>  drivers/cpuidle/cpuidle-sifive-dmc-pd.c       | 102 ++++++++++++++++++
>  6 files changed, 220 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.ya=
ml
>  create mode 100644 drivers/cpuidle/cpuidle-riscv-sbi.h
>  create mode 100644 drivers/cpuidle/cpuidle-sifive-dmc-pd.c
>
> --
> 2.17.1
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> ---
> Nick Hu (3):
>       cpuidle: riscv-sbi: Split PM domain init out of the cpuidle driver
>       dt-bindings: power: Add SiFive Domain Management controllers
>       cpuidle: Add SiFive power provider driver
>
>  .../devicetree/bindings/power/sifive,tmc.yaml      |  58 +++++++
>  MAINTAINERS                                        |   2 +
>  drivers/cpuidle/Kconfig.riscv                      |  25 ++-
>  drivers/cpuidle/Makefile                           |   2 +
>  drivers/cpuidle/cpuidle-riscv-sbi-domain.c         | 176 +++++++++++++++=
+++++
>  drivers/cpuidle/cpuidle-riscv-sbi.c                | 178 ++-------------=
------
>  drivers/cpuidle/cpuidle-riscv-sbi.h                |  29 ++++
>  drivers/cpuidle/cpuidle-sifive-dmc-domain.c        | 124 ++++++++++++++
>  8 files changed, 423 insertions(+), 171 deletions(-)
> ---
> base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
> change-id: 20251207-sifive-pd-drivers-66de65108b1c
>
> Best regards,
> --
> Nick Hu <nick.hu@sifive.com>
>

