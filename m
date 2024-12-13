Return-Path: <devicetree+bounces-130946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 677309F1721
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 21:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A9341611F3
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 20:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8041F0E52;
	Fri, 13 Dec 2024 20:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="OuwXYHd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6F51E8839
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 20:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734120085; cv=none; b=ElOusHZxylCPetEcOT0kfrFZ91vi5lUrRjASwKAWi4ZSaGisJ70qTUBHJ81+wW+bQZ7sMp/KZ4xtp3UUeEYxbsjSXW5KHjJLGcgl7LNGhWx0oxR5draAZMYWYislPS7fhJIIbD+Il6Srg/4KvCaW2uGVG5YMLkZaxr/kt4jtG5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734120085; c=relaxed/simple;
	bh=+IBdDuUpH0ffV3eW21HSRtsMzybmo8R7I3/oqhIog4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dWY4WffvddIM2Vc5sC9xON+pjD9hVRUfJlVY8F6KgM1necGNL3ZGfWGevH++3bTsVevBwEtO+N6/zkous60/vqHZINDvYmjh8DQpzUVXV4YgUrqy/6H5It902ri2rbEfy8r8qX7PEg6jBNA3Eia6M7u13bCT2OvPnngl4gRHmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=OuwXYHd0; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6ef7640e484so23888627b3.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1734120082; x=1734724882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjFjYpSxXBJz9M1hdmG3iiPhNXo18zA2UB8YwR16DTw=;
        b=OuwXYHd0EggZdYHqAQplpWeF1HSEa+cngmjVJtlthiLjyKy4kOeuST4V7Kk5nDV6OX
         GXQXIse+JEDXBZuPrT99x9gwSSiJwlDJGf4B25y4WQ2sSrdF1yXCfGgUqEL8kgQlPfTd
         96PD6iQo2e2b/lGJb5ne5jMY4S9dBwF+KfF0tK5GEFIaWJVv2HJcBw5Asqva9z8h2Eo5
         rUZRx/8/fCNcQ509XQNM7/Ea3PzVkQI/ACvRPturJdMoaXOn0Bw1RYGaUWfLhPUIAzw6
         CLpR2SHIrBb7RTAgl+RhR4jM87x1RssIxegwHj+q6Ts9HiQB/GYAZtbkZOsRQd4CcAT3
         6NYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734120082; x=1734724882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WjFjYpSxXBJz9M1hdmG3iiPhNXo18zA2UB8YwR16DTw=;
        b=Kdlcrn0kw+R2jx2sUMfRO1UCdnv5lsRi46fiQ/MywDR60jy4kwDkJ66qRiPmYK2nOa
         MJLoaSWTKrcQln9Nv+Q/FnVqetvp114reoNCF3c/+0y0LsGXH10QlsH5lkYCBORjuLUQ
         3qPE3LVkn0nb9EBVvQ1cYKeeuZDr6hkxhyUPNpWEujSoOTizn7wDoPIuwxmHpRG2vyvj
         NWCcB51xGZp4Z6W9d2OnJkHp95m7Rd79UmLwHnzwAN3E5r6zyZUOYg5RKtm+0m71MM/l
         UX9sY/8AgaIZtDtCx/0I4fZaxzBf1S538l4g7+sv08RfXrFjZzwM6RPXmE4twG4s4Pg2
         GTlg==
X-Forwarded-Encrypted: i=1; AJvYcCVAYiCQpP3fIkz2zeD8GKpZVA3axJfCEK8P49kCcZ4v0vy5G7ZCaNfsPV4syWTlmhkj6WUgizaInm5B@vger.kernel.org
X-Gm-Message-State: AOJu0YyhA6JGQGBvDwkM+x+gAwpl6R3Lk2h4MU2Jfj08X9NynwfNQAk+
	qyx4LIi2OEMt/5pp2jA7Ghn3VGs+PEEYptdHi75WH9KvNgjb57wBPSW/QkcEejRPxZ2KVP/B4rq
	Do2lZe4Pb4UvGB7Sa9kJhx1mpJpWTCAUDl3DyaSMBC+qA9XUCxT8=
X-Gm-Gg: ASbGnctl0Zrl3s1xHiLreKQLT0WrfBKGQ6s+TfYB3UuAgDaaQsMXKe95dEqNLrkML+p
	0hF307+aTM8p8e0KyFuZg7TzfLc7wwiMcFTSQWw==
X-Google-Smtp-Source: AGHT+IEywBNIbwjppPoVSQ/XELBsV0fF8sTiDrKGwA9AnZLBRibm/aOssHinTtzowKOKfn5HmY+4fB4H6J+nE2ZGRjI=
X-Received: by 2002:a17:90b:2242:b0:2ee:ba0c:1726 with SMTP id
 98e67ed59e1d1-2f2901b253dmr5268444a91.34.1734119680395; Fri, 13 Dec 2024
 11:54:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213-sparx5-lan969x-switch-driver-4-v4-0-d1a72c9c4714@microchip.com>
In-Reply-To: <20241213-sparx5-lan969x-switch-driver-4-v4-0-d1a72c9c4714@microchip.com>
From: Robert Marko <robert.marko@sartura.hr>
Date: Fri, 13 Dec 2024 20:54:29 +0100
Message-ID: <CA+HBbNG0k24fO5OG42jw-7trWbT3iVTdo6Hh=55s1MaTh28p-A@mail.gmail.com>
Subject: Re: [PATCH net-next v4 0/9] net: lan969x: add RGMII support
To: Daniel Machon <daniel.machon@microchip.com>
Cc: UNGLinuxDriver@microchip.com, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, Russell King <linux@armlinux.org.uk>, 
	jacob.e.keller@intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2024 at 2:41=E2=80=AFPM Daniel Machon
<daniel.machon@microchip.com> wrote:
>
> =3D=3D Description:
>
> This series is the fourth of a multi-part series, that prepares and adds
> support for the new lan969x switch driver.
>
> The upstreaming efforts is split into multiple series (might change a
> bit as we go along):
>
>         1) Prepare the Sparx5 driver for lan969x (merged)
>
>         2) Add support for lan969x (same basic features as Sparx5
>            provides excl. FDMA and VCAP, merged).
>
>         3) Add lan969x VCAP functionality (merged).
>
>     --> 4) Add RGMII support.
>
>         5) Add FDMA support.
>
> =3D=3D RGMII support:
>
> The lan969x switch device includes two RGMII port interfaces (port 28
> and 29) supporting data speeds of 1 Gbps, 100 Mbps and 10 Mbps.
>
> =3D=3D Patch breakdown:
>
> Patch #1 does some preparation work.
>
> Patch #2 adds new function: is_port_rgmii() to the match data ops.
>
> Patch #3 uses the is_port_rgmii() in a number of places.
>
> Patch #4 makes sure that we do not configure an RGMII device as a
>          low-speed device, when doing a port config.
>
> Patch #5 makes sure we only return the PCS if the port mode requires
>          it.
>
> Patch #6 adds checks for RGMII PHY modes in sparx5_verify_speeds().
>
> Patch #7 adds registers required to configure RGMII.
>
> Patch #8 adds RGMII implementation.
>
> Patch #9 documents RGMII delays in the dt-bindings.
>
> Details are in the commit description of the individual patches
>
> To: UNGLinuxDriver@microchip.com
> To: Andrew Lunn <andrew+netdev@lunn.ch>
> To: David S. Miller <davem@davemloft.net>
> To: Eric Dumazet <edumazet@google.com>
> To: Jakub Kicinski <kuba@kernel.org>
> To: Paolo Abeni <pabeni@redhat.com>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> To: Steen Hegelund <Steen.Hegelund@microchip.com>
> To: Horatiu Vultur <horatiu.vultur@microchip.com>
> To: Russell King <linux@armlinux.org.uk>
> To: jacob.e.keller@intel.com
> To: robh@kernel.org
> To: krzk+dt@kernel.org
> To: conor+dt@kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: robert.marko@sartura.hr
>
> Signed-off-by: Daniel Machon <daniel.machon@microchip.com>

Tested-by: Robert Marko <robert.marko@sartura.hr>

> ---
> Changes in v4:
>
> - Split patch #4 in v3 into two patches, where the new patch #5 handles
>   PCS selection, by returning the PCS only for ports that require it.
>
> - Got rid of the '|' symbol for {rx,tx}-internal-delay-ps property
>   description in the dt-bindings (patch #9).
>
> - Link to v3: https://lore.kernel.org/r/20241118-sparx5-lan969x-switch-dr=
iver-4-v3-0-3cefee5e7e3a@microchip.com
>
> Changes in v3:
>
> v2 was kindly tested by Robert Marko. Not carrying the tag to v3 since
> we have changes to the handling of the delays.
>
> - Modified lan969x_rgmii_delay_config() to not apply any MAC delay when
>   the {rx,tx}-internal-delay-ps properties are missing or set to 0
>   (patch #7).
>
> - Removed 'required' constraint from {rx-tx}-internal-delay-ps
>   properties. Also added description and default value (Patch #8).
>
> - Link to v2: https://lore.kernel.org/r/20241113-sparx5-lan969x-switch-dr=
iver-4-v2-0-0db98ac096d1@microchip.com
>
> Changes in v2:
>
>   Most changes are in patch #7. RGMII implementation has been moved to
>   it's own file lan969x_rgmii.c.
>
>   Details:
>
>     - Use ETH_P_8021Q and ETH_P_8021AD instead of the Sparx5 provided
>       equivalents (patch #7).
>     - Configure MAC delays through "{rx,tx}-internal-delay-ps"
>       properties (patch #7).
>     - Add selectors for all the phase shifts that the hardware supports
>       (instead of only 2.0 ns, patch #7).
>     - Add selectors for all the port speeds (instead of only 1000 mbps.)
>     - Document RGMII delays in dt-bindings.
>
>   - Link to v1: https://lore.kernel.org/r/20241106-sparx5-lan969x-switch-=
driver-4-v1-0-f7f7316436bd@microchip.com
>
> ---
> Daniel Machon (9):
>       net: sparx5: do some preparation work
>       net: sparx5: add function for RGMII port check
>       net: sparx5: use is_port_rgmii() throughout
>       net: sparx5: skip low-speed configuration when port is RGMII
>       net: sparx5: only return PCS for modes that require it
>       net: sparx5: verify RGMII speeds
>       net: lan969x: add RGMII registers
>       net: lan969x: add RGMII implementation
>       dt-bindings: net: sparx5: document RGMII delays
>
>  .../bindings/net/microchip,sparx5-switch.yaml      |  18 ++
>  drivers/net/ethernet/microchip/sparx5/Makefile     |   3 +-
>  .../ethernet/microchip/sparx5/lan969x/lan969x.c    |   5 +
>  .../ethernet/microchip/sparx5/lan969x/lan969x.h    |  10 +
>  .../microchip/sparx5/lan969x/lan969x_rgmii.c       | 224 +++++++++++++++=
++++++
>  .../net/ethernet/microchip/sparx5/sparx5_main.c    |  29 ++-
>  .../net/ethernet/microchip/sparx5/sparx5_main.h    |   3 +
>  .../ethernet/microchip/sparx5/sparx5_main_regs.h   | 145 +++++++++++++
>  .../net/ethernet/microchip/sparx5/sparx5_phylink.c |  14 +-
>  .../net/ethernet/microchip/sparx5/sparx5_port.c    |  57 ++++--
>  .../net/ethernet/microchip/sparx5/sparx5_port.h    |   5 +
>  11 files changed, 484 insertions(+), 29 deletions(-)
> ---
> base-commit: 2c27c7663390d28bc71e97500eb68e0ce2a7223f
> change-id: 20241104-sparx5-lan969x-switch-driver-4-d59b7820485a
>
> Best regards,
> --
> Daniel Machon <daniel.machon@microchip.com>
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

