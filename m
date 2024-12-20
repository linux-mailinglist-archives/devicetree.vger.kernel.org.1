Return-Path: <devicetree+bounces-132964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D03C9F8D8E
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:03:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84BAF164063
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF7C192B65;
	Fri, 20 Dec 2024 08:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvRhos8J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFC517333D
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734681822; cv=none; b=hjjg54PhJ2eUMoruupJZA/MOcbH8ZR9UtSAOJ2O2RxqfOnR1uN3hBtkoVa8B+WgAYV3BU1MXgk4z58w7sIqOQhNkpLKHF/JG340VID/X5J9M+f7oI0pcuVH1vLjxxbxZq6i0Muv9O1CKrqgar1909SN9Jgx98IH7QZ0eiFXOVlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734681822; c=relaxed/simple;
	bh=mIEsjG6cGAMR/EZZn/eyKKGNtuOQBefQB9mVoFjFBOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fCy7qSTnQS48wvPU2JO1QO484GE2OBbuagmha8aWii508GjPWBHavB81H2r29VURNoLihTyuPreA9GBwZLWKMtXpkLIlnpFHFB4SXM/GSXi6X2fA/MkiYJQhbxIeCUuMtQ8wVUMqE4ZzLpK8k7aG9rt40N7wPx8xYdHG3opR1+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvRhos8J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0B7C4CECD;
	Fri, 20 Dec 2024 08:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734681820;
	bh=mIEsjG6cGAMR/EZZn/eyKKGNtuOQBefQB9mVoFjFBOE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DvRhos8Jst09ngqQVgSPOjY0UxkNn5FAUo09m/88T9klqMT9WVMJmBo0hfvS/E5O8
	 IkJbF1j8QfbL1rQ1sDHFKjLMGPO3+WqyXg3Z6WxyQGi+VKJ2328qesXWuI5D5exj8O
	 2bcNC1GNi0S1qG3JdR6a+LBQLaI6Bdv/48xVeKbQDQZ4LdehvX2jc9wn5t000zfz3K
	 snOlaceApMHKBCVCZwZ7CGDM0w3G/Lwp911sNUClmojqqcMzagRKB7cOjIWM8uJY7Y
	 TutnctkimaeGz980YnFleltc0bBoZQ1ETKdZeqU39wAvCa6paN8BIZXNSd2q+EnsQ8
	 xy3bXm+FgR+Wg==
Date: Fri, 20 Dec 2024 09:03:36 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-parent for
 pcie3x4_ep
Message-ID: <Z2Uk2A7-YwkSfAOh@ryzen>
References: <20241120171048.2839621-2-cassel@kernel.org>
 <173318214613.1403925.10026428339576666444.b4-ty@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173318214613.1403925.10026428339576666444.b4-ty@sntech.de>

On Tue, Dec 03, 2024 at 12:29:16AM +0100, Heiko Stuebner wrote:
> 
> On Wed, 20 Nov 2024 18:10:49 +0100, Niklas Cassel wrote:
> > Add msi-parent for the pcie3x4_ep PCI endpoint node.
> > 
> > The pcie3x4_ep node should use the same msi-parent as the pcie3x4 node
> > (which represents the PCIe controller running in Root Complex mode).
> > 
> > The GIC ITS can be used to trigger an IRQ on the endpoint when any of
> > the endpoint's PCI BARs are written to by the host[1].
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
>       commit: b6f09f497b07008aa65c31341138cecafa78222c
> 

Hello Heiko,

When I sent this patch, I had tested it against Frank's v8 series which adds
support for a PCIe endpoint triggering an interrupt (using GIC ITS) when the
host side writes to the PCI BAR that the endpoint has configured as doorbell:
https://lore.kernel.org/linux-pci/20241116-ep-msi-v8-0-6f1f68ffd1bb@nxp.com/


However, it seems that in v10 of his series, he has changed it so that the
PCIe endpoint node now requires 'msi-map' instead of 'msi-parent'
(just like how it is done in the PCIe root complex node):

See:
https://lore.kernel.org/linux-pci/20241204-ep-msi-v10-0-87c378dbcd6d@nxp.com/

"""
Changes in v10:

[...]

- Use "msi-map" in pci ep controler node, instead of of msi-parent. first
argument is
	(func_no << 8 | vfunc_no)
"""


I didn't realize that DT property required for this feature could change so
drastically, since DT is supposed to describe hardware, and msi-parent made
perfect sense, since this property is usually the one used for devices
connected to a bus.
(msi-map is usually only used on the host bus adapter / root complex.)

Knowing what I now know, I should have waited until this feature had landed
before submitting this patch. I apologize for this.

Could you please drop this patch from your v6.14-armsoc/dts64 branch?

Or should I send a revert?

Once Frank's series has landed, I can resubmit a patch that adds whichever
DT property he finally ends up using.


Kind regards,
Niklas

