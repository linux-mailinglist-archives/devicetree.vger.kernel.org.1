Return-Path: <devicetree+bounces-278159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLyAD2IUvWnG6QIAu9opvQ
	(envelope-from <devicetree+bounces-278159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:33:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BED4E2D8147
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F34C33009F39
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5774F3803DC;
	Fri, 20 Mar 2026 09:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEOhjXMF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ADC36D4E4
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773999144; cv=none; b=K5+InF6Ou95N+2ou/WBpn5nwQkIhr1Z+p6WXNlEwr0eOJjSGb/2CMkek3U8dDmRzdIWQ+64jOEpZ6pwsbscw5XR/DL+/bmZoTgE+Rbd/TgGfl1YwKX6D6gUNaLg0MJ7E88hIn5rDWZaul4dZAHIHKnqXaR374dM3VYHIATXYgZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773999144; c=relaxed/simple;
	bh=VUjusfcWNiioomQAMpt7H/sMIh5fMEuv5eVS+PwYWq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r3sR6alTh/xAkqHARDb2K0UL/xr34ccdNFoUq7ceuR6hvydF5dDAfjdoPPleiJztHMCPcUFhEcdiuhsd7FTFLC85Y8N+J4BMvyTND0oJxCyT7b2j5pwjkinMaIy4zJX47xyYtVGQmbUfr37wOqJo2SARwYz+90IVr3fRr/4xvbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEOhjXMF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49D63C2BCAF;
	Fri, 20 Mar 2026 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773999142;
	bh=VUjusfcWNiioomQAMpt7H/sMIh5fMEuv5eVS+PwYWq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gEOhjXMFIf3NChhI6op7n7IJf161dj7gEQyIVIByBCzBOc5B8gMj6GUrRCNkqKPXP
	 OeS8S4cvr+rpFtXSEDrBDL1JeAjT2SJ9QEVyHmGze0VTBYJVvC/i2l5Ri6gXoaLDVt
	 EsQCPr1hnkpP/0LIH9WM5eQoqid52bCzzcpcxUuF8unIVJEBrqtn052N6yxALFWtZn
	 6r6SLoxsq0LHZLEoNK8j+jpNX53Qqpn7HAyfdnMP3LLNaITUugc0kgfcXCs+dDyPK5
	 01m1EWaDKJXX+9zqa3bknfLdpnoNTXlRSDL0fnoSVKyl+HbSV0u6gxHiTbtr8318BG
	 7HYozUeS8ByOg==
Date: Fri, 20 Mar 2026 10:32:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] regulator: dt-bindings: mt6359: Drop regulator-name
 pattern restrictions
Message-ID: <20260320-fresh-sloth-of-chemistry-ec938f@quoll>
References: <20260320072440.2403318-1-wenst@chromium.org>
 <20260320072440.2403318-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320072440.2403318-2-wenst@chromium.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278159-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BED4E2D8147
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 03:24:34PM +0800, Chen-Yu Tsai wrote:
>    "^ldo_v(aud|io|aux|rf|m)18$":
>      type: object
>      $ref: regulator.yaml#
> -
> -    properties:
> -      regulator-name:
> -        pattern: "^v(aud|io|aux|rf|m)18$"
> -
>      unevaluatedProperties: false
>  
>    "^ldo_vsim[12]$":

With this, the contents of all of the patternProperties is the same, so
you could as well combine few of them into 2-3 groups to make it smaller.

But I am fine with this as is.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


