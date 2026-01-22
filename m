Return-Path: <devicetree+bounces-258565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CHLLClccmn5iwAAu9opvQ
	(envelope-from <devicetree+bounces-258565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:19:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FA66B116
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF181307C3D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92C64344DBD;
	Thu, 22 Jan 2026 16:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilcr6s08"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460A733BBA3;
	Thu, 22 Jan 2026 16:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769100370; cv=none; b=T3v0l6NbjEyOw9uk9dSVlKcjRCnPCTHO/qr5QLKPVS5RoEYl7bLYa6ZjwdMbaT2jlsmDPa5o7Unea+MxiMiKIcOfcD+I/7Ur4XsNTmWuqFOyyiq7eYbbYXKop4L7yCjF6BXFoq/shrcFJWuQgD5bQYgVqcHetqXZLMLBN7VJlFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769100370; c=relaxed/simple;
	bh=uPmc3PZ3Z09O12bVNITp9Iv/l+6xdUK6dBV30LVmlvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUCgv7m8YOuGcFnW8MC31ke/8xYQpqKxUbkM7NHRuJ3ID7Tzbb8m2p8dpIP67BO2Cl4soq4zaA0+Z56NY3NA+iNQDZyKLVqiYyey4P1UC6Ckkdgc0SUmuTN84NvYMiCaVhAMOqKLl6rMxL8AN/mCVavl4Nkcwk2DU9ZV/CbGYCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilcr6s08; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B899C19422;
	Thu, 22 Jan 2026 16:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769100369;
	bh=uPmc3PZ3Z09O12bVNITp9Iv/l+6xdUK6dBV30LVmlvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ilcr6s08HPute2XfdseF2UWovLayU+6lOFa1F0pOPNz/pJcyfLKkN+jo/3D06WajM
	 zTEOiJwfliH9sltRoev9dGW5fPyKP5UXHzi6T3B/RSN/kbActZHvbQpxSeXJ1Id/3m
	 xuo/vJBoHL9wTDi+1qPgIWt3uUZtGoAf0SNHRDZNt84ZctGS7O/N6ZJyTLA3Q/R2Az
	 DzhbjMXftmvmb5/aXTGyPhPmx0NfFLcY5diMD5HHXmISKBXjgXCsYMxPuh8fNiMOJx
	 STPrcsHjorejznDLHUHS+kWHwFwH29ZpKygScfiHyf09mQS/uguaczXbWQinDPenqq
	 KyKh+qMvLJs4w==
Date: Thu, 22 Jan 2026 10:46:08 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alexander Dahl <ada@thorsis.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Ryan Wanner <ryan.wanner@microchip.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH v3 02/19] dt-bindings: clock: at91: Split up per SoC
 partially
Message-ID: <176910036733.2542290.7853965507867142412.robh@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-3-ada@thorsis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120143759.904013-3-ada@thorsis.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258565-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F1FA66B116
X-Rspamd-Action: no action


On Tue, 20 Jan 2026 15:37:23 +0100, Alexander Dahl wrote:
> Before adding even more new indexes creating more holes in the
> clk at91 drivers pmc_data->chws arrays, split this up.
> 
> This is a partial split up only for some of the old PMC definitions.
> 
> Binding splitup was proposed for several reasons:
> 
> 1) keep the driver code simple, readable, and efficient
> 2) avoid accidental array index duplication
> 3) avoid memory waste by creating more and more unused array members.
> 
> Old values are kept to not break dts, and to maintain dt ABI.
> 
> Link: https://lore.kernel.org/linux-devicetree/20250207-jailbird-circus-bcc04ee90e05@thorsis.com/T/#u
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>     v3:
>     - full splitup for all at91 family SoCs instead of just a few
> 
>     v2:
>     - new patch, not present in v1
> 
>  .../reset/atmel,at91sam9260-reset.yaml        |  3 ++-
>  .../dt-bindings/clock/atmel,at91rm9200-pmc.h  | 15 ++++++++++++
>  .../dt-bindings/clock/atmel,at91sam9260-pmc.h | 16 +++++++++++++
>  .../dt-bindings/clock/atmel,at91sam9g45-pmc.h | 15 ++++++++++++
>  .../dt-bindings/clock/atmel,at91sam9n12-pmc.h | 15 ++++++++++++
>  .../dt-bindings/clock/atmel,at91sam9rl-pmc.h  | 15 ++++++++++++
>  .../dt-bindings/clock/atmel,at91sam9x5-pmc.h  | 15 ++++++++++++
>  include/dt-bindings/clock/atmel,sama5d2-pmc.h | 20 ++++++++++++++++
>  include/dt-bindings/clock/atmel,sama5d3-pmc.h | 14 +++++++++++
>  include/dt-bindings/clock/atmel,sama5d4-pmc.h | 15 ++++++++++++
>  .../dt-bindings/clock/microchip,sam9x60-pmc.h | 15 ++++++++++++
>  .../dt-bindings/clock/microchip,sam9x7-pmc.h  | 19 +++++++++++++++
>  .../clock/microchip,sama7d65-pmc.h            | 24 +++++++++++++++++++
>  .../dt-bindings/clock/microchip,sama7g5-pmc.h | 19 +++++++++++++++
>  14 files changed, 219 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/clock/atmel,at91rm9200-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,at91sam9260-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,at91sam9g45-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,at91sam9n12-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,at91sam9rl-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,at91sam9x5-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,sama5d2-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,sama5d3-pmc.h
>  create mode 100644 include/dt-bindings/clock/atmel,sama5d4-pmc.h
>  create mode 100644 include/dt-bindings/clock/microchip,sam9x60-pmc.h
>  create mode 100644 include/dt-bindings/clock/microchip,sam9x7-pmc.h
>  create mode 100644 include/dt-bindings/clock/microchip,sama7d65-pmc.h
>  create mode 100644 include/dt-bindings/clock/microchip,sama7g5-pmc.h
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


