Return-Path: <devicetree+bounces-264754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDmZBpdljGkFmgAAu9opvQ
	(envelope-from <devicetree+bounces-264754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0526123CC6
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA94E3020E9A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D18A36BCC9;
	Wed, 11 Feb 2026 11:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h/zmnSZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F3636BCD5
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770808721; cv=pass; b=Y0SUwBUD4fUuQWepLxrrzYWh+zOJHFZ3BQZNnTecfNFL6VwkMDxh+0QhE9NQ+/4QSKNl60j8a9s0wsJz5koe0MMvVN3ZA8qFQRmHeLHvAmhytXT2T7hnjQcNKIWUZXnvI6Zq9/FvDyjLvNoftHHs9eI3XnHZs7EpumbfwPLAC1M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770808721; c=relaxed/simple;
	bh=5hgrsko0i7f6QMF9iWY6a3SEqKH81lnUbsBN0wjCE+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kQtOik1G4RhMBp9zPs4Igi/o8cJys+4OweRZC5JxBOwcPhFkFc/Q7H9tl1GGChkaMqsElu+AUU6ERvWvhZLc32wTnVC13yk9H5QvtmhIrzLXufr46Ks6wnkYEJGVTpD5iB1jxvK7oIvg/WU6hvNVqC3tITCBpliCnjyw/JeojBM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h/zmnSZu; arc=pass smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-82491fbf02cso636702b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:18:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770808719; cv=none;
        d=google.com; s=arc-20240605;
        b=Oq9sH7rSAhY0ug/4eFXHigkUxrwBIjGRYLIo+4VyMVucZ9FzuhoftFSAI0MtHDLoh6
         BJVkoF2TfK9kCYSzmCCB6Avl4h+MzjNixXMLJISQvV9+qF5S2Hc0aFi1w4FK832wcL+3
         xJe0ATEmtM3p+OEQ1P4oBl6WCLP8eu0xeySETeON/IRDkOLNDD28brh50DXMfNbDDjdP
         UMRofFxYxAx/FaP1XOTtc3yNET/ET+l5wNduTOI5BahRs1IALnTRx5rvLS6knUDBubAP
         n56MPt21MNt0sIJen3YXnlRIDd7A+kM3p5p4KyOb1QX++rMoH5VEjBBZQcrS23ru2KRY
         7TxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=o6s4BIBUKN5D98c5LNrzS0ZqPHn2vIMg96zycq33zJo=;
        fh=7anK9n7yj2tPKGk2krZU7QfafZcVYX7P3hKtHHav584=;
        b=FD1x36WYK0/DZP3d/N+ywv6K/rhWNo8Sxhy82EnJbNzshPU4T435N66MJdTz/Vb2TC
         sx15GWBWz8eCWTVqQ6h/0ja7v/1bfNWUniOpCxnhwkzzBcDYdzrAogOpeiKVeJOizCrE
         OGMzkHKQQ3AkVFkjyv47Qcjnx9+0MtKsg7QZeufrVReClPKQH1yV8RcRS5VijRdnkxVk
         yLL4Dp2J/h5xAkmOsGFnnwF0oe/CPvzHoZMK5r/xkDO7P6spWbKzFF8WdzDn5YPeWnqL
         I52KJ6lyMzLd2NO2jJSQdhFXlbSEy9RlZKXYbSykm98CBzZ+mrQt5ZCiUCFp8TywxYzI
         bHpg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770808719; x=1771413519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o6s4BIBUKN5D98c5LNrzS0ZqPHn2vIMg96zycq33zJo=;
        b=h/zmnSZunwi7ZHwOHC/4S0ZACv5qTRDW1JiOkKM+PDXGfLcGcQzm9rTAwu+Je2hhNf
         3PslPIEX7zpHtTdsaJDIND5FxsC+xVX40Mi96uJqqCWah6RmY7Xhuz74n+dKBMuQ0sVB
         rXsdgkf+uKsVo06ooefKFLSQ9OYqdyn+4In5SUcW0L90ALpWdH+37CxEPtYuqHIlrsyN
         /IcgLeAFh/3ed8qB5jPcwhzKTbJJyuZ4TqDvW4kPS1EaxoUU43yA2+CE3oyZxIDFhBZ3
         2IEwpNtBBoBV0phxRBCZ2CuAH6uui0y7NGUWIulNashsNGuJiGPtllq9KCu8ufDj9BDR
         isQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770808719; x=1771413519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o6s4BIBUKN5D98c5LNrzS0ZqPHn2vIMg96zycq33zJo=;
        b=aE35uZzWLuKgucLYsTzi8POtl8JxEnax7PgMzx5IzBPMC1M1Gmq2WHPRr5JEdHQRVU
         waFEv38XQCOEg80/n6kWUyfZBZTlZOds0HkrjWZC94v1kd4J17ribjPDm1BFbxOvgseG
         haIx0EazxNvU4Wksf8fAoyXvDOfe6oJO3G9SrD/gltbq/cZDW2fdHOwom8EavDQ1MOB3
         AM7zoYLewo/itB6G5LqJGN4YNrt3QkcQW8AeIyGr5hq7VuvPqXveVXx3288y0y08/JjH
         CLG3LT5At73O/JlUocLTYT1syeQnoipcwZG7OeebNKqMTWEC4luvi4ueSGn1efV9OVEt
         3QUg==
X-Forwarded-Encrypted: i=1; AJvYcCUGNzBeQd9/2eFemMlTloFRT7JQhQFwm5jr6C6FDDDSZq4Fvf3cjnO0bPVrZwZUOGzbVYfSQ0YOC6wG@vger.kernel.org
X-Gm-Message-State: AOJu0YynYH+NukRRM55h+G8eQdEscYIgFd6JnkExmzO1+BzS81s+K3df
	H9pKRY5xKEHQjLrhD/3joOue2vS7MVNVXtVvMURWPHkx2Fb8mviSR3ehn+5Ajv275sIpBSnw+4O
	mLL8jSoVIi0mn7He87CTL4Ud6iDS38P1G7lsJ
X-Gm-Gg: AZuq6aIR1ea4UDWpAYZfSGq3kKXH5X+c7ThNLKa8iwLwbCrYWBEJ8VK/MKnB1/tbNeq
	ZFmQ2+TQTyMlEb0nP8N1IYSTwvFHTMvAnBW8iqMx08ku1bNSt68nw6WxQM6Zpky6wPiadCZj2jj
	4JA/OUcstBBHw5iqeE/Zl4ZN4TZy3mZSdQ1et+Fwj8QX7N2MO4P6RA2z4dL+1T2TNL2ybF4/qgg
	8rGUTccQNVfBzVvJ2cuc9ieBx5rc3wc1BFuQVxhLoB6LvzXqUVhBTqnwpkmMVun4SYqqZp/sgdU
	DQEoNp5G
X-Received: by 2002:a05:6a20:cfa9:b0:38d:e674:b60a with SMTP id
 adf61e73a8af0-3942e3bd579mr2494359637.36.1770808719278; Wed, 11 Feb 2026
 03:18:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com> <20260211093527.2892297-4-shengjiu.wang@nxp.com>
In-Reply-To: <20260211093527.2892297-4-shengjiu.wang@nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 11 Feb 2026 19:18:26 +0800
X-Gm-Features: AZwV_Qjg4jaxdD6mOKRolClKPwzpCCO-1jFoM4aMo9x7m4KpJDblvAVz40iVzqA
Message-ID: <CAA+D8AOzSJPzBRfWwQnsASt=tPiuQcUvY=5MF0OXJuj5ymvyrA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ASoC: ak5558: Fix the supply names
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264754-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A0526123CC6
X-Rspamd-Action: no action

Hi

On Wed, Feb 11, 2026 at 5:37=E2=80=AFPM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> According to the binding document, the supply name characters are
> lowercase.

According to the change history,  seems caused by the patch which
converts txt to dtschema
So should I fix the binding document for this case?

best regards
Shengjiu Wang
>
> Fixes: 2ff6d5a108c6 ("ASoC: ak5558: Add regulator support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  sound/soc/codecs/ak5558.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/codecs/ak5558.c b/sound/soc/codecs/ak5558.c
> index 73684fc5beb1..48a690d81047 100644
> --- a/sound/soc/codecs/ak5558.c
> +++ b/sound/soc/codecs/ak5558.c
> @@ -31,8 +31,8 @@ enum ak555x_type {
>
>  #define AK5558_NUM_SUPPLIES 2
>  static const char *ak5558_supply_names[AK5558_NUM_SUPPLIES] =3D {
> -       "DVDD",
> -       "AVDD",
> +       "dvdd",
> +       "avdd",
>  };
>
>  /* AK5558 Codec Private Data */
> --
> 2.34.1
>
>

