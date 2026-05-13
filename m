Return-Path: <devicetree+bounces-297069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKtxOu/KBGp2OwIAu9opvQ
	(envelope-from <devicetree+bounces-297069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:03:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DAD539826
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:03:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D12BB3009080
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551F93AA1BD;
	Wed, 13 May 2026 19:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctcRFAXl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F9B3A9879;
	Wed, 13 May 2026 19:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778698988; cv=none; b=CtfZOSM/a6YwMI3t31A5YfIu5M9lLVV8j80ox2mbzlXriPCrYg/q82LS6pa/11IdCrqOVKJm9FY6n8Tc4erusEYjlQo9nykxmXUI1wJX1wP+1ZLkHkAgNvjEGlpSQzlZtwzV83L41E45NtYoIMxVxc0kA4fqtOnONqGQuCtc62Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778698988; c=relaxed/simple;
	bh=EFHyCV5Fzy8lGU/TCEK6Y6BJe4DrIl8NrL1B869ZVsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idR/96iMs3KBj+WHA5A8i6KzoESYA8j0yhup7QKiXGoia6xO1mraTU+I4QdtrB61zEVH4HlWERZIpUDib/0nSlRrPGKzfkhYZV4fWmetMUNNMCmIJVKL2K2LivdLcLl4Ik/KepgU5CRFz/ecB7pNAULUlux5OlkqLQFNqLqUfkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctcRFAXl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EAC4C2BCB7;
	Wed, 13 May 2026 19:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778698987;
	bh=EFHyCV5Fzy8lGU/TCEK6Y6BJe4DrIl8NrL1B869ZVsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ctcRFAXlqMutmFA6F/+gFzVfl4BL8HfCR1MZmVwUsvKfoeiFexzmU7e1ULgorBHya
	 vOLibPt5AAjx/H/IiEvnLBN4/MRP6qEXdju7mbASCoQG2VFpTzbQPodE9xSeO4Ibmi
	 OjSh0jm8fpxd27hlo7GYc/70GZoq4kHyvTQSvICc6OecO//a3aFKpRj0zRtuKUfltq
	 icI3GYe1TuVDTqSHtBAXEYbn5X8IqgboNkbpxwfBK6R/JVsIjQrK4mp/48wJ4KaC/e
	 nF4op8QaKdOdjN2NfAFFTEolmxUzGFTRbN76BNpSboJthpTYkOr/YllfGpNZtDD0bK
	 5OnkVEJXgJ2Ig==
Date: Wed, 13 May 2026 14:03:04 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] media: dt-bindings: mediatek: Constrain iommus
Message-ID: <20260513190304.GA1677938-robh@kernel.org>
References: <20250821065900.17430-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821065900.17430-2-krzysztof.kozlowski@linaro.org>
X-Rspamd-Queue-Id: 25DAD539826
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,microchip.com];
	TAGGED_FROM(0.00)[bounces-297069-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

On Thu, Aug 21, 2025 at 08:59:01AM +0200, Krzysztof Kozlowski wrote:
> Lists should have fixed constraints, because binding must be specific in
> respect to hardware.  Add missing constraints to number of iommus in
> Mediatek media devices and remove completely redundant and obvious
> description.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Ack
> 2. Mention dropping description
> ---
>  .../bindings/display/mediatek/mediatek,ovl-2l.yaml           | 5 ++---
>  .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml   | 5 ++---
>  .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml  | 4 +---
>  .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 4 +---
>  4 files changed, 6 insertions(+), 12 deletions(-)

Applied, thanks.

Rob

