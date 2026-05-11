Return-Path: <devicetree+bounces-295431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNFJK5qlAWpDhQEAu9opvQ
	(envelope-from <devicetree+bounces-295431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:47:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BDB50B3AF
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4A14A3009095
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45623A5430;
	Mon, 11 May 2026 09:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwPjA9tV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C008D36C9CB;
	Mon, 11 May 2026 09:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778492821; cv=none; b=IPlt+I4rnohMOYn/ZEYuvDQ4zofasnA1aUu0aGyoyWBAtRrwnbwXto+AYWCKwHs3m1Vvi6OZAoZ+NmDPujK+gBfcdIPMYDeqPE9ecMXsvtjg3W/qL4bVeTljIcZayMoxEdSUoKKZO0TUPCH1yhx+6qUzAK6GeZj0mILfgFfGaZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778492821; c=relaxed/simple;
	bh=BNrk5xl69HBmuVU58US/4LQ9osluyk+emTVHe4tINHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SSpJP1dnN0OT2ibOgZbSkuR+23lzQL9lZE5N4ZDOTyAvGPIbNh3/tw/CHjSiTZvazOy3rymAz6jsPfjHJZohwRNounOsW2Z6DrtcCxCMraQC/XRh7CHi7I8Fm8FNrgQhj+1Ot2OblyWhEKIfg93q++6g/cllTzoNUp21AHJ/33g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwPjA9tV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99EADC2BCB0;
	Mon, 11 May 2026 09:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778492821;
	bh=BNrk5xl69HBmuVU58US/4LQ9osluyk+emTVHe4tINHo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KwPjA9tVszv+OUAwQN1ulEdIgTWu3AHXQt9h9NAuldKp+C3KvVbtbcnnAMSTOQwdf
	 69JkGOXvMgQT6hHSLdtLtABhu5bVFl7WM5I7prPR7p05hIVpBfA5RRS5cC5N5bA5gy
	 HHkZSP05haKe3vHuLp0BMX07E9u5dKURbtzoa2mA/J4qOgDDmLQH0uKFiE7wzavtLt
	 KOfyqOKcDx4HCf8CCM6w2sUHF8tX91fL4tRHYHiogvxn8POBnYMlDyIn5bhMc2J21N
	 HRSGf+W6Gnqi75SlaiU/m9x9GWtIVmJEgB2beZPbFQIX7gK5QmGWn+WRLCLFDkamzc
	 a8IFouTzyU8lw==
Message-ID: <556b78d3-f353-4f0b-993b-d4566f55a9b1@kernel.org>
Date: Mon, 11 May 2026 11:46:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] drm/mediatek: dsi: Add compatible for mt8167-dsi
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20260505214541.333657-1-l.scorcia@gmail.com>
 <20260505214541.333657-3-l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@kernel.org>
Content-Language: en-US
In-Reply-To: <20260505214541.333657-3-l.scorcia@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 54BDB50B3AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295431-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,pengutronix.de,ffwll.ch,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email]
X-Rspamd-Action: no action

On 5/5/26 23:45, Luca Leonardo Scorcia wrote:
> The mt8167 DSI controller is fully compatible with the one found in
> mt2701. Unfortunately the device tree has a dedicated compatible for
> mt8167 since 2022 and it cannot be changed with a fallback nor removed at
> this point. The only way to get the device to work is to add the
> compatible to the driver.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

