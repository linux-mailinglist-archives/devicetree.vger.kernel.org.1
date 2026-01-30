Return-Path: <devicetree+bounces-261259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF9ENCvRfGlbOwIAu9opvQ
	(envelope-from <devicetree+bounces-261259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:41:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 228F8BC20E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 575B8302BE91
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B229433A005;
	Fri, 30 Jan 2026 15:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="D3rp9v7M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C857D32FA1E
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 15:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769787676; cv=none; b=KZonWvBye+/JMFsBEmXVDnuuWy93FhTf50FdCbj/9JNuSXvXXzy+y3GMoMtBAwBQ/xqsicwfAIz2Y5zqkPGunvn+5/yIjQNUYQyFh5PERvMgl96i1pUJDMY8EhnYOFq7q4hve3nQ9dS/AEUeX0eFEn+gV0MCmvb3awbZPIUdsl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769787676; c=relaxed/simple;
	bh=k+ECZuD+QM8Gjm9kmKkUQqFKs0bfeDwEoJBbl7tkDfk=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:From:Subject:Cc:
	 References:In-Reply-To; b=WMvSZXlrs4Hen+EOpBNHUVMsckyNdVI90eQYMIpxGg8Il0EAE29CsSqH8XdpkGf6qY7yCQrsADJ/ZiKssG3WvixydO6BahpFtwYfIdLMqif4LgsyVzhHZ72Xx/nWgJo/uyY4Y+82AwDv7eyPKbFWE/P7Ngd1LGpyU7LfhDty+Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=D3rp9v7M; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 375081A2B35;
	Fri, 30 Jan 2026 15:41:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0C4366075A;
	Fri, 30 Jan 2026 15:41:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AD0E3119A8886;
	Fri, 30 Jan 2026 16:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769787670; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2oml+n/bMIQByTs3a8KsvMfpNJ/A/mGJECRJcu3JpJM=;
	b=D3rp9v7MWo6vuFyyEad8j7tYG8HeJYBUM1dWIRMpNTg7SbY+CUtL63EieH83B8zl79rCsi
	f7He4Cot/vM176sMGF9eCxgDCjJjQ6jPIjZ4zDtA7xF3g3uKbSa6qrqgREfjlmwr7M4lhg
	7QQhHnbxnM41bO32VvJSHyP9OTzGBLH97jEuyknF4m4tebo9TCQwsIJSGpRpg7p0HnpvtG
	KNzdoqgsHiNgWzfXB6wVXgfgIe38RDS4jzRcreVg9xa8qNV6ftSVP4UTdO6Udv0I9Qgkzu
	JXxYIZCufqMHVHQUI0cpBqBWY+/4OhMfzdJjExu+oNKBNH1DHBdadPuLZb7BFg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 30 Jan 2026 16:40:59 +0100
Message-Id: <DG21D6PIVG01.11GV9Y3YCGP1O@bootlin.com>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>, "Richard Weinberger"
 <richard@nod.at>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v15 0/3] mtd: Add support for stacked memories
Cc: "Vignesh Raghavendra" <vigneshr@ti.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>, "Amit Kumar Mahapatra" <amit.kumar-mahapatra@amd.com>,
 "Michal Simek" <monstr@monstr.eu>, "Bernhard Frauendienst"
 <kernel@nospam.obeliks.de>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <linux-mtd@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1
References: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
 <176971398683.256348.665652099075371899.b4-ty@bootlin.com>
 <87h5s3i31r.fsf@bootlin.com>
In-Reply-To: <87h5s3i31r.fsf@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261259-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,linux.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 228F8BC20E
X-Rspamd-Action: no action

Hi Miqu=C3=A8l,

On Fri Jan 30, 2026 at 3:32 PM CET, Miquel Raynal wrote:
> Hello,
>
> On 29/01/2026 at 20:15:32 +01, Miquel Raynal <miquel.raynal@bootlin.com> =
wrote:
>
>> On Thu, 29 Jan 2026 13:09:26 +0100, Luca Ceresoli wrote:
>>> [TL;DR for v15: as agreed with Amit I'm sending a new iteration of his
>>> patches to fix the build-time failure due to a module dependency
>>> loop. Original cover follows.]
>>>
>>> This patch series adds stacked support by enhancing the existing mtd-co=
ncat
>>> driver to be more generic.
>>>
>>> [...]
>>
>> Thank you for finally re-sending the series after fixing the robot
>> warning, I will not wait for merging it because this needs to finally
>> get in, and it's been over the mailing list for 8 months with just a
>> Kconfig symbol to fix, so:
>
> Unfortunately, for the third time, this series breaks when robots go
> over it (see the oe-kbuild-all@lists.linux.dev ML), so I will drop it
> again :-/

Oh, no!

For the records, here are the reports:

  https://lore.kernel.org/oe-kbuild-all/202601302048.TyA0Uh81-lkp@intel.com=
/T/#u
  https://lore.kernel.org/oe-kbuild-all/202601302001.mGwPwhGE-lkp@intel.com=
/T/#u

My bad, I apparently haven't tested with CONFIG_MTD_PARTITIONED_MASTER
disabled on the final code. Sorry about that!

At a quick look I think this is the right fix:

	diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
	index 3760065c4e08..48de269f4514 100644
	--- a/drivers/mtd/mtdcore.c
	+++ b/drivers/mtd/mtdcore.c
	@@ -2638,8 +2638,10 @@ static int __init init_mtd(void)

	 static void __exit cleanup_mtd(void)
	 {
	+	if (IS_REACHABLE(CONFIG_MTD_VIRT_CONCAT)) {
	 		mtd_virt_concat_destroy_joins();
	 		mtd_virt_concat_destroy_items();
	+	}
	 	debugfs_remove_recursive(dfs_dir_mtd);
	 	cleanup_mtdchar();
	 	if (proc_mtd)

It passes my my quick build tests, but I'll wait until next week to double
check and test on hardware before resending.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

