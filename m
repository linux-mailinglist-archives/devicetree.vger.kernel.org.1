Return-Path: <devicetree+bounces-257870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBcZHxaxcGmKZAAAu9opvQ
	(envelope-from <devicetree+bounces-257870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:57:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2F35599B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F9D892AB13
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C4A33984D;
	Wed, 21 Jan 2026 10:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YnETTcoJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3DA47CC77
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 10:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768991848; cv=none; b=nFYcVKPnJYsbds1Ev56saq8kFmLPCGDWWfL7Z/rTtQoQsl5Chc8FwDYA1kDH/otoViV6GaN15HyX9ZoXyoIQn/UtXCBz8RWquQO4BhfFexY/spe2Xq6zX0HFyWBaD7AB2+Y7VfnGOon0Pd8YJgRtWW/rXpMthd2W4qZ+ALGKRC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768991848; c=relaxed/simple;
	bh=WMaAUk1EfI7ooHIwGV6RP5sBlsnh1OcI2KfxvXW3EFc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=N+WxrvWFRaH3QJkRBWBk87M8LWduMfXrL7hw0FM8pywtwGwd9WoFu7sfZ6NxkU9gGY+O/nFzYjM5bwz5r0nN4sqKyQQQJojqFOltRpunTHTGoovYdSPJnS90qUQDx4CLzou1W5uf1fjFY5HoT1kqjizpCxbpu/LN4yUORgcxcuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YnETTcoJ; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 4472EC21A85;
	Wed, 21 Jan 2026 10:36:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 49A456070A;
	Wed, 21 Jan 2026 10:37:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0E1F1119B026D;
	Wed, 21 Jan 2026 11:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768991837; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=6EsQwF/hwl3IB1yOTfBWqtGUGtEW6jUb20ElOVpjjo8=;
	b=YnETTcoJrRrw/Qrrfn7KIVHLY9isvr2jZOoYs0lh0T8YnAEwQJBsNJ0jwsM6JDS1tYSweI
	1vQ3/WR8okzEhpw36G5gTJuc/JzwmWroTWXq1XWg2xqmpGx765PVFnABVs9VfH3v7M1dtk
	KDWiSv6LjeG0sxE7lfNrpYC0QR9pNtMgRo4fhJAGBKSsWn8RW9nbpp8/RBxzHyxnY0Hrft
	sh34s/ne+4PJDwj8WA+EgsCMLHtIHJTlVGC0YRAtwZdm4W3WT6jgE6I+leVKj5QBF3IyzG
	kQurnmohAuh+NrhuzwZEA+pX+h44jgTo3axrS7ABNT5liGU4t1diQdJxA3D/+A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: "Mark Brown" <broonie@kernel.org>,  Rob Herring <robh@kernel.org>,
  "Krzysztof Kozlowski" <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  "Geert Uytterhoeven" <geert+renesas@glider.be>,
  Magnus Damm <magnus.damm@gmail.com>,  Vaishnav Achath
 <vaishnav.a@ti.com>,  Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
  =?utf-8?Q?Herv=C3=A9?= Codina <herve.codina@bootlin.com>,  Wolfram Sang
 <wsa+renesas@sang-engineering.com>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Pratyush Yadav <pratyush@kernel.org>,  Pascal Eberhard
 <pascal.eberhard@se.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2 00/13] spi: cadence-qspi: Add Renesas RZ/N1 support
In-Reply-To: <87cy34s4sg.fsf@bootlin.com> (Miquel Raynal's message of "Tue, 20
	Jan 2026 16:05:35 +0100")
References: <20260115-schneider-6-19-rc1-qspi-v2-0-7e6a06e1e17b@bootlin.com>
	<80e7a578-4636-48bd-b92b-54fa33cc076d@ti.com>
	<87cy34s4sg.fsf@bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 21 Jan 2026 11:37:13 +0100
Message-ID: <87sebzqmjq.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,ti.com,bootlin.com,sang-engineering.com,se.com,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-257870-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[bootlin.com,reject];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: 1E2F35599B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

>> Thank you for the series! Tested it on TI's AM62A SK with
>> OSPI NAND (Winbond's W35N01JW).
>>
>> Controller fails to probe with the following message:
>>
>> [    1.868863] cadence-qspi fc40000.spi: Cannot claim mandatory QSPI ref
>> clock.
>
> Strange, I was nonetheless careful not to change the existing
> behaviour on other SoCs. I have that board, I will give it a try.

I made a mistake with the clk_bulk_* API data indeed. probe now succeeds
with both my custom board and the AM62a7 LP SK. v3 coming soon.

Thanks,
Miqu=C3=A8l

