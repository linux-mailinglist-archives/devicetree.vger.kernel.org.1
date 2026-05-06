Return-Path: <devicetree+bounces-293424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG7LM3f6+mnjUwMAu9opvQ
	(envelope-from <devicetree+bounces-293424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 10:23:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB634D7CBE
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 10:23:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 148DA3024FCE
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 08:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D4B3E3C66;
	Wed,  6 May 2026 08:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdFCZ/Wg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE08175A7B;
	Wed,  6 May 2026 08:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778055790; cv=none; b=Bp5UKNXml03390a/on4CCahaGlMZRiCTyC7Jh6jDNAkdHDJAGOm1/frdSIZyRRZTwAGsMgEseALsOM66LUGgVnVpuPEObqmZQwx7cANV/RKxQGZjJBQMc5cvYwYojKjxq814oILUBgVMdhagkFTB/M7ENLIr7Sp4YPzeI9Xf+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778055790; c=relaxed/simple;
	bh=2jEHqptD+qreSU/37Qicd0rNf1deow+eu2W5GdY5rk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UAKyZA8x1MiCij/ZoEqza32V3TRy477IxTGdb+4ytuXQ6iOtX67uv9Z/oiPVuJZiFmuqKc4O2lO8OD7AyoGR9VV+G/GEilP5yTvd54n38p8SezfxIwzSzybIu6EgdS1MYJev0b3OgKsVExxnlHia7+xqykveomvJzOMjXtUr83Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdFCZ/Wg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5AFCC2BCB8;
	Wed,  6 May 2026 08:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778055790;
	bh=2jEHqptD+qreSU/37Qicd0rNf1deow+eu2W5GdY5rk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IdFCZ/Wg5p41hFpFXmRl5ongMb94g0DD1kDBcLKQVMbucJXPFB/iDU1h2dcVs1COq
	 IClD23BDN7ejUQpjO5HA+DtMM0gVe/ZnIpgfhnPtJ8nnaKi+T0r94AVbMy5ponddPA
	 QkKcbwZ1P2e8m0UXlZSjLToqOU76wH9QnJKVUrXhtUVSQDYeUtwR3qIKZfNOq2zXwb
	 mjn1zG9vORpefObj43j5qa2dddVgac0TvOtbNc2s6EmEh8p4w5qvuy8LZCdn4rJ/q+
	 qpXM4TpGF+gUjFqYkYB6g2ut6dthI1QwgVgHmxlgIVqNcNhXxWcz0YTYXW5RG0daSm
	 khZRCdP2yypxg==
Date: Wed, 6 May 2026 10:23:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Nitin Rawat <nitin.rawat@oss.qualcomm.com>, Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>, 
	Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: Re: [PATCH V1] dt-bindings: mmc: sdhci-msm: Document the Shikra
 compatible
Message-ID: <20260506-arrogant-warthog-of-holiness-84ceea@quoll>
References: <20260504071334.1061325-1-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260504071334.1061325-1-monish.chunara@oss.qualcomm.com>
X-Rspamd-Queue-Id: 7AB634D7CBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293424-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

On Mon, May 04, 2026 at 12:43:34PM +0530, Monish Chunara wrote:
> Add the MSM SDHCI compatible name to support both eMMC and SD card for
> Shikra, which uses 'shikra' as the fallback SoC.

How shikra can use shikra fallback?

> 
> The SDHCI controller on Shikra is based on MSM SDHCI v5 IP. Hence,
> document the compatible with "qcom,sdhci-msm-v5" as the fallback.

And here you repeat or state something contradictory. So shikra or
sdhci-msm-v5?

This should be just one paragraph where you state the device and its
compatibility with any other devices or interfaces.

Best regards,
Krzysztof


