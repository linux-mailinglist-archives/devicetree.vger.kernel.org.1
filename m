Return-Path: <devicetree+bounces-265018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG8jFtWxjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:56:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DB612CBFF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AC4530154A3
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41961318ECA;
	Thu, 12 Feb 2026 10:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ze2iH1Q7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835FE31961A
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893762; cv=none; b=PGAilftRMHjXn+1KRB3SWxVP1zHjdZpfZTNO4PjeRAj7EEoEh90k6XeQchVjxOJPe2c3gV9Ikik7Dx7YBABGGNjeTEOZCRrd36OeV8AclV4SLQ/zUElqHbcqOEAutD2zt1gIQy5uV91PKsWHyNy1xLADIRpNveMu3jgcd6JYcoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893762; c=relaxed/simple;
	bh=RS00af9P9/DeA+D7z0dG5vR2qeqNt3oxiUIUEYfR5CA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Mq+v0K2wdNImbnm9xa41gPtcrbdDk2wtSEYep/+sUqSEFFbApG4XB3n56lCOFQHJ5sNK9i4QxEzmVZRUSiRJbdrJ2MMFycxnUkMtsmaI6u4NlPa3OntNCxDZ8W5P+F8ADq5bLnfj46eIXBSHL1TbCWu7j9sktiLyZ/PAfwo0U20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ze2iH1Q7; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3C7574E40CB9;
	Thu, 12 Feb 2026 10:55:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0E2EB606CA;
	Thu, 12 Feb 2026 10:55:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9E989119718DE;
	Thu, 12 Feb 2026 11:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770893751; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=E2SMN+BIfw5yU3tNiYXzFDMuLU0QrZTEoxC8Qr6cOtk=;
	b=ze2iH1Q7JcOz3PC+1edI9DyH7FNgeY2O/SqrulLsEv+NNy0oxvIX3GGxJTSk7qaSMfkM+Q
	ft82KE/dEwzOAoPrZdPoXJ+7x4NmsygE/QB9YV16Lsthl2Yj/o8C/5c5zMDW1HPgLSCvSP
	+qHMc7x2dw8FCchLABwuDBVsyWChf70KJQ82NbXynGKAPrgvr0EEXh6x9NsBbhOUYdDEjx
	bgZ+Sjdib7mQ0xCZ7PWQMFuSiwbzXmzQv/VfwLyhkOoZ/ChlRb3TiPhn7fHfIQQy8/aXYt
	7zsb4fjmm1EbdBm7he/Ybaw31NriUvag3ZVV8Q0iDJ9QgoxjR/8Q84xjbNLobA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Tudor Ambarus
 <tudor.ambarus@linaro.org>,  Mikhail Kshevetskiy
 <mikhail.kshevetskiy@iopsys.eu>,  Pablo Martin-Gomez
 <pmartin-gomez@freebox.fr>,  Tianling Shen <cnsztl@gmail.com>,  Pratyush
 Yadav <pratyush@kernel.org>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  alvinzhou@mxic.com.tw,  Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v5 3/3] mtd: spi-nand: macronix: Enable randomizer support
In-Reply-To: <20260211100553.907585-4-linchengming884@gmail.com> (Cheng Ming
	Lin's message of "Wed, 11 Feb 2026 18:05:53 +0800")
References: <20260211100553.907585-1-linchengming884@gmail.com>
	<20260211100553.907585-4-linchengming884@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 12 Feb 2026 11:55:43 +0100
Message-ID: <87ldgyxmc0.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265018-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mxic.com.tw:email]
X-Rspamd-Queue-Id: C7DB612CBFF
X-Rspamd-Action: no action

On 11/02/2026 at 18:05:53 +08, Cheng Ming Lin <linchengming884@gmail.com> w=
rote:

> From: Cheng Ming Lin <chengminglin@mxic.com.tw>
>
> Implement the 'set_randomizer' callback for Macronix SPI NAND chips.
> The randomizer is enabled by setting bit 1 of the Configuration Register
> (address 0x10).
>
> This patch adds support for the following chips:
>   - MX35LFxG24AD series
>   - MX35UFxG24AD series
>
> When the randomizer is enabled, data is scrambled internally during
> program operations and automatically descrambled during read operations.
> This helps reduce bit errors caused by program disturbance.
>
> Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
> ---
>  drivers/mtd/nand/spi/macronix.c | 46 +++++++++++++++++++++++++--------
>  1 file changed, 35 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/mtd/nand/spi/macronix.c b/drivers/mtd/nand/spi/macro=
nix.c
> index edf63b9996cf..3a9ab146426b 100644
> --- a/drivers/mtd/nand/spi/macronix.c
> +++ b/drivers/mtd/nand/spi/macronix.c
> @@ -14,6 +14,8 @@
>  #define MACRONIX_ECCSR_BF_LAST_PAGE(eccsr) FIELD_GET(GENMASK(3, 0), eccs=
r)
>  #define MACRONIX_ECCSR_BF_ACCUMULATED_PAGES(eccsr) FIELD_GET(GENMASK(7, =
4), eccsr)
>  #define MACRONIX_CFG_CONT_READ         BIT(2)
> +#define MACRONIX_CFG_RANDOMIZER_EN     BIT(1)
> +#define MACRONIX_FEATURE_ADDR_RANDOMIZER 0x10
>  #define MACRONIX_FEATURE_ADDR_READ_RETRY 0x70
>  #define MACRONIX_NUM_READ_RETRY_MODES 5
>=20=20
> @@ -146,7 +148,7 @@ static int macronix_set_cont_read(struct spinand_devi=
ce *spinand, bool enable)
>   * Return: 0 on success, a negative error code otherwise.
>   */
>  static int macronix_set_read_retry(struct spinand_device *spinand,
> -					     unsigned int retry_mode)
> +				   unsigned int retry_mode)

This is unrelated, it should be in an other commit.

>  {
>  	struct spi_mem_op op =3D SPINAND_SET_FEATURE_1S_1S_1S_OP(MACRONIX_FEATU=
RE_ADDR_READ_RETRY,
>  							       spinand->scratchbuf);
> @@ -155,6 +157,18 @@ static int macronix_set_read_retry(struct spinand_de=
vice *spinand,
>  	return spi_mem_exec_op(spinand->spimem, &op);
>  }
>=20=20
> +static int macronix_set_randomizer(struct spinand_device *spinand, bool =
enable)
> +{
> +	int ret;
> +
> +	ret =3D spinand_write_reg_op(spinand, MACRONIX_FEATURE_ADDR_RANDOMIZER,
> +				   enable ? MACRONIX_CFG_RANDOMIZER_EN :
> 0);

You can directly return. Same in the core BTW.

Otherwise with this and the binding document fixed, looks ok.

Thanks,
Miqu=C3=A8l

