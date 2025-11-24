Return-Path: <devicetree+bounces-241499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A891CC7F2C7
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 08:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 640743A5281
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 07:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4D62E7622;
	Mon, 24 Nov 2025 07:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9gguEOe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538D22D0C95;
	Mon, 24 Nov 2025 07:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763969295; cv=none; b=tjr8FXqzLzX99EUv/TXxvkIzwK9JC999emO22Rhbwb3tyIDIobnVUlqXMydrf13AaQI9/ET1n+/UfsKd17wc1YaJ/zmdNiLirZiubhotpLotnCCOcov7J+cWFmdLOHy92a2iN71LST0SyK+B+VvBWHpNgls2+T8daABUV94QZig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763969295; c=relaxed/simple;
	bh=ZDZIia8zrNrBXeTrtfnZ0ehnk5iZSLwJEC5c2kAwBrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pRa39LsL8gcwgqNlgrjlhJRyxOZVVx/M2dCFBoL4+Uk9tBpUbr9ZCM24XX8RHGHg8GTMVrYgeGg/qfa8bJy83HB4rBA7Pm+5H8zHd6hkKcaLNwyT9qXlC46isx5jNtx0CGLBM4EIhp3S8Y1HLhQlBkJv67QL35cRaPb8Ovr5gv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9gguEOe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44ABCC4CEF1;
	Mon, 24 Nov 2025 07:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763969292;
	bh=ZDZIia8zrNrBXeTrtfnZ0ehnk5iZSLwJEC5c2kAwBrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V9gguEOeakc89TYwr1m6aIV2G4rrfvAmLyNSOMYuVeFhpxuLtNv3/etnMRhbH9awI
	 rl3h+6nOyylz1Ni63gcSG4tZW5zaI1lZVfaZdeiwSvrGlcuTvkNCSU9mUZEGCA1SGI
	 2y13CJ7SwIvvB8UYf4qxNwyyCMAsgJxkc21FtNHsaFCozdjdYvdmV18plG73VghOgL
	 RHlE4mLvuL+RAMLvhjJhPYM7xBAHA/ZlKxN7DEr7c5CRBNJ03kFpKEFdB+sGH38HXV
	 xCHyr/Y83cOzrcrUlYZONa5h3ksgMF+FR44Weg4L5U2BwedomLfXEMN/71PcRKw2eY
	 GULryeY5BHq6Q==
Date: Mon, 24 Nov 2025 08:28:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Michael Zhu <michael.zhu@starfivetech.com>, Drew Fustini <drew@beagleboard.org>, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
Message-ID: <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251123225059.49665-2-e@freeshell.de>

On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based board.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: E Shattow <e@freeshell.de>

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

