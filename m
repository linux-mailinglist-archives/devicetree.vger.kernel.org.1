Return-Path: <devicetree+bounces-295064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI0PJH9hAGo1IAEAu9opvQ
	(envelope-from <devicetree+bounces-295064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:44:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B721503A3B
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:44:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9894C300C93C
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C27368942;
	Sun, 10 May 2026 10:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Neavf/7w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33852EE262;
	Sun, 10 May 2026 10:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778409849; cv=none; b=LdPp4V6j4Dq+iKqkyUraUT3W0Cb1V/lDiVwZgqKS4ndMIcpbvxUDAVY8dPaSsb5uttqpg1mXK9YCf7/PVkOkghWkxKvaZiqBjCZkMRL6YGdiBlQHzECvevGiLgw3NFzJb26faJR7fuYJb6vhqYMi/GD/Y3jmUinH3I8iOa5CS1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778409849; c=relaxed/simple;
	bh=xNiK7MIv6vju5B1sy4IAoMXDD3cGJRPMQPKQthwEF14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VweJGfgSLcUtHRjKmgWG1HdVCz20r0hWLCn96p2XFxLkfhCu1zdWZJcl8fRQfBV/bPlkR13KliprxS6LknoMt+b+eZUYDcMeStlxtnz2bB0sKD3e7+WX/g9swnP6FQt0V36tP5puVsdEOHv0nD+zFJ3KcxvriEz3WwiovvZ0hAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Neavf/7w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D820C2BCB8;
	Sun, 10 May 2026 10:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778409848;
	bh=xNiK7MIv6vju5B1sy4IAoMXDD3cGJRPMQPKQthwEF14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Neavf/7wK2DCR2B6tAVILu/VehimNaESaNkCvEbXI5Z5+4Ht9zcJ7RlKJx8e+zr0J
	 NOO4Nbw9/k9ZKR6RrUU7GDt2CI6u8jWssCRsZjEs1zExMtIWwLbJjntkzXp7WmNSXj
	 zJdLkKuCv4QtRa8IizrsfzX9XZ9tI/lRiQJmOQ3HIscsLqowyxSpO7sV6bUEK1V7oR
	 VafMNrcEmGapFLd/PI4z7dvZ5Z/f9U/skiPLz9VGOevYjyRqNJWtmlv/h4FAe0kLan
	 sE5C6QKrSZLOEaz4P7WZDpeRN4jXgJXx9Snf4j4GRf0vOoXqW3lt04uU5UUsDn7YK+
	 ZlicU5XLpo3eA==
Date: Sun, 10 May 2026 16:14:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Ze Huang <huang.ze@linux.dev>, Alex Elder <elder@riscstar.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Message-ID: <agBhdKE7yPPgtvNc@vaman>
References: <20260430022843.1090138-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430022843.1090138-1-inochiama@gmail.com>
X-Rspamd-Queue-Id: 9B721503A3B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295064-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,linux.dev,riscstar.com,lists.infradead.org,vger.kernel.org,lists.linux.dev,gentoo.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 30-04-26, 10:28, Inochi Amaoto wrote:
> The PCIe/USB comb phy on K3 is a big phy that contains multiple
> standalone phys for each PCIe and USB controllers. This phy is
> required to configure a syscon device for mux configuration and
> calibration.

Please check https://sashiko.dev/#/patchset/20260430022843.1090138-1-inochiama%40gmail.com

> 
> Inochi Amaoto (2):
>   dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
>   phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3
> 
>  .../bindings/phy/spacemit,k3-comb-phy.yaml    |  63 +++
>  drivers/phy/spacemit/Kconfig                  |  16 +
>  drivers/phy/spacemit/Makefile                 |   2 +
>  drivers/phy/spacemit/phy-k3-combphy.c         | 250 +++++++++++
>  drivers/phy/spacemit/phy-k3-common.c          | 398 ++++++++++++++++++
>  drivers/phy/spacemit/phy-k3-common.h          |  27 ++
>  6 files changed, 756 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-comb-phy.yaml
>  create mode 100644 drivers/phy/spacemit/phy-k3-combphy.c
>  create mode 100644 drivers/phy/spacemit/phy-k3-common.c
>  create mode 100644 drivers/phy/spacemit/phy-k3-common.h
> 
> --
> 2.54.0

-- 
~Vinod

