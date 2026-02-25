Return-Path: <devicetree+bounces-268415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCsfHfMSn2nWYwQAu9opvQ
	(envelope-from <devicetree+bounces-268415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:19:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE43C199705
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EB94303C28E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DEED25A655;
	Wed, 25 Feb 2026 15:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gRb8kFwd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A17A3D4138
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032214; cv=none; b=TuWmYdZrUs3CHqoyvEPb0CLNrIhCr4aO2+h2ZfF2dyb2JDf0T0NwAZvgQRsZIK+5vOJ0oMwuxqMS6XpFfRQeydTfMfSda0Y61SlqJBSSbM4aSPZhRG1p/ibJD/EtOtAFjfOvCDEXELTv5F3gQbpqvkoLXOZr9Av9aa/11ZRVYxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032214; c=relaxed/simple;
	bh=abfclbdjF5WVXITB+Yrq9jHQN0qzkliulV2pAeXAr7Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Gr7Iar8JRvmUqMGq1gYKuR2iNkQb/Jq7MQjS6SWcbn9pzC2MbDKjoTtcwprMBDplp9DyWzeGYO59g82+OMbileJnVCiIIOFeTWD77zyO5EjTlCFlpjq3lGVw3Nmn2zmx8LHLge4LLD2FiSEUSHkC8MdT6PH1CHAg9LoCCT1aMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gRb8kFwd; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 08C061A1327;
	Wed, 25 Feb 2026 15:10:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D11745FDE6;
	Wed, 25 Feb 2026 15:10:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B10F810369260;
	Wed, 25 Feb 2026 16:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772032210; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=abfclbdjF5WVXITB+Yrq9jHQN0qzkliulV2pAeXAr7Q=;
	b=gRb8kFwdoAU8UVR6yl74DQYGjOhzTN6wxRh13sRRXjZJD+plUjOy7OyoFAeul6x0QmK6iU
	E8k54Bflwx1iw1ofUkh3X3MMxLtGRRLQ/RuduJzjEv0RaaP4PHbr9NKfsrXHCeJvPnRPqD
	j1XnnZfaRSZ6L5evp9iXTuDV3zVdbYnMUZqg94AnRXzkIICZWC+e6iPgdv+zVSpH8JIGI4
	/5qByxrWToVdV0jsELz00fvIgIFkpxp4Fo5mmq3XervlHs1f39aGvWrZOQJxnrrIugM0hd
	Wh+cJncl9zzDdSwa+XNIbyLRukJ8rAc72DdBbzR7cYkvVfS9pOABTqUJTx/U9g==
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
Subject: Re: [PATCH v7 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
In-Reply-To: <20260225015705.1113199-2-linchengming884@gmail.com> (Cheng Ming
	Lin's message of "Wed, 25 Feb 2026 09:57:03 +0800")
References: <20260225015705.1113199-1-linchengming884@gmail.com>
	<20260225015705.1113199-2-linchengming884@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 25 Feb 2026 16:10:08 +0100
Message-ID: <87ldggq2pb.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268415-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mxic.com.tw:url,mxic.com.tw:email]
X-Rspamd-Queue-Id: CE43C199705
X-Rspamd-Action: no action

Hello Cheng Ming,

On 25/02/2026 at 09:57:03 +08, Cheng Ming Lin <linchengming884@gmail.com> w=
rote:

> From: Cheng Ming Lin <chengminglin@mxic.com.tw>
>
> Add "nand-randomizer-enable" and "nand-randomizer-disable" boolean
> properties.
>
> These properties allow enabling or disabling the randomizer feature
> via the device tree.
>
> According to JEDEC standard JESD22-A117E, no single data pattern
> represents a universal worst-case for all NAND flash failure mechanisms.
> Different patterns, such as fully programmed, checkerboard, or mostly
> erased, can disproportionately stress specific cells (e.g., programmed,
> erased, or those influenced by adjacent states).
>
> Given that no fixed pattern can cover all scenarios, the use of a
> randomized data pattern is a practical and effective mitigation strategy.
> Our hardware implements a randomizer feature that scrambles user data
> before it is written to the flash and restores the original data upon rea=
d.
>
> This ensures the data stored on the media is more evenly distributed,
> thus reducing pattern-dependent degradation. This is especially crucial
> for preventing errors caused by unbalanced data (e.g., all zeros or
> all ones) in blocks with high program/erase (P/E) cycle counts.
> Ultimately, the randomizer improves the long-term reliability and
> endurance of the flash device.
>
> Please refer to the following link for randomizer feature:
> Link:
> https://www.mxic.com.tw/Lists/ApplicationNote/Attachments/2151/AN1051V1-T=
he%20Introduction%20of%20Randomizer%20Feature%20on%20MX30xFxG28AD_MX35xFxG2=
4AD.

This link brings me to a "We have moved to our new home" page.

Anyhow, this Link does not make much sense in the binding. If this is a
very generic AN, why not, but maybe I'd move it to the SPI NAND patches,
as the name implies that it is a bit specific to Macronix chips.

> Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>

Otherwise both the binding and code look ok from my PoV. So besides the
Link that must be moved and fixed, I'll wait for binding approval.

Thanks,
Miqu=C3=A8l

