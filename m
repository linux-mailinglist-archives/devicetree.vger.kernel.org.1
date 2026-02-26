Return-Path: <devicetree+bounces-268919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBg5CoRroGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:49:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F32B1A9170
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DA29344B2BF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07B93D6470;
	Thu, 26 Feb 2026 15:21:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C623EF0D4
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772119289; cv=none; b=bXt/xb0UTPrr1h8u9NbaxEhyCXNtXaPMzBHbjKXMoPbm14413ltkx9EUKzcPdFZEX6Jb0hMW6HJKDcxqvUScHtXSkbGS1/Zp24yCwcKc8jJRA48RP3tNl/1RZbjfA9eapaTl+YxGfIqZXE3kSM5a7FUZ0axQxNyLH7+yzlbDcCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772119289; c=relaxed/simple;
	bh=sNTeNXb0XfUb+HMFHcNwV1x7mN0bxpTI+7ku1DBJKwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bXVJHie+Z4JIO8jQfLwXv9sUxuNhDputFhrR3LnRZ9va+D894fqyY7wPubEKkWqxGxVLoZ/fKHFZuVDsvnhTvxFkIGHID+7Zv6DRKLRnctBmtG3xlDgZ/2XvNvKj6qzNyUfYeqD1FqXF3f2S8+traED6Qpv6vrNjssbEjnGlJVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56a9a7e762bso469490e0c.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:21:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772119287; x=1772724087;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O0ezGVOcarv9ScNAFNBu6P5NdLNkz1RoEz4XxD5dNpA=;
        b=wufBXYt5C33g20ldw3Bmn8NdhMaAyEi+IuEEObSQvtfBgS+3z91+EKm2XWABzJCYFz
         CbifgOm5BPDj1cn1YdxNvawEmUDvHKMZZrRbt8Ybu7Q3mXsVEgV0XHfx6RfvhMwCKrTd
         dDDxDp+ktzake8sUWbzfe3SnO1SXbM//9JIaY4r6WhMs/KFKWZjiPqLg+A4POAo/Nt0b
         h2c9LG8pRu2A+Saky3gIPDPEyodbnJb6lrO35i8Nn6NkcA8RjTK6kauyFKxq220DqJ7o
         DeLSQIvffV/0HhkwleQ0KoK6sIzcs6HSNbZutpos/KY0IKPZ2P28EUYAZt8ignNgCyqb
         JBUA==
X-Forwarded-Encrypted: i=1; AJvYcCU/tm4OCVX1NfY5rclINq+1aEYXKAP7WMUofD/JSkfjJuAfa2pB2hL8DjeKj9oO+tUFDXnr/EXe9ylc@vger.kernel.org
X-Gm-Message-State: AOJu0YzaOtKqIIBt/y4IsD7009JHaIHdtTbWNKlPts4GMniyfMq3SNOT
	O8W+tn53DZMONWYxcEAy/M9CnZW0jz96KJPYkt7R3SXp29faoQAMkFqgX2R5YSGz
X-Gm-Gg: ATEYQzxG1P7al7ME956EARwqMLZBEA75oWhmFcva00O8HnUM6oTIFjxPm1WxQ0LsuW1
	NEJ7OpSO7UjhvqN5FcC8s4YjkFKVoFEFW0QFh06Q+pbU6bjtCEww7WgRsdCQrx1t/0Izzpg9dlG
	dvtU7WP6TDoliRNZU+w9cfI5EvLGW9Nc25kldka3FIKh+s4RNpz/ylNTU5vH/xR8W9k7wsjEpBQ
	uJU/1hSh59Glg7l5bpXA61xqZ/leA8uBlqH9cTMfPGbYjlH0I7mfISq8hxYsuen59ide/KjUJpW
	A6JVlJwSuHD09em4oOnLv0rL+0j5O9pIcBadRVgNKHJsBh1UNxZOpcCho36IFD8UYjuU/NLw6Ty
	Ky/ceVJZjGYvaqpcDCQqZK0lUK2a2TMVbBeNHDOsSq0JqMdFPDONTpuTkp0w7VGWxMRjI9FzEFb
	Z8cWKIsdmzbxNRmWupSzq2q1MeYvMqppPhJPrsPxa3evQcydAt9NvpyC5pyJtj
X-Received: by 2002:a05:6122:35c6:b0:56a:8c20:2d9b with SMTP id 71dfb90a1353d-56a92ec90c0mr1165317e0c.0.1772119287294;
        Thu, 26 Feb 2026 07:21:27 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bb4fbesm2885452e0c.5.2026.02.26.07.21.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 07:21:27 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5ff0c095b69so712387137.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:21:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWgK8S1GYUUnsPW/xV+Nv+QJxSvBfTe4NTcIVzDtdb4lZl8K+5k7AxK/Rt9D33iQxlNq37AoZFYKpmk@vger.kernel.org
X-Received: by 2002:a05:6102:3a09:b0:5ef:6550:e9f0 with SMTP id
 ada2fe7eead31-5ff20c71950mr1513822137.36.1772118850413; Thu, 26 Feb 2026
 07:14:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
 <20260111093940.975359-6-vladimir.oltean@nxp.com> <CAMuHMdUBaoYKNj52gn8DQeZFZ42Cvm6xT6fvo0-_twNv1k3Jhg@mail.gmail.com>
 <20260226151036.x4z4bdlxwgsqlkhs@skbuf>
In-Reply-To: <20260226151036.x4z4bdlxwgsqlkhs@skbuf>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Feb 2026 16:13:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXKbiKUkP=+FDA_-Kd_qx1X6vzSuyPU+Tdd9MgR=Q5WMw@mail.gmail.com>
X-Gm-Features: AaiRm50hl5iFqVfPGnJ3OyUGaG2ytMnVkvc4q6N2_1XHwxz7HIPlFh5Oi8AcHkM
Message-ID: <CAMuHMdXKbiKUkP=+FDA_-Kd_qx1X6vzSuyPU+Tdd9MgR=Q5WMw@mail.gmail.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,makrotopia.org,microchip.com,mork.no,lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,collabora.com,foss.st.com,googlegroups.com];
	TAGGED_FROM(0.00)[bounces-268919-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.984];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,nxp.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7F32B1A9170
X-Rspamd-Action: no action

Hi Vladimir,

On Thu, 26 Feb 2026 at 16:10, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> On Thu, Feb 26, 2026 at 02:22:29PM +0100, Geert Uytterhoeven wrote:
> > > +config PHY_COMMON_PROPS
> > > +       bool
> > > +       help
> > > +         This parses properties common between generic PHYs and Ethernet PHYs.
> > > +
> > > +         Select this from consumer drivers to gain access to helpers for
> > > +         parsing properties from the
> > > +         Documentation/devicetree/bindings/phy/phy-common-props.yaml schema.
> > > +
> > > +config PHY_COMMON_PROPS_TEST
> > > +       tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
> > > +       select PHY_COMMON_PROPS
> >
> > This select means that enabling KUNIT_ALL_TESTS also enables extra
> > functionality, which may not be desirable in a production system.
> > As PHY_COMMON_PROPS is bool, this extra functionality is even part of
> > the base kernel if KUNIT_ALL_TESTS=m.  Unfortunately PHY_COMMON_PROPS is
> > invisible, so this cannot just be changed from "select" to "depends on".
> > But perhaps PHY_COMMON_PROPS can be made visible if KUNIT_ALL_TESTS,
> > so the select can be turned into a dependency?
>
> Is this what you're asking for?
>
> -- >8 --
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 02467dfd4fb0..1875d5b784f6 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -6,7 +6,7 @@
>  menu "PHY Subsystem"
>
>  config PHY_COMMON_PROPS
> -       bool
> +       bool "PHY common properties" if KUNIT_ALL_TESTS
>         help
>           This parses properties common between generic PHYs and Ethernet PHYs.
>
> @@ -16,8 +16,7 @@ config PHY_COMMON_PROPS
>
>  config PHY_COMMON_PROPS_TEST
>         tristate "KUnit tests for PHY common props" if !KUNIT_ALL_TESTS
> -       select PHY_COMMON_PROPS
> -       depends on KUNIT
> +       depends on KUNIT && PHY_COMMON_PROPS
>         default KUNIT_ALL_TESTS
>         help
>           This builds KUnit tests for the PHY common property API.
> -- >8 --

Yes, that would work.  Do you think it is acceptable?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

