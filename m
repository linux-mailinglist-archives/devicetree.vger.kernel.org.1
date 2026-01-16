Return-Path: <devicetree+bounces-255828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 055C0D2A0F8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:22:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D82B630181A7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A2625487B;
	Fri, 16 Jan 2026 02:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA9GmcYw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1456F156237;
	Fri, 16 Jan 2026 02:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529999; cv=none; b=o58pS9YWeXwPMpqgIKXPvglRP3gI4IRhem5pdiRMZTjNL51zblFN/YgvQmJMcJv29c/bI32jja69Gs85LAWfn9O5zgEbwTxK1T8zV0BhQj/V4UhE5wp8p29UWDJRFX2S6ULzIkpMxrMTLBvwwxQDFfW663/SlwFa3cYpTNonUZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529999; c=relaxed/simple;
	bh=GCzrQ0j+1QSvMXWCusyN/aVUAD5+b87qrzjsqnsLW9U=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=ZQuWaDtH9HGrAgRuIImnv7dBw5Q30PyNgO7G5fbnBx4tItNNAMs8uEfVTGoPB/803xIP8lMfaOMBSYMbrW0yEXC9g45Yi5JmQTi0qI3pCOHNwU47OEDMo1/cK4Rw9z+7rxbMdc6C3aah3Lrkijm3hks9XOs04NR48RYHpiINXiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA9GmcYw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FFD5C116D0;
	Fri, 16 Jan 2026 02:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529998;
	bh=GCzrQ0j+1QSvMXWCusyN/aVUAD5+b87qrzjsqnsLW9U=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=XA9GmcYwKmthDROkg5o4SXiniwfdMDVdKRqX0dpVVlOhLQGKb/R1hiPaFU0QEYqgl
	 sCHA/R7QRkZKRN5RRswx5y5MX9BEBFtVuZdifgDPgHSKrIsBjQHd+u+EgxaO/vZEZ4
	 5hr8lOg7XojqmZQCWtmnV4vWnXNm6ft5jm00yPi/dzNf4RogLHWi+7znAzz5XWaMXG
	 +vO1buEH1rqgQjJqolyIXJBHUFycnNZiOuwf0CsGD1/0mehSRAm9fV6GtdK+ZEMTAy
	 G7vdRjFAffWxy2JsSGwlelruZLJYbVcIizBZGnH4pShN/0cq1B9Z0JquHlZ+4QlI8e
	 il8AKQbNwbxoQ==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251024083247.25814-1-angelogioacchino.delregno@collabora.com>
References: <20251024083247.25814-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v4 0/5] SPMI: MediaTek: Add support for multi-bus
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, hsin-hsiung.wang@mediatek.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Date: Thu, 15 Jan 2026 20:19:56 -0600
Message-ID: <176852999687.16445.9363555790881114587@lazor>
User-Agent: alot/0.11

Quoting AngeloGioacchino Del Regno (2025-10-24 03:32:42)
> Changes in v4:
>  - Refactored IRQ domain handling due to deprecation of function
>    irq_domain_add_tree() to use the new irq_domain_create_tree()
>  - Added .irq_eoi() callback for rcs_irq as that better reflects
>    the actual functionality of this interrupt controller (as its
>    SLV_x_y_EINT registers are really signaling "EOI", not "ACK")
>  - Fixed to use generic_handle_domain_irq_safe() to avoid races
>  - Tested again on MT8196 Chromebook
>=20
> Changes in v3:
>  - Added Fixes tag to commit 3, collected R-b tag from wenst
>=20
> Changes in v2:
>  - Fixed indentation error in dt-bindings
>=20
> This series adds basic support for multi-bus (multi-master) SPMI
> controllers, as found in the MediaTek MT8196 Chromebook SoC and
> the MediaTek MT6991 Dimensity 9400 Smartphone SoC, including RCS
> interrupt handling and per-bus registration.
>=20

Applied to spmi-next

