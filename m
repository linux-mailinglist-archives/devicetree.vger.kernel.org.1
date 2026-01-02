Return-Path: <devicetree+bounces-251110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CFDCEEC96
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D2E3300CA2A
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3CC2221290;
	Fri,  2 Jan 2026 14:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6XwfdPv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00C421FF48
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 14:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767365015; cv=none; b=PkEw/lAKl30IuUaF3EDG0HUX6hBdQcjxXU+AxdwvDC3BndNmfV+ACPCqDWaBIzOg9Cl2zN/4Ce1c8bt/xFHwlQa7q0C8BT0RVnEyzWS9VRJKAVtcjXftg/oami2uBv7C6kgmpDzZebpYYLA1/4i13PY5qLRIU0e0baBy2zCBbos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767365015; c=relaxed/simple;
	bh=0Df0SE8dgCkt3UZVXXK8qLY/Fji0JTvOS7Cm6KxuTP0=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=rEUib2RP7LRm1CVLQewjC+hbWM9PE74sNFB6pUMJBnSOPrzPh4Eo84bfzY7y3HrfFQb49HMrDgoxO7wmzCv9mGGbp8DLvXr7MPr0FSfSWhm+He/1HKb1bUpHTYLBiouB3Voo6GsWLykTRISF7anPACFtJXrTPbZiGZHsCWwQdg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6XwfdPv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D406C116B1;
	Fri,  2 Jan 2026 14:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365015;
	bh=0Df0SE8dgCkt3UZVXXK8qLY/Fji0JTvOS7Cm6KxuTP0=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=j6XwfdPvYusFqQJYWmtSc+sIl1PgjyDXKoTZsEFOL63JI66uhz/QsN2fD9KsbK84j
	 DdSRedWHQU4eQdUEbjROQu2HEhlX7UtxUssxBAjaXYVG51CqGQaot+scXbC+YnUvmj
	 o5PlnWWJEYex8cxwrnRzeps4PTqPPA14poWOuvjDmAmpEwl6GY9MRPke/2CFn3sB5r
	 QOdWhbLyw83s7K9jLY6RIn8AKob2qE97e1cSTlz/29fsDfUGLOky7BvKvcpDNMT2F/
	 msNHDTUkN3yF/Kn681Eu4TK0iuV0zo757gZ05upkBklv6ixP0bSlwCRSqj8HhPZIvb
	 IZp9z2KyW0KZA==
From: Rob Herring <robh@kernel.org>
Date: Fri, 02 Jan 2026 08:43:33 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alvin Sun <sk.alvin.x@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
To: Ke Sun <sunke@kylinos.cn>
In-Reply-To: <20260101083415.1327341-1-sunke@kylinos.cn>
References: <20260101083415.1327341-1-sunke@kylinos.cn>
Message-Id: <176736452757.3671448.8519494279051899382.robh@kernel.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add USB Type-C support for
 Radxa ZERO 3W


On Thu, 01 Jan 2026 16:34:15 +0800, Ke Sun wrote:
> Add vbus_typec regulator and fusb302 Type-C controller configuration
> for Radxa ZERO 3W board.
> 
> Link: https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
> Signed-off-by: Ke Sun <sunke@kylinos.cn>
> ---
>  .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 10 +++++++++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     | 22 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/next-20251219 (exact match)
 Base: tags/next-20251219 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20260101083415.1327341-1-sunke@kylinos.cn:

arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: fusb302@22 (fcs,fusb302): 'sel-gpios' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml
arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: fusb302@22 (fcs,fusb302): 'connector' is a required property
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml






