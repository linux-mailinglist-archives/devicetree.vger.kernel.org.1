Return-Path: <devicetree+bounces-263674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAMbDBBZiGlnogQAu9opvQ
	(envelope-from <devicetree+bounces-263674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:36:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 734981083E1
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E32DB301B717
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64A2D34678D;
	Sun,  8 Feb 2026 09:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IOhci8oS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010B9346765
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770543350; cv=none; b=RYdIy9ugp6FZXPXYmYUe2ddFursuKwrACpVEEW3CZgl1cwLUwb+svbrfWWZgniekHRRCKOLHPB9wVTvrpU4zeAv69MVd31ON8wIckhUyLzL/gYM2QwxnikKCnmXGqE+RkFkcBnJ5gmPVks002CRlBS1mRRtEE8pSges/4nETUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770543350; c=relaxed/simple;
	bh=WCHl5DemabpyhnLUWX76It/3sUfmDTuYSHpdsEv6jLQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IfRHGAWi1dvPwHN+NFy69h1mLffcnsf/pd8i8wAEpGLShg7lWMHgsBjdP2HKGaORMbpjDMZW7eCcT7y/qpiSFZNPvXLR6BqWP0QV7+vB8qAHwKt+VXIwRH27/kQqJLp/q+mWBS8kROUwgn0qTQ3wN6vxe0djhZnrjQSC27/QoHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IOhci8oS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-482f454be5bso37205135e9.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770543348; x=1771148148; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5iZc9RqfK4a3YMrmNhUt/9wGJJUw6bZ4CSVXQbmLO10=;
        b=IOhci8oSb5rEScOpVnzbokVP4gr3kaAptBYXlExtxnrG8eXPgWccftd5NJ1aGDE5hs
         ojGvvanUsuea7MN0r1vQ3D+5E8f6e8hWeflOqHXsNW3QyM6nUQRm+LOMKn5f3E8uCm7C
         2AncIYhI4jnggB7nYJloOKWXFukMZci21ppiEw6J2/mqv6ASgDydxQe7OlwaN+iG0Eel
         LbbLVoXIyVpzKHTia3ClCOusNefQW1rEU4vhPmlPL+pVdRbyOV24Efx+cnbeKEkYQHuN
         Fht0SpYMMg/FZchpCTbcLeaXVg2k6IW+EH8KRJGTehqzgnwmatKqH1XnbydP1s7bQQYn
         TigQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770543348; x=1771148148;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5iZc9RqfK4a3YMrmNhUt/9wGJJUw6bZ4CSVXQbmLO10=;
        b=iNIfiNBNWI8Ln/siy82IN2Aosc32rk/pzMur9+AnD785B1W6seWNFIhf9h8I3gdSOl
         9PkTfPPxN5amv3rralCYLfYjI5z020z+rU+R4currnGUYgwJZVwOyMCXe/QYCr4H8Naj
         jX7Y4x4UtjD6q1+xw6poPGNGupg1MCVAgW+9GYRqpLlmXjCQndn285ujwDBQzxXT86ib
         Kmj/HibVaSgg7jlI98MByuCMo3wLq4XvSERSZzBRR3/FiyUez2NbM+ITmrAfHrzdquCH
         aVxuEGXaHNzun0wPpuoQn/u+6rr9y6UlNrnpTkhChe/HfK3QY2IXwtN+wzKieO6Ja8cV
         S/iw==
X-Forwarded-Encrypted: i=1; AJvYcCW+pe2QqMvovRDjOAKR8v1g+pGrMqEME0mwIVUk8psmoeWpQWL4fPMDPOJFLOlSILnvfeUvm1BAwFHh@vger.kernel.org
X-Gm-Message-State: AOJu0YzCZufM7qtj1PlFpHiGgKu/rxTemMEeM+wCEykChtg2HwYxXigT
	/NVXwAD3PECjJIkKzF8qp6hBam4wnPPxYncgwIx+O9Ib2CMrP3BC5vOd
X-Gm-Gg: AZuq6aKZePqdv3NDiaggrEeYPEyJFG2lGqKlbO1Cd56rI67jGmFdpOKHVOYZcA4mmyJ
	BNGlx16XxqgC/uTsB00ZIU85L2zw5mTSS4Q4Vzz9kKZ7oDUMu74B2WB1pmqH5nMrLOIdJ/j01sp
	Z8BXBdgU2FxsUj3WtBLzTM2pn+RvAGukumZJIPGq2dpXYAbNEC8ogWQd3j9QvGWZ4Y8m33mtX5x
	q55GNJ5IF3lXgT7ySDay2RDnaRha83zTBTccpPPPv6P2IRTJbprRuGK/WhkjLgrcOtofxnEoQf+
	qANtRT4swTrPAAPFNp1F8J/Q5srYSNijVzdXzTA5pGSv/HNZyLMrOCr5FoVb9/JmVxXxmexbJQm
	P+YX7NN6UAwtDZc+jLgsggnoY8726cqHu52XtviAB+zF72Oa9oVk8gN1Hd7nCU2R2l+lJKs1EQ9
	9/XlkIpNSxtU8DvNrcRclu4j0/QBwb6PEiJdeuAogbHNLuXsLW/mKiBqZMWLjs8Qz9oYFF3Q==
X-Received: by 2002:a05:600c:3588:b0:481:a662:b3f3 with SMTP id 5b1f17b1804b1-483203ab7b0mr132212605e9.7.1770543348179;
        Sun, 08 Feb 2026 01:35:48 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436297462a8sm16785577f8f.30.2026.02.08.01.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:35:47 -0800 (PST)
Message-ID: <c71d3ed0baffe4fc2d03a37d38aa3f03aeba7d6f.camel@gmail.com>
Subject: Re: [PATCH 6/6] iio: adc: ad4080: add support for AD4088
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Sun, 08 Feb 2026 09:36:52 +0000
In-Reply-To: <afcd7b733511ddf5e96d0b539fd3593edf3d8c45.1770382796.git.antoniu.miclaus@analog.com>
References: <cover.1770382796.git.antoniu.miclaus@analog.com>
	 <afcd7b733511ddf5e96d0b539fd3593edf3d8c45.1770382796.git.antoniu.miclaus@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263674-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 734981083E1
X-Rspamd-Action: no action

On Fri, 2026-02-06 at 15:08 +0200, Antoniu Miclaus wrote:
> Add support for AD4088 14-bit SAR ADC. The AD4088 has the same
> resolution as AD4087 (14-bit) but differs in LVDS CNV clock count
> maximum (8 vs 1).
>=20
> Changes:
> - Add AD4088_CHIP_ID definition (0x0058)
> - Create ad4088_channel with 14-bit resolution and 16-bit storage
> - Add ad4088_chip_info with lvds_cnv_clk_cnt_max =3D 8
> - Register AD4088 in device ID and OF match tables
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

Same,

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/adc/ad4080.c | 15 +++++++++++++++
> =C2=A01 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index 728df626f09e..fc261d3d7687 100644
> --- a/drivers/iio/adc/ad4080.c
> +++ b/drivers/iio/adc/ad4080.c
> @@ -133,6 +133,7 @@
> =C2=A0#define AD4085_CHIP_ID						0x0055
> =C2=A0#define AD4086_CHIP_ID						0x0056
> =C2=A0#define AD4087_CHIP_ID						0x0057
> +#define AD4088_CHIP_ID						0x0058
> =C2=A0
> =C2=A0#define AD4080_LVDS_CNV_CLK_CNT_MAX				7
> =C2=A0
> @@ -456,6 +457,8 @@ static const struct iio_chan_spec ad4086_channel =3D
> AD4080_CHANNEL_DEFINE(14, 16)
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4087_channel =3D AD4080_CHANNEL=
_DEFINE(14, 16);
> =C2=A0
> +static const struct iio_chan_spec ad4088_channel =3D AD4080_CHANNEL_DEFI=
NE(14, 16);
> +
> =C2=A0static const struct ad4080_chip_info ad4080_chip_info =3D {
> =C2=A0	.name =3D "ad4080",
> =C2=A0	.product_id =3D AD4080_CHIP_ID,
> @@ -536,6 +539,16 @@ static const struct ad4080_chip_info ad4087_chip_inf=
o =3D {
> =C2=A0	.lvds_cnv_clk_cnt_max =3D 1,
> =C2=A0};
> =C2=A0
> +static const struct ad4080_chip_info ad4088_chip_info =3D {
> +	.name =3D "ad4088",
> +	.product_id =3D AD4088_CHIP_ID,
> +	.scale_table =3D ad4080_scale_table,
> +	.num_scales =3D ARRAY_SIZE(ad4080_scale_table),
> +	.num_channels =3D 1,
> +	.channels =3D &ad4088_channel,
> +	.lvds_cnv_clk_cnt_max =3D 8,
> +};
> +
> =C2=A0static int ad4080_setup(struct iio_dev *indio_dev)
> =C2=A0{
> =C2=A0	struct ad4080_state *st =3D iio_priv(indio_dev);
> @@ -698,6 +711,7 @@ static const struct spi_device_id ad4080_id[] =3D {
> =C2=A0	{ "ad4085", (kernel_ulong_t)&ad4085_chip_info },
> =C2=A0	{ "ad4086", (kernel_ulong_t)&ad4086_chip_info },
> =C2=A0	{ "ad4087", (kernel_ulong_t)&ad4087_chip_info },
> +	{ "ad4088", (kernel_ulong_t)&ad4088_chip_info },
> =C2=A0	{ }
> =C2=A0};
> =C2=A0MODULE_DEVICE_TABLE(spi, ad4080_id);
> @@ -711,6 +725,7 @@ static const struct of_device_id ad4080_of_match[] =
=3D {
> =C2=A0	{ .compatible =3D "adi,ad4085", &ad4085_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4086", &ad4086_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4087", &ad4087_chip_info },
> +	{ .compatible =3D "adi,ad4088", &ad4088_chip_info },
> =C2=A0	{ }
> =C2=A0};
> =C2=A0MODULE_DEVICE_TABLE(of, ad4080_of_match);

