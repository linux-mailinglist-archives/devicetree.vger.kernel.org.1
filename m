Return-Path: <devicetree+bounces-273042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GqdLPr+rmkLLgIAu9opvQ
	(envelope-from <devicetree+bounces-273042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:10:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 707E923D666
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:10:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 409F73054CAC
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 17:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437E82BEC43;
	Mon,  9 Mar 2026 17:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="y3A5iDFs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28DB2BCF5D
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 17:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773075819; cv=none; b=gcF0cSpGk3kDvX5/2/u8wp/wxgQmz1LMXN37cHaTjqjgxr+2tnFrgAR3BHYCOJMM58fCEW3jtr6VIgcU2SQvX4huOmfWnvMMuqSFoVL7dQEtlZHmqqx0JA5XlW6uutS1b/ugW0Ms28sW5E/OxoPVEQru4PAeMX22Q5MZmy070Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773075819; c=relaxed/simple;
	bh=fzKLGDNcL/HGtRr2uCf5lZMpMjzLVC/6hKo5DUzW7SU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jI9YExpQZocVy8hnCqr/2v5WAekEA+z6rlnSTrWg+KIFWxpky5tJ+DNUbOi/Lvl/b326vhxMM6BMssOf9L9rIwhF4n28lSCW7CLQ7EC7gT7mOqT10I/tFTmy0/p8gMfv6lBOib13xnExTJyNapPLyANF4ERSD/TwC4x3yGuwKAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=y3A5iDFs; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C61014E425DB;
	Mon,  9 Mar 2026 17:03:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 97EE95FFB8;
	Mon,  9 Mar 2026 17:03:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E7E6A10369820;
	Mon,  9 Mar 2026 18:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773075812; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=a0ANqTqSXTqDV3jREv3lQZk2+0Yu8cvVpizEo4IZBWA=;
	b=y3A5iDFs/YaYIeaCg1ipbWbVlahMGpw2BKY4n1BVS1tlJaP/pg0IldPatQgcT2sjnOASXT
	EDyqiJN9rYfFedAVJIpvM88wHl8GiJS5xPxm5D1eWgpGsiFwbP1cM4uccccsMTnlbfLLw2
	sIhqYsM76QVQv74PM/BHsVaNSACaDG602s1BqH0penRtICX1ZP91KaKBZ7XPNyiURpM4Gm
	isR0FjscNI8TEhStJa2eyLEHmNBtWynZVsbdPchksgRfi0fZuN9LlkbpTssonYKc8By7Te
	RipidXTRFbZtUZI9Ev12sOrtgJ4vWSmOfkcqnkX4YxVWKjrCTpF9WJRz1G+ujA==
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
Subject: Re: [PATCH v8 0/3] mtd: spi-nand: Add support for randomizer feature
In-Reply-To: <20260305071042.1193522-1-linchengming884@gmail.com> (Cheng Ming
	Lin's message of "Thu, 5 Mar 2026 15:10:39 +0800")
References: <20260305071042.1193522-1-linchengming884@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Mon, 09 Mar 2026 18:03:23 +0100
Message-ID: <87y0k1lyuc.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 707E923D666
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273042-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Action: no action

Hello Cheng Ming,

On 05/03/2026 at 15:10:39 +08, Cheng Ming Lin <linchengming884@gmail.com> w=
rote:

> From: Cheng Ming Lin <chengminglin@mxic.com.tw>
>
> This patch series introduces randomizer support for SPI NAND devices.
>
> - Patch 1: add the nand-randomizer-enable and nand-randomizer-disable
>            boolean properties to the generic nand-chip.yaml bindings.
> - Patch 2: add the initialization logic and the set_randomizer callback
>            to the core framework. The core will now parse the device tree
>            properties and enable or disable the randomizer accordingly
>            during spinand_init.
> - Patch 3: implement the set_randomizer callback specifically for Macronix
>            chips (MX35LF/UF series) to handle the vendor-specific register
>            operations.

MTD part LGTM. Let's see if the dt-binding are ok, they look fine.

Thanks,
Miqu=C3=A8l

