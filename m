Return-Path: <devicetree+bounces-250393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E38C1CE8CE0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 07:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A56C73010CC8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 06:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DE22F7443;
	Tue, 30 Dec 2025 06:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRtzhNdw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A988E2DAFB9;
	Tue, 30 Dec 2025 06:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077065; cv=none; b=UR/hhD7COz4omY9iYjc/1UqTxjnh+FsUkdVl5IxT/hCz7zwU5EEciH4PSPsKtN3UFnMmy5X9gxlbkYIcQPFheWn9Gqbn3zp6NyO3bNhqSCFKWeFU2v/rDBK6w0aW2kIpg/rJjxjMhmelSaBUaQ87Y1K2T8m870YsXohAO1Kx6QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077065; c=relaxed/simple;
	bh=YlfPbEKg4BgLwA9wZVE5FZ36J95JQk+NQTRFLrwjbec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m4wU4AGwb3aagRa4Z/j3diBMezStGZuv2njZN67d8Ub2jnbGHYc/stozu9VTCGY+Sr5fVUfzpjOPw7BIJl/ZrvAFQvU49pF8dztOvLbNqoXBAtoMiX3kYdCfRAo8oNvDe1e+RXkcCD8ImJ5zuz0vu1hzJZSDpEiMBj3lI+2cQg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRtzhNdw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D38DC4CEFB;
	Tue, 30 Dec 2025 06:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767077065;
	bh=YlfPbEKg4BgLwA9wZVE5FZ36J95JQk+NQTRFLrwjbec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DRtzhNdwNn2JvTvxkHRgk2vBgWSgo70FYttSJPgwKbs7YOhFmKenm/NujH1xUN1Pl
	 ipNOA2MVvMprPMRwOqJ8Xig4Ba+JV4L3ucclU9Fovt+U8AM9dSuJzL6KKRQUiFa2WN
	 ft0RQzsM1aay6UnDJ2M68a4acba5PizHo/eEmblS/HJlvwjumKXjZxamhTfU4IS/E0
	 alGHUYKCyrkpW7iKsJGrtIs/3aaeEBFFLZj6f/1/qO9YQGFecII5o2WeCwFd/CIWHo
	 1rnZ3PwfAksupWYacMwHRFvWwoRgaVFSK5AUGdpkYi9B4jM0YTAt/WnvW9yhapOT4I
	 K4lTRDzqsHVeQ==
Date: Tue, 30 Dec 2025 14:44:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: fsl,imx-gpc: Document
 address-cells
Message-ID: <aVN0wfPKqE-iyYOg@dragon>
References: <20251212085902.103507-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212085902.103507-1-alexander.stein@ew.tq-group.com>

On Fri, Dec 12, 2025 at 09:58:59AM +0100, Alexander Stein wrote:
> The GPC power controller is an interrupt controllers and can be referenced
> in interrupt-map properties, e.g. PCIe controller, thus the node should
> have address-cells property.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!

