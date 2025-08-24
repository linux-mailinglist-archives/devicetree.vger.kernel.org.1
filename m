Return-Path: <devicetree+bounces-208730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDC3B3318B
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 18:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE92F201112
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 16:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DD027D782;
	Sun, 24 Aug 2025 16:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="q4+dveV7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67FC1A2545
	for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756054316; cv=none; b=WPdSEvCS48ehCBl3YE2ECOQK7W6exVePyzQx6CpRQVcXoxk7d0X6nXu9jpGC+R6Vckcy+YtVFJSxO8vL9IBZf+86AdqehR/k5N6sDB/Rx3mny/ZUOdno1A1Q29SZU+ZNJUnbbuDl9ua5wYzcLL66wX7FIU7RllTbh0iwc7uq8h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756054316; c=relaxed/simple;
	bh=U5JJbKFKFotlNqjL4ZGnbdWLoRsgVclqjvDwE97Tqn4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QcjDCul39aTAEY4CNcCJBAZlvmtb0PQcCMraxaIAKt/8Z80YZVp/nMNNlJPq7Vuxq0otv+KblFbzDKlDSRjOixBSATQCRBbr9hac3tS+Yn1x4mQSPvLCxo8+WQu2fxU53gdGiK+K/lyourbF6yyY+ChudelHzyF743NPKLFVS+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=q4+dveV7; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id EF3CB4E40C29;
	Sun, 24 Aug 2025 16:51:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B814A605F1;
	Sun, 24 Aug 2025 16:51:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B8F631C228A5B;
	Sun, 24 Aug 2025 18:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1756054310; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cd5EIb96Cri+y4nLIx017yMZKGGUnXfte+tV7IjmRZI=;
	b=q4+dveV7L4uoQNawZ+oijGdmWSuwqpPv1Z7tyBROJELEX/Wy48Reip7ojO58Z72v2LydBm
	5/TgKezvJQsBThMltw2uVCjLbbjLRgX8e+u3xhsa4oEk6+ENapuDEMR4f2UShLFrBS3FAH
	aSepbOl70l3miMUYVIsAQtYLDIulnaMPhu7etRDWqhlKsT3nRp9TU9hinh42ecEO5k5GjL
	99/4xXL0G+HRQL/RSo09qHk2MhvdFdNbpJ7qPx72pLmCYJAOolPZTUi9bb5SpEy+yaJng7
	otYOWNUxhUXtZEgMydzfKNlhercgNnUBdfIvJgJ98D7zVOlAjAMEabUTWoVWQg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] mtd: nand: realtek-ecc: Add Realtek external ECC
 engine support
In-Reply-To: <20250818092725.1977105-3-markus.stockhausen@gmx.de> (Markus
	Stockhausen's message of "Mon, 18 Aug 2025 05:27:25 -0400")
References: <20250818092725.1977105-1-markus.stockhausen@gmx.de>
	<20250818092725.1977105-3-markus.stockhausen@gmx.de>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Sun, 24 Aug 2025 18:51:28 +0200
Message-ID: <87ldn8hddb.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hi Markus,

On 18/08/2025 at 05:27:25 -04, Markus Stockhausen <markus.stockhausen@gmx.d=
e> wrote:

> The Realtek RTl93xx switch SoC series has a built in ECC controller
> that can provide BCH6 or BCH12 over 512 data and 6 tag bytes. It
> generates 10 (BCH6) or 20 (BCH12) bytes of parity.
>
> This engine will most likely work in conjunction with the Realtek
> spi-mem based NAND controller but can work on its own. Therefore
> the initial implementation will be of type external.
>
> Remark! The engine can support any data blocks that are multiples
> of 512 bytes. For now limit it to data+oob layouts that have been
> analyzed from existing devices. This way it keeps compatibility
> and pre-existing vendor data can be read.
>
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---

Very happy to see a new external ECC driver!

>  drivers/mtd/nand/Kconfig       |   8 +
>  drivers/mtd/nand/Makefile      |   1 +
>  drivers/mtd/nand/ecc-realtek.c | 433 +++++++++++++++++++++++++++++++++
>  3 files changed, 442 insertions(+)
>  create mode 100644 drivers/mtd/nand/ecc-realtek.c
>
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index 5b0c2c95f10c..4a17271076bc 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -61,6 +61,14 @@ config MTD_NAND_ECC_MEDIATEK
>  	help
>  	  This enables support for the hardware ECC engine from Mediatek.
>=20=20
> +config MTD_NAND_ECC_REALTEK
> +        tristate "Realtek RTL93xx hardware ECC engine"
> +        depends on HAS_IOMEM
> +        depends on MACH_REALTEK_RTL || COMPILE_TEST
> +        select MTD_NAND_ECC
> +        help
> +          This enables support for the hardware ECC engine from Realtek.
> +
>  endmenu
>=20=20
>  endmenu
> diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
> index 44913ff1bf12..2e0e56267718 100644
> --- a/drivers/mtd/nand/Makefile
> +++ b/drivers/mtd/nand/Makefile
> @@ -3,6 +3,7 @@
>  nandcore-objs :=3D core.o bbt.o
>  obj-$(CONFIG_MTD_NAND_CORE) +=3D nandcore.o
>  obj-$(CONFIG_MTD_NAND_ECC_MEDIATEK) +=3D ecc-mtk.o
> +obj-$(CONFIG_MTD_NAND_ECC_REALTEK) +=3D ecc-realtek.o
>  obj-$(CONFIG_SPI_QPIC_SNAND) +=3D qpic_common.o
>  obj-$(CONFIG_MTD_NAND_QCOM) +=3D qpic_common.o
>  obj-y	+=3D onenand/
> diff --git a/drivers/mtd/nand/ecc-realtek.c b/drivers/mtd/nand/ecc-realte=
k.c
> new file mode 100644
> index 000000000000..a9c2a3a23b78
> --- /dev/null
> +++ b/drivers/mtd/nand/ecc-realtek.c
> @@ -0,0 +1,433 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Support for Realtek hardware ECC engine in RTL93xx SoCs
> + */
> +
> +#include <linux/dma-mapping.h>
> +#include <linux/mtd/nand.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +/*
> + * The Realtek ECC engine has two operation modes.
> + *
> + * - BCH6 : Generate 10 ECC bytes from 512 data bytes plus 6 tag bytes
> + * - BCH12: Generate 20 ECC bytes from 512 data bytes plus 6 tag
>  bytes

What is a tag? I believe it is Realtek wording and we need to find a
more generic translation.

> + *
> + * It can run for arbitrary NAND flash chips with different block and OO=
B sizes. Currently there
> + * are only two known devices in the wild that have NAND flash and make =
use of this ECC engine
> + * (Linksys LGS328C & LGS352C). To keep compatibility with vendor firmwa=
re, new modes can only
> + * be added when new data layouts have been analyzed. For now allow BCH6=
 on flash with 2048 byte
> + * blocks and 64 bytes oob.
> + */
> +
> +#define RTL_ECC_ALLOWED_PAGE_SIZE 	2048
> +#define RTL_ECC_ALLOWED_OOB_SIZE	64
> +#define RTL_ECC_ALLOWED_STRENGTH	6
> +
> +#define RTL_ECC_BLOCK_SIZE 		512
> +#define RTL_ECC_TAG_SIZE 		6
> +#define RTL_ECC_PARITY_SIZE_BCH6	10
> +#define RTL_ECC_PARITY_SIZE_BCH12	20
> +
> +/*
> + * The engine is fed with two DMA regions. One for data (always 512 byte=
s) and one for tag and
> + * parity (either 16 bytes for BCH6 or 26 bytes for BCH12). Start and le=
ngth of each must be
> + * aligned to a multiple of 4.
> + */
> +
> +#define RTL_ECC_DMA_TAG_PARITY_SIZE	ALIGN(RTL_ECC_TAG_SIZE + RTL_ECC_PAR=
ITY_SIZE_BCH12, 4)
> +#define RTL_ECC_DMA_SIZE		(RTL_ECC_BLOCK_SIZE + RTL_ECC_DMA_TAG_PARITY_S=
IZE)
> +
> +#define RTL_ECC_CFG			0x00
> +#define   RTL_ECC_BCH6			0
> +#define   RTL_ECC_BCH12			BIT(28)
> +#define   RTL_ECC_DMA_PRECISE		BIT(12)
> +#define   RTL_ECC_BURST_128		GENMASK(1, 0)
> +#define RTL_ECC_DMA_TRIGGER 		0x08
> +#define   RTL_ECC_OP_DECODE		0
> +#define   RTL_ECC_OP_ENCODE		BIT(0)
> +#define RTL_ECC_DMA_START		0x0c
> +#define RTL_ECC_DMA_TAG			0x10
> +#define RTL_ECC_STATUS			0x14
> +#define   RTL_ECC_CORR_COUNT		GENMASK(19, 12)
> +#define   RTL_ECC_RESULT		BIT(8)
> +#define   RTL_ECC_ALL_ONE		BIT(4)
> +#define   RTL_ECC_OP_STATUS		BIT(0)
> +
> +struct rtl_ecc_engine {
> +	struct device *dev;
> +	struct nand_ecc_engine engine;
> +	struct mutex lock;
> +	char *buf;
> +	dma_addr_t buf_dma;
> +	struct regmap *regmap;
> +};
> +
> +struct rtl_ecc_ctx {
> +	struct rtl_ecc_engine * rtlc;
> +	struct nand_ecc_req_tweak_ctx req_ctx;
> +	int steps;
> +	int bch_mode;
> +	int parity_size;
> +	int rc_bitflips;
> +	int rc_status;
> +};
> +
> +static const struct regmap_config rtl_ecc_regmap_config =3D {
> +	.reg_bits	=3D 32,
> +	.val_bits	=3D 32,
> +	.reg_stride	=3D 4,
> +};
> +
> +static inline void *nand_to_ctx(struct nand_device *nand)
> +{
> +	return nand->ecc.ctx.priv;
> +}
> +
> +static inline struct rtl_ecc_engine *nand_to_rtlc(struct nand_device *na=
nd)
> +{
> +	struct nand_ecc_engine *eng =3D nand->ecc.engine;
> +
> +	return container_of(eng, struct rtl_ecc_engine, engine);
> +}
> +
> +static int rtl_ecc_ooblayout_ecc(struct mtd_info *mtd, int section,
> +				 struct mtd_oob_region *oobregion)
> +{
> +	struct nand_device *nand =3D mtd_to_nanddev(mtd);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +
> +	if (section < 0 || section >=3D ctx->steps)
> +		return -ERANGE;
> +
> +	oobregion->offset =3D ctx->steps * RTL_ECC_TAG_SIZE + section * ctx->pa=
rity_size;
> +	oobregion->length =3D ctx->parity_size;

Please reserve 2 bytes for BBM.

For me it looks like you have a bit free section and a bit ECC
section. If that simplifies your life, you can just return a single
section for both.

> +
> +	return 0;
> +}
> +
> +static int rtl_ecc_ooblayout_free(struct mtd_info *mtd, int section,
> +				struct mtd_oob_region *oobregion)
> +{
> +	struct nand_device *nand =3D mtd_to_nanddev(mtd);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +
> +	if (section < 0 || section >=3D ctx->steps)
> +		return -ERANGE;
> +
> +	/* Tags can hold arbitrary values, so they are free for user data */
> +	oobregion->offset =3D section * RTL_ECC_TAG_SIZE;
> +	oobregion->length =3D RTL_ECC_TAG_SIZE;
> +
> +	return 0;
> +}
> +
> +static const struct mtd_ooblayout_ops rtl_ecc_ooblayout_ops =3D {
> +	.ecc =3D rtl_ecc_ooblayout_ecc,
> +	.free =3D rtl_ecc_ooblayout_free,
> +};
> +
> +static void rtl_ecc_kick_engine(struct rtl_ecc_ctx *ctx, int operation)
> +{
> +	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
> +
> +	regmap_write(rtlc->regmap, RTL_ECC_CFG,
> +		     ctx->bch_mode | RTL_ECC_BURST_128 | RTL_ECC_DMA_PRECISE);
> +
> +	regmap_write(rtlc->regmap, RTL_ECC_DMA_START, rtlc->buf_dma);
> +	regmap_write(rtlc->regmap, RTL_ECC_DMA_TAG, rtlc->buf_dma + RTL_ECC_BLO=
CK_SIZE);
> +	regmap_write(rtlc->regmap, RTL_ECC_DMA_TRIGGER, operation);
> +}
> +
> +static void rtl_ecc_wait_for_engine(struct rtl_ecc_ctx *ctx)
> +{
> +	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
> +	int ret, status;
> +	bool all_one;
> +
> +	/*
> +	 * The ECC engine needs 6-8 us to encode/decode a BCH6 syndrome for 512=
 bytes of data
> +	 * and 6 tag bytes. In case the NAND area has been erased and all data =
and oob is
> +	 * set to 0xff, decoding takes 30us (reason unknown). Although the engi=
ne can trigger
> +	 * interrupts when finished, use active polling for now. 12 us maximum =
wait time has
> +	 * proven to be a good tradeoff between performance and overhead.
> +	 */
> +
> +	ret =3D regmap_read_poll_timeout(rtlc->regmap, RTL_ECC_STATUS, status,
> +				       !(status & RTL_ECC_OP_STATUS), 12, 600);
> +	if (ret) {
> +		ctx->rc_status =3D ret;
> +		return;

Please make this function return an int and use it in the caller instead
of using an intermediate status variable for that.

> +	}
> +
> +	all_one =3D FIELD_GET(RTL_ECC_ALL_ONE, status);
> +	ctx->rc_status =3D FIELD_GET(RTL_ECC_RESULT, status);
> +	ctx->rc_bitflips =3D FIELD_GET(RTL_ECC_CORR_COUNT, status);
> +
> +	/* For erased blocks (all bits one) error status can be ignored */
> +	if (ctx->rc_status && all_one)
> +		ctx->rc_status =3D 0;
> +}
> +
> +static void rtl_ecc_run_engine(struct rtl_ecc_ctx *ctx, char *data, char=
 *tag,
> +			       char *parity, int operation)
> +{
> +	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
> +	char *buf_parity =3D rtlc->buf + RTL_ECC_BLOCK_SIZE + RTL_ECC_TAG_SIZE;
> +	char *buf_tag =3D rtlc->buf + RTL_ECC_BLOCK_SIZE;
> +	char *buf_data =3D rtlc->buf;
> +
> +	mutex_lock(&rtlc->lock);
> +
> +	memcpy(buf_data, data, RTL_ECC_BLOCK_SIZE);
> +	memcpy(buf_tag, tag, RTL_ECC_TAG_SIZE);
> +	memcpy(buf_parity, parity, ctx->parity_size);
> +
> +	dma_sync_single_for_device(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, =
DMA_TO_DEVICE);
> +	rtl_ecc_kick_engine(ctx, operation);
> +	rtl_ecc_wait_for_engine(ctx);
> +	dma_sync_single_for_cpu(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, DMA=
_FROM_DEVICE);
> +
> +	if (!ctx->rc_status) {
> +		memcpy(data, buf_data, RTL_ECC_BLOCK_SIZE);
> +		memcpy(tag, buf_tag, RTL_ECC_TAG_SIZE);
> +		memcpy(parity, buf_parity, ctx->parity_size);
> +	}
> +
> +	mutex_unlock(&rtlc->lock);
> +}
> +
> +static int rtl_ecc_prepare_io_req(struct nand_device *nand, struct nand_=
page_io_req *req)
> +{
> +	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +	char *data, *tag, *parity;
> +	int failure =3D 0;
> +
> +	if (req->mode =3D=3D MTD_OPS_RAW)
> +		return 0;
> +
> +	nand_ecc_tweak_req(&ctx->req_ctx, req);
> +
> +	if (req->type =3D=3D NAND_PAGE_READ)
> +		return 0;
> +
> +	tag =3D req->oobbuf.in;
> +	data =3D req->databuf.in;
> +	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_TAG_SIZE;
> +
> +	for (int i =3D 0; i < ctx->steps; i++) {
> +		rtl_ecc_run_engine(ctx, data, tag, parity, RTL_ECC_OP_ENCODE);
> +		failure |=3D ctx->rc_status;
> +
> +		tag +=3D RTL_ECC_TAG_SIZE;
> +		data +=3D RTL_ECC_BLOCK_SIZE;
> +		parity +=3D ctx->parity_size;
> +	}
> +
> +	if (unlikely(failure))
> +		dev_err(rtlc->dev, "ECC calculation failed\n");

This is not helpful as the other layers will complain if that's
relevant. For instance in case you use this driver with a NAND with read
retry support, it would be very noisy. Please turn this into a dev_dbg
call at most.

> +
> +	return failure ? -EBADMSG : 0;
> +}
> +
> +static int rtl_ecc_finish_io_req(struct nand_device *nand, struct nand_p=
age_io_req *req)
> +{
> +	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
> +	char *data, *tag, *parity;
> +	unsigned int bitflips =3D 0;
> +	int failure =3D 0;
> +
> +	if (req->mode =3D=3D MTD_OPS_RAW)
> +		return 0;
> +
> +	if (req->type =3D=3D NAND_PAGE_WRITE) {
> +		nand_ecc_restore_req(&ctx->req_ctx, req);
> +		return 0;
> +	}
> +
> +	tag =3D req->oobbuf.in;
> +	data =3D req->databuf.in;
> +	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_TAG_SIZE;
> +
> +	for (int i =3D 0 ; i < ctx->steps; i++) {
> +		rtl_ecc_run_engine(ctx, data, tag, parity, RTL_ECC_OP_DECODE);
> +		failure |=3D ctx->rc_status;
> +		mtd->ecc_stats.failed +=3D !!ctx->rc_status;
> +		bitflips =3D max_t(unsigned int, ctx->rc_bitflips, bitflips);
> +
> +		tag +=3D RTL_ECC_TAG_SIZE;
> +		data +=3D RTL_ECC_BLOCK_SIZE;
> +		parity +=3D ctx->parity_size;
> +	}
> +
> +	nand_ecc_restore_req(&ctx->req_ctx, req);
> +
> +	if (unlikely(failure))
> +		dev_err(rtlc->dev, "ECC correction failed\n");
> +	else if (unlikely(bitflips > 2))
> +		dev_warn(rtlc->dev, "%d bitflips detected\n", ctx->rc_bitflips);

Same here. Way too noisy for something (a bitflip) that happens normally.

> +
> +	return failure ? -EBADMSG : bitflips;
> +}
> +
> +static int rtl_ecc_check_support(struct nand_device *nand)
> +{
> +	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
> +	struct device *dev =3D nand->ecc.engine->dev;
> +
> +	if (mtd->oobsize !=3D RTL_ECC_ALLOWED_OOB_SIZE ||
> +	    mtd->writesize !=3D RTL_ECC_ALLOWED_PAGE_SIZE) {
> +		dev_err(dev, "only flash geometry data=3D%d, oob=3D%d supported\n",
> +			RTL_ECC_ALLOWED_PAGE_SIZE, RTL_ECC_ALLOWED_OOB_SIZE);
> +		return -EINVAL;
> +	}
> +
> +	if (nand->ecc.user_conf.algo !=3D NAND_ECC_ALGO_BCH ||
> +	    nand->ecc.user_conf.strength !=3D RTL_ECC_ALLOWED_STRENGTH ||
> +	    nand->ecc.user_conf.placement !=3D NAND_ECC_PLACEMENT_OOB ||
> +	    nand->ecc.user_conf.step_size !=3D RTL_ECC_BLOCK_SIZE) {
> +		dev_err(dev, "only algo=3Dbch, strength=3D%d, placement=3Doob, step=3D=
%d supported\n",
> +			RTL_ECC_ALLOWED_STRENGTH, RTL_ECC_BLOCK_SIZE);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rtl_ecc_init_ctx(struct nand_device *nand)
> +{
> +	struct nand_ecc_props *conf =3D &nand->ecc.ctx.conf;
> +	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
> +	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
> +	int strength =3D nand->ecc.user_conf.strength;
> +	struct device *dev =3D nand->ecc.engine->dev;
> +	struct rtl_ecc_ctx *ctx;
> +	int ret;
> +
> +	ret =3D rtl_ecc_check_support(nand);
> +	if (ret)
> +		return ret;
> +
> +	ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	nand->ecc.ctx.priv =3D ctx;
> +	mtd_set_ooblayout(mtd, &rtl_ecc_ooblayout_ops);
> +
> +	conf->algo =3D NAND_ECC_ALGO_BCH;
> +	conf->strength =3D strength;
> +	conf->step_size =3D RTL_ECC_BLOCK_SIZE;
> +	conf->engine_type =3D NAND_ECC_ENGINE_TYPE_ON_HOST;
> +
> +	ctx->rtlc =3D rtlc;
> +	ctx->steps =3D mtd->writesize / RTL_ECC_BLOCK_SIZE;
> +	ctx->bch_mode =3D strength =3D=3D 6 ? RTL_ECC_BCH6 : RTL_ECC_BCH12;
> +	ctx->parity_size =3D strength =3D=3D 6 ? RTL_ECC_PARITY_SIZE_BCH6 : RTL=
_ECC_PARITY_SIZE_BCH12;
> +
> +	ret =3D nand_ecc_init_req_tweaking(&ctx->req_ctx, nand);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "using bch%d with geometry data=3D%dx%d, tag=3D%dx6, pari=
ty=3D%dx%d",
> +		 conf->strength, ctx->steps, conf->step_size,
> +		 ctx->steps, ctx->steps, ctx->parity_size);

Same, dev_dbg is fine, but otherwise no need.

> +
> +	return 0;
> +}
> +
> +static void rtl_ecc_cleanup_ctx(struct nand_device *nand)
> +{
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +
> +	if (ctx)
> +		nand_ecc_cleanup_req_tweaking(&ctx->req_ctx);
> +}
> +
> +static struct nand_ecc_engine_ops rtl_ecc_engine_ops =3D {
> +	.init_ctx =3D rtl_ecc_init_ctx,
> +	.cleanup_ctx =3D rtl_ecc_cleanup_ctx,
> +	.prepare_io_req =3D rtl_ecc_prepare_io_req,
> +	.finish_io_req =3D rtl_ecc_finish_io_req,
> +};
> +
> +static int rtl_ecc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct rtl_ecc_engine *rtlc;
> +	void __iomem *base;
> +	int ret;
> +
> +	rtlc =3D devm_kzalloc(dev, sizeof(*rtlc), GFP_KERNEL);
> +	if (!rtlc)
> +		return -ENOMEM;
> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	ret =3D devm_mutex_init(dev, &rtlc->lock);
> +	if (ret)
> +		return ret;
> +
> +	rtlc->regmap =3D devm_regmap_init_mmio(dev, base, &rtl_ecc_regmap_confi=
g);
> +	if (IS_ERR(rtlc->regmap))
> +		return PTR_ERR(rtlc->regmap);
> +
> +	/*
> +	 * Focus on simplicity and use a preallocated DMA buffer for data excha=
nge with the
> +	 * engine. Make it a noncoherent memory model as invalidating/flushing =
caches is
> +	 * faster than reading/writing uncached memory.
> +	 */

I guess it depends on the architecture, but that's fine.

> +
> +	rtlc->buf =3D dma_alloc_noncoherent(dev, RTL_ECC_DMA_SIZE, &rtlc->buf_d=
ma,
> +					  DMA_BIDIRECTIONAL, GFP_KERNEL);
> +	if (IS_ERR(rtlc->buf))
> +		return PTR_ERR(rtlc->buf);
> +
> +	rtlc->dev =3D dev;
> +	rtlc->engine.dev =3D dev;
> +	rtlc->engine.ops =3D &rtl_ecc_engine_ops;
> +	rtlc->engine.integration =3D NAND_ECC_ENGINE_INTEGRATION_EXTERNAL;
> +
> +	nand_ecc_register_on_host_hw_engine(&rtlc->engine);
> +
> +	platform_set_drvdata(pdev, rtlc);
> +
> +	return 0;
> +}
> +
> +static void rtl_ecc_remove(struct platform_device *pdev)
> +{
> +	struct rtl_ecc_engine *rtlc =3D platform_get_drvdata(pdev);
> +
> +	nand_ecc_unregister_on_host_hw_engine(&rtlc->engine);
> +	dma_free_noncoherent(rtlc->dev, RTL_ECC_DMA_SIZE, rtlc->buf, rtlc->buf_=
dma,
> +			     DMA_BIDIRECTIONAL);
> +}
> +
> +static const struct of_device_id rtl_ecc_of_ids[] =3D {
> +	{
> +		.compatible =3D "realtek,rtl9301-ecc",
> +	},
> +	{ /* sentinel */ },
> +};
> +
> +static struct platform_driver rtl_ecc_driver =3D {
> +	.driver	=3D {
> +		.name =3D "rtl-nand-ecc-engine",
> +		.of_match_table =3D rtl_ecc_of_ids,
> +	},
> +	.probe =3D rtl_ecc_probe,
> +	.remove =3D rtl_ecc_remove,
> +};
> +module_platform_driver(rtl_ecc_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
> +MODULE_DESCRIPTION("Realtek NAND hardware ECC controller");

Great work nevertheless! Looking forward to get it upstreamed.

Thanks,
Miqu=C3=A8l

