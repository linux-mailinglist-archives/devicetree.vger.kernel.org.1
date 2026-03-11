Return-Path: <devicetree+bounces-274234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAqkOseYsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C4C26763E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 27FFF3027324
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E693DEAEB;
	Wed, 11 Mar 2026 16:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fgXVQagF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB4C21CC58
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246650; cv=pass; b=QQy7MMyFN7tMN6Bg/MZIt75/eQBgXlFlJR22TLwOMe2CfyFLBEWdJGLEizQDxF0Rterrq3P9S1VLE/E4ov3YMkPP5ZPaByUXvjXAwl+uOub6ygm5ho8lK8CKG3ClKk+GU6X0vLmFlXzzGRE/U6YM/Pp5yIyC3ThONwiIwn1rltQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246650; c=relaxed/simple;
	bh=woA76R/zthBQbfC1VYBOosax5tbPAH9jY/O9XtXN6jw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E9t8FyPP1VRIdOFR1Tq/WUutfZlU94J+MSU+EdEpTBzUJP1aAzblJGPNb9u8gavowJeRJ4lKXYcdBxMTFa4mui4afSffPKpQ9t+KaexsKxo8jxyg2DcZz7Ek0FnxY96HzwYkRgUi6NNVLlARtCzlMNqjQYZE/AyUFCmVvH+kSpE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fgXVQagF; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a43f1f978so1035141fa.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773246647; cv=none;
        d=google.com; s=arc-20240605;
        b=AWcjqWlgseCL7botGCXIyUGTfXViTRur1e01cdPbL/e1dsrwEZ3EWssN8fPgmyRaxQ
         c9H3spyisdhVJ/yRy8FYj6ri9A2A4/f7jmdXAval8JfNo+/Bm4fHjtpbg4McUAGnKUuY
         UEtTCTvOfKA3QCWfwU/MjTmPs19WKzCXcBW8M2MmVvm65mQ+Ol5j3tlk24HoVB1ntRUs
         fELrKCIfdcs1jloxc0F3P2nOgPvEOHfOwSzohlSgcHdQnB15G98DHv6teTxmnc56mQ/4
         puh/23u8ybcSn7okhb9hRy03EPgktJMBzlOUUYfDQW7OShiwJikD2H7glxszwMDiCcPw
         WGhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dot4zTa3PMnGQX7NybErwcRiPk9Qg7i1fx2G3TBPUrs=;
        fh=QyK/yfVWt2kvEuB6QO0CkIj++THmWtASsDbVgWbs6vc=;
        b=erbNcdR/wkUX2EDOFTaWPO1G734yY+JKs8O93Nt/qhLq8GZwcfaTaILyovw3QRCJ9o
         1aFeP6n5+g9kZ8Vu9voz2Df7QduaYBFWTwpXPKQcZHmJvIXVK/ndA4PoVamSREdzpxxr
         Y0MmBM2M17ACcTBuvGzEZEppJO/3KLYLrTkP1L97/5cpvlkDmvVcBKJutZvC/9tiTtI/
         SQbsdj78wWZXalbNMLgZM/mxFVn/jQZwCYISQSzwuN8BpeIFvHVyXiMfaYIp5Iy8w5if
         e0bLH93hjOZyOybg5YzGmoVt3E/fWP1CFiDwvbV4u+x3MIpK0XMyDQTGiFSkAZRVtCh2
         hE5Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773246647; x=1773851447; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dot4zTa3PMnGQX7NybErwcRiPk9Qg7i1fx2G3TBPUrs=;
        b=fgXVQagF4BMWf0h/31b9RO9O30b5Gq2bx01X+GB14DZV0TEjvfZMQBupXhtNStAZnS
         xIaSVdBv6Ch8FyJdjS81jRgulWk+TtyIrHw47TjX6nEX5QoAcogrEBSGtsQHGiz63hK1
         GGOC7yOfE3TK8wnoZyWVKpdKcsOTnwNsncQzVxiusSStRKITNyZHPXlK9T3URkxYYX0f
         ZUMogPkNpwuY49u2fg08Bd2EXVkb1+cpeGNoELDd4B7UV9nM+SeZhLkRiPaUD910dZLR
         Ql4u0xaF84FE/JkqQak3CvhYTPLi/n4kvuHpKwKERTYh2eokymziEUVfhAOd/7LK/QwZ
         8lyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246647; x=1773851447;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dot4zTa3PMnGQX7NybErwcRiPk9Qg7i1fx2G3TBPUrs=;
        b=gPq4bbbRvnW79gF7bf6ZlfLGVHQ9S0QmV9zfVbl0HnEGJgwTcmeBBcsvuHqJvTGkkw
         zispfU2l4uMiSBMdHB2g6itPJtsMOC9XndoVuAX4i9pCGC4xQgGz/VcBXVzWVP+q5LXA
         fwCpNmQUxR8EIyh9UVOypq4uJLpybCBRmC4QcDVMkXPjn5H/0Uic5PA9JHbZlZK2Aap9
         NAn8x3uPmBDq2Xh0Go1q/m5YBJv75VG77vRpRSkSwbnv3EoNnHGtpPFwHWV9SL4Jnq84
         pKGAiMPbT/E5Eo9NJcDqpsGPGKCcIl00ovcDoAQSX/xnIXXK/KmuTjExCkfM/e7ZCGsA
         frxA==
X-Forwarded-Encrypted: i=1; AJvYcCUSMeJn7P7NPp/Jm9ZP/ILCXiYwk+bI/D9FNpV9lza3P44eDMXEttiPDdyjiZHG9JhBCTgTH6yp/DfW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+FQZWlNAgWj0o63KAtsg+UFZtWtFY7v8shhFyisG98AF1NQEs
	5umUwYNQBAfk7qnL9kIoSw+qqNWkvwPgg+zNklZhD30oNnZaEr1XaqI/Ma5pydmRRVdAKZn7+Xd
	1hvKfwUwrSn2c+e882iAejjbKTqGjAoA=
X-Gm-Gg: ATEYQzwURoXaVLR0bjX+3C5AyBiIeylg8YLyv3ASDDRIc7EOjq8qNr4/OknxBurf93R
	UKbX4FK4vo1dCuoEViz9nY0H4TSUWO+XkHdRTYzBpP1RIYeNV3qtTHIfxvkqHWBGTAsopvyepcN
	VmkJWCPVbZPZp5L30ry13e8WqbHFV8KBoZEKZRGzYGMsT2eJ8JhDTpuOFp7Ijq0qdabnmqSf/SZ
	YWNkNuAi0me3M9+GLpOmtcByPxz0UN3Tl2e+d9UVutZLfe1xvA4ydqRE0G0x+U4XZau2YvlX4TW
	qgPkbaI8ng0ZjEbUECu+PAlAnkghb1TMs/T5q966omBqxcwniNv1JLU2RRpEg45Mb49x
X-Received: by 2002:a05:651c:1592:b0:388:ff9:2cea with SMTP id
 38308e7fff4ca-38a67e7b656mr11232521fa.37.1773246646545; Wed, 11 Mar 2026
 09:30:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-aw88166-fw-v1-0-2777563bb673@gmail.com>
 <20260310-aw88166-fw-v1-2-2777563bb673@gmail.com> <20260311-glittering-elastic-deer-a2fa58@quoll>
In-Reply-To: <20260311-glittering-elastic-deer-a2fa58@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Mar 2026 11:30:34 -0500
X-Gm-Features: AaiRm51mfBNwnGfsxvCM51IBlOwc607hTXghLXE4HEW0nfH4QMCv7NmTEcbx5hA
Message-ID: <CALHNRZ-KxT0B1zpPD1N7ba6185cqh6q-z-WMxbpU68FRuGJXEA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: aw88166: Support device specific firmware
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Weidong Wang <wangweidong.a@awinic.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274234-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,awinic.com,perex.cz,suse.com,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 32C4C26763E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 8:15=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Mar 10, 2026 at 11:43:05PM -0500, Aaron Kling wrote:
> > From: Teguh Sobirin <teguh@sobir.in>
> >
> > This driver currently loads firmware from a hardcoded path. Support
> > loading device specific firmware when provided by the boot firmware.
> >
> > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > Co-authored-by: Aaron Kling <webgeek1234@gmail.com>
>
> There is no such tag.

What do you mean? This tag is used all [0] over [1] the kernel [2].
How else is one supposed to indicate that that notable changes have
been made since the original author touched it?

> Also, incomplete DCO chain.

Ack, will fix. And somehow b4 didn't catch it, huh. Pretty sure I've
seen it catch this elsewhere, though.

> > ---
> >  sound/soc/codecs/aw88166.c | 19 +++++++++++++++----
> >  1 file changed, 15 insertions(+), 4 deletions(-)
> >
> > diff --git a/sound/soc/codecs/aw88166.c b/sound/soc/codecs/aw88166.c
> > index daee4de9e3b01fb335975a65456cc79575533d7e..52d33a2f7cb12877138ea50=
83ad42e2777f8d323 100644
> > --- a/sound/soc/codecs/aw88166.c
> > +++ b/sound/soc/codecs/aw88166.c
> > @@ -1574,18 +1574,22 @@ static int aw88166_dev_init(struct aw88166 *aw8=
8166, struct aw_container *aw_cfg
> >  static int aw88166_request_firmware_file(struct aw88166 *aw88166)
> >  {
> >       const struct firmware *cont =3D NULL;
> > +     const char *fw_name;
> >       int ret;
> >
> >       aw88166->aw_pa->fw_status =3D AW88166_DEV_FW_FAILED;
> >
> > -     ret =3D request_firmware(&cont, AW88166_ACF_FILE, aw88166->aw_pa-=
>dev);
> > +     if (device_property_read_string(aw88166->aw_pa->dev, "firmware-na=
me", &fw_name) < 0)
> > +             fw_name =3D AW88166_ACF_FILE;
> > +
> > +     ret =3D request_firmware(&cont, fw_name, aw88166->aw_pa->dev);
> >       if (ret) {
> > -             dev_err(aw88166->aw_pa->dev, "request [%s] failed!\n", AW=
88166_ACF_FILE);
> > +             dev_err(aw88166->aw_pa->dev, "request [%s] failed!\n", fw=
_name);
> >               return ret;
> >       }
> >
> >       dev_dbg(aw88166->aw_pa->dev, "loaded %s - size: %zu\n",
> > -                     AW88166_ACF_FILE, cont ? cont->size : 0);
> > +                     fw_name, cont ? cont->size : 0);
> >
> >       aw88166->aw_cfg =3D devm_kzalloc(aw88166->aw_pa->dev,
> >                       struct_size(aw88166->aw_cfg, data, cont->size), G=
FP_KERNEL);
> > @@ -1599,7 +1603,7 @@ static int aw88166_request_firmware_file(struct a=
w88166 *aw88166)
> >
> >       ret =3D aw88395_dev_load_acf_check(aw88166->aw_pa, aw88166->aw_cf=
g);
> >       if (ret) {
> > -             dev_err(aw88166->aw_pa->dev, "load [%s] failed!\n", AW881=
66_ACF_FILE);
> > +             dev_err(aw88166->aw_pa->dev, "load [%s] failed!\n", fw_na=
me);
> >               return ret;
> >       }
> >
> > @@ -1802,9 +1806,16 @@ static const struct i2c_device_id aw88166_i2c_id=
[] =3D {
> >  };
> >  MODULE_DEVICE_TABLE(i2c, aw88166_i2c_id);
> >
> > +static const struct of_device_id aw88166_of_match[] =3D {
> > +     { .compatible =3D "awinic,aw88166" },
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, aw88166_of_match);
>
> This looks like an unrelated change.

Without this, I don't think the driver will read from the dt node at
all. Since this change requires doing so, I figured it was related
enough. But I can split that if desired.

Aaron

[0] https://lore.kernel.org/all/20220107160636.6555-3-ckeepax@opensource.ci=
rrus.com/
[1] https://lore.kernel.org/all/20260115164203.811470351@linuxfoundation.or=
g/
[2] https://lore.kernel.org/all/f7e05205fd33d9e510ec1295e0cc8cfdf395cb89.17=
56237895.git.osandov@osandov.com/

