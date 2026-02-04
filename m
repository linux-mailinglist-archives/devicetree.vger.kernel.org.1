Return-Path: <devicetree+bounces-262592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLTiMeUjg2nWhwMAu9opvQ
	(envelope-from <devicetree+bounces-262592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:48:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0C8E4BFB
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 65C5D30187B1
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 10:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2518374160;
	Wed,  4 Feb 2026 10:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="L6/aH8sH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B793E359FB8
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770202012; cv=none; b=KFenGX7oeod2CZspFgayZ9H0zrGmn4eBV5jDxAtSaW4YenV+s/NkhuN/3n7GuCRoZ+XOi5jJSpiZWivdjoLecdnDlVFuHBcAGAPRt3xnpUCdv8bLTNyYZETYfUMQaFWy4yyrqBCJ+LCnyuRDDRRN5ypxqUIwYaLkN5EToBFpwXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770202012; c=relaxed/simple;
	bh=2DhCzRv6yziS4Cexnv9odDyuYjsCkIdutxzLV+shbnk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LtT+6I7+TrA5r2LoMC9H0mU2RqfnbGW3X8G89/Ge7IRhimmLRqUpReqwoeViRSLcxEPKRCrKNDaWI8Kel4s61ov4zHG74rP9F1AT8hOts3qYzLbtuTRmHaGtjZ8x1eggwzdmuux6w6nofGeET67sSUHwJSl9/kKUYUG+QmUikjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=L6/aH8sH; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2495E4E4233C;
	Wed,  4 Feb 2026 10:46:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E11C660745;
	Wed,  4 Feb 2026 10:46:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A2AA4119A8891;
	Wed,  4 Feb 2026 11:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770202009; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9DcxmSY88sa/IFq/9pI8Ul8RolH6HxvF4wzvh7XRi4E=;
	b=L6/aH8sHQSj5FIg54ozx8gVU9zRM96vD9SGvib+ARivRLj08b/LQ1tT3/cZpwo2ZyyYnH2
	Q0h6z9nfeykNKE8PEEHGF4PxF9dKAu9Zl9qqrAbvQrPxrbcIZbkgZdbEczELtygrgeFa0y
	Go9tTYe2KYHb1hoXy1A3RwFP9xipG9wyc2tRi0pcFmNVtrCXvdC4gOtR512mMVIJy7/77u
	O820dOAfz76YI2bmZwQkpVgcQf2/W1odBzZZFEuoX31iBVvR7fHz83ItwD/Bd8yblxj6+H
	Bwn8Q92kDgyqgyOH9eI5jzRhOwP6WcgAmfz5iA1noZ/1w9/y3W7zKAY+9chfag==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 01/12] spi: dt-bindings: add spi-has-dqs property
In-Reply-To: <20260113141617.1905039-2-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:06 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-2-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 04 Feb 2026 11:46:45 +0100
Message-ID: <87wm0sg50q.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262592-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,bootlin.com:mid,bootlin.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EC0C8E4BFB
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:06 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Add the optional 'spi-has-dqs' boolean property for SPI flash device
> subnodes. This property indicates the flash device supports DQS (Data
> Strobe) mode, which provides improved timing margins for data capture
> in high-speed SPI operations.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  .../devicetree/bindings/spi/spi-peripheral-props.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.y=
aml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> index 8b6e8fc009db..c6f330fd32aa 100644
> --- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> @@ -89,6 +89,12 @@ properties:
>      description:
>        Delay, in microseconds, after a write transfer.
>=20=20
> +  spi-has-dqs:
> +    description:
> +      Indicates the SPI flash device supports DQS (Data Strobe) mode for
> +      improved data capture timing.
> +    $ref: /schemas/types.yaml#/definitions/flag

This information is currently lacking indeed, mostly because nobody ever
cared about it. The DT property is IMO not the correct way to give this
information for two reasons:
- this is a capability of the chip, we discover the chip dynamically in
  both cases (NAND and NOR) and attach many capabilities to the chips
  already, so I believe this information should be provided through a
  flag.
- the fact that the DQS signal might be supported does not indicate it
  is actually driven. Winbond chips, for instance, can either enable it
  or not depending on their configuration (probably through their VCR
  register, I need to check again).

The question I have is: shall we enable the DQS pin automatically if it
is available? Not all controllers support it I suppose, and wiring the
line might as well not be done (or incorrectly). For these cases we may
need DT properties in the future. But for the DQS presence indication, I
bet it is not useful, and should be handled at the core level (not
parsed by the driver like you do) because it may have an impact on the
chip internal configuration.

I will try to come up with a proposal soon!

Cheers,
Miqu=C3=A8l

