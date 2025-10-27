Return-Path: <devicetree+bounces-231358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 20990C0C9B4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3077E1887A76
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B322586E8;
	Mon, 27 Oct 2025 09:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CRRDv1lP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4DF26463A
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761556478; cv=none; b=sCGKbdR1o84J8Dd0+yc9iDM0xJmLyH6U2FVWYpQIjdFbQDYWMYQi8ssBlaMRgwOgUh/utr9xN6gakUO2WrpAjqqsLV3tieZuOnsiwOBEZb4gXbQSzRfYead42q1RYz99o3/+Oh0b5b6KKysyWpKMMkvK5NSbbaeGSdJHBVEb4wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761556478; c=relaxed/simple;
	bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H4ALCMH1JTmdIL/uT348wKK4QCL6dFzuUc9unIsihDLXq8DbZ3GBs9OXqQtlPSR18col71TDxjOhYLT4mPT4yjl0Ux7t/YGjhieaTanpPifdb8U3TefUXD1YVIUoChxjSWdEfqEswWXp8PLX2fxNiVzJTWpVXhSYVpjQHMOT9Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CRRDv1lP; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4ed02d102e2so1418401cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761556476; x=1762161276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=;
        b=CRRDv1lP8cH6TlSx5KFFbFzIyaH3no4/hU0KuR87OQrZ/988ItqS9oWN6Q0ZWSDbU/
         SBuoqxBvGUuloYbV1Ri4eK5irPspYesW45ywyabPDHVwLwuvspYfCAsN/GG8QXuLLlNB
         ibreo0M3+eG2FaksDW+5IvGY6tIzrZFufCdx1FZX/C9639j4YQRxxU83U+okp28Y3/Rv
         X1v23fPpg84vW7VsgPN8u06wBeZXV0TL+pT3uLEi3ENx+MM0BRGgIg6cGTumM/ZW+DfT
         jzyBIkHgncdxdtzx7967PF5aEabBM+kbAEm5DS0aS4t3YtTQRp2rJkK7Z39JHHpejAMB
         S3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556476; x=1762161276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=;
        b=mHvCK+KcOwGliAWHefOzmKlmMQp1nQga0ltJ3Ddmji8Ncua2y37aZFB3UWpdu4gblr
         DVPruGZWhMJgk/zkiaEgzWcmncegB4R1mxNwo4I4MqNCReZgoc2QSuViG95an9EDlNBQ
         H+g+l+43+bjepkO9rgI8B3jbBVKO4jXhUQzvkUrfdeT+kb9oloNFVSWEE/ft+88iQT5O
         hWw1GBUNxkz1F245PTPI9bPctcGLr39De75RYOkSAumumLt27VklheTO4X+yUYVGins7
         /a8vg46TQYinCuwoYrfHCMNXtT1IMRv6+fqF920XJ43ReEIwYsehxiuMIYewgukRSqhc
         17Ig==
X-Forwarded-Encrypted: i=1; AJvYcCX+LVbquP5RkHgFhl1R10xLQo5beD09HIdS28FjiBXQURokGzaQvfvlXoJC23ABssnsjU2B8JGpJ0O8@vger.kernel.org
X-Gm-Message-State: AOJu0YwN00CfKZiX521XxnidighcBdyxTfZmPYi6i0sOW8iJdJNhnUN7
	d/XO/lqmmSxfWsxRiMN4XBnE7Ryfmk0MpFCg+73eR0w33CVNQ1zONMLF4CL2MO8Osc/02LXvV9f
	LoYJ/VScRkTMdwl6fSrXnjc+qBk+UytA=
X-Gm-Gg: ASbGnctbdgxfaoytlevndjO8zsMCWORGzTyhGDjhGCPZ6bOPfIBW2a7knNFmlz03EH+
	i5Z8l5+yy4luRt755B+BmYnUXtBaG3BtoPb3uxBZifziFwV30ZjaY3wOmK1nICB/7wUpwOdDOdg
	q6gvyAbZ4BVSRICtzBvwRrPl0tZMVprPQKtR22lerXsth5PTJyN3fgJvAtRqGA6956OQXxKbn7D
	n3QrG0mTaSlkSSNHHgO3XiXGfGCWoof4SkO2jxL7pQKKvkwfxk2VtXovXfXosC60rhER+dhbfdr
	n5p0X52Tpr46NPrrklQthq6KbJe0
X-Google-Smtp-Source: AGHT+IF/2QvCzE1TEuKomhBiAScmROMfTstvpHg7L8JdAeBZ1CrC1wuEfqNsUGGYV9Dp9piQXEYqMgRlhzJKaaFXdAc=
X-Received: by 2002:a05:622a:d16:b0:4eb:a2ab:4182 with SMTP id
 d75a77b69052e-4eba2ab4738mr100138481cf.22.1761556476187; Mon, 27 Oct 2025
 02:14:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251026194858.92461-1-sigmaris@gmail.com>
In-Reply-To: <20251026194858.92461-1-sigmaris@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 27 Oct 2025 13:14:28 +0400
X-Gm-Features: AWmQ_bny2G__jDeyWDUL9Y-J8F57fNDWZftO8M3HOK0HvZdNg6brhmmHAL6LiRE
Message-ID: <CABjd4YxsfxwEbic8QEabX1h9j0B3DBw9LWwctJx7SzdvXZdDhA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Hugh,

On Mon, Oct 27, 2025 at 1:09=E2=80=AFPM Hugh Cole-Baker <sigmaris@gmail.com=
> wrote:
>
> FriendlyELEC offers an optional heatsink and fan addon for the NanoPC-T6
> and T6 LTS. Add an overlay which can be applied if the fan is fitted and
> configures the fan as an active cooling device for the SoC package.
>
> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
> ---
> FriendlyELEC heatsink with fan addon:
> https://www.friendlyelec.com/index.php?route=3Dproduct/product&product_id=
=3D305
> Vendor DT with trip points and PWM duty cycle values:
> https://github.com/friendlyarm/kernel-rockchip/blob/4944602540b62f5aad139=
fe602a76cf7c3176128/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev01.dts#L=
75-L90

Is there any downside to enabling this unconditionally in the board
.dts? Overlays require more user configuration, and not all
bootloaders support them directly (e.g. systemd-boot users would
struggle). Compiling with overlays enabled also makes .dtb's a lot
larger due to added symbols information.

Best regards,
Alexey

