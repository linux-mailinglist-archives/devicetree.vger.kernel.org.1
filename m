Return-Path: <devicetree+bounces-270216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHcuH2TwpWlLHwAAu9opvQ
	(envelope-from <devicetree+bounces-270216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 21:17:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC21E1DF3A7
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 21:17:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E28F0302332C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 20:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDD6377020;
	Mon,  2 Mar 2026 20:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="9lVX8Zya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FECE24634F;
	Mon,  2 Mar 2026 20:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772482657; cv=none; b=twVqCcXfMrsvwCGCeNWM817RmuXAO0kXsUoeEAGypRFZxP5UPExbM07R8bJ8qnsEe7kGUqV4+ZU5lVVcrAo5jDhc8Lf+nHxXzg9YjQl8bxe/d7lul3pq31eHI0qlSRmZNL1h5tJp2pYX6JNLkQAouteTGYcUcdoBU7BKfR/UkD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772482657; c=relaxed/simple;
	bh=Izhfx7NCscbbDkD/cKpFpegVES/+oPeLbYegJaqUVJw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qS4PgdagtLqYW8gcMR0dC/Jg4rRyzjPJgPE2pK4m0EnreEUTifDthB7NC8A8U9pLGSt8KQlSiB9zAISVRAB90M5E3uzeij7iieu/oTdbpgljwc5DLPWxkFywrgwso6U68KK1KP7KY3L8VASaDvb0BzspopZuEYRB8wrTi05xg0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=9lVX8Zya; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=C3kxPJEt4cJ8y1NMNMWFluFd1GagR7mhGNBFIBB9s88=; b=9lVX8ZyaYVe0yqHdn7z1QKTNbc
	1Il4c7rJn9R+9hGcDJipPGwCgFD6qCu+Pjv0SCZ6NG3hKWK/7fL40CY4TwEH6Ufg/IaQ9LzUzmvjO
	+dx+3Gk275QOV3+8XPNZBw4Q+l8VZaLn97q25fL0xkDjYfOe0FJ2fk4/t6kTXb1mjmXXk2ZcC9wxT
	pwRgND9gSKApUjpltQ2DVcRDMVBlVkDFsMY5IiCkyphwY19CDGymRSxl1cqdnXEETpAhZ8x2bSCH/
	FdkJ59XF0wlgvtoRbUPKj7JbZfEUtmhsxl3a2kWBEdXbrU38HraJ3C1kn1SWouIKp6PZdgtZjs8TY
	XjlXt2PQ==;
Date: Mon, 2 Mar 2026 21:16:13 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mithil Bavishi <bavishimithil@gmail.com>
Cc: aaro.koskinen@iki.fi, airlied@gmail.com, conor+dt@kernel.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, khilman@baylibre.com,
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 jesszhan0024@gmail.com, rfoss@kernel.org, robh@kernel.org,
 rogerq@kernel.org, simona@ffwll.ch, thierry.reding@gmail.com,
 tony@atomide.com, tzimmermann@suse.de, andrzej.hajda@intel.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v8 3/8] dt-bindings: display: bridge: lvds-codec: add
 doestek,dtc34lm85am
Message-ID: <20260302211613.3d272218@kemnade.info>
In-Reply-To: <20260223134941.427-4-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
	<20260223134941.427-4-bavishimithil@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: EC21E1DF3A7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270216-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kemnade.info:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com,vger.kernel.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,kemnade.info:dkim,kemnade.info:mid]
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 08:49:35 -0500
Mithil Bavishi <bavishimithil@gmail.com> wrote:

> Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
> Transmitter
> 
> Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
does not apply anymore. Trivial rebase is needed.

Regards,
Andreas

