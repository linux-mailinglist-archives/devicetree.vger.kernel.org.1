Return-Path: <devicetree+bounces-305532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGRrMz+YHmoAlQkAu9opvQ
	(envelope-from <devicetree+bounces-305532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 10:45:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB6962ACD9
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 10:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BEE923008D3A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 08:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35C63C76A1;
	Tue,  2 Jun 2026 08:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lS9gBL3x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84C13C819E
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 08:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780389566; cv=none; b=CYK22k1Pl/b+hOHnLpKpNK4pAtt90hIaZ8Jy9k04TpDuXtfU4A9YSryT2Aw8bIJbQdiSApO4Kw/WbsGGG+Bzu0DoLdl0h7A70yPoYPJjQ3nQMMNEk2GJTZTAOWcipD1MuI9bl22ALiPtnYqr4sXBRnyM9ULvYbn0BHpu56Kr8NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780389566; c=relaxed/simple;
	bh=W6VDvkJ5ZPdnkqxF5L8PzRnx0Kdq/lAP15beAubRTWM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pwGHwwiH/jOXOPPPN01BLUwKrsHpha18Hz6JO8UH6YqqfN1nb7CDCqVOs25QjVdzHqGaST2/ZDx63YmqxPbN+kYBf3HlwH4+rXT4mazCjI8QmS/ISgFVNCTsnAUElgCIc10RsUK/Dp5w5wOIVUkwXPDCTeaMblR7hHVvGStm3PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lS9gBL3x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEB0C1F00893;
	Tue,  2 Jun 2026 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780389563;
	bh=rx7/2odsSz2oS7VSJphGfXCY3MPBWOH+p4mZiovPFig=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lS9gBL3xV79bxJ0T/0xGpy7uipzBFfptZuwnSu6xSdcHmOi9/dkKdv1jFkZx7SPZb
	 KmUrYh71cEwla2op6th97mBut19GsOp4CfpwuFlIxHtK0hIrmCnH9DgKOcRR6Hxheb
	 k0skS6YsPmWVJzekqCJkNdLSldbDSGVvRB5dTDX+hTSDeXxMzV8IsR4l7qHWC0d7tT
	 8OvyOibbIIiJo/UUj0Njpic8V28TkQfrldFu6jJbZ277zln36w+rBfi/dxdUf83QBB
	 8pJaLg1PcsEwP5R/S+Rr013HrbBa/1DosIhhxsGVPYv9xsIQgjMHEp6SEqOlPYQM7m
	 9jJm0ssZkdlIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/7] clk: qcom: tcsrcc-glymur: Add Mahua QREF
 regulator support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602-tcsr_qref_0527-v5-4-8ea174a59d7e@oss.qualcomm.com>
References: <20260602-tcsr_qref_0527-v5-4-8ea174a59d7e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 08:39:22 +0000
Message-Id: <20260602083922.CEB0C1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305532-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Queue-Id: CBB6962ACD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing NULL check for the return value of device_get_match_data()=
 before dereferencing it, which will cause a kernel panic if the driver is =
bound manually via sysfs.
--

commit 8ad3e011a368c7747005c2608d2fded352c89aa2
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

clk: qcom: tcsrcc-glymur: Add Mahua QREF regulator support

This commit adds Mahua-specific regulator arrays and clock descriptor table=
s.
It updates the probe function to use match_data to select the correct descr=
iptor
table based on the compatible string.

> diff --git a/drivers/clk/qcom/tcsrcc-glymur.c b/drivers/clk/qcom/tcsrcc-g=
lymur.c
> index e317003398d16..deca9b8794b4f 100644
> --- a/drivers/clk/qcom/tcsrcc-glymur.c
> +++ b/drivers/clk/qcom/tcsrcc-glymur.c
[ ... ]
>  static int tcsr_cc_glymur_probe(struct platform_device *pdev)
>  {
> +	const struct tcsrcc_glymur_data *data =3D device_get_match_data(&pdev->=
dev);
> +
>  	return qcom_clk_ref_probe(pdev, &tcsr_cc_glymur_regmap_config,
> -				  tcsr_cc_glymur_clk_descs,
> -				  ARRAY_SIZE(tcsr_cc_glymur_clk_descs));
> +				  data->descs, data->num_descs);

[Severity: High]
Will this cause a NULL pointer dereference if the driver is bound manually =
via
sysfs?

device_get_match_data() returns NULL when a platform driver is manually bou=
nd
to a device via sysfs without a matching OF node. Dereferencing data->descs
and data->num_descs here without checking if data is NULL would lead to a
kernel panic in that scenario.

>  }
> =20
>  static struct platform_driver tcsr_cc_glymur_driver =3D {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-tcsr_qref_=
0527-v5-0-8ea174a59d7e@oss.qualcomm.com?part=3D4

