Return-Path: <devicetree+bounces-9302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ADD7CC90A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F20371C209DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 653362D03A;
	Tue, 17 Oct 2023 16:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNbXmT6M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4511C2D024;
	Tue, 17 Oct 2023 16:44:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15D6CC433C8;
	Tue, 17 Oct 2023 16:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697561071;
	bh=sh8EB7iU1ZM84Ia3gezxnSnNYRVniIVNRNyFQIx6ROc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tNbXmT6MbU1QnZFTo8ArBL2sTmFcNSF0/kK70TaYH08PmRrqZks78ej4Le6uzTS5T
	 6FBvtXCooor1iSMpLmgbfQujOwJuFH+oZh3eVH7C6mLxYFWM/zp0VqRpldMY2wsD+t
	 3na/yHoiHratmEwlD6zmAeel+PrFt1VaRkv16AhPdNelt1JwyI8pBsjdQV5Y8ltxBq
	 uFQtKitSzG6yHJQuBXsOTZVwLf2HI6QQ8FMeE60X62kSbBrMKZb75zdTwccNFF0f0I
	 bq8T2ubW4AY7/gBc7bMNf1B7FusCdSSmg5CB8s80lVd9tvt5hZk11lhnKSTceG8sjv
	 QhrF5UFD4rS7Q==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1qsnBE-00543s-HS;
	Tue, 17 Oct 2023 17:44:28 +0100
Date: Tue, 17 Oct 2023 17:44:28 +0100
Message-ID: <86v8b5mc5v.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Robin Murphy <robin.murphy@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Fang Xiang <fangxiang3@xiaomi.com>
Subject: Re: [PATCH v3 5/5] irqchip/gic-v3: Enable non-coherent redistributors/ITSes ACPI probing
In-Reply-To: <ZS6YAvoz3JApFtOo@lpieralisi>
References: <20230905104721.52199-1-lpieralisi@kernel.org>
	<20231006125929.48591-1-lpieralisi@kernel.org>
	<20231006125929.48591-6-lpieralisi@kernel.org>
	<ZS6YAvoz3JApFtOo@lpieralisi>
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
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: lpieralisi@kernel.org, linux-kernel@vger.kernel.org, robin.murphy@arm.com, mark.rutland@arm.com, rafael@kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-acpi@vger.kernel.org, robh+dt@kernel.org, fangxiang3@xiaomi.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Tue, 17 Oct 2023 15:19:46 +0100,
Lorenzo Pieralisi <lpieralisi@kernel.org> wrote:
> 
> On Fri, Oct 06, 2023 at 02:59:29PM +0200, Lorenzo Pieralisi wrote:
> > The GIC architecture specification defines a set of registers
> > for redistributors and ITSes that control the sharebility and
> > cacheability attributes of redistributors/ITSes initiator ports
> > on the interconnect (GICR_[V]PROPBASER, GICR_[V]PENDBASER,
> > GITS_BASER<n>).
> > 
> > Architecturally the GIC provides a means to drive shareability
> > and cacheability attributes signals and related IWB/OWB/ISH barriers
> > but it is not mandatory for designs to wire up the corresponding
> > interconnect signals that control the cacheability/shareability
> > of transactions.
> > 
> > Redistributors and ITSes interconnect ports can be connected to
> > non-coherent interconnects that are not able to manage the
> > shareability/cacheability attributes; this implicitly makes
> > the redistributors and ITSes non-coherent observers.
> > 
> > So far, the GIC driver on probe executes a write to "probe" for
> > the redistributors and ITSes registers shareability bitfields
> > by writing a value (ie InnerShareable - the shareability domain the
> > CPUs are in) and check it back to detect whether the value sticks or
> > not; this hinges on a GIC programming model behaviour that predates the
> > current specifications, that just define shareability bits as writeable
> > but do not guarantee that writing certain shareability values
> > enable the expected behaviour for the redistributors/ITSes
> > memory interconnect ports.
> > 
> > To enable non-coherent GIC designs on ACPI based systems, parse the MADT
> > GICC/GICR/ITS subtables non-coherent flags to determine whether the
> > respective components are non-coherent observers and force the shareability
> > attributes to be programmed into the redistributors and ITSes registers.
> > 
> > An ACPI global function (acpi_get_madt_revision()) is added to retrieve
> > the MADT revision, in that it is essential to check the MADT revision
> > before checking for flags that were added with MADT revision 7 so that
> > if the kernel is booted with ACPI tables (MADT rev < 7) it skips parsing
> > the newly added flags (that should be zeroed reserved values for MADT
> > versions < 7 but they could turn out to be buggy and should be ignored).
> > 
> > Signed-off-by: Lorenzo Pieralisi <lpieralisi@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Marc Zyngier <maz@kernel.org>
> > ---
> >  drivers/acpi/processor_core.c    | 21 +++++++++++++++++++++
> >  drivers/irqchip/irq-gic-common.h |  8 ++++++++
> >  drivers/irqchip/irq-gic-v3-its.c |  4 ++++
> >  drivers/irqchip/irq-gic-v3.c     |  9 +++++++++
> >  include/linux/acpi.h             |  3 +++
> >  5 files changed, 45 insertions(+)
> 
> Hi Marc,
> 
> just a quick note to ask if, from an ACPI binding POW

I guess you mean POV. POW has an entirely different meaning... :-/

> this patch and related approach make sense to you.
> 
> If so, we can start the process to get the ACPI changes drafted
> in:
> 
> https://bugzilla.tianocore.org/show_bug.cgi?id=4557
> 
> and deployed in this patch into the ACPI specs, I can log
> an "ACK" in the tianocoreBZ entry above (we will be able to
> rework the code as much as we want, this is just for the
> bindings).

I'm OK with the overall shape of it. However, I wonder what the
rationale is for spreading the redistributor property all over the map
(in both GICC and GICR structures), while it could be set once and for
all in the core MADT flags (32 bits, of which only one is in use).

It is bad enough that there are two ways of getting the GICR regions.
Why can't the properties that apply to all of the be common?

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

