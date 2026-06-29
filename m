Return-Path: <devicetree+bounces-317165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2PoREZ+WQmrp+AkAu9opvQ
	(envelope-from <devicetree+bounces-317165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:00:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF556DD0DB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:00:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=B7NblWrx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317165-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317165-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1482732A8B29
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1496B42981C;
	Mon, 29 Jun 2026 15:43:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7262212CDBE
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:43:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782747824; cv=none; b=H5L9xSrSW3Bbruuu6XQyBa8/0U0A2FKBNwV93soiUpAEyuW9cbXzV7q+aOqW3nF4X3Wbr+MCPx2n+cGYfFAY/W2g2LUN7QYGR3D5owicUcf8D9hjumBzSxsEoAstnFvvzb8sFyzG4aymBlED82XewHLcpMtA7Ki+sUpcxdk33lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782747824; c=relaxed/simple;
	bh=ufUECX5xmH2+iBPhNbY/6S75VKUiQXYWWuVZ5F61r00=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HnrRuEPvtxf8vkR8tDAPT97H2w12XUBLNFi9MxtzokjoeZXdjYEBuC4erFt+rzulYKoaFZ709jZLGov1+oiOi2A0Dh5ARdIagcxyOYHT8jMjzv2BRKJoQ/0IImGlLWzroNSAfSP2TPOFVNtSBzq0Vt2aJisNE27UeqpxPOrndr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=B7NblWrx; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 1ED58C6B3A9;
	Mon, 29 Jun 2026 15:43:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C9DF35FF96;
	Mon, 29 Jun 2026 15:43:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 90932106F190D;
	Mon, 29 Jun 2026 17:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782747819; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=ufUECX5xmH2+iBPhNbY/6S75VKUiQXYWWuVZ5F61r00=;
	b=B7NblWrxpwTHjtajkuPoFZfqR6FzekKleuqAVcNoqsHAIpJSYEoMWJFp6y7yw5vgcQUH0X
	BCWWKwIlCtn2JNl/fBU2FR7xMNQt5H+1rjjnyBB3o0GOoZM5DNmCp6XeMiREKO/XJ6mXwf
	+3yiBB+FnenAuyDSAzUJxqDr/lvHYum+4/zFdbwLK7NlvIIptqe93E3HiKGClm+iZrbRHR
	1FQnqcybEpgrCT6J7UVkiFIuHFBM5T17Tvhk/K9K3wYp2nZi9H0rplS5s33DuA95zn478M
	zd9GnDAVt9yFoqDpEyprw7XOJRP/LUPAgm4RvZiC80nRd0tijV6mg3POprzUNQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v4 03/16] spi: parse spi-max-post-config-frequency into
 post_config_max_speed_hz
In-Reply-To: <20260618073725.84733-4-s-k6@ti.com> (Santhosh Kumar K.'s message
	of "Thu, 18 Jun 2026 13:07:12 +0530")
References: <20260618073725.84733-1-s-k6@ti.com>
	<20260618073725.84733-4-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Mon, 29 Jun 2026 17:43:36 +0200
Message-ID: <875x31s66v.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-317165-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,bootlin.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9BF556DD0DB

On 18/06/2026 at 13:07:12 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Add post_config_max_speed_hz to struct spi_device and parse it from
> the spi-max-post-config-frequency DT property in of_spi_parse_dt().
>
> This supports SPI devices that operate at two distinct clock rates: a
> conservative rate always reachable without controller configuration,
> and a higher rate achievable only after controller-side configuration
> such as PHY tuning. With both properties set, spi-max-frequency gives
> the conservative pre-configuration rate and post_config_max_speed_hz
> carries the post-configuration target for the SPI-MEM layer.
>
> Zero when not set, preserving existing behaviour.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

