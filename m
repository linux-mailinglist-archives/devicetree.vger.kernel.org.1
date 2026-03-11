Return-Path: <devicetree+bounces-273939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKIAC+slsWnJrQIAu9opvQ
	(envelope-from <devicetree+bounces-273939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:20:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B5725EFDE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A744A30B7A36
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7492C359A6C;
	Wed, 11 Mar 2026 08:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GY0NFPPa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDFC310777
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773217081; cv=pass; b=nh7/j4AdjRyseeoovLXAEa9p2MmrMvpR6bIturcGu2aqQnVDPRwlfft8MuuD2+8bgdvyTdTaT5fVF07ur6MGHeLzhR4MLTlNq1QmYBrLE4kZocUacPkx3GPNLR27ZYpNxRgbPrBwskaNqbx6IIN9RusVHSO43ugV8OliBYxszT8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773217081; c=relaxed/simple;
	bh=bvc+6Y2uaW1tJtPm4VR1GaWpkiNRWqiDYswbFc8+/Q8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pzKSrPI+f09HUveAVhPCU7CGlD/1AKWd63ocS+n2K0uTEGBDYCBf2C5WRfSzqZUg3AACCZiUormJqxxpPPWNKjQLnUQQNtiQFcDFQcymHI6/HyCQm3yQkcfFnF9sV57IKQSDRzPXwOCGEvjza8qJbpABL6yCiJYSoOw11rAqCGU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GY0NFPPa; arc=pass smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b942b36de08so131168766b.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773217078; cv=none;
        d=google.com; s=arc-20240605;
        b=Gg98KT5B6eGw8mEEq5IVtvVWtv5Gu5rqzaZtiIDniZPZl2XhjAPQI0jqqq/m7HKJPu
         JaoICkHkDOMcApANi/P9kQwtFXZC0oewBkDTi4Ftp1IRIm52iKYGJthMncVUxChgUUBJ
         prCcMxyMxXEirhAoUvH4dTtWDkmE7J2mihdQjPPCGYEmCIMd4BND1i9yZVbWB29gCmBp
         yNFNrI4RdvCzZUjfbXt0EsazyiYr3uvoWGTo7XUAmh6BWV9Xj8CK6UcDEwpy8JbTwDgS
         RGbwK/4wVbuQK3YiVNmxjta2EQu6AdTXw2y1k/FvdzEcLfIGpaeUifKIhmQJGxi++SXL
         U19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DSqIY/cfxGhiXZ3sxGbmKbwjNNRfS8ZavCJutHh1i/E=;
        fh=soljCENJKoy9cM0aCwTCVmM6Fog3dppqf43K9TWHx74=;
        b=c6ZjlQHlpO5DKyFKDRKs4tQorhInLn/35tzjXGBvB9q23A+33c8PtLuyU5FpDprDQG
         +ykN19xSm6wriK9xAXJw61ZEh9/ZLK3Pn3FzTM196ys2/dAl7DH7pAhzKjUqn0MtyMW+
         HHDaNfezIkRxXwTFxg0keB+WPoAK3aY6nKVvkEPw1ExLProMbq8WuzUmjqOxyMc/Idjh
         +7xYYG6dzJyVJ1wYn/Muv1F0HJ47qYtHDfZ7tDFZl8rbDNeQYDO+XpubNRoUsu3c6vMb
         l1gpmynl6oM9JNQypFPLYs5gqWaNc56omBmQXvLMGqWN/WjJwmWBNio8R/q/ReohdXIp
         pYJg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773217078; x=1773821878; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DSqIY/cfxGhiXZ3sxGbmKbwjNNRfS8ZavCJutHh1i/E=;
        b=GY0NFPPafQ3UD4IDrQwPr7EJMa0LMcICi6tUm7E3E+/KDIAZYunICZKWt/QpqpUMQj
         fnt950FXoiMNbYF8cU4p5fe3UhO1OglqiQDhqTvUQ8asdSRnaFuN7YxD5i3iCAnRbcI0
         FLJVyNMihLwdxWx6B9Uhkz598qyzaKjwxcZB0qeJeceSG5vajb6+x6t78a/0D5s7UQHG
         zqliZ5brRWwhdwETxgYcz2MjsxUyhkdYGPus7htcXkSmP4uRQeqGG5/G2T/KJijYqn5x
         14ANb1I1SR5CYlJdigMxDSz15CdWtWCxEYw+9R0e500WUgPJO1peLcHHEsdX6iWWn6QM
         HyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773217078; x=1773821878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DSqIY/cfxGhiXZ3sxGbmKbwjNNRfS8ZavCJutHh1i/E=;
        b=E0dqWN+w71ynwpJsD0t6Hjx1Sq3LpN1CRCfMa2XRfty73foFI+Kq6OCnRbpB5FFxt6
         ZEtfxNdOhxWiNGBDYJm393Tn+2qUFmGS9RktnfpS+8s/wOByZPo138FRuvhMm16GiCCB
         QT3NSzZPhn7W4TgioyJQjjiEgNpB9ZDcHpp+MoLgj12y90/cf9C/Jauk6q+fL3dEWq43
         T2EhyRq2OML6/+HBArC/jUTG98K/xfj7vBruinoncnUx/1hoCCgUZ451ChUWkxLaoeXH
         +UtYVmye37og4AtmShxWgUyJ1gqv2iv1oo6mbBaP7gJuGuoNpus57JUZL+V4MYFwpTzb
         urqg==
X-Forwarded-Encrypted: i=1; AJvYcCUPIL7jgtS3NUprzbpWfjKBTxB7iRLpIGyO/lrC7Oe0Dlr+oVU8bdGRt6T5D1PYl8VrX5xqQeXAaTyx@vger.kernel.org
X-Gm-Message-State: AOJu0YyvcUmRTQ25xZDZKkPuE9+YoElLhF370XvFl7T75VctRQQgHuLL
	SxydWpXRTIJcBIt36p8Wf/O8xhXxHhf4bWLvH/ZoVvTsMYOewfE1QPyk4Nvp3B1h96lgDOYldLO
	MKeewN8B5eke5scWdoB9plYSoSe3Jalc=
X-Gm-Gg: ATEYQzzqOyKKbJMWNW5vRvUIkGqU8qxA3x0PD4lOwC3PYwusOOEBB1Tn9Esf94drOEL
	MSfRBjZwLXFU4DORN0WLrX+dm4hLEqth2OQ0DvjkxMxdHBVIXBdFuAx+aEkFpoSx116cJf4NjrJ
	npYvZ/3bUSNoFT7uiNme6f1W2AIpoGrL0GTnxOdKxq3FfmadcUgl6VMhz6CsDnzvlzllH63DZWB
	Ote0CjrzhpEbzfK09lHRyEfTwJJ8PzhVHMKJhvr6ScOt2FtWi+DkpzXItHsAxy5CrTacAxaeTi4
	yOeWaxY=
X-Received: by 2002:a17:907:7211:b0:b8f:de69:b597 with SMTP id
 a640c23a62f3a-b972d51c4ffmr98810566b.7.1773217077803; Wed, 11 Mar 2026
 01:17:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773107475.git.zhoubinbin@loongson.cn> <8fc0f9483b0ef0ff52ac5588f029f329098f45fc.1773107475.git.zhoubinbin@loongson.cn>
 <CAAhV-H7D0oGeWYCGXwPJxUBBGibNQ27B_fAFThDYXZ-+Qr7RMA@mail.gmail.com>
In-Reply-To: <CAAhV-H7D0oGeWYCGXwPJxUBBGibNQ27B_fAFThDYXZ-+Qr7RMA@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 11 Mar 2026 16:17:45 +0800
X-Gm-Features: AaiRm52fvLzj-z2f6S8hIS-AkBlETUoqIBlwVuGOvJWq_S-q2wO-mmxTvxhMBq8
Message-ID: <CAMpQs4LxN7t=OoNp0=R95yNYHewzR9Eikr2DiZTj=jR__re3og@mail.gmail.com>
Subject: Re: [PATCH 2/6] ASoC: loongson: Combined regmap definitions
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 96B5725EFDE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273939-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[loongson.cn,kernel.org,gmail.com,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,loongson.cn:email]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 3:55=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org>=
 wrote:
>
> Hi, Binbin,
>
> On Wed, Mar 11, 2026 at 2:37=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > For Loongson I2S, the difference between i2s_plat and i2s_pci is more i=
n
> > the external interface, the internal registers are accessed in the same
> > way, so the regmap definitions can be united to simplify the code.
> >
> > Also, the following warning for the i2s_plat driver will be eliminated:
> >
> > loongson-i2s-plat loongson-i2s: using zero-initialized flat cache, this=
 may cause unexpected behavior.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  sound/soc/loongson/loongson_i2s.c      | 55 ++++++++++++++++++++++++++
> >  sound/soc/loongson/loongson_i2s.h      |  1 +
> >  sound/soc/loongson/loongson_i2s_pci.c  | 54 -------------------------
> >  sound/soc/loongson/loongson_i2s_plat.c |  8 ----
> >  4 files changed, 56 insertions(+), 62 deletions(-)
> >
> > diff --git a/sound/soc/loongson/loongson_i2s.c b/sound/soc/loongson/loo=
ngson_i2s.c
> > index e336656e13eb..09ccab0c535e 100644
> > --- a/sound/soc/loongson/loongson_i2s.c
> > +++ b/sound/soc/loongson/loongson_i2s.c
> > @@ -272,5 +272,60 @@ const struct dev_pm_ops loongson_i2s_pm =3D {
> >  };
> >  EXPORT_SYMBOL_GPL(loongson_i2s_pm);
> >
> > +static bool loongson_i2s_wr_reg(struct device *dev, unsigned int reg)
> > +{
> > +       switch (reg) {
> > +       case LS_I2S_CFG:
> > +       case LS_I2S_CTRL:
> > +       case LS_I2S_RX_DATA:
> > +       case LS_I2S_TX_DATA:
> > +       case LS_I2S_CFG1:
> > +               return true;
> > +       default:
> > +               return false;
> > +       };
> > +}
> The 'write' function is usually after the 'read' function.

Okay, it will be reordered in the next version.
>
> > +
> > +static bool loongson_i2s_rd_reg(struct device *dev, unsigned int reg)
> > +{
> > +       switch (reg) {
> > +       case LS_I2S_VER:
> > +       case LS_I2S_CFG:
> > +       case LS_I2S_CTRL:
> > +       case LS_I2S_RX_DATA:
> > +       case LS_I2S_TX_DATA:
> > +       case LS_I2S_CFG1:
> > +               return true;
> > +       default:
> > +               return false;
> > +       };
> > +}
> > +
> > +static bool loongson_i2s_volatile_reg(struct device *dev, unsigned int=
 reg)
> > +{
> > +       switch (reg) {
> > +       case LS_I2S_CFG:
> > +       case LS_I2S_CTRL:
> > +       case LS_I2S_RX_DATA:
> > +       case LS_I2S_TX_DATA:
> > +       case LS_I2S_CFG1:
> > +               return true;
> > +       default:
> > +               return false;
> > +       };
> > +}
> > +
> > +const struct regmap_config loongson_i2s_regmap_config =3D {
> > +       .reg_bits =3D 32,
> > +       .reg_stride =3D 4,
> > +       .val_bits =3D 32,
> > +       .max_register =3D LS_I2S_CFG1,
> > +       .writeable_reg =3D loongson_i2s_wr_reg,
> > +       .readable_reg =3D loongson_i2s_rd_reg,
> > +       .volatile_reg =3D loongson_i2s_volatile_reg,
> > +       .cache_type =3D REGCACHE_FLAT,
> > +};
> > +EXPORT_SYMBOL_GPL(loongson_i2s_regmap_config);
> > +
> >  MODULE_LICENSE("GPL");
> >  MODULE_DESCRIPTION("Common functions for loongson I2S controller drive=
r");
> > diff --git a/sound/soc/loongson/loongson_i2s.h b/sound/soc/loongson/loo=
ngson_i2s.h
> > index c8052a762c1b..e73ffa954ec9 100644
> > --- a/sound/soc/loongson/loongson_i2s.h
> > +++ b/sound/soc/loongson/loongson_i2s.h
> > @@ -65,6 +65,7 @@ struct loongson_i2s {
> >         u32 sysclk;
> >  };
> >
> > +extern const struct regmap_config loongson_i2s_regmap_config;
> >  extern const struct dev_pm_ops loongson_i2s_pm;
> >  extern struct snd_soc_dai_driver loongson_i2s_dai;
> >
> > diff --git a/sound/soc/loongson/loongson_i2s_pci.c b/sound/soc/loongson=
/loongson_i2s_pci.c
> > index 1ea5501a97f8..dea1e4ebee29 100644
> > --- a/sound/soc/loongson/loongson_i2s_pci.c
> > +++ b/sound/soc/loongson/loongson_i2s_pci.c
> > @@ -18,60 +18,6 @@
> >
> >  #define DRIVER_NAME "loongson-i2s-pci"
> >
> > -static bool loongson_i2s_wr_reg(struct device *dev, unsigned int reg)
> > -{
> > -       switch (reg) {
> > -       case LS_I2S_CFG:
> > -       case LS_I2S_CTRL:
> > -       case LS_I2S_RX_DATA:
> > -       case LS_I2S_TX_DATA:
> > -       case LS_I2S_CFG1:
> > -               return true;
> > -       default:
> > -               return false;
> > -       };
> > -}
> > -
> > -static bool loongson_i2s_rd_reg(struct device *dev, unsigned int reg)
> > -{
> > -       switch (reg) {
> > -       case LS_I2S_VER:
> > -       case LS_I2S_CFG:
> > -       case LS_I2S_CTRL:
> > -       case LS_I2S_RX_DATA:
> > -       case LS_I2S_TX_DATA:
> > -       case LS_I2S_CFG1:
> > -               return true;
> > -       default:
> > -               return false;
> > -       };
> > -}
> > -
> > -static bool loongson_i2s_volatile_reg(struct device *dev, unsigned int=
 reg)
> > -{
> > -       switch (reg) {
> > -       case LS_I2S_CFG:
> > -       case LS_I2S_CTRL:
> > -       case LS_I2S_RX_DATA:
> > -       case LS_I2S_TX_DATA:
> > -       case LS_I2S_CFG1:
> > -               return true;
> > -       default:
> > -               return false;
> > -       };
> > -}
> > -
> > -static const struct regmap_config loongson_i2s_regmap_config =3D {
> > -       .reg_bits =3D 32,
> > -       .reg_stride =3D 4,
> > -       .val_bits =3D 32,
> > -       .max_register =3D LS_I2S_CFG1,
> > -       .writeable_reg =3D loongson_i2s_wr_reg,
> The same.
>
> Huacai
>
> > -       .readable_reg =3D loongson_i2s_rd_reg,
> > -       .volatile_reg =3D loongson_i2s_volatile_reg,
> > -       .cache_type =3D REGCACHE_FLAT,
> > -};
> > -
> >  static int loongson_i2s_pci_probe(struct pci_dev *pdev,
> >                                   const struct pci_device_id *pid)
> >  {
> > diff --git a/sound/soc/loongson/loongson_i2s_plat.c b/sound/soc/loongso=
n/loongson_i2s_plat.c
> > index fa2e450ff618..f8d7aca8b903 100644
> > --- a/sound/soc/loongson/loongson_i2s_plat.c
> > +++ b/sound/soc/loongson/loongson_i2s_plat.c
> > @@ -85,14 +85,6 @@ static const struct snd_soc_component_driver loongso=
n_i2s_component_driver =3D {
> >         .open   =3D loongson_pcm_open,
> >  };
> >
> > -static const struct regmap_config loongson_i2s_regmap_config =3D {
> > -       .reg_bits =3D 32,
> > -       .reg_stride =3D 4,
> > -       .val_bits =3D 32,
> > -       .max_register =3D 0x14,
> > -       .cache_type =3D REGCACHE_FLAT,
> > -};
> > -
> >  static int loongson_i2s_apbdma_config(struct platform_device *pdev)
> >  {
> >         int val;
> > --
> > 2.52.0
> >
> >

--=20
Thanks.
Binbin

