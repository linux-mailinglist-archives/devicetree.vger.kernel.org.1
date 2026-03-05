Return-Path: <devicetree+bounces-271414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ON0ZF2M+qWnK3QAAu9opvQ
	(envelope-from <devicetree+bounces-271414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:27:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F4620D6DF
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59005300D972
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F19C536681F;
	Thu,  5 Mar 2026 08:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaQ36wdX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC7F30C35C;
	Thu,  5 Mar 2026 08:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699227; cv=none; b=bPv/rXVLLdNMTwXn1IjwNLpWRDe1Qh+w5dCOaHlch5W9e7UfYycPv+AcCB74xAZIDP+xAoKRyy6F3LY0nmy89r3bIh/hYwyI0FPPEKQgePca/UASfBQwNqvdbRd+7J4wSgKAtHH1ERISa1159j/2FjwG9SpLHAp17RDYg0Sj4ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699227; c=relaxed/simple;
	bh=A05QtUqhcS2Bq8q0WVUQ/YHtuUYveSKDtR50Qqa1If8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aKbOsM4Rshb1mp7qbaiGKOhpATDs4fRNhDupd6cjUevamABAOgUFz/vSOiVlsZGrvthW9wfJDQCHduPgrtIATQ9lNOxMMhOKPwgytN7kVyUpgysbylkwqawdujePCEtF2YnuY/Gc0ft9O3t5hw0ELb41D+Amw01XX/pTwfHmwtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaQ36wdX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18761C116C6;
	Thu,  5 Mar 2026 08:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699227;
	bh=A05QtUqhcS2Bq8q0WVUQ/YHtuUYveSKDtR50Qqa1If8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZaQ36wdXD2N4N6cd0udiKvDdAgebDVHyP9Llku295/+WBMGtnxVh+jvJhGm+LhZCP
	 4sLJLNkJn1SrKZaJSYPnaF0JYwauw8BoBfm/09sypjY8GOk0sIwxt34voR7p1vM4hu
	 ynBaxj3Fl1GOoK/JrUKlYp8gxHMS8urguyVqjE7zDvlUZo3s2kvOI8+m0BRAg5y9HE
	 aBKDP9ftAv+OTXmHRWeC1xAEuDmV8MUXuftbQhn83UpALT45i9laWGf0yTcguQ7pvB
	 FjA3mIqJVnandYLDR7EqjrAOumYGUH5GD5axV561pd/iqwy7rrK/n6ygzrdnAlyX3s
	 wm9YJBwxZ8Fmw==
Date: Thu, 5 Mar 2026 09:27:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akari Tsuyukusa <akkun11.open@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sean.wang@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet
 8/10
Message-ID: <20260305-fair-jasper-barracuda-5ae1e6@quoll>
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-2-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260304192417.818211-2-akkun11.open@gmail.com>
X-Rspamd-Queue-Id: 05F4620D6DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 04:24:16AM +0900, Akari Tsuyukusa wrote:
> Add the "lenovo,blade" compatible string for the Lenovo YOGA Tablet 8/10
> family and add compatible strings for each board
> (B6000-F, B6000-H, B8000-F, B8000-H).
> 
> These tablets are based on the "blade" platform, featuring 1GB of RAM
> and powered by MediaTek MT8125 or MT8389 SoCs. Since these SoCs are
> tablet-oriented variants of the MT6589, they are grouped under the
> "mediatek,mt6589" compatible string.
> 
> Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 382d0eb4d0af..69dbe389515c 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -44,6 +44,11 @@ properties:
>        - items:
>            - enum:
>                - fairphone,fp1
> +              - lenovo,b6000-f
> +              - lenovo,b6000-h
> +              - lenovo,b8000-f
> +              - lenovo,b8000-h

I don't see users of few of these. Also, explain in commit msg
differences between 'f' and 'h'.

Best regards,
Krzysztof


