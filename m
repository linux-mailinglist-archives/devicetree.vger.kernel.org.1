Return-Path: <devicetree+bounces-280439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHUqC3jUw2lwuQQAu9opvQ
	(envelope-from <devicetree+bounces-280439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:26:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81585324D9F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 13:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 198FB31F6A96
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204E13CF693;
	Wed, 25 Mar 2026 11:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFQdlKrg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A1C3CF672;
	Wed, 25 Mar 2026 11:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774439150; cv=none; b=dm7olOnCmVutCOoeiUIXTTsLXBbD4GZeV160+zMpln1pr8nizsRQ+wM4biHDcMCHq78UxmjB/vqMEJtoy9aUII3wU4Q321c4DXZcCQxT9EzZL7a5NsUDfUGfyrE9BSG0+IDX7KIKE9d4C8wZH2xV1aSL7FubGNU/cvXTX3MpX2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774439150; c=relaxed/simple;
	bh=mLc1KzNKSJhv+RREA8bTvjLUxDDu8WkwkOtqELZ4RFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YiVo88M7M/AoA6Eh9005sZMxV8eGlGvBCPnXD3B7POxJzOp+RkLNHHnHMxChatgEgYrgS5WW75U5jpz8nM+ZmVAOawQnIT0ugUNQ19nCEOifgehz7f0fSm0xucwYG3oH4jLUYbMEk3P/Rzh6OAtVopVsLM1zGL9K1yVFiMypu3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFQdlKrg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D4ABC4CEF7;
	Wed, 25 Mar 2026 11:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774439149;
	bh=mLc1KzNKSJhv+RREA8bTvjLUxDDu8WkwkOtqELZ4RFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sFQdlKrgLhG6g84BnNQrLcUHrijuQemWmuklg/O1TaCFXK1DKJu9oOmjRmwhO3Q+q
	 en7mDMIogOjBX0+ckfY0t0bB1mGFlGkCzY3GAvqxhLYkZR7EhhuZ3dcRNHHTqv4VlF
	 tJwwMSDUFxUWEpHhBij/hRs/rpBTdnjqRt7R5e8F8mB38UNuGFoiwEBZ4Wy3ACmPHw
	 mZ695SP2Pjui0SSfsUsN5jQR6KEGbO2IYTQdBc/Ptk/Nrl+cL/i646XXmMQIWg6Hkl
	 KXkC+J1SX9bMmLKFE2xJSBn8iaxTRpo6RYZQPJ/t9VI0UVuwpekkRfii+28UQ8nh2G
	 GMgkwnV1jikdw==
Date: Wed, 25 Mar 2026 12:45:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Meiker Gao <ot_meiker.gao@mediatek.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Bayi Cheng <bayi.cheng@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, sirius.wang@mediatek.com, vince-wl.liu@mediatek.com, 
	jh.hsu@mediatek.com, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: spi: Fix clock-names definition
Message-ID: <20260325-vagabond-magnificent-polecat-624596@quoll>
References: <20260325031900.2099969-1-ot_meiker.gao@mediatek.com>
 <20260325031900.2099969-2-ot_meiker.gao@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325031900.2099969-2-ot_meiker.gao@mediatek.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280439-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81585324D9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 11:18:54AM +0800, Meiker Gao wrote:
> Update the device tree binding for the Mediatek.

That's too vague. Everything is update. Say WHY.

Anyway, you ignored multiple feedbacks, was spamming us with multiple
same postings and still did not improve. There is no versioning here, no
changelog, even subject is using incorrect prefixes.

Read submitting patches and other guidelines before you post, because
you are way past the point of making innocent mistakes and this looks
like wasting our time.

NAK

Best regards,
Krzysztof


