Return-Path: <devicetree+bounces-266177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHlOBbx1lGlmEAIAu9opvQ
	(envelope-from <devicetree+bounces-266177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:05:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 410E914CF93
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC7C73000899
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC312EC0AA;
	Tue, 17 Feb 2026 14:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gCt6SinY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9CA1684B0
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 14:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771337143; cv=pass; b=dRunY3JVglJZPmHWelSrxSp+25JGT7hpY9dVwPMoI/Fa06dgrwo9y3gI18qy9tzBhhReW8y9PMVvxJ+cBXUDJNhiEMrmmt+9lsxRUfp2/VlSeCFR2StcPerfnFNK5A9iuzj1JmNqZ3Fcb9J1bX0mzINxuE23VoW9lF1+GXyYgBk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771337143; c=relaxed/simple;
	bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SDjZkrQENA8xDO4N8qoCwD1eeLSPVYLakZZuEeiMN1RMO9S31PMR2/EECSVXlMPuSF/iqdZ9IF8f4Tr4ua9DDe3nYhFscFj/CGZZMfvecbCm7p9MXH/Tgrzj6kC5yF+6jsT/NW4luMH+yHe47mjeOcVkRYelDZ6JlGNDeDA4WGw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gCt6SinY; arc=pass smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64c28495b3dso214206d50.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:05:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771337141; cv=none;
        d=google.com; s=arc-20240605;
        b=NP+2GZErXTkfQIfzGWxdhqKjBv11D9p/DRXJu5sg3Ky60VViwhWp9vl/Wax25ukayi
         /1fWkWtDyxrDewTaCYo6y7pmWCAICn+6JyNs9fjpIzybiu+FQ3j1uG7FNmmu8xVukhuB
         +I47fSqN3oSTaGWugNEMSQA5yZGJpme28OJ13ysQ9IwNh8bdh/hvaoYAT8yIlqQdQiwJ
         km4TPJ2E0guEVo7hUYA8RhwMAMRqlCl1ZdG3XyTCk3lrs5uo09a+KnJqzIXjT+m6Xccl
         efil58DO8kY+lysTToFFP5zTaD4QBxu5RGRA2PcuVdH6No55SEW6M9tpq4Sm+NYz7Jwt
         aQRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        fh=vdQf9/1TcC7B03zNJlF8qIUvgERdO3U3zFmdRtmSRic=;
        b=RVMfKUkQyNGPNDMGkX7Kf9gk/RRfRPxb6nHuWfo5PsNfzs3ZgpYDjK43z6l4w/lcZ7
         pgA97lnzm36SgBW83WWstKTkknawnUUTriicSs9R3TUOYV3YfuKXdQbqMU3FdjjXBuyd
         oMUSUsRbGgrOzGoU3uj+pwPIYjwESxeE75NvtDy2v80+siTNtOmWYOyPhE811tlB1dKI
         c7s0PSOmgkMJj/AxUSBP/pbhDG+LyeS3IIGm++QJjVg4qo/YKqYOQhl/ixW5cklOCErD
         EKLtyL7oZ28tyaFQDclmxEOgqaBIKkJVyZ8pXscPkEbWnrnnS9/+zi3J7W4j26HEEqfz
         xzbQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771337141; x=1771941941; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        b=gCt6SinYP75ZGjyUr2eond8Rm4jICpUvqUZfF7JD4u0sqC1f+ZN5Q45O1LasLrVo+6
         1XmmtHnKC0IIjG6da1VEKyBZEU46jLkrUVbxYN5psyEOrUUhVyw6BDJ8VDg2VynAVGeT
         ZN+U0nXqluVREJZOs4NWz4w+p9q/rEca/alhzfn4S1guMSx78nEZA1919i7/qG5sI8vx
         acjeuFrZJsP3lZa7vUbuJzYgWv3ueC+/1rrt+WrKhOuZR1GRj2GUCUaH3CA+xXpQEsTg
         YbLPPSQef23WZEa8WaEJzRiJYhhBOptUvqs6mHLa6ZP8gOjTfkOZ++YKt+xzK7dG085c
         CQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771337141; x=1771941941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        b=PP0gd/w0mHK+Rq0X12R2NRjSbXKGLxL9SDaseZQMBaEF1t5H1vDshCNCzcvwcmGFnO
         gJkF1t/fIBdE3pcKHHJ3qjHo1+wVnGSvS0V7fyB7td1jzLuGnLLXpjtAcEvBokNF6mvc
         BjwM+Z3SO3eF8rMTpmXXEyeTCkqvfjkgHqynx4xqRSsYp8nCK2YkeAo13QDvlO9TC4Si
         Da9wVlux2UYZItO6VhKs1AyFZkoT97cdQzqNbodycsjLgq0xwnlN37jmQDYbbxHjEmDh
         cMuOxvjTddPjeUOJ4Zy6GkKwE5qrEtc7NQnMbGh5yql/UOOXw/Ic+JXLbAs98ZHkt8Kg
         TDnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoC/1zcBTcMG9XWOa8yQ7Q9NYfm9fSGW/1t6vqtj3B18NGVPDxVgu/7V8csBPxTDS03EoqUXrATSi/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9UYNl7h2Rip4kyYG7Ku8kGXrSmh9LicWTKvHxCp08lmmx6Y12
	5DDBQaILNmdD5C3D+pqGlTfmVM3aBPtwYrhy6QbhETiYFlOxdPAubz9F6lcNMtj89/kXiY4MS4+
	buqIxDn0nb4M24vRcSnZNiov2QU2m/PM=
X-Gm-Gg: AZuq6aJkYQf7HHE/aoEHLW1aOLaMHnTfbzTx1gqbhOs9RId9/RaXu7QIFSV3CpPYsgX
	tC3TKwyFzx3i3BrEUmiFZercffbh8A1QtfEfcmjQag2AU68fMAgRj+Ss2UXqZeg5bkT528m/E+l
	XAxNAW1xUM/Y9SbLiHttW/lOku0YuHmGNIIsK+oRteq/zXR7Z3vIfv6NntGUoTFvySRf1D3cOaa
	pKzmea6IQ2NUyr29XN5BWscC4WARDvzPfvBwRuwFHI7Bd+7wGPStMVIuPAlMtlXWBBEAHBA+ISg
	k7TrGQ==
X-Received: by 2002:a05:690e:1c1c:b0:649:f09d:a6cc with SMTP id
 956f58d0204a3-64c14b29c19mr10963024d50.1.1771337141377; Tue, 17 Feb 2026
 06:05:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
In-Reply-To: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 17 Feb 2026 16:05:29 +0200
X-Gm-Features: AZwV_QiVnluoIVm_8_wyxtM9osk-BEP_4tSvKqw7PjMg4MAO7-oL-lW1MUMi7lE
Message-ID: <CA+h21hoTJXkJr4_KWtFsxUMeqOXesxk5WKZbr5GWHawAi=idKg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266177-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 410E914CF93
X-Rspamd-Action: no action

On Tue, 17 Feb 2026 at 15:58, Vladimir Oltean <olteanv@gmail.com> wrote:
> To help the build test automation select the proper base branch, you can
> use the "phy-next" or "phy-fixes" git subject prefixes when generating
> your patches.

Ah, sorry, I missed the fact that only patch 4/6 touches linux-phy.

What is the merge strategy for this set?

