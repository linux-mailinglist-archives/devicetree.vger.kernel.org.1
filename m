Return-Path: <devicetree+bounces-1354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA727A5FCF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98C611C20CA4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F8C15A6;
	Tue, 19 Sep 2023 10:39:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3623538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:39:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 047E5C433C7;
	Tue, 19 Sep 2023 10:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695119975;
	bh=SwqyI2ls96i9WI3cBqA2P5LPEhg4f7G0zB8SlzqGeIY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=M6/glViXEI0+uahqefPKtfBxf3k+xxHCLC0zD0xdWY92IhO8dm5JWri6CUHKTMR42
	 4NMUTVBbuXVsAw3uMuNgpjAlN7Y46LpGiCTXux+fMBH9NqTi+L7prY3MrjKWXJ5MdU
	 OV4RtZa6tNOh4FEgDvNi1ihUB6adSJOWVmKbKeTo2EHk+QJL8eAnZQqo41F5rXaH0o
	 nl0cw5B2CUw7a/dHNqzCD5Tkb5oZ0aHvMltve1XTAGDeSWhSQuqpU1WjXW9rvMziGZ
	 WcKrXoeUr8SGZGs37v/p09Z8LCVdCY8Pk6pVKyFVw84pMzcXjpK/mbhVtFM9/iv5Bj
	 LoCQLqouqSk+g==
Date: Tue, 19 Sep 2023 05:39:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"kw@linux.com" <kw@linux.com>,
	"manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
	"fancer.lancer@gmail.com" <fancer.lancer@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v20 04/19] PCI: designware-ep: Add INTx IRQs support
Message-ID: <20230919103933.GA226055@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TYBPR01MB5341FBF030A8A4F35CA74B62D8FAA@TYBPR01MB5341.jpnprd01.prod.outlook.com>

On Tue, Sep 19, 2023 at 07:22:48AM +0000, Yoshihiro Shimoda wrote:
> > From: Bjorn Helgaas, Sent: Saturday, September 16, 2023 6:24 AM
> > On Thu, Sep 14, 2023 at 07:56:21AM +0000, Yoshihiro Shimoda wrote:
> > ...

> > > The following patches are not needed if INTx support should be dropped:
> > >
> > > eb185e1e628a PCI: designware-ep: Add INTx IRQs support
> > > 5d0e51f85b23 PCI: dwc: Add outbound MSG TLPs support
> > > 4758bef61cc2 PCI: dwc: Change arguments of dw_pcie_prog_outbound_atu()
> > > 44938b13046b PCI: Add INTx Mechanism Messages macros
> > 
> > Since INTx support isn't mandatory at this time, I think we should
> > drop these patches for now.  If/when somebody definitely needs INTx
> > support, we can resurrect them, and then we'll have more clarity on
> > how it should work and we'll be better able to test it.
> 
> I got it.
> 
> In this case, should I submit the patch series as v21?

I think it will be simpler if you post a v21 that includes squashing
the R-Car drivers together as well as dropping these INTx patches.

Bjorn

