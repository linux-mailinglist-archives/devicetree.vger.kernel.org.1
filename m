Return-Path: <devicetree+bounces-266007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOfkI8sflGl3AAIAu9opvQ
	(envelope-from <devicetree+bounces-266007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:59:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2FE1497B3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:59:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52905302C916
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C7C2D9EFF;
	Tue, 17 Feb 2026 07:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sbs2aSBb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2522D7392;
	Tue, 17 Feb 2026 07:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315103; cv=none; b=R9q/Qx5qr++/tVaEgumGzPbni0fLI8rK6MtkUQEpXqreUfEdipPFFjP+gDK5Q0YbFp0Z6PO+S6aZwFZQkkZHIl2U40EHsMNzISGgaqawyMNsBZA34SYDTVfo3tNUmPrAtvnAT8MW+cCrXJogSxF9uUxHxz+j7O57TUDo6ICR0f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315103; c=relaxed/simple;
	bh=9aqY/yhZWXO2CxYiklCZabTtP8Ya9dOUEw5jP19yryc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C6bG06VNa910w8sUEVcdJRQkdtOyHqzeEeNbdx9cLRdzFcWSI+h5B2rJisGnihdybiabMoDFc+PqvW0zpcfq4uSqA/hf1H9UZDq0kDift4/NekJspwbGiU1T4D7raIbQVSERpNNCwSxEnHa21Cl/g8SzFEPE/ssTdAdb8JOwSzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sbs2aSBb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17CC8C4CEF7;
	Tue, 17 Feb 2026 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771315102;
	bh=9aqY/yhZWXO2CxYiklCZabTtP8Ya9dOUEw5jP19yryc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sbs2aSBbKi7EeT2eYI44w0WYnYW6SAca4VY+PNyH9SmbHfWx17g5aQ/z1Ou1GSp76
	 mK5R5d99G5sCm2g+JJbcEexHljxznkMN63OE6FFnMejvbqamq6yq5XR2QFwxvs8vNJ
	 j3KNup3XsvNQxiCdwMGxzVd8C4PHnSqpeasZfNIh8qb0KGBBLYeeVDwnimfmS/B/jO
	 vgZtqb9YlRJ1L8VQ1vGk+QxsZIZYOVfb9KWel/w4+DHPfEBR33Brm20RU6ml7iwx/b
	 s7Qkb1RS2PSIjIGW3jtjK66ljqcJ28HzXyjDK0VdVHxCXbtWEhadUNckF7717fcGha
	 Zi//j4Cj9yZQg==
Date: Tue, 17 Feb 2026 08:58:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jitao Shi <jitao.shi@mediatek.com>, 
	Fabien Parent <fparent@baylibre.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
Message-ID: <20260217-stereotyped-dazzling-loon-f06e18@quoll>
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266007-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: EA2FE1497B3
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> describe it as compatible with mt2701 instead. It is safe to do so because:

You are not doing what you wrote. The dedicated mediatek,mt8167-dsi is
still there. And if you want to describe mediatek,mt8167-dsi with OTHER
compatible (mt2701), it is a NAK. It is wrong and not allowed by writing
bindings doc.

You just added fallback, didn't you?

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

> 
> - Bootloader doesn't rely on this single compatible; and

Does not matter. You still CANNOT remove a compatible. If bootloader
starts to rely on this single compatible, you add it back? No.

> - There was never any upstreamed devicetree using this single compatible; and
> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> 
> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
> 

There is never a blank line between tags.

> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Best regards,
Krzysztof


