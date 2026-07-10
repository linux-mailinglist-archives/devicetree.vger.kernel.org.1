Return-Path: <devicetree+bounces-324679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7pzVBU9sUWpeEgMAu9opvQ
	(envelope-from <devicetree+bounces-324679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 00:03:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCA173F518
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 00:03:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BHyLjZuX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324679-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324679-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C341A3001C7D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10843CFF69;
	Fri, 10 Jul 2026 21:59:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6703CD8C9;
	Fri, 10 Jul 2026 21:59:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783720782; cv=none; b=oMIwD4jTpg82jTQX6jmPhhhuS/yZW5DteI8Tw+EyBRMBK0mXG7x66C1fmaZSCU4WrMs+hYjxi0a9/DTAik1X4RzIwN9Cuneq6IEE+E2CrppFEZNWNSE5EnZqs/hYcVgkWvW2Is6bR+xe+7JdWwU8WfWIZtBdIAxHoysalKuo/Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783720782; c=relaxed/simple;
	bh=6ujVF5te4dCh1T4C+32iOUf/i/tceGag1rb3IxcopC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X4K6QBpvZKFrCjgUmMN1gH8KVeaQEFPb7xYM76dpDNcD3cTRW60clpFzJS8Me4XVyuYGRQzUJT2daR4r8mJfIE11vmT8kKMkVCWYiXcJY54frxHmNMtxvhLhQcgugnSIAkG4RivkwT2k0LeI+0KNkRehCGm3oqFqjhhKxt9bsbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHyLjZuX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 155F61F000E9;
	Fri, 10 Jul 2026 21:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783720781;
	bh=M5cI+rouNpvS1ba2pRKwEZ+ui+wpl9yHzfFSTu9Pa7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BHyLjZuXOZqkwMBBdp5YFp9sMKVU7KZsn4VVIeZw1Scj2P5UIBAnF4nTMVAazqPWb
	 Kpme0uM+Bt6LubHBvykt4TvyhuvrrJzm8TseUXEKUZpjqXXf11ET8h/rArDIxjiyeM
	 T/d7d6a2pGD0mfmPd2wBp2C40MTaIxHvp97HaLV0ttKBrNlzp5l06WJkSx/Ji7hkuD
	 hqPiw7AaXl3i9aJSZp+N9ki52oJftxlqyoCZOQLdlp4Hhj393X0IbjiaR/S7NIbrRk
	 dBrU/5bYNngT+wq9GJclXn8YyCRFQhA6qdkOU2u8AOtu+ChvUzgSrscLiPvOGWsOTf
	 HcR/Zu0jBxm0A==
Date: Fri, 10 Jul 2026 16:59:40 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, chunkuang.hu@kernel.org, kernel@collabora.com,
	dri-devel@lists.freedesktop.org, mripard@kernel.org,
	p.zabel@pengutronix.de, justin.yeh@mediatek.com,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	jitao.shi@mediatek.com, maarten.lankhorst@linux.intel.com,
	jason-jh.lin@mediatek.com, simona@ffwll.ch, matthias.bgg@gmail.com,
	airlied@gmail.com, linux-mediatek@lists.infradead.org,
	tzimmermann@suse.de
Subject: Re: [PATCH 01/10] dt-bindings: display: mediatek: dsc: Add MT8196
 compatible
Message-ID: <178372078005.1413006.12439017339220224450.robh@kernel.org>
References: <20260701121950.19454-1-angelogioacchino.delregno@collabora.com>
 <20260701121950.19454-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701121950.19454-2-angelogioacchino.delregno@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324679-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:chunkuang.hu@kernel.org,m:kernel@collabora.com,m:dri-devel@lists.freedesktop.org,m:mripard@kernel.org,m:p.zabel@pengutronix.de,m:justin.yeh@mediatek.com,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:jitao.shi@mediatek.com,m:maarten.lankhorst@linux.intel.com,m:jason-jh.lin@mediatek.com,m:simona@ffwll.ch,m:matthias.bgg@gmail.com,m:airlied@gmail.com,m:linux-mediatek@lists.infradead.org,m:tzimmermann@suse.de,m:conor@kernel.org,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,lists.freedesktop.org,pengutronix.de,mediatek.com,vger.kernel.org,lists.infradead.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FCA173F518


On Wed, 01 Jul 2026 14:19:41 +0200, AngeloGioacchino Del Regno wrote:
> Add compatible for the Display Stream Compression (DSC) IP found
> in the display controller of the MT8196 SoC.
> 
> This IP is compatible with the one found in MT8195.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsc.yaml    | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


