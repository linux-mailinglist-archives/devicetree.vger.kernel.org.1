Return-Path: <devicetree+bounces-266215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ED79LGGZlGkoFwIAu9opvQ
	(envelope-from <devicetree+bounces-266215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:37:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4A914E4D0
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6B6C301BCE7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A570436EA95;
	Tue, 17 Feb 2026 16:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ck5zr7Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298C36C592
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771346270; cv=pass; b=L43s9mZynL+Ziu1yLUvQPLW4xZn/syKEYWHe2UxwNfS0aMA6zt41kUUyDJLR5rKxdUtMWUH+rR06l3BbMT922aGUT16JFOo2zoa1EJKcOoNgexvBg47hRkSTQ1ZKgqSkcT/AU0xeN2sHOokWIuVMyPacaV3xVH3pYG2drabLd44=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771346270; c=relaxed/simple;
	bh=je3h+0SEiCpDqp/a0+GWzwMF45XjSuE0Kz2smABGlk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bpMtbVmVwSuaB1DLDkaIqAFCc8xdWq2lF/24WSpi2o6nSux4XZVNwl5heNxiHXM8buY40pxPp3bhZd0JHmzatwSLetzxS3vQ+bkMn25XLXlVzyQ7IYRhCo51ZEy/1oA9QIU7DKDRza1tN4sB7FVDP/OuuTT7wVS0hmM8t7ZziKY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ck5zr7Cg; arc=pass smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65a36c8bcabso1624073a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:37:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771346267; cv=none;
        d=google.com; s=arc-20240605;
        b=TyedPMoRDGOkIiHH2D4vKvGuPVmR9zvz37w0uBzY/kUpJ3ygktt8s/mOMtXbO+T1HD
         yOXUnITZ2ckteVmLMPPAPv7n/HIQmaHK6B/C1Euqeh0Cc6+abz5UEVnEcwyfK9Jd7J6k
         zE98XHRYfbNJseLE/AH3tee3UYbw3ZrJVHz0JEdWQyrdT2K4ciTKpa56UTFrGHVtr0+7
         gxY9qb/ObZXKDAzazDEwgTD3Oc/YzO5/6jD6DXGlTmctAJB4G0kDTtPKZGJRuJRIh67f
         ARltYW8xCd6X1udhv4R+RQ4WF5L+//ftSvJB2nFyWzQ201GvtI2dCa18Wl7P+4fFmgzY
         xfFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        fh=mlK/wv7mbTHQZn1SEY+sSbNOjgeEC0ANJ4dfRTPTonE=;
        b=dHLzslN/vrqepFPjsUa7YVld6zoFPOMyWOdzRkf4rXUFLaXfnP4nBZNqwkYWFlNO/t
         9snM/9S8wpH34TLX2WyhQs1B8yKPt4orSFyg4iq6jSfjZWLPB8hj13Qa/URrasYVjVDD
         eWjxG6WJsTO0oIHl2s+I5NMmGwmJRN9fApAleOZ3NRCFkw4pwLDD7sz90wS0KC+RlSFp
         qrvYYwABaf9B2W0Yribmmz4jSS4fKszmXQH9gFL8YxTU+Ttp1iJg8OHKwxQ56glgORCA
         M4DxlzSQJs7BRV0MSD3wqnalU0fNk64ao1e97KzbjGyJ7XdG44hh1lAXkBjiysppH6ZG
         hz1w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771346267; x=1771951067; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        b=Ck5zr7CgthUxmyEkrj4o6S9lTHHQwj41zwVQZVHhxvwyXxlY2p/0cY8XtySFi3pKq7
         teLL36EUwIeGIbv41ZUQ5pLYDmY2+7Ll/sQD27GJ/N90u4kxKOEyPOfPUtJAeO4TIbCw
         rmPxytJ2tNz9R14bg58HX3Bsn1EMrCt9OcW1ougkvh6YycTJd3TH67DvPFKh2Rzlel9V
         VFOqoXi6CKfAyiBD3TysIYNPE7+LvPHL3dKtqb8z+LOEFGJKKA8DrvaY6y79ORYm88Nj
         HIuAQI++9M4JTCHJw/xv4m+EJjwdCGn3JYGsu29WyCuFhS2/i7ZAKTrHJuyW6qu08/HO
         Wf3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771346267; x=1771951067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        b=VK3TUgsigh7KAvt5uxmlYfXX+K1AUNYRUqDSSVHGP/KhGuIf9tYb4auuCqZZPsa9/b
         SEcV9IyGdOvFW4AaqI1y39wBCcj323SbDSIjuxwreIC3XyV/o3E780dRL8WNyJjFi4nO
         7v8BLD1t+R4uCBe4tfMl/9h1GCS0YnyfLd3rO4pE8N6MArKVR7cjPFFuGOe4JqbCW5QK
         x00gyATDKSchQb2XtlK7YspTPfK6V8RGt41EB830vFesDg+aTKzbDpnlGh+cEbl8HvfD
         MCEEdEqb99y0ON8S3d7wEQXKtBE90q6fFSZYDXaNz2995PDqfpNNjJ1tdA8oAgDO1R6v
         HH8A==
X-Forwarded-Encrypted: i=1; AJvYcCXpax6Le8m2+3/+wPEU9ph/LM7KjZSyiLpKEOCRsfg1VwHMhFQSReRm3mnpz6VOkNvy+L/G0VkgHyAM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7FzlxWiDDuufAu1tVCGDGulOam3o9fl3q1KVsztd/IAFlBGy0
	oidSws5OUoUNEQkWz2K+c+4FgllhQg6OQQX2/fn5xwnMn4VeLDdFjsq3CMg61Su9jqny+JEYvWJ
	ZrZvTJ4oCtQraiDH0NopTDnqwiT8RUeg=
X-Gm-Gg: AZuq6aJROFUv20Inv1W19fOkyngohbE0M/CwR8kDefamQcuOFm8DQ+SCKupo2SWGs6M
	TltuXKBsI0MyENPX3aps+SR/K0Gp9frg9ChkMe7+dee5M/hFgWLm3DZss0zvgBj6xv2IxD9nBB7
	KeLy544edB7JyVZ/izBzxe5Gl/Lo9JigTQc3CwtOFYLNIPh9k1TaDvvWBonFwV8t7QtrXG4tV6j
	6c9vUke+8fIAVobRBxB+mf80hp2BkxDFUdQPZagFHNj9ppkFjuIuZH6en7jvtGdiaxgRBCmfAkf
	ycdJ4lvjkFSp8xLr
X-Received: by 2002:a05:6402:3648:b0:65c:1f0f:e6f6 with SMTP id
 4fb4d7f45d1cf-65c1f0fee06mr2535558a12.22.1771346267257; Tue, 17 Feb 2026
 08:37:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
In-Reply-To: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Tue, 17 Feb 2026 17:37:36 +0100
X-Gm-Features: AaiRm51UVemOzhQMk6xoVI4EJaD4w62lgA3q3kyqzB9n5tt-MdAm1A1cRwc2sAA
Message-ID: <CAORyz2L6_4yLb7t6-H3MjCu7QJtPF0QTvdsvdBw8f9zTey_tBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Vladimir Oltean <olteanv@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266215-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1B4A914E4D0
X-Rspamd-Action: no action

Hello Vladimir,
thank you for the reply and explanation. As a new contributor it is
greatly appreciated.
Those patches are definitely intended for next since as far as
I know there is no mt8167 device using upstream kernels out there.

As for the Fixes tag, the rationale for it was that it's ultimately
not coherent with both its original author's intended usage [1] nor
with the current code as it's not present in [2], possibly due to the
fact that at the time of the original contribution bindings were text
only and less accurate, so I described is as a "Fix". I understand now
that the Fixes tag has a special meaning in the merge process so I
will just remove it in v3, it does not add much information anyway.
Also thanks about the git commit prefix suggestion, I didn't know about it!

I apologize for the confusion and I appreciate all guidance from maintainers.
I really want to do stuff The Right Way, it's just a matter of moving
along the learning curve.

[1] https://lore.kernel.org/linux-mediatek/20210406113631.2675029-3-fparent@baylibre.com/
[2] https://github.com/torvalds/linux/blob/9702969978695d9a699a1f34771580cdbb153b33/drivers/gpu/drm/mediatek/mtk_dsi.c#L13061

Il giorno mar 17 feb 2026 alle ore 16:35 Vladimir Oltean
<olteanv@gmail.com> ha scritto:
>
> Hi Luca,
>
> On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> > Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> > describe it as compatible with mt2701 instead. It is safe to do so because:
> >
> > - Bootloader doesn't rely on this single compatible; and
> > - There was never any upstreamed devicetree using this single compatible; and
> > - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> >
> > Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
>
> Not sure which direction this patch will go in the next revision, but
> (if this patch remains in this form, and intended as a bug fix) please
> do not mix fixes for the current (and stable) kernel with new development
> for the next kernel in the same series. They are supposed to be applied
> to
> https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=next
> and
> https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=fixes
> respectively.
>
> (also see Documentation/process/stable-kernel-rules.rst for what is
> generally considered to be a bug fix. We don't use the word "fix" very
> lightly, there needs to be a user-visible impact.)
>
> To help the build test automation select the proper base branch, you can
> use the "phy-next" or "phy-fixes" git subject prefixes when generating
> your patches.
>
> You can send fixes at any time, but please send new development for the
> next kernel only when the merge window isn't open (unless it is marked
> as RFC, then it can also be sent any time).



-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

