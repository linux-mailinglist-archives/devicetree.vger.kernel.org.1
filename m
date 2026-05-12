Return-Path: <devicetree+bounces-296486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DAyH5OTA2qP7gEAu9opvQ
	(envelope-from <devicetree+bounces-296486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:54:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F2529AB1
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 22:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3967309D228
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 20:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84BCD3C456F;
	Tue, 12 May 2026 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIVKwyYU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5F23C455F;
	Tue, 12 May 2026 20:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778618963; cv=none; b=TK6BZx5A4r0DhN/+BSEB8Du/VwYH4g2s00uvYvjEQN+PQqenJVceTKInBSCS699QAPw2ivOTgoDx8zxZCVUXSEc+T45Xd71/KHaMXKQ9sr+xV43hokfxTa4GaZddkbJrjy7JIwyh7/HTH/JjMlAEnnjDbey7jSHZDASFrcGGj20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778618963; c=relaxed/simple;
	bh=Bsaba6cOOKAoevFP1YvtcQQXzCFKua3YglRCWZiBOH4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=UZZorNOZQxf9thWwfpYbPRMuytPtCwqBghE4IdWfC1VVqjSxPGAjM6tB5BEAslZw/LhVgpVQuvjuBsNo1wkDjAv3rBAiXukJeqpUBBqONQnbz3UDjfss2slswK8uw9xWGQiczYKPUy/ef+jAtv3jCSFmqDepPbkzOND+vgyo4wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIVKwyYU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9F4C2BCB0;
	Tue, 12 May 2026 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778618962;
	bh=Bsaba6cOOKAoevFP1YvtcQQXzCFKua3YglRCWZiBOH4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=EIVKwyYUeKStH0p8h6Kv+oxqRW3HlLx0BQVzDLdKi0EipSK70N/ihdRGraaDNhULQ
	 73HhT9LM9lJR91XU7rviSh2qiZg+EYjQoXqDBuT+kpbACF4AtVmqEH7pzo0GryawHB
	 rNBbr99Nm2uS+r1uKoncytXpZ8xlz+qmEoqtMpAtaSBLVg0XR9LSjZR8IrAwu1gjQ5
	 fdzRQ/GJMpTUsj+Muw0weWumlyS5Tx4CJ/Ow+AQk6F0FgDq5f49VXaiit0g8PKPXeV
	 K5sCUro9n41Optm9rvYGiwyLkkB4fXy4lepFg44CJr53pu8NaOjBK+WLmlBSi5qHfb
	 1IGg25QHuX2sw==
Date: Tue, 12 May 2026 15:49:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Florian Eckert <fe@dev.tdt.de>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Sajid Dalvi <sdalvi@google.com>,
	Ajay Agarwal <ajayagarwal@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
Subject: Re: [PATCH v5 5/7] PCI: intel-gw: Add start_link callback function
Message-ID: <20260512204921.GA243550@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260417-pcie-intel-gw-v5-5-0a2b933fe04f@dev.tdt.de>
X-Rspamd-Queue-Id: 032F2529AB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296486-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,vger.kernel.org,googlemail.com,dev.tdt.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,linaro,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, Apr 17, 2026 at 10:35:49AM +0200, Florian Eckert wrote:
> The pcie-intel-gw driver has no start_link callback function. This commit
> adds the missing callback function so that the driver works again and does
> not abort with the following error messages during probing.
> 
> [    2.512015] intel-gw-pcie d1000000.pcie: host bridge /soc/pcie@d1000000 ranges:
> [    2.517868] intel-gw-pcie d1000000.pcie:      MEM 0x00dc000000..0x00ddffffff -> 0x00dc000000
> [    2.528450] intel-combo-phy d0c00000.combo-phy: Set combo mode: combophy[1]: mode: PCIe single lane mode
> [    2.551619] intel-gw-pcie d1000000.pcie: No outbound iATU found
> [    2.556060] intel-gw-pcie d1000000.pcie: Cannot initialize host
> [    2.561901] intel-gw-pcie d1000000.pcie: probe with driver intel-gw-pcie failed with error -22
> [    2.571041] intel-gw-pcie c1100000.pcie: host bridge /soc/pcie@c1100000 ranges:
> [    2.577736] intel-gw-pcie c1100000.pcie:      MEM 0x00ce000000..0x00cfffffff -> 0x00ce000000
> [    2.588299] intel-combo-phy c0c00000.combo-phy: Set combo mode: combophy[3]: mode: PCIe single lane mode
> [    2.611471] intel-gw-pcie c1100000.pcie: No outbound iATU found
> [    2.615934] intel-gw-pcie c1100000.pcie: Cannot initialize host
> [    2.621759] intel-gw-pcie c1100000.pcie: probe with driver intel-gw-pcie failed with error -22
> 
> Fixes: c5097b9869a1 ("Revert "PCI: dwc: Wait for link up only if link is started"")
> Fixes: da56a1bfbab5 ("PCI: dwc: Wait for link up only if link is started")

This applied already; I just want to understand this better for
writing the merge commit log.

da56a1bfbab5 and c5097b9869a1 date from v6.5 in 2023.  I guess this
driver has been completely broken since then and nobody noticed?

Thanks for fixing this up.  I assume that means there is somebody
actually using this driver, even though nobody cares quite enough to
maintain it?

