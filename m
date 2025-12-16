Return-Path: <devicetree+bounces-246870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D30CC1117
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E01493056784
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 06:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A76B338597;
	Tue, 16 Dec 2025 06:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeDG3XLH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5FD3385A9;
	Tue, 16 Dec 2025 06:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765865138; cv=none; b=JE+A37URYNgUc1AEow7u2X5m8skgvreGtDU6RD4F8X3qZvnoQrrmTAy9y0qvySkwMFW+gR1uPS0usOq5pjJg3UJ6QsIPqeDh8fTmgYPKB/ywiHPXxeS6OemujlN3Pgngo6mzoBDnbT5ytpDaOO1EEV+8+naSoto/bXCQ9VPLvsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765865138; c=relaxed/simple;
	bh=V5gOKNwy2Cgs06XOGM36oTcpuMAd+KlFS0OFCz1ulMo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QjuRhiUKfKWv/D6I5HBbvcV2eprxjm6RKBshKiiTmAgSiTi2Fgw+JPfvXFk6qmd1CnZ0GUh4qSnJ0Gtxg5bcsi3j81VI7A8UcOOGZSpKu4br0pTM80dgtY5yhH5K61JWNk3DXfgXQCAxPgA0xV11gvNr5bgEkWRg4Mb+/qII29g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeDG3XLH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F6E8C4CEF1;
	Tue, 16 Dec 2025 06:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765865137;
	bh=V5gOKNwy2Cgs06XOGM36oTcpuMAd+KlFS0OFCz1ulMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MeDG3XLHn64TA6hrpx6tdbuiWFGkCN6yRJweXTk5ODGW8E7toAENXgOtGOLF/MjYC
	 IfjhOQPSuqSu3Tlkkuft7tNx75dF0zl37jVPDuFTpeBJ0b6EoG/CJaTTk0SOdIsYIs
	 PO10ZeKp/vyHAktK9gyZTDDTmvbwPrdmgS3fHY9LyiZh6yhdGIi/4ktYUn94Kxxle6
	 TkuD4VjDZlzZsdyYD5h/INqmf5hHchcYFSkdD/Z3BC/E3b3DLqSbASbVqC+E4DMwAf
	 MNHAhR0/cPVmrhJ4lxjHvp9Xzb1KWjcnc69te3nMIb7sfdzRKKizdj4iVB0Lc6BaGg
	 wTGWFK5QKBD2Q==
Date: Tue, 16 Dec 2025 07:05:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Michael Zhu <michael.zhu@starfivetech.com>, Drew Fustini <drew@beagleboard.org>, 
	Hal Feng <hal.feng@starfivetech.com>, Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: starfive: Append JH-7110 SoC
 compatible to VisionFive 2 Lite board
Message-ID: <20251216-rustling-remarkable-eel-c8bca9@quoll>
References: <20251212211934.135602-1-e@freeshell.de>
 <20251212211934.135602-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251212211934.135602-2-e@freeshell.de>

On Fri, Dec 12, 2025 at 01:19:18PM -0800, E Shattow wrote:
> Append "starfive,jh7110" compatible to VisionFive 2 Lite and VisionFive 2
> Lite eMMC boards in the least-compatible end of the list.
> 
> Appending "starfive,jh7110" reduces the number of compatible strings to
> check in the OpenSBI platform driver. JH-7110S SoC on these boards is the
> same as JH-7110 SoC however rated for thermal, voltage, and frequency
> characteristics for a maximum of 1.25GHz operation.
> 
> Link to previous discussion suggesting this change:
> https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Just use Link tag. That's what it is for.

> 
> Fixes: 7a1e15b248d6 ("dt-bindings: riscv: Add StarFive JH7110S SoC and VisionFive 2 Lite board")

You would need to describe the bug first. Optimizing your openSBI driver
is not a bug, so I don't see what is supposed to be fixed.

Best regards,
Krzysztof


