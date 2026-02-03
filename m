Return-Path: <devicetree+bounces-262413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMjHIYBogmmETgMAu9opvQ
	(envelope-from <devicetree+bounces-262413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 22:28:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB770DED90
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 22:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E91CC30474F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 21:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C65936C5B6;
	Tue,  3 Feb 2026 21:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="uOqf8q9g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CA434026B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 21:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770154009; cv=none; b=QBOCnouRfh6qIdbMzK/zYQPVcp09p1zqGAzgWtTLdFJFGgRc3yuyLHWZsSAnaG7sCS/3iHOjHxN57hHgJOBvd8gkzCCzlwpqxc5AHpZ+Yy5qGte49BGdQvF0YDDi+2JkA/34K3968Gq6Z2lmuGATECP/bzsdiLDS68DDco5ViIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770154009; c=relaxed/simple;
	bh=/+q/af+ksPE7jzykWj7uXSqYHTn46N8s30ZmdgeaZUw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=p+rtOLNsk6D75sSPNXp7wTmnQnQFDHj1t2sVI7j1XzhAK8cnNoVNG1CEZfGdmBQzGvDhAQTcsQmQPMDqdahShSi+blHaDBD47xyBtlRHowuQY6Vnh07Hh1hItzOtwWrmsfxly8d6VPdZcVl32mOmM/dD8OU4R9GRIf6mK7dNCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=uOqf8q9g; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id B5CB21A2BCC;
	Tue,  3 Feb 2026 21:26:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 805B760728;
	Tue,  3 Feb 2026 21:26:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 86720119A8888;
	Tue,  3 Feb 2026 22:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770154003; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/+q/af+ksPE7jzykWj7uXSqYHTn46N8s30ZmdgeaZUw=;
	b=uOqf8q9gdfCzsbKOilwihAPJ5Fjpslxn5EEJlOaKrKxhFjn4XYA4frT6Ji5iawmkc8hQru
	nG6d0X2J9FqSlTbwDDfYES1OF9+s5sFyiQiHtuCwQM7FTCYP8+IhuDC33qT54l/BFllSFa
	SbSDQtHrbA1lKX6sfNp0EGR69Ll1b5fvDMiSBgmqbpgYmg2Y3MiROunVeQjnBGzOwkQ0fa
	3o/g8RC6tUMSXE3k14cAFxZydStB9zftmUaCvfMp6EOhp7goFu9LMYD0CtPJKCldsh0Md4
	etmkVCoG3NNiGaEmlXc1YJVdoqKbJOf2D+O+3UYGRXwBVzzO8ZW2UB+S0l4kgA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 03 Feb 2026 22:26:39 +0100
Message-Id: <DG5N816NIGGQ.3NMTVNIAJP5AY@bootlin.com>
Cc: "Amit Kumar Mahapatra" <amit.kumar-mahapatra@amd.com>, "Michal Simek"
 <monstr@monstr.eu>, "Bernhard Frauendienst" <kernel@nospam.obeliks.de>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 <linux-mtd@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Miquel Raynal"
 <miquel.raynal@bootlin.com>, "Richard Weinberger" <richard@nod.at>,
 "Vignesh Raghavendra" <vigneshr@ti.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v16 0/3] mtd: Add support for stacked memories
X-Mailer: aerc 0.20.1
References: <20260203-mtd-virt-concat-v16-0-a112a979c813@bootlin.com>
In-Reply-To: <20260203-mtd-virt-concat-v16-0-a112a979c813@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lwn.net:url]
X-Rspamd-Queue-Id: DB770DED90
X-Rspamd-Action: no action

Hello,

On Tue Feb 3, 2026 at 9:39 PM CET, Luca Ceresoli wrote:
> [TL;DR for v15: as agreed with Amit I'm sending a new iteration of his
> patches to fix the build-time failure due to a module dependency
> loop. Original cover follows.]
>
> This patch series adds stacked support by enhancing the existing mtd-conc=
at
> driver to be more generic.
>
> As background, a few years ago, Bernhard Frauendienst initiated an effort
> [2] to achieve the same, which was later adapted by Miquel [1] to introdu=
ce
> stacked mode support. In this approach, partitions to be concatenated wer=
e
> specified using a DT property "part-concat" within the partitions
> definition, allowing two MTD devices to function as a single larger one i=
n
> order to be able to define partitions across chip boundaries. However, th=
e
> bindings were not accepted. As a result, the mtd-concat approach was
> dropped, and alternative DT bindings were introduced [3][4][5], describin=
g
> the two flash devices as one. Corresponding SPI core changes to support
> these bindings were later added [6].
>
> While integrating stacked mode support into SPI-NOR, Tudor provided
> additional feedback, leading to discussions about updating the existing
> DT bindings. To address this, I sent an RFC [7] to initiate discussions o=
n
> adapting the DT bindings as suggested by Miquel in [1]. Following that,
> I am now submitting this patch series that updates the virtual concat DT
> bindings and the driver referenced in [1], along with some minor mtdcore
> changes.
> Since I have taken ownership of this effort, I have included Bernhard and
> Miquel under the "Suggested-by" tag.
>
> [1] https://lore.kernel.org/linux-mtd/20191127105522.31445-1-miquel.rayna=
l@bootlin.com/
> [2] https://lwn.net/ml/linux-kernel/20180907173515.19990-1-kernel@nospam.=
obeliks.de/
> [3] https://github.com/torvalds/linux/commit/f89504300e94524d5d5846ff8b72=
8592ac72cec4
> [4] https://github.com/torvalds/linux/commit/eba5368503b4291db7819512600f=
a014ea17c5a8
> [5] https://github.com/torvalds/linux/commit/e2edd1b64f1c79e8abda365149ed=
62a2a9a494b4
> [6] https://github.com/torvalds/linux/commit/4d8ff6b0991d5e86b17b235fc46e=
c62e9195cb9b
> [7] https://lore.kernel.org/all/20241026075347.580858-1-amit.kumar-mahapa=
tra@amd.com/
>
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Aargh, I forgot to add my SoB line! Please ignore this series, v17
incoming. Sorry about the mess!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

