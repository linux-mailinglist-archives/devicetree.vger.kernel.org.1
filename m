Return-Path: <devicetree+bounces-11238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1687F7D4D82
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6055281954
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662A825108;
	Tue, 24 Oct 2023 10:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdTWEH8i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDDE25104;
	Tue, 24 Oct 2023 10:18:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 907B0C433C7;
	Tue, 24 Oct 2023 10:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698142705;
	bh=s5cqeaFmg7kTADBcVre28wPksw9MH2Sh+8D1VUrzUCU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UdTWEH8i1A1Tywjs5kmlMInTxc9oXW3OGcY/EgSSVsJdvKFQhEnbpp0bggXvPpyKa
	 FiRhb7w9bB34pZIMW4BKwEtDhk7vI0WNeePX8R7iPZzSoqbNgTBlcbqid3Iuf38eUI
	 icgiRf/eGq4R1uNoa459BeB4hZm3DBJoqVEzfN5yJNaG83qKgXpUqRvDDFcfi1PGpa
	 D+n4Y0y5TjV47fZZzhnPHOg1MB6z64wYLvY9BbHzUYg6GCGi4HEF7w1YTh3GoRjne2
	 31HwhhbkUzFQ3xDNpq4YFBGYRdu3Ay9lnRJSA1hEL1O8xcDrF0DevP3BVNTQnY8hZu
	 V1pVFrM2kItqg==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1qvEUR-007AIl-75;
	Tue, 24 Oct 2023 11:18:23 +0100
Date: Tue, 24 Oct 2023 11:18:21 +0100
Message-ID: <86lebs493m.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Dominic Rath <dominic.rath@ibv-augsburg.net>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	Mark Rutland <mark.rutland@arm.com>,
	Robin Murphy <robin.murphy@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Fang Xiang <fangxiang3@xiaomi.com>,
	bahle@ibv-augsburg.de,
	rath@ibv-augsburg.de
Subject: Re: [PATCH v3 3/5] irqchip/gic-v3-its: Split allocation from initialisation of its_node
In-Reply-To: <20231024084831.GA3788@JADEVM-DRA>
References: <20230905104721.52199-1-lpieralisi@kernel.org>
	<20231006125929.48591-1-lpieralisi@kernel.org>
	<20231006125929.48591-4-lpieralisi@kernel.org>
	<20231024084831.GA3788@JADEVM-DRA>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: dominic.rath@ibv-augsburg.net, lpieralisi@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-acpi@vger.kernel.org, mark.rutland@arm.com, robin.murphy@arm.com, rafael@kernel.org, robh+dt@kernel.org, fangxiang3@xiaomi.com, bahle@ibv-augsburg.de, rath@ibv-augsburg.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Tue, 24 Oct 2023 09:48:31 +0100,
Dominic Rath <dominic.rath@ibv-augsburg.net> wrote:
>=20
> Hi,
>=20
> On Fri, Oct 06, 2023 at 02:59:27PM +0200, Lorenzo Pieralisi wrote:
> > From: Marc Zyngier <maz@kernel.org>
> >=20
> > In order to pave the way for more fancy quirk handling without making
> > more of a mess of this terrible driver, split the allocation of the
> > ITS descriptor (its_node) from the actual probing.
>=20
> it seems that this change breaks MSI-X (MSI?) reception on at least
> the TI AM64x, probably most/all of TI's recent devices (K3).
>=20
> These devices rely on a quirk CONFIG_SOCIONEXT_SYNQUACER_PREITS that
> uses an address from the dts specified e.g. as
>=20
>   socionext,synquacer-pre-its =3D <0x1000000 0x400000>;
>=20
> to configure a MSI base address that differs from the ARM default.

<rant>
Why on Earth are people using a property that is specific to another
implementation? Not only the HW is braindead, but this is now tied to
whatever additional implementation quirks we find...

This is just dumb.
</rant>

> With this change, the quirk still sets its->get_msi_base and clears
> IRQ_DOMAIN_FLAG_ISOLATED_MSI from its->msi_domain_flags during
> its_of_probe, but both get overwritten again during its_probe_one
> with the defaults.
>=20
> Previously the defaults would be set first and then the quirks were
> applied.

Yeah, that's clearly a regression, and I've confirmed it on my
Synquacer (which means the TI folks have accurately copied a dumb
idea). Can you please give the patch below a go on your system and
confirm asap whether it works for you?

> I have no idea whether TI's use of this quirk was "correct", but it did
> work, and since 6.6-rc6 MSI-X has been broken for us.

Just as for bad SW, the worse HW ideas get replicated. Then I write
bad SW for it.

Thanks,

	M.

=46rom b5571a69f09733ecfa0c944cc48baced6590d024 Mon Sep 17 00:00:00 2001
From: Marc Zyngier <maz@kernel.org>
Date: Tue, 24 Oct 2023 11:07:34 +0100
Subject: [PATCH] irqchip/gic-v3-its: Don't override quirk settings with
 default values

When splitting the allocation of the ITS node from its configuration,
some of the default settings were kept in the latter instead of
being moved to the former.

This has the side effect of negating some of the quirk detection that
have happened in between, amongst which the dreaded Synquacer hack
(that also affect Dominic's TI platform).

Move the initialisation of these fields early, so that they can
again be overriden by the Synquacer quirk.

Fixes: 9585a495ac93 ("irqchip/gic-v3-its: Split allocation from initialisat=
ion of its_node")
Reported by: Dominic Rath <dominic.rath@ibv-augsburg.net>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20231024084831.GA3788@JADEVM-DRA
---
 drivers/irqchip/irq-gic-v3-its.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-=
its.c
index 75a2dd550625..a8c89df1a997 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -5112,8 +5112,6 @@ static int __init its_probe_one(struct its_node *its)
 	}
 	its->cmd_base =3D (void *)page_address(page);
 	its->cmd_write =3D its->cmd_base;
-	its->get_msi_base =3D its_irq_get_msi_base;
-	its->msi_domain_flags =3D IRQ_DOMAIN_FLAG_ISOLATED_MSI;
=20
 	err =3D its_alloc_tables(its);
 	if (err)
@@ -5362,6 +5360,8 @@ static struct its_node __init *its_node_init(struct r=
esource *res,
 	its->typer =3D gic_read_typer(its_base + GITS_TYPER);
 	its->base =3D its_base;
 	its->phys_base =3D res->start;
+	its->get_msi_base =3D its_irq_get_msi_base;
+	its->msi_domain_flags =3D IRQ_DOMAIN_FLAG_ISOLATED_MSI;
=20
 	its->numa_node =3D numa_node;
 	its->fwnode_handle =3D handle;
--=20
2.39.2


--=20
Without deviation from the norm, progress is not possible.

