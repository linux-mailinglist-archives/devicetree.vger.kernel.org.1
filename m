Return-Path: <devicetree+bounces-263673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI1XGOJYiGlYogQAu9opvQ
	(envelope-from <devicetree+bounces-263673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:35:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC621083B6
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C7A003002B58
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1803233D6CF;
	Sun,  8 Feb 2026 09:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A9GeZYyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD9F33ADA9
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770543325; cv=none; b=Lf8O0IlyGauZIYRVeJuyf3pvBd+mrDcBLdF6L3zMilUWl00yp63LhPujEv1n/4bP+vOy3KHqcW7JqNivbrNG5S0Tg8z2B+70DJwtnEwh8yAjVDBjvg/RXRykAdQ+T9Lk7Na/+mQESc5FKQn1I8QISJ8NlWrD9siJJeCD2D9tCfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770543325; c=relaxed/simple;
	bh=d9U6GwSQ/7vFpEejYgiYa8ahEc/yyszDZ1xLAcBPuj8=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VDr2OGuWPBN/xPVxOppl8rwCuygFter4x8N6Cr2s4ANdJw4TIK60E8P00zf/gGu4XPD4Y02QuIHFI7z23tBHaaa+yr5+/ojVYrzn41W9irju3B2SQJYoNMkvBzTu75twP2d/83WjirDVpZ1JgPYsG4oGKuNb5RljrVvIsN8r7HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A9GeZYyB; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so28075705e9.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770543323; x=1771148123; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pyYL76OcCTb3+tyPFMjf25Mn3aXA80ZOjq+Jte1NcP8=;
        b=A9GeZYyBKTDJ/DoRYtAS86f8NyZACVeA5fBF4yAIVP/BbxV8XLfQMZdaz4hx5oZ/NS
         dMHFWxuqHC5VPed1/CXP91bbC+kUnaIl507dpfMbrlxVQErZ1X8E+kv6niSOJOSN1rJt
         JN77CRlGmTZFlGpZoxzr3leIGNeHdtIpL6sosxAk1SKNPOj58Rg9qS+9Ztm+/0ahuqd4
         AHYhdieTKBp7v9IreVHL23zyNyqHgcHhkovVLMoAkUQpxdndtmf1pN19G6mMQ/L+/dCx
         aAfsp0RZsquXO/WL4T91vy8964FdSwcmE0jEDcS4wEpyLHemdwNhcNYPPb4FM/ZjP73h
         WCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770543323; x=1771148123;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pyYL76OcCTb3+tyPFMjf25Mn3aXA80ZOjq+Jte1NcP8=;
        b=avgsaWisWwVNH9FqD7hp6D4rp1tQDRAkRwqcbg7oba4tq4B4CNYniTqcEUcgyYetg5
         n6nLGXlExgdmTvGbQKz8pzohFYntlVs6IFvPSSGPe1WhY7DZwjeUdwPxajQr0504Ql4m
         hj8IrvJDggBZcZMDm5ud3xrexjsowj+QJqvm12CoeW3Rv7deXxtZx6B9UI8qbp6bVuKH
         dyYOjZwrws6Kb40JHFzGq0MiM+Qvmn2XVrtzWawYu85qf6wgijZkg9st1zegjTc+N3Iw
         SEKX+ca8TWysC1EMX6jh9ftQrNqhp9jI1QxAzaZqIgUrZEzkV/kfcLMjo7GE4K1alpq3
         JBqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPrj88ToB2Pli7eVIIJNZz2x/XH8C0BSdDaJZJeMMG3hzoulJCISC3Y+jy2H5bLWI3Q0wLN1/tbZc/@vger.kernel.org
X-Gm-Message-State: AOJu0YwnylmPGa7GtmW2q/cVebMhEQ4DzYI1rBwDoZaIOKhgOr8cXWU6
	umP8bWAa5RCHbkf34lOVKODy3vx0o9u3I289uq8M5pg9QqxgrIgGTjA+
X-Gm-Gg: AZuq6aJPK7OWs8GESZorgeKsHgKvhV1R+L/NF42Fh6NrnP2j5wpNtNtWZRM3nRDV++A
	hfB9FNWfgikaGyL8bcacTQCuuy58hm2+GJiLBvkktnuNeU25iKWqxDRrGqBdheVogoCTpAkNlut
	TB32ECr6m+cg98vg9y4UnprX717gq69tP2SnQVEFmhkfqqY/zKeQWr65To95Bdl9eCXcm8O1jJK
	B9uYF5Jq5ORDtu5rjWPtctSTvTLP+dAajU+wqTEwPfxiFmFeh0FSOTrbSFbiBQt5mcNNmMddPxF
	wFSfHMoSPAUiFu0VSjRwOIwX/9Fd//hXcNzdny7f5K2Vsxrtho+2TiVLG/E00k66Hjkp+iXkGcr
	0h+iEANZUp6PeMXR0mUqmHyDEcqAnhYmaokM8fcFBJKsyh+79IEmry6QX+rSW5pUweew9kCfVQQ
	IIFV8JYU/BtErdtfHraNbT58Q9razF3j6ckBQ+BztxXkZLJ22FU8ksY5QGMVg=
X-Received: by 2002:a05:600c:81ca:b0:480:68ed:1e70 with SMTP id 5b1f17b1804b1-483202282c4mr131276045e9.35.1770543322861;
        Sun, 08 Feb 2026 01:35:22 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483203f529bsm67359295e9.4.2026.02.08.01.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:35:22 -0800 (PST)
Message-ID: <8f0d63a6d2a4cfca52ea6c80595a2f1eda3713cf.camel@gmail.com>
Subject: Re: [PATCH 4/6] iio: adc: ad4080: add support for AD4085
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Sun, 08 Feb 2026 09:36:26 +0000
In-Reply-To: <587dbc9c21b49c7d99b6b5b8dad419fad415e040.1770382796.git.antoniu.miclaus@analog.com>
References: <cover.1770382796.git.antoniu.miclaus@analog.com>
	 <587dbc9c21b49c7d99b6b5b8dad419fad415e040.1770382796.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263673-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7EC621083B6
X-Rspamd-Action: no action

On Fri, 2026-02-06 at 15:08 +0200, Antoniu Miclaus wrote:
> Add support for AD4085 16-bit SAR ADC. The AD4085 has the same
> resolution as AD4084 (16-bit) but differs in LVDS CNV clock count
> maximum (8 vs 2).
>=20
> Changes:
> - Add AD4085_CHIP_ID definition (0x0055)
> - Create ad4085_channel with 16-bit resolution and 16-bit storage
> - Add ad4085_chip_info with lvds_cnv_clk_cnt_max =3D 8
> - Register AD4085 in device ID and OF match tables
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
I do agree with Andy that the commit is too verbose. With that handled:

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/adc/ad4080.c | 15 +++++++++++++++
> =C2=A01 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index 7cbbe284dea7..728df626f09e 100644
> --- a/drivers/iio/adc/ad4080.c
> +++ b/drivers/iio/adc/ad4080.c
> @@ -130,6 +130,7 @@
> =C2=A0#define AD4082_CHIP_ID						0x0052
> =C2=A0#define AD4083_CHIP_ID						0x0053
> =C2=A0#define AD4084_CHIP_ID						0x0054
> +#define AD4085_CHIP_ID						0x0055
> =C2=A0#define AD4086_CHIP_ID						0x0056
> =C2=A0#define AD4087_CHIP_ID						0x0057
> =C2=A0
> @@ -449,6 +450,8 @@ static const struct iio_chan_spec ad4083_channel =3D
> AD4080_CHANNEL_DEFINE(16, 16)
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4084_channel =3D AD4080_CHANNEL=
_DEFINE(16, 16);
> =C2=A0
> +static const struct iio_chan_spec ad4085_channel =3D AD4080_CHANNEL_DEFI=
NE(16, 16);
> +
> =C2=A0static const struct iio_chan_spec ad4086_channel =3D AD4080_CHANNEL=
_DEFINE(14, 16);
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4087_channel =3D AD4080_CHANNEL=
_DEFINE(14, 16);
> @@ -503,6 +506,16 @@ static const struct ad4080_chip_info ad4084_chip_inf=
o =3D {
> =C2=A0	.lvds_cnv_clk_cnt_max =3D 2,
> =C2=A0};
> =C2=A0
> +static const struct ad4080_chip_info ad4085_chip_info =3D {
> +	.name =3D "ad4085",
> +	.product_id =3D AD4085_CHIP_ID,
> +	.scale_table =3D ad4080_scale_table,
> +	.num_scales =3D ARRAY_SIZE(ad4080_scale_table),
> +	.num_channels =3D 1,
> +	.channels =3D &ad4085_channel,
> +	.lvds_cnv_clk_cnt_max =3D 8,
> +};
> +
> =C2=A0static const struct ad4080_chip_info ad4086_chip_info =3D {
> =C2=A0	.name =3D "ad4086",
> =C2=A0	.product_id =3D AD4086_CHIP_ID,
> @@ -682,6 +695,7 @@ static const struct spi_device_id ad4080_id[] =3D {
> =C2=A0	{ "ad4082", (kernel_ulong_t)&ad4082_chip_info },
> =C2=A0	{ "ad4083", (kernel_ulong_t)&ad4083_chip_info },
> =C2=A0	{ "ad4084", (kernel_ulong_t)&ad4084_chip_info },
> +	{ "ad4085", (kernel_ulong_t)&ad4085_chip_info },
> =C2=A0	{ "ad4086", (kernel_ulong_t)&ad4086_chip_info },
> =C2=A0	{ "ad4087", (kernel_ulong_t)&ad4087_chip_info },
> =C2=A0	{ }
> @@ -694,6 +708,7 @@ static const struct of_device_id ad4080_of_match[] =
=3D {
> =C2=A0	{ .compatible =3D "adi,ad4082", &ad4082_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4083", &ad4083_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4084", &ad4084_chip_info },
> +	{ .compatible =3D "adi,ad4085", &ad4085_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4086", &ad4086_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4087", &ad4087_chip_info },
> =C2=A0	{ }

