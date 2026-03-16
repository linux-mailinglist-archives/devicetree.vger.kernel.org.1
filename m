Return-Path: <devicetree+bounces-276019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8J8hMCDGt2kRVQEAu9opvQ
	(envelope-from <devicetree+bounces-276019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:58:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA7D2968C4
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:58:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 32BCF3004C84
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 333B5382375;
	Mon, 16 Mar 2026 08:57:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DC9382368
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651473; cv=none; b=D0Tas7EgbqSriqyC/CyiYafB9n3Eqrw9tX+JRpvueWqyvs+07JvBoRdjJAsPCNxhdqdTQ8FtaiGFxDD93RT21MdAINsbS49x8/7ZuLFVsyjkfJeLNh2BwPobXwwAzDgzRi807Yw0iXvk9oeWiyrw0MfgqVXRFhfvqsTPJK9sllQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651473; c=relaxed/simple;
	bh=D5tlCjYcqNokOLg7tmJDyH77hdECzpnI6m6wQp9suPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qnzouFFgKZYFPrnhHJ7z2eAmUhtAgkJOAjW7hP6hVt0nNSBGgtkYRD0JkWzVFKiUExVofWJvPZNiqIzvd/idjU+ThBWeoSdjVlsVHs4iEDPvBBUYg6ehIAAErXP2vmo5eXrdganZVr798+W3vovIzfAN1SLA1idOUr9Z3W6SloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56739adfa1aso3427592e0c.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651471; x=1774256271;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jK5sk+em838IX5DcxpH0UZ4b1Tfc1Aw/r3qavdS0U7Y=;
        b=MsxX/9YtkiDIkDNopoDoTJGB6CpfMnpdoJYBANW97ce7uUg33JfhuWqd1qk6X4LfZK
         xNCYcplguO6Q6afGdof86Vjvtu6hINVX1lcb3RanD+zZR/CrUbJH+jVZU8vYaXaABUFU
         hrI8wzcS7uJL8mDAwZk4XFyv+B+TPpe9IKjZ4wbEGchYjzBwI5t7ixagqsdP9vnYyLUc
         2A+a/vE/9BPh1ZQgXylZnG8CvkCjJTLmWX1xHoO6RXrCt2IYbcd/Ux49uT81l1bJdldX
         kA5cmEJAR0YqrkRZ0L+IP/9UsAytJ9Mc78rxSuz86KcOR3IFnlniba4TCDf3bJ7Y1SiN
         idsw==
X-Forwarded-Encrypted: i=1; AJvYcCWtTEpoTV/15tevr3ysdBHT2sHhsOL26U+Y8ApMbHnfEW5PmXgQBoxAXZPPo3vjM/s4WUFXGqiCc+uz@vger.kernel.org
X-Gm-Message-State: AOJu0YxeayJfR5FQi+jwbHZw7zUrCH1Jpri9dG3CeJSitrjqfQfStEtg
	XDs70QlVqQXexsnHfFmp5fRiXnOh5E1/K3RXS2dulDvDuFXisvRpkxKowaCeKWNP
X-Gm-Gg: ATEYQzzt1amaKXQvWyemu6yPAqhVzyGHUjEZGYHohNhEZYqEEFplj9qANA8t2ofJoek
	vVn54XBQAy4Zs58TkiWcMkOttkH0EIsJievqZ3M2htmrVLwn3iBEhCXcDDHXGNpMW45a+aNvHYv
	M9Qoy9QBtfurwA5r/jl2I10Z0sGNRwDskDTcvQa9SgrPZjjFunK4St5ZMPhMEH6GqJ18iv9GVj7
	mGU45Fm/tSamFdEbJwipcem/QNrlYg+yhlupehBAqfnLL72sibo/R1tUldCgaAAFrThLYrcW+RA
	0al0QH8+8zZchssGELHLtzmvrNzexUm/Dxuh+W5qlVHNfG1CaeSKGqh9RIu8BIPmj/IdNXtHvzk
	/FXq+QzfDvqA9wnE5qZRmNCQPINrO+sKTf06xUVBTKOxp3NjpSNTp8iAD7+MYQ6L7XEAsi1SM+e
	UeH3V16u4Oaiy9Uu6dI9A1qhf4iFd2FWXkllCvXwA2+W9yKDFA/F98lt/8634X
X-Received: by 2002:a05:6122:3c48:b0:567:4e8a:fb13 with SMTP id 71dfb90a1353d-56b62827650mr5277437e0c.8.1773651470659;
        Mon, 16 Mar 2026 01:57:50 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94ecfc4ecabsm5691118241.3.2026.03.16.01.57.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:57:50 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ffc879c1aeso2796702137.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:57:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUJv+FqMq8bFzxcI3fNhEQitfNps1JdFVxlc3dPsNu69mKVFgm0Ww2w5UOlUUNFQjxw/1AScRokZKRL@vger.kernel.org
X-Received: by 2002:a05:6102:a47:b0:5ff:c510:b7cf with SMTP id
 ada2fe7eead31-6020e5be6eamr5392850137.29.1773651469750; Mon, 16 Mar 2026
 01:57:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313164008.40933-1-marek.vasut+renesas@mailbox.org> <TY3PR01MB11346A57519DD3EB5BB4456D38645A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346A57519DD3EB5BB4456D38645A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Mar 2026 09:57:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX5+smUnspgxnEy6ewL2-3htqeP-d0kX7muMVp9AAqO7A@mail.gmail.com>
X-Gm-Features: AaiRm524UBYVHYeSOSlEwNWANcA9CdVUxHChHA3ifmZpde-sn3EBjMfeQHZasFE
Message-ID: <CAMuHMdX5+smUnspgxnEy6ewL2-3htqeP-d0kX7muMVp9AAqO7A@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: renesas: Fix PHY C22 compatible strings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"magnus.damm" <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276019-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[mailbox.org,lists.infradead.org,kernel.org,glider.be,bp.renesas.com,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,mailbox.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CCA7D2968C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Fri, 13 Mar 2026 at 17:53, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Marek Vasut <marek.vasut+renesas@mailbox.org>
> > Realtek RTL8211E/RTL8211F and Microchip KSZ9131 PHY schemas indicate that compatible string "ethernet-
> > phy-id001c.c91[56]"
> > and "ethernet-phy-id0022.1640" must not be followed by any other compatible string. Drop "ethernet-
> > phy-ieee802.3-c22"
> > to match the schemas.
> >
> > The KSZ9131 schema does not document "txdv-skew-psec" property.
> > Fix what is likely a copy-paste error from the "rxdv-skew-psec"
> > property, use "txen-skew-psec" property instead.
> >
> > This is compile-tested and schema validated only. I have discussed this with Biju and they could
> > perform tests on real hardware to assure no breakage. Please wait for their TB before applying.
>
> Looks like there is delay in delivering my patches. I already posted 3 patches. I will test 4/4.
>
> https://patchwork.kernel.org/project/linux-renesas-soc/patch/20260313130623.297712-1-biju.das.jz@bp.renesas.com/
> https://patchwork.kernel.org/project/linux-renesas-soc/patch/20260313130920.298392-1-biju.das.jz@bp.renesas.com/
> https://patchwork.kernel.org/project/linux-renesas-soc/patch/20260313141150.406528-1-biju.das.jz@bp.renesas.com/

Please use lore links
s@patchwork.kernel.org/project/linux-renesas-soc/patch@lore.kernel.org@

There is also Marek's older series ([1][2], as Marek doesn't do cover
letters ;-).

[1] "[PATCH 1/2] ARM: dts: renesas: Drop ethernet-phy-ieee802.3-c22
from PHY compatible string on all RZ boards"
    https://lore.kernel.org/20240630034649.173229-1-marex@denx.de/
[2] "[PATCH 2/2] arm64: dts: renesas: Drop ethernet-phy-ieee802.3-c22
from PHY compatible string on all RZ boards"
    https://lore.kernel.org/20240630034649.173229-2-marex@denx.de

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

