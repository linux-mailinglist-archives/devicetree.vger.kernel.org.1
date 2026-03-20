Return-Path: <devicetree+bounces-278180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G39HS4avWnG6QIAu9opvQ
	(envelope-from <devicetree+bounces-278180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:58:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5D2D85E9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74C2C300DEFA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A454937FF78;
	Fri, 20 Mar 2026 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FydBJHmk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AE42D8DCA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774000683; cv=none; b=k6mflGs/10HLZSuviC+wEpjkWtiaXu9WcI+If+7qNPh7qiURRO4FACmCMQPfcz9mnMxrsnvuc+8cknn4WCABvpW28hxfMvpCxkVsBkvbBnHYQi2QQ24xGsbk6VQqKq+eQVl6NZHpBku9Y/Wdlf+TK9DHE4gAuPSk6R1UC1/ilRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774000683; c=relaxed/simple;
	bh=1L6FaKlWVqiVcdwohVdMMFyon261Cjq3lHr3YKwAZ/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N4PScabWazjJmm8RAZhJwU76GTnJRwH1iDNERp/maARWYlD0/o0ev/ceY0rNp3Rjd0j8FlQ0lmHOO504fKZSyWkQ7wF4tN7m/+e9MwprgETGhL07iHb3dssvmBYc3jrN17EPGJp4eAEoojmL4GR9A8wUPxgRYa/IUTtdI47vUH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FydBJHmk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA7F9C2BC9E;
	Fri, 20 Mar 2026 09:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774000683;
	bh=1L6FaKlWVqiVcdwohVdMMFyon261Cjq3lHr3YKwAZ/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FydBJHmkSOyYupNDmtQB1BqgwWfzi1oX8dSy8M5+py3QkaPDF3iIssauFFK5acpKL
	 oJbh8JFgKWtY0jFtu2B1rfeeSK6flXe9qW53YYw7FgwhSabtGnOozhdWNpo9krtQ5z
	 qbrNfwY4zrGO/MDfvKADE/KWKAWrRpJJklGJcK/KpqKqMsmaAd9XeM7TClcIcXd3K/
	 F7kFnzPAK0Se/DXpD7YMHMPRwQ+tW8Zc+JkYUFYgQq4E3hgznc7EKuiVfBLepBGaRF
	 Fig1NLeD2M28Gtz//3wyMvPpnMtVC6HA65YjLFXieLL/pcMKqeSFG4dV2sBXhtLc2p
	 8cbB4R3yUxsIg==
Date: Fri, 20 Mar 2026 10:58:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] regulator: dt-bindings: mt6359: Add regulator
 supplies
Message-ID: <20260320-masked-saffron-rottweiler-44b5ee@quoll>
References: <20260320072440.2403318-1-wenst@chromium.org>
 <20260320072440.2403318-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320072440.2403318-4-wenst@chromium.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278180-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.943];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,chromium.org:email]
X-Rspamd-Queue-Id: 10B5D2D85E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 03:24:36PM +0800, Chen-Yu Tsai wrote:
> On the MT6359 each buck regulator has a separate supply. LDOs are split
> into 4 groups with independent supplies. There is also a supply for the
> buck regulator control logic.
> 
> Add descriptions for all of them.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  .../bindings/regulator/mt6359-regulator.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


