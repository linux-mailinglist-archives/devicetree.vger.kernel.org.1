Return-Path: <devicetree+bounces-1978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 236007A9571
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 284F11C203DC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 15:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A478199AA;
	Thu, 21 Sep 2023 15:08:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4746A199A9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 15:08:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75DA4C4E761;
	Thu, 21 Sep 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695308896;
	bh=L0Y9YCcXIfYgNBjuyvMWPQWu9ej2m027Mk4wviryPFc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=gFqOvKwD82XZsHe76trqDACk/ukmKSHQJwz7bCZ7MJEH6nifbgBEjKRk6FWVzvDum
	 ooqrhdbeY3pDtPMG4uXEcnIVGNJGRkxhdeX81V/m+WYU6IG4sOSGXuQOwEfFfHhY8/
	 cQ3dnRizGPzyY24kv5ahl5Qxo2rqKrpqZqQNU6zkqXhBy36+wTFXYaYfAH9NH3701w
	 3tk7aPFDVUmL5+XcB13lGwt7TITWrmlIM+um0rBia3JEQEPMyQWXUXGogl03F+zXUs
	 I6fouyBEvFdignF5f+LWfr7ti9Gvs6tWnXCG+Y0wACYnSmQvrXmLQf/FjekRCApaKS
	 lwKCQM68yqdAg==
Date: Thu, 21 Sep 2023 10:08:14 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Minda Chen <minda.chen@starfivetech.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mason Huo <mason.huo@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v6 08/19] PCI: plda: Add event interrupt codes and IRQ
 domain ops
Message-ID: <20230921150814.GA330660@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230916-rescuer-enroll-dd4fb1320676@spud>

On Sat, Sep 16, 2023 at 01:11:29AM +0100, Conor Dooley wrote:
> On Fri, Sep 15, 2023 at 06:22:32PM +0800, Minda Chen wrote:
> > For PolarFire implements non-PLDA local interrupt events, most of
> > event interrupt process codes can not be re-used. PLDA implements
> > new codes and IRQ domain ops like PolarFire.
> > 
> > plda_get_events() adds a new IRQ num to event num mapping codes for
> > PLDA local event except DMA engine interrupt events. The DMA engine
> > interrupt events are implemented by vendors.
> > 
> > Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> 
> Perhaps not important as they will go away in the next patch, but for
> this patch the riscv patchwork stuff noticed:
> drivers/pci/controller/plda/pcie-plda-host.c:114:36: warning: unused variable 'plda_evt_dom_ops' [-Wunused-const-variable]
> drivers/pci/controller/plda/pcie-plda-host.c:118:36: warning: unused variable 'plda_event_ops' [-Wunused-const-variable]

Details like this *are* important because fixing them makes the
individual patches more readable, thanks for noticing!

Bjorn

