Return-Path: <devicetree+bounces-255214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2564D2139B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED6AE3008763
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 20:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0059A3570AD;
	Wed, 14 Jan 2026 20:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHZi+wqG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17143559FC;
	Wed, 14 Jan 2026 20:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768423980; cv=none; b=N6kAfqQwA/YknpMsFhSNwMJa+XI4svjLnkHQCKh22aOYumhuG2BINQNrUcSMNKYEnY6+iNSr7w7flldtJoEALarVE9mhXu54hqqChNJzOBIzN6jwCnbsRAmpacWyqadtYqVlbFj/s13tAAfD3RSViOIjbgLDRHFVA1+Z6ZClDgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768423980; c=relaxed/simple;
	bh=Gnjj25st9QGTCaY33pJBX4f4Rfu3Pop9v+b0tj9YmY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rMGmYKY6J6dIwQ1Dkxf0NZC3Pjguej0XO3FS/0vXLn/CaxihMr0qCNOV0Nsm6PZSzvuzFZsYygvtIOePL1ayZvt8+1kcSUpyN1qUGCzW/C24Jf3RcotYo1UvMuHgEaGSqznV5XkjnGumioX5FPI03vVjyavk8YWHLhhQ4SqvO5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHZi+wqG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13EF3C4CEF7;
	Wed, 14 Jan 2026 20:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768423980;
	bh=Gnjj25st9QGTCaY33pJBX4f4Rfu3Pop9v+b0tj9YmY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IHZi+wqGbmzSAE6BWp8XSIyCMb8IN67048oNU0Ay9YPcF003ZnzIvNBGNV/nBVIyh
	 NDUyn8/YrOxa3OmZ+ncBTZs4dzj+y4f1O1QDc43+e8MbBhf+IhfMgrdgxaoyn2rZGI
	 vqhp8iIobT8u7vEaa/rQTsSg7FlHldztTZuqxQ1qndMZTSJ9W0ZEt8AFDEzes/sZ30
	 ze9b+DX+7W73Eapr0LWbR9f+hBp6CEt5pB+z1HrCmErrW+32v3kOpKKGTsAPqayP1K
	 GmI00eP5GjFEv9fgYc4SyRR9nRBcBd13wtySiPA7lRJF4R5cCI63L3lAGHnBLOGjK8
	 cKfhMgVgAa+bA==
Date: Wed, 14 Jan 2026 14:52:59 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-kernel@vger.kernel.org, Robert Foss <rfoss@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
	dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v2] dt-bindings: display: bridge: ldb: Add check for reg
 and reg-names
Message-ID: <176842397781.3190593.16218482428701977852.robh@kernel.org>
References: <20260106012236.295834-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106012236.295834-1-marek.vasut@mailbox.org>


On Tue, 06 Jan 2026 02:22:20 +0100, Marek Vasut wrote:
> Make "reg" property mandatory for all LDB devices and "reg-names"
> mandatory for i.MX8MP and i.MX93 which have two "reg" values. The
> i.MX6SX has only one "reg" value so the "reg-names" property there
> is optional and not needed.
> 
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> ---
> V2: Include only reg-names in the required: field for non-MX6SX
> ---
>  .../devicetree/bindings/display/bridge/fsl,ldb.yaml    | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Applied, thanks!


