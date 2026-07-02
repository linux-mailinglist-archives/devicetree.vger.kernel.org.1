Return-Path: <devicetree+bounces-319112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R0d9EYQZRmoCKAsAu9opvQ
	(envelope-from <devicetree+bounces-319112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:55:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F1D6F4793
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:55:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=env7wj8w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319112-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319112-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF44C304DCC8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C8639A046;
	Thu,  2 Jul 2026 07:53:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E353D25BC;
	Thu,  2 Jul 2026 07:53:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978789; cv=none; b=U9z1TcwUR0xwA2dtLRqylGhURim1CLEPQmNQ9sGXX8JPIf9FTd5YzcF0Irz8qCpSVNnfh8XG2iWLZzo/N0YJq4x42JRESnRf7T7zhJ40GaJC4pE0Kj0EnUEha6MZjio2gFg3Cy2Tp1fR8z6jS31jw16mi9I/ytK+o7DPCbcPIdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978789; c=relaxed/simple;
	bh=kPiLD/aUU2ibwDq1nGygpZK++jH7zoJ5h5OMxXyHE3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GxsWjGi1fVjn8ZG6sQ7gDz2AQs3Lq+Slggt8kYp/f0d7d281/9SNgb+/QGQZzsoLY+AMkIStTKWfVusTIe2DBUq9k99vJJMC+w6z2rQ+ZtBxpV/5AVylrnlRNQf2Gul9uTQSB6Am78mc3//1EU1c1J+heBZccXL+ivqrUGN7cWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=env7wj8w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A267B1F000E9;
	Thu,  2 Jul 2026 07:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978779;
	bh=RggIXQChyrd9PGRMbf+vMro4+L7wE747ABQYOAEiDL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=env7wj8wcJfIuCtiqo2vta7nC186527y80FragjdAc/RxQ5ScaDRP4J4T3DllIWsE
	 y/oCXXrMyyA10nC8qPxYSwd9jLj272kw1s9l2jnzrnuCSuw9xezvcyfbUTosfMLlrt
	 S0RLngLUyu20SuO6o4/xwJ1cmZzVnqkogmrOauVjic58rC30njyzut0demB8x2BXFK
	 J1t65ElN9x8747Pzzi0vsBEeTaC/dP3bearigkZWFXVZ/G1n9vct3IIDoW5etiX7B6
	 sS1h3pACCRoAzYaNqxDHEiq5ouMcX7h+rD6WjrFR+K2TVYP+60La/bQVogr1LPx8bX
	 uucpi7VH4ZLIw==
Date: Thu, 2 Jul 2026 09:52:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, matthias.bgg@gmail.com, 
	andi.shyti@kernel.org, djakov@kernel.org, broonie@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, justin.yeh@mediatek.com, 
	jason-jh.lin@mediatek.com, kernel@collabora.com
Subject: Re: [PATCH 1/6] dt-bindings: soc: mediatek: mutex: Improve title and
 description
Message-ID: <20260702-congenial-honest-platypus-39d90a@quoll>
References: <20260701122043.19612-1-angelogioacchino.delregno@collabora.com>
 <20260701122043.19612-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260701122043.19612-2-angelogioacchino.delregno@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:matthias.bgg@gmail.com,m:andi.shyti@kernel.org,m:djakov@kernel.org,m:broonie@kernel.org,m:jitao.shi@mediatek.com,m:ck.hu@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319112-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,foss.st.com,mediatek.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com,collabora.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,collabora.com:email,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3F1D6F4793

On Wed, Jul 01, 2026 at 02:20:38PM +0200, AngeloGioacchino Del Regno wrote:
> Improve both the title and the description of this hardware to
> disambiguate its functionality from a hardware mutex and/or from
> a hwspinlock.
> 
> Though in datasheets this is called "DISP_MUTEX", the meaning is
> is "Mute-X" (where "X" means "any hardware trigger signal") really
> as this is what this piece of hardware does: muting or unmuting of
> signals in each sub-IP of the display or other multimedia related
> controllers.
> 
> Based on that, also clarify the description text, as to make sure
> that the information is actually accurate.
> 
> While at it, also avoid forcing literal blocks in the description
> as there is nothing in there needing that (no ascii graph or other
> stuff that needs a literal block anyway), and add myself in the
> list of maintainers.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/soc/mediatek/mediatek,mutex.yaml   | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


