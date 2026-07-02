Return-Path: <devicetree+bounces-319411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /h6+JSVqRmqXTgsAu9opvQ
	(envelope-from <devicetree+bounces-319411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:39:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDD76F86FF
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:39:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=gZY3Ibiy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319411-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319411-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3C59300E331
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67A64A1399;
	Thu,  2 Jul 2026 13:32:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E918492538;
	Thu,  2 Jul 2026 13:32:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782999155; cv=none; b=LqhGNaNTo58GS3qvrbjKx2NXDdrFYyMHGyzSTD9wwTvKStPrS63vnBZXIcQzwYM4r6ZX+dY05exaEMKrKpqlsKlYm6stzFtGvu893KdBhKX8liL4fjdqByLc6r6DM43nxPDjcofde9+YPlWew8z5drRk4WwsA+UEyaaZcjEtA2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782999155; c=relaxed/simple;
	bh=/PdHVz5nHkTJ6aPo2Gdk4XwgvzD3Qv3Vyxnp60wgE44=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=T22+lzAwqvPjKY4t4f42ryO8je9HsP4CfFG6MnsV4k68WDQ7UOyLFW+t4mjhKCPREByZyS7sUKdFvF0+30d0LzKqhc/fcu/3OPFugo9A8m8vedftvkSfH6bIKbXS+hlp3WyWrRbiTMORhh5NgvSbG3hxvLozkaQCh1AjzomoCDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gZY3Ibiy; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 5A060C4FEDD;
	Thu,  2 Jul 2026 13:32:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EA1185FF03;
	Thu,  2 Jul 2026 13:32:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6FB50104C9560;
	Thu,  2 Jul 2026 15:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782999151; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=/PdHVz5nHkTJ6aPo2Gdk4XwgvzD3Qv3Vyxnp60wgE44=;
	b=gZY3IbiyZpfwqeOAiVt1d24yIKnddX6h7B09fgkiquSTNUc76JxJxDS93hNr4Tt4WR4T9L
	mFi0XKzJTlw7SjoswfLDN8xQl3lzCApSnq9S9SJFNPNol9i6CaqoTC9F6QWn07/jLMsgH+
	oMNoMX++Ao+/lW6STMAgOz1yCm98Z9i8fYKO14IvC4rqhQguYCrP6tNpbaHiZV92iHhdhS
	T05t8kEu6hX1gGy+/GbuD5TvZokKTOHo30W8znDGOblOc1fx58h3GYuXM4kJeT4SzehaYy
	8USoPr+2/6jV+TGu346mvaR96ZyiOoVDwSieAdvw/9BIj3Kdy1e7qFpliCQqcQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v4 04/16] spi: spi-mem: teach spi_mem_adjust_op_freq()
 about post-config ops
In-Reply-To: <20260618073725.84733-5-s-k6@ti.com> (Santhosh Kumar K.'s message
	of "Thu, 18 Jun 2026 13:07:13 +0530")
References: <20260618073725.84733-1-s-k6@ti.com>
	<20260618073725.84733-5-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 02 Jul 2026 15:32:27 +0200
Message-ID: <87a4s9qzys.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-319411-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CDD76F86FF

Hi Santhosh,

On 18/06/2026 at 13:07:13 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> When a device exposes both a conservative base speed (spi-max-frequency)
> and a maximum post-configuration speed (spi-max-post-config-frequency),
> operations validated after controller configuration must run at the
> higher rate while all others are capped at the base rate.
>
> Extend spi_mem_adjust_op_freq() with a bypass: if op->max_freq equals
> post_config_max_speed_hz (the value written by execute_tuning on
> success), return immediately leaving op->max_freq unchanged. All other
> ops are capped to max_speed_hz, the always-reachable base rate. This
> integrates the policy into the single existing frequency-adjustment
> point so exec_op(), supports_op(), and calc_op_duration() all behave
> consistently.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

