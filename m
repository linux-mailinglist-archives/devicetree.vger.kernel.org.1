Return-Path: <devicetree+bounces-268190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCCIKc2vnmmRWwQAu9opvQ
	(envelope-from <devicetree+bounces-268190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:16:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 573A6194052
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C069D30168A6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1673112BC;
	Wed, 25 Feb 2026 08:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iMmjZYsA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A653016E0
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007371; cv=pass; b=e8r/C9t5EMfTzFwyZHVLhTSBjckr0ZxA3b+khq8voHvpSgx1VTS+8qpPOIo4Z2sP2pA58+LSei3lD/2pb3ESv6BI+YVwS2QXGbBMgB7SYmeFme2wAIz09BVek57z5CTLMqPf6oQEQcRhnah5iEvQgfQcCncgc95s9/MKY8FtR0Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007371; c=relaxed/simple;
	bh=DhIj+5DDg+ZTM+y1YS2opkdXpmx8a5SYOBauV9LpEQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iX9AZVATWyRFISHvZsByDyO+YxeEwL96Xi+drYpgJp28fvL6xgh9+KrP8gArYmy9xih/gBJ5Q3WarUhq/ZEBzx7Fr74x57UiOesGN3QDHLoRFp0Ozya2jj93sGqV7qHHMeLhWZlXvckiBT4Nfk7Kq0WmMjqcNUOzpSpkJ5/xDGc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iMmjZYsA; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65f92a597a1so334604a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 00:16:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772007369; cv=none;
        d=google.com; s=arc-20240605;
        b=R7xsz/OcEmJqcwpAF5B0TTmjElo22Cazdbcd/6/TCrt9/ARaNm5r64pelzL2DLZPC8
         Bo+XZmZN1L5d2gnyo3aTAeCO4fnEzaCUjnhm90JDhVfwbXu+jO66uBuSGN7w40YkrwAf
         OHzGutrhByWS5EKmAxyRfljKRS//2FMUGdKCZPq0YARodpuZfPTQmjQdXo5WDuqELbrG
         FLzUR9LpZhjkFmIzBZ2TPOXKRLv2NxWsVCXi5jYmLHepuAMg3NJlo0hDTF3LYEB7nVEB
         DHMkmJl0lHNPe8aRj1ug3BH3BNPdLQ5w07p7K3Txk0jl5Z3BzFXqS7GQmxfBfg0iMo5e
         +Gmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        fh=z5tuDyR0eCMs6YMEeNxVXr70mbbuP/mx6M5Wbmr4yN8=;
        b=PsbOolY69OvPh6QYf82ZvXb13GB0TIs514ZF6gkUGBfyybRRFXejQwfhvyKWHn7wPm
         oK6upiMVuMn5oEcPSCkU1aQKO8u+1WeX4UQQF048TNkRWq+//nmmjYNpu0OYr5AhH5YL
         Unpk9US45l+IxDT3+sMIyIZNoRPVjsQ69fEXjnUwPcpvIkZjUnbyuWJSOlJQbrisGNDF
         Kw9YZ/Acze9s5vm1VqK+JqOY8iB9xUglDxBS7WC/H499DBNQVhsNCdnhyoPULm30bLN5
         7y02qNmDtJ+TDEp2gSKwG50WSMVW6j1h4ay4ajUbpP8eds6P7Kg/QjjSTjPdGZLZO/1v
         U5Vw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772007369; x=1772612169; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        b=iMmjZYsAy6wmF8O5T6b5iZHNqJwR82ShbYQ4TRmBomzV8B8TXtwGdhZwXG11RkeE34
         LIU4RTSe5tmwQO/l0pI7i1L2uXcUQKfAu3HuDoDIvzlpl8ZyXFJKEWyzfHbLBU69OfCm
         +FJlAe2l4dlb/Jrjk1PlidVH6os2SGXlLJ2e+PdLsYNpb98u5id+omb0abYVw8QExpsf
         Lq4ionRJr8Bs2fH+nr2DuH6r2kgafi6yTLN4ck4H6MSH3oV5xHo7izv1fntVQQHZkqmQ
         zSLghyfh3oXuOjFp59Fr0O4Zg1S3fl9ySiDXyNEG0A5cUViaCrVueLvKqXOVm64QAjc5
         XpNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772007369; x=1772612169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2LJlLYDb1+QOSf2a+RA+BcJzRTj83OmLJeFRnjwCps=;
        b=FFHgoi2kgdDynlQewthmFyXRwLrLy/VbYFUxij2H7ss0PQzP4VdbvR/xIlIRFZ0ixJ
         9mm12fXS3rKUMGanHcZM+wxXN2w/jCc150B6oAMDytnelYiu7SVGjVFC3+wMLiOwkuCY
         Q/dmNdyGBPCigGx32DwMifPhuyLKo8mUAZlQrJ2eaD8sK3Csgc7s+//FD6H9yYAwbwvZ
         VdRLGdBLEWIErFdtDcaGBOWdIghHzRFhi7FDCTbacx2t2xKu0GjFYI7KjJtr1qkH/w4d
         xNGan6Jy9rCWYH9acWXAPMi3nOxyKCXVdMXiAVlhJAqg5Wu++FNpuPMnkrFlfK/xk6Ny
         aGqA==
X-Forwarded-Encrypted: i=1; AJvYcCX1mlqJifgRa8ZLUI4kxkUET1SDsF6dyZstbzFr+VraCRDwExOx/pFjnYU1N5NfVupbYqXvYYiE6HMN@vger.kernel.org
X-Gm-Message-State: AOJu0YwUqHytj5UelyXs98Z+ptsO0uUyvVeJPZoi6aFEnnuK4si5q9V6
	VJDG9TpHdPukT7lz9AFUGUbnUugy1OKatN2zrEID6A3WOdrP1St2NDA7ajEDNDfgYdDFN7VPEln
	lNmczpI2w6/p8b5+Ak0ndE4vkSHZ4FLw=
X-Gm-Gg: ATEYQzwDdv6s1fvfALXasW9k3Z4WoM030Gak/0++0TQD8X/d8KUjIobfD39ReENKV6I
	ZbBLfADaAubQFQHuHMo7dBdBnnoF5EhbnQEelekaA1sospsOgYVCDL/htIt1w7bi0tS+xyzcLUa
	gP040Kt4xkcXsCE7cTETLz19nPucael9rqpFFSXIaJ8Es84If+p6+JlGXepoiDhfKO9hS/M7/mO
	labHqZrKpdAbaWiPuTkLO/vRjcg2JIh7naoWIEZNaG2mPhk6ctibc78uRfyjx+8c2u9RG4ZVVIq
	qwe16w==
X-Received: by 2002:a05:6402:23d0:b0:65f:8b6e:e1e0 with SMTP id
 4fb4d7f45d1cf-65f8b6ee3eamr689444a12.14.1772007368034; Wed, 25 Feb 2026
 00:16:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771863641.git.l.scorcia@gmail.com> <2fbf179c03c61f527e2583f9df4f97f6aaf3297a.1771863641.git.l.scorcia@gmail.com>
 <bc064717108de5ea1a8c98937bb03fd00794682c.camel@mediatek.com>
In-Reply-To: <bc064717108de5ea1a8c98937bb03fd00794682c.camel@mediatek.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Wed, 25 Feb 2026 09:15:54 +0100
X-Gm-Features: AaiRm52dJLE1LivX43DCdk6HfEogq21vfzP2R-PH1LBTeVTcW8EPNiYL5Cy5zOU
Message-ID: <CAORyz2Ki5aPNbcY5-_mRwFgwT46VN_pRV2iP7z7x3snzrbKz=g@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] drm/mediatek: dsi: Add compatible for mt8167-dsi
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>, 
	=?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "simona@ffwll.ch" <simona@ffwll.ch>, 
	"mripard@kernel.org" <mripard@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"airlied@gmail.com" <airlied@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268190-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,mediatek.com,suse.de,ffwll.ch,collabora.com,vger.kernel.org,linux.intel.com,lists.freedesktop.org,pengutronix.de,gmail.com,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 573A6194052
X-Rspamd-Action: no action

> > The mt8167 DSI controller is fully compatible with the one found in
> > mt2701. Device tree documentation is already present upstream.
>
> If mt8167 DSI is fully compatible with mt2701 DSI, I think the binding document and device tree should be modified.
> In device tree,
>
>     compatible = "mediatek,mt8167-dsi", "mediatek,mt2701-dsi";
>
> And this patch is not necessary.

Hi, if I understand your review correctly that's what v2 [1] of this
patch did, but the change was rejected during review.

As far as I can see there is no win-win solution here. This tricky
situation derives from the fact that in last year's submissions the
change was only partially merged - the bindings went upstream while
the driver did not, and now we have to work around this. In v3 I tried
to address the issue by actually implementing what the binding
document says.
I'll be happy to resubmit v4 but I need to know what's the consensus here.

Thanks!

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com/

> >
> > Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > index af4871de9e4c..ad10e86b161d 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -1301,6 +1301,7 @@ static const struct mtk_dsi_driver_data mt8188_dsi_driver_data = {
> >
> >  static const struct of_device_id mtk_dsi_of_match[] = {
> >         { .compatible = "mediatek,mt2701-dsi", .data = &mt2701_dsi_driver_data },
> > +       { .compatible = "mediatek,mt8167-dsi", .data = &mt2701_dsi_driver_data },
> >         { .compatible = "mediatek,mt8173-dsi", .data = &mt8173_dsi_driver_data },
> >         { .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
> >         { .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
> > --
> > 2.43.0
> >
> >
-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

