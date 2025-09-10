Return-Path: <devicetree+bounces-215311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F6EB511B9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:43:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C115D1C26A81
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 08:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5CBB30E846;
	Wed, 10 Sep 2025 08:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="KGpB+5bV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703372C026F
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757493810; cv=none; b=TDgaFwgOz5podXxY7YYtCqfDtPlx4NN8FwM7fkrIa5F/0IWwq52nG9m3R52n7Y8rZKIkT0oU9gcxC5UutN1PHsEEqRucfpTZtz3ttyFsv9fPuQr+St5yhmzATDlfdhJ4xxOCkPuyTDMXxGXHGO6mwWpxi4YQGNWpY5klP67x954=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757493810; c=relaxed/simple;
	bh=di/VZnISnm/3i1BobAtmOuLyt9q4t6AA+0R2UqttECI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ksF0VnMrytYfDS/+9hG/FxfG9QqawRkTn6lHmUiw/8RqDTk808xSFYptHUwFlDBrzzegnD2sCdBfmjvMuCcF5TQTgr140En7GSdu1Q+jByGkEW5gNpSBOcTXHaqbIVz3Vx8Fj9WninB4uvVN5z8V4Y98iThBVq3e28H+IcPwVTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=KGpB+5bV; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9C0311A0BFB;
	Wed, 10 Sep 2025 08:43:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6A0CA606D4;
	Wed, 10 Sep 2025 08:43:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6FF5F102F1D2E;
	Wed, 10 Sep 2025 10:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757493804; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MKdBghLgZ/Yd64oSt/OaMQnpjo06vhaw7WliBuhohZs=;
	b=KGpB+5bV+LEHQ+GKCNtfpSEBO0YUStGO016SnuOPxJ/VC7JIOabIYOxsiYIun9LMFMAk0I
	GQbafpLrPNZlKIBNw0E94ec7WkWf7JSEnKbFfTJPGl+t6ZpRakpavwj+xnqvkzaOhN9uWR
	P+7/1tz2Kgg0Q2FnhLWRkn2Wn0BaxxU40hv9mfRVmKM/P0ZLiCv2l2haSGGOkg8j2H4du9
	VRLBg9y4E+PugtMlQNODGeNV72Q22lfiTqZJ5z6YZDiLUoH177cuOJCUejhdhw1uQ0e+QC
	lOon7KK3+CmvW4hURoPbAhr3d4BseLCc+U+RTIGFrWhBXGV9n1v5dpjRb1eZyA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] mtd: nand: realtek-ecc: Add Realtek external ECC
 engine support
In-Reply-To: <20250828143408.2511086-3-markus.stockhausen@gmx.de> (Markus
	Stockhausen's message of "Thu, 28 Aug 2025 10:34:08 -0400")
References: <20250828143408.2511086-1-markus.stockhausen@gmx.de>
	<20250828143408.2511086-3-markus.stockhausen@gmx.de>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Wed, 10 Sep 2025 10:43:15 +0200
Message-ID: <87ms72elzw.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Hello Markus,

On 28/08/2025 at 10:34:08 -04, Markus Stockhausen <markus.stockhausen@gmx.d=
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
> Changes in v2:
> - include bitfield.h
> - fill mtd->ecc_stats.corrected
> - Reduce chattiness with dev_dbg()
> - Convert return codes from context based to function based
> - Add more documentation about vendor specifications
> - Convert variables from vendor style to kernel style (e.g. tag)

Thanks for the changes, a few more comments and we'll be good.

...

> + * Altogether this gives currently the following block layout.
> + *
> + * +------+------+------+------+-----+------+------+------+------+-----+=
-----+-----+-----+
> + * |  512 |  512 |  512 |  512 |   2 |    4 |    6 |    6 |    6 |  10 |=
  10 |  10 |  10 |
> + * +------+------+------+------+-----+------+------+------+------+-----+=
-----+-----+-----+
> + * | data | data | data | data | BBI | free | free | free | free | ECC |=
 ECC | ECC | ECC |
> + * +------+------+------+------+-----+------+------+------+------+-----+=
-----+-----+-----+

Thanks, very informative.

...

> +static int rtl_ecc_wait_for_engine(struct rtl_ecc_ctx *ctx)
> +{
> +	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
> +	int ret, status, bitflips;
> +	bool all_one;
> +
> +	/*
> +	 * The ECC engine needs 6-8 us to encode/decode a BCH6 syndrome for 512=
 bytes of data
> +	 * and 6 free bytes. In case the NAND area has been erased and all data=
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

Polling delay matters, but if you reach the timeout you're already in a
faulty situation so the responsiveness is less a concern in this
situation. I fear if the machine is loaded and if the triggers get
delayed somehow you might easily reach the timeout. In general I'd
advocate in favour of a default 1s timeout.

> +	if (ret)
> +		return ret;
> +
> +	ret =3D FIELD_GET(RTL_ECC_RESULT, status);
> +	all_one =3D FIELD_GET(RTL_ECC_ALL_ONE, status);

Maybe you should check whether all_one remains true if there are
correctable bitflips in your buffer (you may use nandflipbits for that
purpose). If not, you shall probably spend extra time when checking for
ret checking if there are less bitflips than the ECC controller can
correct compared to ones in the *entire* buffer, which would indicate
that you are really in the presence of an erased page, see:
https://elixir.bootlin.com/linux/v6.16.5/source/drivers/mtd/nand/raw/nand_b=
ase.c#L2841

This helper may be moved if you need it.

> +	bitflips =3D FIELD_GET(RTL_ECC_CORR_COUNT, status);
> +
> +	/* For erased blocks (all bits one) error status can be ignored */
> +	if (ret && all_one)

Can be simplified?

    if (all_one)
        ret =3D 0;

> +		ret =3D 0;
> +
> +	return ret ? -EBADMSG : bitflips;
> +}
> +
> +static int rtl_ecc_run_engine(struct rtl_ecc_ctx *ctx, char *data, char =
*free,
> +			      char *parity, int operation)
> +{
> +	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
> +	char *buf_parity =3D rtlc->buf + RTL_ECC_BLOCK_SIZE + RTL_ECC_FREE_SIZE;
> +	char *buf_free =3D rtlc->buf + RTL_ECC_BLOCK_SIZE;
> +	char *buf_data =3D rtlc->buf;
> +	int ret;
> +
> +	mutex_lock(&rtlc->lock);
> +
> +	memcpy(buf_data, data, RTL_ECC_BLOCK_SIZE);
> +	memcpy(buf_free, free, RTL_ECC_FREE_SIZE);
> +	memcpy(buf_parity, parity, ctx->parity_size);
> +
> +	dma_sync_single_for_device(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, =
DMA_TO_DEVICE);
> +	rtl_ecc_kick_engine(ctx, operation);
> +	ret =3D rtl_ecc_wait_for_engine(ctx);
> +	dma_sync_single_for_cpu(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, DMA=
_FROM_DEVICE);
> +
> +	if (ret >=3D 0) {
> +		memcpy(data, buf_data, RTL_ECC_BLOCK_SIZE);
> +		memcpy(free, buf_free, RTL_ECC_FREE_SIZE);
> +		memcpy(parity, buf_parity, ctx->parity_size);
> +	}
> +
> +	mutex_unlock(&rtlc->lock);
> +
> +	return ret;
> +}
> +
> +static int rtl_ecc_prepare_io_req(struct nand_device *nand, struct nand_=
page_io_req *req)
> +{
> +	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +	char *data, *free, *parity;
> +	int ret =3D 0;
> +
> +	if (req->mode =3D=3D MTD_OPS_RAW)
> +		return 0;
> +
> +	nand_ecc_tweak_req(&ctx->req_ctx, req);
> +
> +	if (req->type =3D=3D NAND_PAGE_READ)
> +		return 0;
> +
> +	free =3D req->oobbuf.in;
> +	data =3D req->databuf.in;
> +	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
> +
> +	for (int i =3D 0; i < ctx->steps; i++) {
> +		ret |=3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_ENCODE=
);
> +
> +		free +=3D RTL_ECC_FREE_SIZE;
> +		data +=3D RTL_ECC_BLOCK_SIZE;
> +		parity +=3D ctx->parity_size;
> +	}
> +
> +	if (unlikely(ret))
> +		dev_dbg(rtlc->dev, "ECC calculation failed\n");
> +
> +	return ret ? -EBADMSG : 0;
> +}
> +
> +static int rtl_ecc_finish_io_req(struct nand_device *nand, struct nand_p=
age_io_req *req)
> +{
> +	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
> +	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
> +	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
> +	char *data, *free, *parity;
> +	bool failure =3D false;
> +	int bitflips =3D 0;
> +	int ret;
> +
> +	if (req->mode =3D=3D MTD_OPS_RAW)
> +		return 0;
> +
> +	if (req->type =3D=3D NAND_PAGE_WRITE) {
> +		nand_ecc_restore_req(&ctx->req_ctx, req);
> +		return 0;
> +	}
> +
> +	free =3D req->oobbuf.in;
> +	data =3D req->databuf.in;
> +	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
> +
> +	for (int i =3D 0 ; i < ctx->steps; i++) {
> +		ret =3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_DECODE);
> +
> +		if (unlikely(ret < 0)) {
> +			failure =3D true;
> +			mtd->ecc_stats.failed ++;

Extra space                                  ^

> +		} else {
> +			mtd->ecc_stats.corrected +=3D ret;
> +			bitflips =3D max_t(unsigned int, bitflips, ret);
> +		}
> +
> +		free +=3D RTL_ECC_FREE_SIZE;
> +		data +=3D RTL_ECC_BLOCK_SIZE;
> +		parity +=3D ctx->parity_size;
> +	}
> +
> +	nand_ecc_restore_req(&ctx->req_ctx, req);
> +
> +	if (unlikely(failure))
> +		dev_dbg(rtlc->dev, "ECC correction failed\n");
> +	else if (unlikely(bitflips > 2))
> +		dev_dbg(rtlc->dev, "%d bitflips detected\n", bitflips);
> +
> +	return failure ? -EBADMSG : bitflips;
> +}

Rest lgtm.

Thanks,
Miqu=C3=A8l

