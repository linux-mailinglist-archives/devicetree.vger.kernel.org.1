Return-Path: <devicetree+bounces-225586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7AABCF3BD
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 691B54E132A
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BBA257835;
	Sat, 11 Oct 2025 10:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N4BfHpj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A901E0DFE
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760179326; cv=none; b=tgaUhRqTD5qURoTqjU3payaKwcpIZ3FLUW0pe25Vw5KbmBcliPMdVgnrlAIEHRCurRm6iPg5ny+DlDyu42Z4ziYMmKN0ejwR2XnCnKckmbmHACqAbY1dw0Mq+SHQXvInpQynyNy6htozfIt8UPGIAdXNLz0C9u8j2jqyBEbysPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760179326; c=relaxed/simple;
	bh=7YGmsI/AyhEGNwVbcyoDoc/5++M0Tl9+P4bT27GsW/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DlnsgtzZOTisylF3eXkrZXF6UOERga7cCetQIu4B9RTRAKfQ6FRGkIZzKRWXdggTq4ktUeZjyHLCE/XENWcZ69p18FKxLKXpf8P0ym7V2TUgIBsY4mQZ6uY+qvyL1wspc4yK5VdqUXCDszOrnfupx+A51YOZum9Lg/70xNZcI1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N4BfHpj9; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6394938e0ecso4583550a12.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760179319; x=1760784119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqyDNC67ubeb2tHQvs3zOoppHPgwgyf6ppd+sV61gUM=;
        b=N4BfHpj9stiXsp5Bu435UtGMiGZuGn/6C67jJnEBpqYEK6wFvTiu/w5FApOInOcXav
         UORTJWX3L0CXw/WNWlzKkorOS8z5GRj0edbTheOBxmUmT/gC143DOalOwcsI9NEIGWxL
         6ThRWCG4oRzCIohSWtoyF0ndAUxvYSYH85VnrVycn9MQ4MXTbaJy2Mk+GbyyDPoIf7S3
         KNzg2DTytgqOSiN2cmhOXaDlzY28Dfys0/Cx28/m7pE2uscFVYFrQ5UuxLuOBKCYN3do
         igosOyvFyhT5z++xOdWRIVaBxlWtc3ONKBjwoaB5BdF2BUixVvW9ppqvC7s8UN3ethfa
         CxXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760179319; x=1760784119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OqyDNC67ubeb2tHQvs3zOoppHPgwgyf6ppd+sV61gUM=;
        b=MlK0FSDHQRx7jSUkrgxM82bqPIiHovGfWtZEWusEw1EKZzBiA4dodqOoC8t2CiZocV
         HFUfoumbrhwfbB4li7FxXsUcm7t4cV+aB+huphuilQhbxQVsdQT7fA2yywYN6ALyfGMh
         7mZwAzgY2plt8b4QxrqFNh2wxmNaB5QanHqx54P5vbdKRbY0xQX3LJ2/xJJAg8Y2pgNe
         2UedZt3a42w8zYuFdhmn1MrHRQytKc6z9djAlev9bwNjf7S/SmgeEVQWxh+4lB0foNu+
         xv35MV5kaapoUoEf3w7O0DeGgULMQIdLFE9FiCf0/b98DB2Ejy5DTI680Zz5NbvNR9N/
         SAJA==
X-Forwarded-Encrypted: i=1; AJvYcCVJJ4i8X0yUgHCgJI7aFsyFhxCwJp73p4w916v37EQ9QiD1rX2k4hRTobai0wWERTgZ9RRMFo4PSYCp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ag5Nvxr1CFqZkno5GPI0SW4YVORXxeHHqgMJ4Q8864eO+pEp
	xuVhRy84Otsyd1c0NM91aULjHOef7xXWbPDh5oCWj90wt2pRA66ddrlG
X-Gm-Gg: ASbGncuHbI8VMAewd0EbHxps2drptXv2FjNfjGuacdtBwPEGcMhQUzygpwiNfQyTOZu
	IGUaHVnxNUzohCQ9jC80CxAvbhCE9uURI/+HqeSKan33iALeFh65tL5l3249haRBX+/a4vE0fCo
	eeKHhS2d07+5ibvuyWscCJ4EI6DRQaHE2pFlSqlM5ft0qL3qIz+L83nJvjHzBtTW1GXyPQOhiF7
	nKmqkqXKrhFT5VhptuPDnB0bE9x9AwRGwjkNH4ZoYc8BSZwAxcvt9RH12tIZcy39xGzaJlmlOSu
	Xo16ZCcKCbNHq+1zN5Ex0cp6ShZYEZ8ZYdZaq8/onxD/q4zT09aS4YOny8n7+0uO2D7iuyL8xO7
	qHVbhTlJdQcV/3SgYeqsCcmyHI7NIsVWMRLp7aqghE+lcjwRlmKzEbL04YZmltII=
X-Google-Smtp-Source: AGHT+IFniI0WsDXjo4z3UaAWm2jZN00980pqXioaMnWWaQ/4U3UhS7uWYQBxdSYInHj9x0mV1hCBAA==
X-Received: by 2002:a05:6402:5106:b0:634:544b:a756 with SMTP id 4fb4d7f45d1cf-639d5c59407mr12973844a12.32.1760179319203;
        Sat, 11 Oct 2025 03:41:59 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a52b10072sm4482832a12.16.2025.10.11.03.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 03:41:58 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH 04/15] mtd: nand: sunxi: move ecc strenghts in sunxi_nfc_caps
Date: Sat, 11 Oct 2025 12:41:56 +0200
Message-ID: <13861163.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <20251010084042.341224-5-richard.genoud@bootlin.com>
References:
 <20251010084042.341224-1-richard.genoud@bootlin.com>
 <20251010084042.341224-5-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi!

Dne petek, 10. oktober 2025 ob 10:40:31 Srednjeevropski poletni =C4=8Das je=
 Richard Genoud napisal(a):
> H6/H616 has more ecc strenghts.
> This commit prepares the change.
> No functional change.

=46ormat looks weird. Reword message to something like moving ecc to caps w=
hich
will allow expand support for newer cores.

Also, there should be empty line before "No functional change."

Best regards,
Jernej

>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
> ---
>  drivers/mtd/nand/raw/sunxi_nand.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sun=
xi_nand.c
> index 10a48e0d361f..198dd40f9220 100644
> --- a/drivers/mtd/nand/raw/sunxi_nand.c
> +++ b/drivers/mtd/nand/raw/sunxi_nand.c
> @@ -213,11 +213,15 @@ static inline struct sunxi_nand_chip *to_sunxi_nand=
(struct nand_chip *nand)
>   *			through MBUS on A23/A33 needs extra configuration.
>   * @reg_io_data:	I/O data register
>   * @dma_maxburst:	DMA maxburst
> + * @ecc_strengths:	Available ECC strengths array
> + * @nstrengths:		Size of @ecc_strengths
>   */
>  struct sunxi_nfc_caps {
>  	bool has_mdma;
>  	unsigned int reg_io_data;
>  	unsigned int dma_maxburst;
> +	const u8 *ecc_strengths;
> +	unsigned int nstrengths;
>  };
> =20
>  /**
> @@ -1619,9 +1623,9 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_=
chip *nand,
>  				       struct nand_ecc_ctrl *ecc,
>  				       struct device_node *np)
>  {
> -	static const u8 strengths[] =3D { 16, 24, 28, 32, 40, 48, 56, 60, 64 };
>  	struct sunxi_nand_chip *sunxi_nand =3D to_sunxi_nand(nand);
>  	struct sunxi_nfc *nfc =3D to_sunxi_nfc(nand->controller);
> +	const u8 *strengths =3D nfc->caps->ecc_strengths;
>  	struct mtd_info *mtd =3D nand_to_mtd(nand);
>  	struct nand_device *nanddev =3D mtd_to_nanddev(mtd);
>  	int nsectors;
> @@ -1645,7 +1649,7 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_=
chip *nand,
> =20
>  		ecc->strength =3D bytes * 8 / fls(8 * ecc->size);
> =20
> -		for (i =3D 0; i < ARRAY_SIZE(strengths); i++) {
> +		for (i =3D 0; i < nfc->caps->nstrengths; i++) {
>  			if (strengths[i] > ecc->strength)
>  				break;
>  		}
> @@ -1666,7 +1670,7 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_=
chip *nand,
>  	}
> =20
>  	/* Add ECC info retrieval from DT */
> -	for (i =3D 0; i < ARRAY_SIZE(strengths); i++) {
> +	for (i =3D 0; i < nfc->caps->nstrengths; i++) {
>  		if (ecc->strength <=3D strengths[i]) {
>  			/*
>  			 * Update ecc->strength value with the actual strength
> @@ -1677,7 +1681,7 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_=
chip *nand,
>  		}
>  	}
> =20
> -	if (i >=3D ARRAY_SIZE(strengths)) {
> +	if (i >=3D nfc->caps->nstrengths) {
>  		dev_err(nfc->dev, "unsupported strength\n");
>  		return -ENOTSUPP;
>  	}
> @@ -2167,15 +2171,23 @@ static void sunxi_nfc_remove(struct platform_devi=
ce *pdev)
>  		dma_release_channel(nfc->dmac);
>  }
> =20
> +static const u8 sunxi_ecc_strengths_a10[] =3D {
> +	16, 24, 28, 32, 40, 48, 56, 60, 64
> +};
> +
>  static const struct sunxi_nfc_caps sunxi_nfc_a10_caps =3D {
>  	.reg_io_data =3D NFC_REG_A10_IO_DATA,
>  	.dma_maxburst =3D 4,
> +	.ecc_strengths =3D sunxi_ecc_strengths_a10,
> +	.nstrengths =3D ARRAY_SIZE(sunxi_ecc_strengths_a10),
>  };
> =20
>  static const struct sunxi_nfc_caps sunxi_nfc_a23_caps =3D {
>  	.has_mdma =3D true,
>  	.reg_io_data =3D NFC_REG_A23_IO_DATA,
>  	.dma_maxburst =3D 8,
> +	.ecc_strengths =3D sunxi_ecc_strengths_a10,
> +	.nstrengths =3D ARRAY_SIZE(sunxi_ecc_strengths_a10),
>  };
> =20
>  static const struct of_device_id sunxi_nfc_ids[] =3D {
>=20





