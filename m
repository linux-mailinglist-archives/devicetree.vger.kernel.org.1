Return-Path: <devicetree+bounces-268472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPZOBd4on2nmZAQAu9opvQ
	(envelope-from <devicetree+bounces-268472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:52:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F0819AFF3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14B1D3030EB3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C253E3DA7DE;
	Wed, 25 Feb 2026 16:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Sa38iQd+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A393D7D89;
	Wed, 25 Feb 2026 16:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038001; cv=none; b=Uofe93H4c0osHEReVoOYs3EB9OfttZxnWO7K+gld+4omzdpLxdgMI6VzhnnRMW2Yfzuau69wxeYvh5oM9CVK9CaCmM1npDyC/2gaAONHf5zJF+OdVEh5UEtGC5larJwSbjg+F01unkOa+7rTIPtH6KJ/g8qa4omcw9c1kWnVd64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038001; c=relaxed/simple;
	bh=M8/zoise0kqPkEtltRBb9dJx3yYarZ/7FX4RBH/H9lo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pWYq2tVYJuuiEzTzljo0Dv2we8knZ8JzmyGyO0J1RBC3eWZRod+O7jyMIQnK/K0OaQjeQU0SsBp55bt7M45tGMBw6hjpyu6HaZJ+bAK0N7MNmVlZf7zKJpCae89yGjnMRSy53yielUQltk79yL2mQePPQwG3deSZJAgP8CP315o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Sa38iQd+; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id C8B191A1315;
	Wed, 25 Feb 2026 16:46:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9CBDA5FDE6;
	Wed, 25 Feb 2026 16:46:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0122110369259;
	Wed, 25 Feb 2026 17:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772037997; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nnBjrX0bQL3U41NR9f2JQMbwQ/kpp6U5NlGNmgZ8yJA=;
	b=Sa38iQd+A9UKiqdZk/EdYjEH6IBO5bXLaf0J6duKpVyx8/5+NjLYE550rxS7kLJUpbpHY8
	eB50pkmmpah8JYJwqV/iT4h1cI3uiSibfVSTduskPOQhZAvMmoR2KDPs0mdDd2Yx9lPqd6
	gKZanXCP8ffkN80WWGgJ/0eLb71d7YuZJ+a35EW5WOLeAH0izuKn1tcU1wslNNoj/QFQJg
	q87D7w2MtOgobKscNEY2h2aTgMKt9zDGeccgmdZoolDrEXj0b+DcOplelDiZt1vaxkEe/m
	idP2ulswtNRCJrKEISKNX2X4RNejHlMMei41fYPIcO9LV9edq/8v5zzFmVkPMA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Frank Li <Frank.Li@nxp.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] ARM: dts: imx: clean up imx2* NAND CHECK_DTBS warnings
Date: Wed, 25 Feb 2026 17:46:25 +0100
Message-ID: <177203795880.1985489.4831780196878536315.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260213-imx25_nand_dtb_warnings-v2-0-f9d4b43bba24@nxp.com>
References: <20260213-imx25_nand_dtb_warnings-v2-0-f9d4b43bba24@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268472-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,pengutronix.de,gmail.com,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 69F0819AFF3
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 12:08:24 -0500, Frank Li wrote:
> The nand-controller schema enforces specific node naming. Adjust the
> existing DTs instead of modifying the YAML schema to match legacy layouts.
> 
> Update the DTs to follow the modern NAND controller layout, which has
> been used in the MTD subsystem for many years.
> 
> 
> [...]

Applied to nand/next, thanks!

[1/3] dt-bindings: mtd: mxc-nand: add i.MX25 and i.MX27 nand support
      commit: d86e70e9ca995942e848515b089e9be7430c862e

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl

