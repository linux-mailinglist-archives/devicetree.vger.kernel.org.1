Return-Path: <devicetree+bounces-117601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 352A89B714F
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 01:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D42571F212C9
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 00:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEBD1CFB6;
	Thu, 31 Oct 2024 00:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ifGBdiR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D244817991
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 00:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730335762; cv=none; b=k1q84ONM/tr6NS3/K1HQniT7lHS249bbyjJE78y8O4X95BGwMFrBmGkydPNEWPXEJNenn7VgXT7g3u+Y7ldriHbpZfn4ubzSFevBUvyMyoeL51dfqHLKj7hM7EsyFt5W7sE/AE9CGfNGz3f4/z4yymrODnpiz9iUm7tuDNWnD94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730335762; c=relaxed/simple;
	bh=ZjtbT2Pdo5aYguq16kK5+0TmKumhpkQwfo5YKWlpA4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RvK4UJbKT9mLofRA6x1i8VLBIz08gv7D53XFR49N/US5i2wWDpKHPg9A/d0HwOek/+T3VDWVrXdPvIShAfGTdUdDuUzAoGzlH7nzB1/ZNcph4OfcQdimzEEEu3NVxukqt3IybauRqr/u7HgruoHmuWm4Uo4+GiV8iq0HQtJyVfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ifGBdiR2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4314c4cb752so3482455e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 17:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730335759; x=1730940559; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZjtbT2Pdo5aYguq16kK5+0TmKumhpkQwfo5YKWlpA4U=;
        b=ifGBdiR21FipJtgfUCy97fSpZaHk0UDdAnV8Bs9oh7i1imi2lmkGV43UYd73PyR1S0
         94prMJd865hktYJRNSB3R+zH3B8ozE8cO7724bXdggs24UgiKc7wlIwGInjBlSohQ0eK
         0zcTMNoxSs9Sj0eJ7Xflrr2JwnKDPAJt2v7e2J/FkXU+8B7cKADua03NpELSBJfoMaC4
         6iuduNqd92wl2CBFLgxKfT5/I/9Lw0H50L2PCbIkQtjDO+V1bHGQz3PKFu4ToYGoyLdF
         zIvhBezKLpjNMeq60fYeQwvJz2Jk9mMOOZY01pXvuEKcTgYkcPsp0L81EDZT3yYft5x5
         1AuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730335759; x=1730940559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZjtbT2Pdo5aYguq16kK5+0TmKumhpkQwfo5YKWlpA4U=;
        b=jw1FUebzga7BRwSQnHNLU2PRbzbgyno+0Sax4AKToZP6JUvsY66W4mRrUTkbpdtxGZ
         fE8yX2hDReKb62fmOrgPw4bE+m2ugQteloQhoA5Nq/UXNaQfdMv7Kpc0bZvbRK2U2TQ0
         Sbu70/rrUHgxI4WvfbZQCPVU73kYvaxLR4iPpXvMUXM80HO6m1PSUafDKn7IyoFhYrd4
         vWpBtbw3c1TNEtZoBc+dIi3tPKB/4/P4wwUXX8eT8btbxj7NG+IgPkUVjVFK9bpYI5sX
         fERF275eUuKcSbEV6A2pT5pYFBs6GFzam4yIjHGv60BC4ZCmn0NwM42YSNIZCNfHP7j8
         RfEA==
X-Forwarded-Encrypted: i=1; AJvYcCVn85n369N2t2WuP2R8gCRNgdFMIC5l7RjCGlbxIwVmBp9LHSTuDTctdE68TgRUeWGyuErkwacIhhF2@vger.kernel.org
X-Gm-Message-State: AOJu0YxmWpLiRWF6yhheoU9IQVlHEUUxP3RgY9v+nPqFuQLDRUokBYM5
	Kb08K3iK94E4HMi6+uANl85YS+4uW4ZfHgmR4wRw0KY29J9G/OTFO9lWvrRbwur5SpQAIas9l2R
	QBCrC/7yfIqVfK2AftXeN2HAoJQU=
X-Google-Smtp-Source: AGHT+IE9kEhPn7zleAyFMbH7KL0/80IedkMpTxBdxFKB0CUsFcu0GnoRPTCofF61WV28ypcgTSjTd1XcRg3PlY2rXu8=
X-Received: by 2002:a05:600c:1f91:b0:426:66a2:b200 with SMTP id
 5b1f17b1804b1-4327b6c79f7mr12136815e9.0.1730335758928; Wed, 30 Oct 2024
 17:49:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241030192236.839105-1-macroalpha82@gmail.com> <20241030192236.839105-4-macroalpha82@gmail.com>
In-Reply-To: <20241030192236.839105-4-macroalpha82@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 30 Oct 2024 19:49:07 -0500
Message-ID: <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2024 at 2:25=E2=80=AFPM Chris Morgan <macroalpha82@gmail.co=
m> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Enable the HDMI0 port for the Indiedroid Nova. The schematics available
> show the hdmim0_rx_hpdin is connected, so this pinctrl is enabled in
> contrast with the other rk3588 boards.

Which pin in the schematic [1] (page 24) does it refer to? It's not
obvious how to match it up.
The schematic looks the same as the Rock 5B schematic [2] (page 31)
and the Rock 5B dts uses the default pinctrl [3]

Note: The vendor kernel DTS doesn't modify the pinctrl either. [4]

If you try using the default pinctrl (not overriding), does HDMI not work?

Jimmy

[1] https://wiki.indiedroid.us/Nova/schematics
[2] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
[3] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.gi=
t/tree/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts?h=3Dfor-next&id=3Dc8=
152f79c2dd8039e14073be76fdbce8760175da#n207
[4] https://github.com/stvhay/kernel/blob/batocera-rk3588-4.0/arch/arm64/bo=
ot/dts/rockchip/rk3588s-9tripod-x3588s.dtsi#L226

