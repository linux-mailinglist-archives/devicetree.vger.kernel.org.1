Return-Path: <devicetree+bounces-310814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sx6nE6POK2qrFQQAu9opvQ
	(envelope-from <devicetree+bounces-310814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF86782C2
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=vfKYl1DN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310814-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310814-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5047331F9717
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E3153A8FEE;
	Fri, 12 Jun 2026 09:12:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC74A36A375
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:12:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255564; cv=none; b=mJODMLjPkCgxtmpNAs+axWw/sMUiGBkiKjBI0rycqva/gZ72CUUjn7gzPMt1VkZFBH5q6P2hN+TaI6OEjk4/d3D8Cd43hel1swSHFRb4CdLtPMqYgtdO2pF1ZLAQ8rq0zw8w0ejVQ/2/Sh/VL5kTKiCogr1mbQqzYBDR0RqsJHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255564; c=relaxed/simple;
	bh=1HCoYNc9EFQ9bD7/s0YtQxxzTBD+HBwHfkCtwJ6rJOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jXkJPkirmXpmFRboV+6YNKNL51az7in1I8HePiTXfYC8RTG1QmVYxBYBJlTmmDFpDiaowyAA/ltoUBaNs9WQyPWbM8rELsxAtfhKEKl/IcpXHZRHeVMN1zl98MA6plkG6YOxZ3Krzg5A1j1QWZMpU5WXw2FTG9+PWrQZkKMU9ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=vfKYl1DN; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A4671C49F74;
	Fri, 12 Jun 2026 09:12:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E4CDE60012;
	Fri, 12 Jun 2026 09:12:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E39D7106C85E9;
	Fri, 12 Jun 2026 11:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781255558; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iJsXIUmNuUrMOCYzCyh+b1++3mAcfI+RsbdQDmpTny8=;
	b=vfKYl1DNzHdqIDMbfa1G+i2dG6dAvKJcebWjot5aLRLnAd/K4uoAHVzo68246agxI10Z+R
	iMuFWwaAY/dcG1o/5QUnvsBN0DzUEQbVtK6zseXCYfzJL2TDg3GAL9FFip+1NG2yh3QIPR
	B51gO6Npe9PdlmMuejDHsFghRRfqkZX9jsMS+cW2D129gwboiBJVFVlMx7mrveyz7kqPrI
	ykMXhodfEngXrTHur7IU7UNR47c5itOvhLNIRhV2l+f6G1IclKaYwGuevIKQejVtEMjFPM
	EdLb4mvRGHYjnHBv4v1QRGLUpZxst5QgquTjUBW61+3sImg0Q8oXQKSCZzo1WA==
From: =?UTF-8?B?QmVub8OudA==?= Monin <benoit.monin@bootlin.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v8 7/9] clk: eyeq: Convert clocks declaration to eqc_clock
Date: Fri, 12 Jun 2026 11:12:37 +0200
Message-ID: <zdUBjycYR5WQkKpxC-LIgA@bootlin.com>
In-Reply-To: <20260604134458.F1C311F00893@smtp.kernel.org>
References:
 <20260604-clk-eyeq7-v8-7-53f618174cf6@bootlin.com>
 <20260604134458.F1C311F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
	TAGGED_FROM(0.00)[bounces-310814-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AADF86782C2

On Thursday, 4 June 2026 at 15:44:58 CEST, sashiko-bot@kernel.org wrote:
> [Severity: High]
> This isn't a bug introduced by this patch, but since both "div-ospi-ref" =
and
> "div-ospi-sys" share the same hardware register at 0x090, does this need a
> spinlock?
>=20
> Looking at eqc_probe_divider() in drivers/clk/clk-eyeq.c, it passes a NULL
> spinlock argument to clk_hw_register_divider_table_parent_data():
>=20
> drivers/clk/clk-eyeq.c:eqc_probe_divider() {
>         ...
>         hw =3D clk_hw_register_divider_table_parent_data(dev, clk->name,
>                         &parent_data, 0, base + clk->div.reg, clk->div.sh=
ift,
>                         clk->div.width, clk->div.flags, clk->div.table, N=
ULL);
>         ...
> }
>=20
> Will concurrent rate changes via clk_set_rate() execute unprotected
> read-modify-write cycles on this shared register and cause register corru=
ption?
>=20
See my reply to the previous patch of the series.

Best regards,
=2D-=20
Beno=C3=AEt Monin, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com




