Return-Path: <devicetree+bounces-285375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFezGtAn1WnB1gcAu9opvQ
	(envelope-from <devicetree+bounces-285375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:50:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77A3B14E6
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 17:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 915183027B62
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 15:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07233CBE7A;
	Tue,  7 Apr 2026 15:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="nXl+Lstp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0167736DA1B;
	Tue,  7 Apr 2026 15:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775576491; cv=none; b=sTT1bIS6lKT/ttBbORK4fdzyXHMCxbHh8mFS5euCvDYR11VcuHBoN/cCm2kglkcvoMBaEsKu2YSA/c1aAx01FOJx2NFGH0vX02VAVZa/KfRCsRCV6xeJcNKvOSLYxYQ50xUsSdkTxoEPenf4GI4mxkH6BMnuiu/HmUu64QRQ08A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775576491; c=relaxed/simple;
	bh=ycbDgZBiYukttd3uAVilgEtNGHmvXtCDayW/+oMmhs0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qwPvxPQFS01Yk/WqP0k8rcQB9WJg9XvJQ8Lldo2WJXuZ/rkmRY0Nqx4sX+b2K99kUCoaCYFHoc//k7p4xDsvxmodofvWrpMSkQKPW3oj0c2GN83XTeHdRds+Yx39Jr37qJBWNCoOZNYGCO/Oa/3WVLNdId18DDnd9LJiC0OdhxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=nXl+Lstp; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id AADC21A31A0;
	Tue,  7 Apr 2026 15:41:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7E972603C7;
	Tue,  7 Apr 2026 15:41:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 652D310450100;
	Tue,  7 Apr 2026 17:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775576479; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ULulOoiRQuWbPZOZkIUnKPUzRZMa/NsnyoL17KKxICQ=;
	b=nXl+LstpQysO6CDER8QyNVBP9/EKfx8XaXxOjPntpB7jHfQtWW+55RyOHGnIsDXmQ+K9vW
	WWDx+TPqVWT4lTX2F1JQk4k5jY0LWTqThZBnfWHvTyT8hKzjDMhmMo9zTV1r0/zJLVoVKT
	3I0PNQKvzadEHQuWy2JCP45p//3BqOn7RrCwBL3WTY2RnOyUn8+eEXq6rw0Mbv6ODpPw+3
	wfLrFl/J7zP1ZLPZPQVIL9LVTlnaX7M6DnnkKzGgmkVYZe4iGLNeF7oLHtMfTiVt5RwUKQ
	OePcgYOdNN0asO+Z5ooPsKM3LjaQdvrFPv6NZLecWOrmwKKOIql2b5oUmwbkLg==
Date: Tue, 7 Apr 2026 17:41:13 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: "David Gibson" <david@gibson.dropbear.id.au>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Ayush Singh" <ayush@beagleboard.org>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>,
 <devicetree-compiler@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree-spec@vger.kernel.org>, "Hui Pu"
 <hui.pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 14/15] libfdt: Handle unknown tags on dtb
 modifications
Message-ID: <20260407174113.284d1e43@bootlin.com>
In-Reply-To: <DHHX3IN0BKD7.1CGJV0WXP7P2E@bootlin.com>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
	<20260210173349.636766-15-herve.codina@bootlin.com>
	<DHHX3IN0BKD7.1CGJV0WXP7P2E@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285375-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: AE77A3B14E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Luca,

On Wed, 01 Apr 2026 17:18:54 +0200
"Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:

...
> >   - An unknown tag out of any node (i.e located before the first
> >     FDT_BEGIN_NODE or after the last FDT_END_NODE is a global tag  
>                                                    ^
> 						   missing ')'
> >     related to the dtb itself.  
> 
> Out of curiosity, is there a real use case for global tags after
> FDT_END_NODE?

Well what could be use cases in the future?

We talk about unknown tag and nothing prevent an unknown tag to be after
the last FDT_END_NODE tag in the future.

In my RFC series adding support for addons, I added FDT_IMPORT_SYM tags at
the end of the addon dtb and so a global tags were available after a
FDT_END_NODE tag.

In the end of the commit log introducing FDT_IMPORT_SYM tags [0], the
location of those tags is mentioned:
--- 8< ---
   If FDT_IMPORT_SYM tags are present in the dtb, they are present after
   the root node definition (i.e. after the FDT_END_NODE related to the
   first FDT_BEGIN_NODE).
--- 8< ---

Also in tests related to import symbols [0], you can have a look look at
the tests/metadata_importsyms.dtb.expect file and you will find:
--- 8< ---
    --- /dev/null
    +++ b/tests/metadata_importsyms.dtb.expect
    @@ -0,0 +1,8 @@
    +/dts-v1/;
    +/addon/;
    +
    +/ {
    +    prop = <0x00000001>;
    +};
    +// [FDT_IMPORT_SYM] 'base_a' (foo,bar)
    +// [FDT_IMPORT_SYM] 'base_b' (foo,baz)
--- 8< ---

This is the expected result when the metadata_importsyms.dtb is dumped using
fdtdump.

fdtdump dumps a dtb in a linear way starting from the beginning to the end
of file.

The FDT_END_NODE tag is represented by the '};' sequence (end of node).
FDT_IMPORT_SYM tags are present after the end of node and so between the
FDT_END_NODE tag and the FDT_END tag.

Not sure I will keep those tags at the end of dtb when I rework the series
on top of "structured tags" but well, this was a real use case.

[0] https://lore.kernel.org/devicetree-compiler/20260112142009.1006236-36-herve.codina@bootlin.com/
[1] https://lore.kernel.org/devicetree-compiler/20260112142009.1006236-37-herve.codina@bootlin.com/

Best regards,
Hervé

