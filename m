Return-Path: <devicetree+bounces-6174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 930F37BA1FC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 29AD3B20982
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1112F30CEC;
	Thu,  5 Oct 2023 15:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiJ+wlMd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D982E631
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:09:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05CB8C433C8;
	Thu,  5 Oct 2023 15:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696518566;
	bh=iNyEx2zeDMXkeQyU4awTbQcL0VPkyps5O1RkC0hGxbU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ZiJ+wlMd1w869Ss57XCSrFiDzl4klzzAILM6NCGcP2K14xdV8sAtdXMhWDBw8F3l2
	 Nlf8zz08KWaS8girGZi8Bb1cysX2NT6d+b7hRh1VtxMzWcds4BKjn2JfQhoGgClYic
	 euI0FcofZ3IvtAtH5MIaFtwbDd0SGUsqTyJkpTEGLDqnGY+rwcdYXLfk85hOV4sJl4
	 pMzJ3+tR0Pa5urbend+pcDbtoZg9sPWWnQd7TmbJA6ot3pCrdrRXYPp1XGu5mv8QoB
	 zc0GcsoiYqeCoViEJSFEaRhnj2DeYv/DCwqwNUwwlZmsP2KPr0VYP91TXLCYrds3lR
	 TX0b4n3q/sfiQ==
Date: Thu, 5 Oct 2023 10:09:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v23 14/16] PCI: dwc: rcar-gen4: Add endpoint mode support
Message-ID: <20231005150924.GA746687@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926122431.3974714-15-yoshihiro.shimoda.uh@renesas.com>

On Tue, Sep 26, 2023 at 09:24:29PM +0900, Yoshihiro Shimoda wrote:
> Add R-Car Gen4 PCIe controller for endpoint mode. This controller is based
> on Synopsys DesignWare PCIe.

> +/* Endpoind mode */

Endpoint

Bjorn

