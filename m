Return-Path: <devicetree+bounces-266031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Nd5KeUulGnQAQIAu9opvQ
	(envelope-from <devicetree+bounces-266031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:03:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B63114A299
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE8A9300C319
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D30C2EAB8E;
	Tue, 17 Feb 2026 09:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="CtfYHGR2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D7C2F0C70;
	Tue, 17 Feb 2026 09:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771319012; cv=none; b=DmhEPjamCmU/EQclvuHw3X6QJOYBHfIWlvv7dE4CdcoVkteFp7uY4R3dZwniIJ5hdrjAoiLIUokbGWovJKrMhWYNwccstp44xPEhq8+8DuXVEeKn+o8sWCzfNnCoQ+dvKZE7+gsOanmhaXp+xcYPKIVqGg1z0gcndzu4LWGP/X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771319012; c=relaxed/simple;
	bh=9GbJRlEzOKhvUfPYVZkq7x2pTPJxlFsurchmoJs+GK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PsmpqLzY9HtsDlthe2TR/YPwnYzKXHjM5BxnqycScQxtQgif7awrwITiHfsMYoNxZzw/dYI6h9oZi0aMDzFX24kejB+XINfaCFqmy/VBgpY2giXcMFvGj5nLMXZ52eTbG6lbAJNawGgTIRWSPvcXFiB7PyTsRapYyWUrEhYMCdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=CtfYHGR2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771319008;
	bh=9GbJRlEzOKhvUfPYVZkq7x2pTPJxlFsurchmoJs+GK4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CtfYHGR2qb6+VbmtAWTPsiAJVFmA0YWByKmTGWIgnyD7Gr1gBMN2y/7VQg2FJHKYj
	 SSEPSuC2goNPL+OBycqn7GTaBjGkWc6e9RRUo6zIiy5EXHHCZWf9z2zvuZuC8OipRa
	 9v8sgckzmoMj0cSVLVheSHYY+qj1qhxVTkd37GJirm06XMd5TRPaJy9OzHWF3gWP32
	 GcvC7wYo72tXDlePRa4lJZWYeUspU+ZGT9rV7kloqL1h59Bb5gXI1axSuLKG0GKV04
	 IwM8VMAiR/Ynm9rtP8lWKYok+PVG6V6jhEGGhzu5G9BQncbySjGW5b0i+H16X4pncK
	 wp7T3YvEscqVQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E9D3717E0C21;
	Tue, 17 Feb 2026 10:03:27 +0100 (CET)
Message-ID: <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
Date: Tue, 17 Feb 2026 10:03:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217-stereotyped-dazzling-loon-f06e18@quoll>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260217-stereotyped-dazzling-loon-f06e18@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266031-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 4B63114A299
X-Rspamd-Action: no action

Il 17/02/26 08:58, Krzysztof Kozlowski ha scritto:
> On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
>> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
>> describe it as compatible with mt2701 instead. It is safe to do so because:
> 
> You are not doing what you wrote. The dedicated mediatek,mt8167-dsi is
> still there.
 >
> And if you want to describe mediatek,mt8167-dsi with OTHER
> compatible (mt2701), it is a NAK. It is wrong and not allowed by writing
> bindings doc.

Sorry, that was my apparently very-bad advice - and I recognize that, as a
maintainer, I should have given different advices.

Still, check below the (bad, and not enough) reasons why I said that....

> 
> You just added fallback, didn't you?
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.
> 
>>
>> - Bootloader doesn't rely on this single compatible; and
> 
> Does not matter. You still CANNOT remove a compatible. If bootloader
> starts to rely on this single compatible, you add it back? No.
> 

The issue here is that "mediatek,mt8167-dsi" was never used anywhere, and that
alone makes zero sense as it is - by hardware - identical to mt2701.

That, leaving alone the fact that nothing anywhere can make use of a node with
just `compatible = "mediatek,mt8167-dsi"`.

If it is not acceptable to remove something that was never used and should've never
been there "alone" without fallbacks, it's ok. I'm sure that avoiding to delete the
one line is not a big deal there.
Also remember that we are talking about an old SoC that will never see a bootchain
overhaul, nor will it see new bootloaders.

Though, just a small note - please please please: when we see new contributors,
especially when they're community ones, can we try and encourage them to do the
right things, and follow the right processes, without being harsh in any way?

And P.S.: Yeah I know you haven't been as harsh as you can (rightfully) be, so
thanks for that.

Luca, I'm sorry again, at this point - it would be great if you could please send
a v3 without the removal of that line. Just add the fallback and that's it :-)

>> - There was never any upstreamed devicetree using this single compatible; and
>> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
>>
>> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
>>
> 
> There is never a blank line between tags.

Yeah, agreed.

Cheers,
Angelo

> 
>> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
>> ---
>>   .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> Best regards,
> Krzysztof
> 


