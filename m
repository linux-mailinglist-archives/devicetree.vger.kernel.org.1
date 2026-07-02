Return-Path: <devicetree+bounces-319414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wKIRA9VqRmqDTwsAu9opvQ
	(envelope-from <devicetree+bounces-319414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:42:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EA26F8741
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:42:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="tbkQTnk/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319414-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319414-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D9BF3025A73
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF4A4A3402;
	Thu,  2 Jul 2026 13:41:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F464A33F3
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 13:41:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782999695; cv=none; b=RqJBgbGTQegTGguUzgMAjKb3l9diLtU6rx+DbF+tqg51HQ40+DgU2Dp5qUttf6IY/Hv2AiII2RkS+81LXW0Z2PUBaVwNb7AmMmK4h2x+0SX1eupFJn60k/fmtb12hEq3s9wfec/biOrN1pDSIRdi+1IpUKkUtDzTG4ylo6REmc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782999695; c=relaxed/simple;
	bh=3NlBw7T5nabuhOxxhmeklPLxyEetO10ugW8lwBtpDek=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sYbFWhzeBKlLXboxF5LfLp3F66wwSMIEjDGnUCV5hemEIsPIId4i1GJfcfA/L7hOutBlmG1q1+UITCGZjOwPziSrfudW7oaWkDcpbSNteMEPDnVknFKFEjVDlCxwleCYgS8VpXv5ibJmKSXZbJAPLh0iMZEW9hyY3zuNvu3Atno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=tbkQTnk/; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3E59F4E40C30;
	Thu,  2 Jul 2026 13:41:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 11DAB5FF03;
	Thu,  2 Jul 2026 13:41:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 932EC104C9577;
	Thu,  2 Jul 2026 15:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782999691; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3kbHnC3x3hEpbNdF+qEJ6jzcXt/7SmkG5FNSavJE8Ds=;
	b=tbkQTnk/xbfoAM1MziLjXUidjKag65lxh3C+w2AFcWUZt8jrhqRqMPrg+jKMq44qEJjJ/3
	S58xyi4QHP3dVJpYcHhRSTg5RB7KbihIDrQ5kmQtOldRZ1FoU2LtPDRUs+ga2ePuqILrpu
	HXGE46szPIgoxkCSgPain7ryJrFwd0w0MVqwbdI6hw0VKdIw8gxKybMWbny+XRNdvKVnJq
	wqSw7Fcd41VTUVWDrj2UsLksij0fbna6g8CZOSGP7/kam31vZTd3uKs2SYaI6mBZON3mON
	C0/YkQEIrUlgE1+SjUoeisGO3DLktE99SA+6cmrFuolFSxK9mR/L/2k89ng8ZQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v4 13/16] mtd: spinand: extract variant ranking logic
 into spinand_op_find_best()
In-Reply-To: <20260618073725.84733-14-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Thu, 18 Jun 2026 13:07:22 +0530")
References: <20260618073725.84733-1-s-k6@ti.com>
	<20260618073725.84733-14-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 02 Jul 2026 15:41:27 +0200
Message-ID: <87v7axpkzc.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65EA26F8741

On 18/06/2026 at 13:07:22 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> spinand_select_op_variant() open-codes a loop that finds the fastest
> eligible op variant by transfer duration. Extract this into a shared
> helper spinand_op_find_best() that accepts a skip_mask bitmask of
> already-tried variant indices, enabling callers to iterate variants in
> ranked order while skipping previously attempted ones.
>
> spinand_select_op_variant() becomes a one-liner. No functional change.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  drivers/mtd/nand/spi/core.c | 32 +++++++++++++++++++++++++++-----
>  1 file changed, 27 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index f86786344d52..b678d0534297 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -1541,9 +1541,22 @@ static int spinand_init_odtr_instruction_set(struc=
t spinand_device *spinand)
>  	return 0;
>  }
>=20=20
> +/*
> + * spinand_op_find_best() - Find the fastest eligible op variant.

Should definitely be named spinand_op_find_best_variant(). find_best is
way too wide.

> + * @spinand:    SPI NAND device
> + * @variants:   full variant list to search
> + * @odtr:       true to consider ODTR ops, false for SSDR ops
> + * @skip_mask:  bitmask of variant indices to skip (already tried)

The flag seems to be quite overlapping with the odtr flag. Shouldn't we
have a single way to filter operations?

Also, why are you switching from an interface enumeration to a boolean?
Some day we might need to support things like 4D-4D-4D. That is where an
enumeration is better than a boolean. If you want to drop the
enumeration, it shall be done everywhere else, but I don't think it is a
good approach.

> + * Iterates @variants, evaluates transfer duration for each eligible op,=
 and
> + * returns a pointer to the fastest one not in @skip_mask.  Returns NULL=
 when
> + * no eligible variant remains.  Used by both variant selection at init =
time
> + * (skip_mask =3D=3D 0) and ranked PHY tuning iteration.
> + */

I haven't seen what is the use case of this mask yet, let's see in the
following patches.

Thanks,
Miqu=C3=A8l

