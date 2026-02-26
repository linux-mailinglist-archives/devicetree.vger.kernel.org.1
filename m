Return-Path: <devicetree+bounces-268841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMulAslKoGnJhwQAu9opvQ
	(envelope-from <devicetree+bounces-268841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:29:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCAE1A696E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1065930C68F7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023223242CA;
	Thu, 26 Feb 2026 13:22:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33612322B77
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772112163; cv=none; b=kEwTw1HuJjIp6vSn6c/XPb9U52BnlMD39tK/bNTEotHk4RWvLj/kxmpXfAcu3zeUBViNLHsU1kW+z0w+E6zEc2actD91SL/0Sxo5bGtkBbiPT9qbo3ur+O64M6CYhrHKWNzVbvlsuiDthsve1lX37w7flhWdFHbuv8gCxPhMAtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772112163; c=relaxed/simple;
	bh=4R7hF+71pg82oS066LoRVZURzYUxKCGCri0Dd7HK3lc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L++zrezzWF7bG8b8jKD4CRUAW9GnnXysfgdtzf+v1wo7882WZaeS1kXTq01VDMYsVPXmeZpVsDECSUKD1x7p2QMbAezBvhUdTq3NkmQuokYZecC9xATw9MCkNnSkO8cfoe0QXbBkVP/PjbRLmID9GZLR7eAZ1AXVcuaEXTRgTSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56a8dce7235so285811e0c.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772112161; x=1772716961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5twdPm6qtk6BxBBh6eqwsmb5sfIcorWjwwVPoxGI8zc=;
        b=ZiomMbnk2QfzrbA+JkMzOOjyT0QT6nwIZn75jCWDb2QaB/zNPwdLi2y36sgXzIegol
         5ZZ5DBsjkAu6u3xjiza38RzN86T6BqE+R9O4SPZFjb9RC+pZGtb2X84z5ck3E1sjZK9b
         OjqoZni3DM4qhX1k4edkK2uuq3Uc/7j1Ok7ipfhoZCfgi3h6LQn0lYm7EHY9AiU41kSq
         UCVT+eu8InIAdAqaDCWHIU8NLdNjAKtONvWEablgqQ0rjZZOo++/DfeaYda/qwbdThIm
         etIxlIiU1kB5LpdbLd3I4Z2towavQKcQ3rFFK5DC/agGvP761DItf7IChyAjDxZZm/hH
         Voqw==
X-Forwarded-Encrypted: i=1; AJvYcCVFcbjxi1kMFmuJwD588ogyXDA/mIcxVAgzKHQ+tnuFunUndVH7FVkryVz1z/PRebR2ILPqLGEkig9m@vger.kernel.org
X-Gm-Message-State: AOJu0Yx85/5pVbctw8UP+pXha5iwEOJLNXzCE3/sLpnIAoNyD9TUngko
	+VI5aHgpuyccFlVhtxtlNc1p2A+99Y3qmcGfuIfd6+1wcH0otHVMBw5P9zlpxP19
X-Gm-Gg: ATEYQzzSJ6K+8LkC12fI1BfcKjG8SMMISkQBJydlkHnaNfN5uTS9rgmdq87n0jYmOD8
	fWpKFoqrNGfSTh1ITVF7+PPgOoo+THLWiMVedhPs68/YGIbUQ7TtOxJ/qerltmjglnLlEw524AV
	QyHECjtHOyPZ/B0OBH84fVkIFLCOEUGQrySSftHUUfJRYCWG6r/syKib5JU+QmSs1ehYoWGUQ3Z
	D2cp6/LRW2RTO4NsVtzgi+XhfW3StPk/WpYbC5+RwowvIdIt6bKRSALI9BWkmP7FjaiGt810AY3
	4P4M3oVjwRArKQmHN9ulZewbt2LzFgtBhHnfoV15HeyaXaMCUNENbkrMDHZI4dwmHDefQh30lsH
	agNwAhDkU7Crzd1OFv3YtixT2lzbE2KThUgEJmbFc768sHjJ6Ex8m+G8gvBnJtD/joFkdpaO7HF
	y0tsI5EWpsaBf7rAr8s0+gjRNxypa+2Xe3BoCoPP2BK5O25VQ7kps2xy5XraES
X-Received: by 2002:a05:6122:218e:b0:566:37da:a72a with SMTP id 71dfb90a1353d-56a8bc659d1mr2113648e0c.13.1772112161159;
        Thu, 26 Feb 2026 05:22:41 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bb4fbesm2480593e0c.5.2026.02.26.05.22.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 05:22:41 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5fe086fb0bcso171057137.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:22:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU/pDmj6ENVghj1E4E1e9j908LAm13Hmu6cQtfT+AV1EFMlxie1SZj6YPkddpxPos8b9D5Th697+Bcr@vger.kernel.org
X-Received: by 2002:a05:6102:ccf:b0:5fd:ed98:cf0f with SMTP id
 ada2fe7eead31-5ff14157fafmr2006779137.34.1772112160689; Thu, 26 Feb 2026
 05:22:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111093940.975359-1-vladimir.oltean@nxp.com> <20260111093940.975359-6-vladimir.oltean@nxp.com>
In-Reply-To: <20260111093940.975359-6-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Feb 2026 14:22:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
X-Gm-Features: AaiRm523jRWdOCfOPJhqksDewbEoHD_GTMJ0xjyZsvboq3n-XWtXIhj4iGm1B4M
Message-ID: <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and phy_get_tx_polarity()
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Daniel Golle <daniel@makrotopia.org>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	=?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Lee Jones <lee@kernel.org>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	KUnit Development <kunit-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,makrotopia.org,microchip.com,mork.no,lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,collabora.com,foss.st.com,googlegroups.com];
	TAGGED_FROM(0.00)[bounces-268841-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email,mork.no:email,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: 6BCAE1A696E
X-Rspamd-Action: no action

Hi Vladimir,

CC kunit

On Sun, 11 Jan 2026 at 10:44, Vladimir Oltean <vladimir.oltean@nxp.com> wro=
te:
> Add helpers in the generic PHY folder which can be used using 'select
> GENERIC_PHY_COMMON_PROPS' from Kconfig, without otherwise needing to
> enable GENERIC_PHY.
>
> These helpers need to deal with the slight messiness of the fact that
> the polarity properties are arrays per protocol, and with the fact that
> there is no default value mandated by the standard properties, all
> default values depend on driver and protocol (PHY_POL_NORMAL may be a
> good default for SGMII, whereas PHY_POL_AUTO may be a good default for
> PCIe).
>
> Push the supported mask of polarities to these helpers, to simplify
> drivers such that they don't need to validate what's in the device tree
> (or other firmware description).
>
> Add a KUnit test suite to make sure that the API produces the expected
> results. The fact that we use fwnode structures means we can validate
> with software nodes, and as opposed to the device_property API, we can
> bypass the need to have a device structure.
>
> Co-developed-by: Bj=C3=B8rn Mork <bjorn@mork.no>
> Signed-off-by: Bj=C3=B8rn Mork <bjorn@mork.no>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Thanks for your patch, which is now commit e7556b59ba651796
("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()") in
v7.0-rc1.

> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -5,6 +5,28 @@
>
>  menu "PHY Subsystem"
>
> +config PHY_COMMON_PROPS
> +       bool
> +       help
> +         This parses properties common between generic PHYs and Ethernet=
 PHYs.
> +
> +         Select this from consumer drivers to gain access to helpers for
> +         parsing properties from the
> +         Documentation/devicetree/bindings/phy/phy-common-props.yaml sch=
ema.
> +
> +config PHY_COMMON_PROPS_TEST
> +       tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
> +       select PHY_COMMON_PROPS

This select means that enabling KUNIT_ALL_TESTS also enables extra
functionality, which may not be desirable in a production system.
As PHY_COMMON_PROPS is bool, this extra functionality is even part of
the base kernel if KUNIT_ALL_TESTS=3Dm.  Unfortunately PHY_COMMON_PROPS is
invisible, so this cannot just be changed from "select" to "depends on".
But perhaps PHY_COMMON_PROPS can be made visible if KUNIT_ALL_TESTS,
so the select can be turned into a dependency?

> +       depends on KUNIT
> +       default KUNIT_ALL_TESTS
> +       help
> +         This builds KUnit tests for the PHY common property API.
> +
> +         For more information on KUnit and unit tests in general,
> +         please refer to the KUnit documentation in Documentation/dev-to=
ols/kunit/.
> +
> +         When in doubt, say N.
> +
>  config GENERIC_PHY
>         bool "PHY Core"
>         help

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

