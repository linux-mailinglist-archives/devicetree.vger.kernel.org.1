Return-Path: <devicetree+bounces-278296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OO8uEyRWvWlr8gIAu9opvQ
	(envelope-from <devicetree+bounces-278296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B02DBA9C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAD1D3081832
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56131314D07;
	Fri, 20 Mar 2026 14:09:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0200D279DA6
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774015746; cv=none; b=E8VM9j0OZTVCWU4DCExSznMcBCwmFgfLvvD9BTbP13dcwWAHb0g21zjXSCSk7Pbi+Ql5OyClnUhkesLl8MphuCErKjnGaqX0HtV2T7KpSLV94Oc2xG+KSAH6XfAuDfBNeZSi9gnWfjEBasD5ZfjbdmOUofRgRRfgbw2S0Kvu5Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774015746; c=relaxed/simple;
	bh=Nx8bQBs95SJZiGV9sxDUOjb6cqnHHMShwIEg031kToo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Db+8B9z24t1FkPqi3bsCYgJwfZex38ukfknw7qyjkWMFYgIoB4QCeJzkKLJpX04oU2+GGtWDfmi2DHkDJAIDL/dxnn9/NAlohzCZ5Tgfn1ACmrGRJEG/sSY4FgC8RbyfY9iOjVnnGJk2mW1Du9N4b/FwkHj8eLtTxC4R1BC9RQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8cfc497a604so185278285a.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:09:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774015743; x=1774620543;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=txsLO2jkdNhN6oBkuArfXNgiBSygoSMNA3GUMB3p1q0=;
        b=OJnAb+rW+Gkl9LGxrM1Cs4V0QFahpfMoYnqSTYCpVKh/FbBdK5xuTvNPn3dS3ygCik
         Ov5FBQfk0aLazQEN/BetP7E4uAba+HG0LROu2NpNe7nU7PvlWE4VPTAc+cz9l5pdM7WM
         5Dvo9y1EwyLHBd0qiqXZno9xA/ILC7wrW9OwJqO6GYddeIWx4QEk9GM/6e9ms2xcv5S7
         ieTaRdEz3Qt5EWVtLm+OXcYnUEtVMCYnYXSLO9K+bwRGFRilew+NBYb0oWWZFtLiA5cm
         re2n6mN1zQk/z30J3wZMovFZrUTtnV4GCE0zq2AoRACRSlC9PWNJcwpxs/deQhOK7P55
         Jy1g==
X-Forwarded-Encrypted: i=1; AJvYcCXI+gIaV3WZzHnGVUeR1CtdphdwiqoHdiA0Dn4DYjg9XPg+a0lC8ynMbD2CbTWAbgrfQsD+V0psV124@vger.kernel.org
X-Gm-Message-State: AOJu0YzpNuFopyYKfbzD8vzBHksuD9tpRKTnv5hs8AGR3gD/kM5h9jA0
	rAw6yJss8/6wVtYIdTcNQPvFRdw8g3JpPwx896GL6tITh0onhLr2t0BjyndLUOKC
X-Gm-Gg: ATEYQzzi6zLP58Vwv2orq2v0/DJ1WtiYUJ57HLubyfw/6mQ8WjZggm5Lm5ejJ3Dg95I
	+lPRH3tOtKc6rLt7soSwzPr8IhGdQQWLMYGy49urQV2/8hiqRJ+fUb8aw0nUAihhMknRV5BER/w
	Pq07+JT6sIFlXaC0RhVQF317ZFjZXvVnbB+6u/XAOIs1uDglRkg/y7JggjaJF6jtYwMoY5O9x2F
	ii+SPJeSg/+d0N4OqcpIZzQqoBpL2PLL44rfb5hQjjbP/hqoDPjznnzFquhPrfYjD8KE8yAVfxw
	+z0sWCLWGaDa/mGEYd72Hh7/z6CHLNoEu7Bp881gqnZhspNlwPotF3BdYJu3GssuASB8Epyvy9r
	B80ldGfYIdUIhwwkZ2eN/bhHbNyI68xiXRvcdfsy/pvSXuibjR0IouwNQ1WRL7NW9JPDkL2ZiNl
	DzTLp81RnO5RAVEUrwDZpjRFzXxZYCtfPjGNqr2I14m63LffahxCsr021+NxsPqhJl2vPv2rLy3
	7Ylx0MPO+KEQP0mwYGK5kcJsyAOcXdW+hoiqjrtNZKTX+bSjP1Bk61cvpjHPG3ehGyqiCRpyJWg
	wA==
X-Received: by 2002:a05:620a:4693:b0:8cd:b50c:257c with SMTP id af79cd13be357-8cfc7f1ebbemr460240885a.25.1774015742784;
        Fri, 20 Mar 2026 07:09:02 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfc8fa74c1sm162595285a.18.2026.03.20.07.09.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 07:09:02 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-50b2d6f9d00so14774011cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:09:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVnfCBhUwf+oK311Pq2+woaTPmjeCBKwg0yfW7IoJ+8rbYBbXwQw1AobZgvEgUnH1JyEpvqmsyDEmQh@vger.kernel.org
X-Received: by 2002:a05:6830:67c5:b0:7d7:d15a:ce8e with SMTP id
 46e09a7af769-7d7eb04feffmr2015751a34.32.1774015263260; Fri, 20 Mar 2026
 07:01:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260320-apple-m3-initial-devicetrees-v1-0-5842e1e393a8@jannau.net>
In-Reply-To: <20260320-apple-m3-initial-devicetrees-v1-0-5842e1e393a8@jannau.net>
From: Neal Gompa <neal@gompa.dev>
Date: Fri, 20 Mar 2026 10:00:26 -0400
X-Gmail-Original-Message-ID: <CAEg-Je9b1VujkHCVdXowQs+BXA0+DL=6sdoP0wuSYpau4T31XQ@mail.gmail.com>
X-Gm-Features: AaiRm53Q86Nf9dVOSTKn0cYEE4xmDvp3jUYoCfYFj-SX9hFNk_weUYFVfwHr6Ok
Message-ID: <CAEg-Je9b1VujkHCVdXowQs+BXA0+DL=6sdoP0wuSYpau4T31XQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] Initial Apple silicon M3 device trees and dt-bindings
To: Janne Grunau <j@jannau.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Sven Peter <sven@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Linus Walleij <linusw@kernel.org>, 
	Mark Kettenis <kettenis@openbsd.org>, Andi Shyti <andi.shyti@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Sasha Finkelstein <fnkl.kernel@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-pwm@vger.kernel.org, Michael Reeves <michael.reeves077@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-278296-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[gompa.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux-watchdog.org,roeck-us.net,openbsd.org,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neal@gompa.dev,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.695];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gompa.dev:email,jannau.net:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AB3B02DBA9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 8:23=E2=80=AFAM Janne Grunau <j@jannau.net> wrote:
>
> Hej,
>
> This series adds initial device trees for M3 Apple silicon devices. The
> device trees contain only a minimal set of hardware not going much
> beyond the minimum required for booting kernel and initramfs and
> verify via serial console that the hardware and drivers work.
> The hardware with the exception of the interrupt controller is
> compatible with the M1 and M2 SoCs and the existing drivers.
> Changes for the interrupt controller were sent separately in [1] and are
> picked up and in linux-next. The device trees pass make dtbs_check with
> the apple,aic2 dt-bindings change from that series.
>
> Link: https://lore.kernel.org/asahi/20260223-irq-apple-aic3-v3-0-2b732807=
6b8d@jannau.net/ [1]
>
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
> Janne Grunau (9):
>       dt-bindings: arm: cpus: Add Apple M3 CPU core compatibles
>       dt-bindings: arm: apple: apple,pmgr: Add t8122 compatible
>       dt-bindings: power: apple,pmgr-pwrstate: Add t8122 compatible
>       dt-bindings: watchdog: apple,wdt: Add t8122 compatible
>       dt-bindings: pinctrl: apple,pinctrl: Add t8122 compatible
>       dt-bindings: i2c: apple,i2c: Add t8122 compatible
>       dt-bindings: pwm: apple,s5l-fpwm: Add t8122 compatible
>       dt-bindings: arm: apple: Add M3 based devices
>       arm64: dts: apple: Initial t8122 (M3) device trees
>
>  Documentation/devicetree/bindings/arm/apple.yaml   |   18 +
>  .../devicetree/bindings/arm/apple/apple,pmgr.yaml  |    4 +-
>  Documentation/devicetree/bindings/arm/cpus.yaml    |    2 +
>  .../devicetree/bindings/i2c/apple,i2c.yaml         |    4 +-
>  .../devicetree/bindings/pinctrl/apple,pinctrl.yaml |    4 +-
>  .../bindings/power/apple,pmgr-pwrstate.yaml        |    4 +-
>  .../devicetree/bindings/pwm/apple,s5l-fpwm.yaml    |    1 +
>  .../devicetree/bindings/watchdog/apple,wdt.yaml    |    4 +-
>  arch/arm64/boot/dts/apple/Makefile                 |    5 +
>  arch/arm64/boot/dts/apple/t8122-j433.dts           |   19 +
>  arch/arm64/boot/dts/apple/t8122-j434.dts           |   19 +
>  arch/arm64/boot/dts/apple/t8122-j504.dts           |   37 +
>  arch/arm64/boot/dts/apple/t8122-j613.dts           |   35 +
>  arch/arm64/boot/dts/apple/t8122-j615.dts           |   35 +
>  arch/arm64/boot/dts/apple/t8122-jxxx.dtsi          |   48 +
>  arch/arm64/boot/dts/apple/t8122-pmgr.dtsi          | 1149 ++++++++++++++=
++++++
>  arch/arm64/boot/dts/apple/t8122-usbpd-i2c.dtsi     |   32 +
>  arch/arm64/boot/dts/apple/t8122.dtsi               |  444 ++++++++
>  18 files changed, 1859 insertions(+), 5 deletions(-)
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20260319-apple-m3-initial-devicetrees-5c546ad977a2
>

LGTM.

Reviewed-by: Neal Gompa <neal@gompa.dev>

--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!

