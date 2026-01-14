Return-Path: <devicetree+bounces-255240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE71D21933
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB4BB3012DEC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C67B352C48;
	Wed, 14 Jan 2026 22:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1PGSpba"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58853242B0;
	Wed, 14 Jan 2026 22:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768429902; cv=none; b=SzAyNi1iwyO3NuQdYBIK8UxZIHVSBF6ENALGEYpSqnYIGphIFyAQvy3VhOj6o+DhsPSp1T3DxZDdGN/Z3xHuxWejWWi6Qz5ZDM1Sx1MrRh5OBQ3cS1xtz8axp6jlAPBk8KYoyMP9SxIjPr8wDXd6WHa+drh4prKoQ/0s2mJUUNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768429902; c=relaxed/simple;
	bh=dNBHdZnRQhYECqtJiX5GeDmBx5sB8buRFZzawq9ckvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O8MC0cmUMoAHzk1wddk5VwLuryiv9lAp3880zpoVMLEM0pENmIZrf8nrr3FRyDXhnvp7JS6XUcNfvXpDhtsk+HGzeDQmWQX5RoFY9S9ZfMiTIj9UykR0iioGPoxP126qAyzthwBZZTVmmHl6TH32XMSkWsseQ7WhvDidITZR6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1PGSpba; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4AFC4CEF7;
	Wed, 14 Jan 2026 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768429901;
	bh=dNBHdZnRQhYECqtJiX5GeDmBx5sB8buRFZzawq9ckvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C1PGSpbaumhquJg9KJB3mC0XR/FFNHh5HbwO/VHRg+sZ2SjCW8nMWz9AUwXD3+IMq
	 g79d4j3SMC3VF2c5LqCq76WZQhMP17Ln8OuuuWGsuUI4YmTC06YiHAWxRt5vvb0Sxt
	 iFOHLXwXvhEoyctSL83VMQCbJ1QRXgy5qqJedV4KEKVTUP0wj5oS8LZSOcE77LUMWF
	 fEMKLRF6W1uleyfY9ATe0Kf2lE9cgnfQOWpJSKiyJlqJJfCYYqTLxHcNlaYAf5aSmh
	 O0b1MvCxBRyK+ol6F5L75ECoLp3Jp6/vPAxF7R2ki9pcSCaiP1a1DETvoO99oDF7tG
	 I9SNmGkQujHOg==
Date: Wed, 14 Jan 2026 16:31:40 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org
Subject: Re: [PATCH v3 2/4] of: reserved_mem: Support multiple 'reg' entries
 for memory-region
Message-ID: <20260114223140.GA3306270-robh@kernel.org>
References: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
 <20260107-mtd-memregion-v3-2-f9fc9107b992@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-mtd-memregion-v3-2-f9fc9107b992@bootlin.com>

On Wed, Jan 07, 2026 at 02:04:53PM +0100, Gregory CLEMENT wrote:
> The Device Tree specification allows a "memory-region" node to have
> multiple 'reg' entries, but the current kernel implementation only
> processes the first entry. This can lead to drivers not being able to
> access all the reserved memory regions specified in the Device Tree.

This may be a case of we change the spec. Or at least say, nodes 
referenced by memory-region can only have 1 region. Are there some 
existing users needing this functionality?

Rob

