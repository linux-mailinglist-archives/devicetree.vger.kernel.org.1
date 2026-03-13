Return-Path: <devicetree+bounces-275389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGohDtkytGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:52:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA28286601
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64EF330626CE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9574F5E0;
	Fri, 13 Mar 2026 15:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="MYW1lb/v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED035DA4D;
	Fri, 13 Mar 2026 15:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416953; cv=none; b=KkElxRRA+kKAFsrLws3zdDH7rzf3sRLoKfSwQu/t+5d+N9/c9yw/SGl0oMVXY6UCJhqg1q1r5zVwGARkvxYoabQBDozhceWdsi2v3hitLxUz8CBttwgk2g6q0hX35VPOCRtxXskbRZTyYdLqVsYmsWV2FFY4frdctliPROxotLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416953; c=relaxed/simple;
	bh=JBvFN3my5AVy2lrIhdejQCli64xpHH7XCUnkjZXPNFU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=uaBBiOHakdzdovv8UYfETD46QJXQLCX7KU8hZ6riJZsyjlnVSzQm0Fe1CBhLmZzNaY3/GnTn6h1vD/oSnlD4g9FTz4dXoTsOufbDVA2Zh7tSksdE1kBSKRIBAx3m/wL4oXmY8jVrP55V508IFQEYn8am5C2z0FY20UAKlxGRSLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=MYW1lb/v; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id D890AC4285E;
	Fri, 13 Mar 2026 15:49:29 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94FF960027;
	Fri, 13 Mar 2026 15:49:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DF33F10369BC8;
	Fri, 13 Mar 2026 16:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773416946; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=JBvFN3my5AVy2lrIhdejQCli64xpHH7XCUnkjZXPNFU=;
	b=MYW1lb/v7UD9mqMZtt9u4Yicuw08mgqjTl0y8Nyr7O3/y8JYD7Z864f9EBWgGlg5a0iJS1
	Up1QJj5OjMrrMsA5FhZNcFUxUn+3K0dgTK+00RVDaF9DM0xhcM9XWzgmDK8a9XCDIouLsz
	M5tV47t1J4N3YS+kxxjnjtVk+bhTD66GsVMMySFs21BG6NUL4WDjNxkYqSK4+gSnUUSXg+
	bpyNrkJnUSAQGhf/QOxowU0/kSOlNZVCvBkSjmud6eDkIIdabFYfqFfeCV6d7UpRI3/MSk
	y3bqRtVQGpdeov/joMjP4+aBRRANwUMt56MkXFGcVlfJogMbM1joHGkj/xBIZQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Elad Nachman <enachman@marvell.com>, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, andrew@lunn.ch, sebastian.hesselbarth@gmail.com,
 pali@kernel.org, mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: arm64: add Marvell 7k COMe boards
In-Reply-To: <CAL_JsqJn87FdJmh=4phLL+DRQk8dz1iJE7=43f-ObFpEPpB_Dw@mail.gmail.com>
References: <20260122165923.2316510-1-enachman@marvell.com>
 <20260122165923.2316510-2-enachman@marvell.com>
 <87ms0qfd8h.fsf@BLaptop.bootlin.com>
 <CAL_JsqJn87FdJmh=4phLL+DRQk8dz1iJE7=43f-ObFpEPpB_Dw@mail.gmail.com>
Date: Fri, 13 Mar 2026 16:49:00 +0100
Message-ID: <87y0jv687n.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[marvell.com,linaro.org,kernel.org,lunn.ch,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-275389-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,BLaptop.bootlin.com:mid,marvell.com:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 8FA28286601
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Rob,

> On Mon, Mar 2, 2026 at 9:44=E2=80=AFAM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
>>
>> Elad Nachman <enachman@marvell.com> writes:
>>
>> > From: Elad Nachman <enachman@marvell.com>
>> >
>> > Add dt bindings for:
>> > Armada 7020 COM Express CPU module
>> > Falcon DB-98CX85x0 COM Express type 7 Carrier board
>> > Falcon DB-98CX85x0 COM Express type 7 Carrier board
>> > with an Armada 7020 COM Express CPU module
>> >
>> > Signed-off-by: Elad Nachman <enachman@marvell.com>
>>
>> Applied on mvebu/dt64
>
> It seems the .dts files are in 7.0 and the binding is only in next.
> The binding needs to go into 7.0 too.
>
> Please pay attention to the warnings. There are only 19 (unique ones)
> left for marvell since I fixed most of them.
>
Sorry for this. I have now applied the binding, and it will be included
in my next fixes PR.

Gregory

> Rob

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

