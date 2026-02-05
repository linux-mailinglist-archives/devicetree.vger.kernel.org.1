Return-Path: <devicetree+bounces-263122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIsIE97YhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:52:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 68057F6356
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCB3330028DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259243009E2;
	Thu,  5 Feb 2026 17:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RPhvRriw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA65A2FFFB8;
	Thu,  5 Feb 2026 17:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770313922; cv=none; b=qgXIOSQQJtaX119kX6M88lrNTgjnSlQnGfZWm1a+BqDfMXG+78srQdECZBW8dp4RJwBcGqJQlitff1bnxnFDRMC5mbdLo6TzCurHACwgsyOyzeTH+vRmw9TuKfye9x0CrEpiydTFtofj78hri/7YpIFn7grX2LAcQIMzjQBcu7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770313922; c=relaxed/simple;
	bh=RkGlrX3rK4GiNQXi+0GNluYODZgj5IeRWRRUdOdGIHA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=H1AM2nsynzen3yQvkF8FIqzAjOWlbPgnfvSxUanRGJyHAaLndktRHx3p42wnMRUd1SY3kIvREiLdpMty3WDq/4VIzl06jPol8iYKUzs+szhURsseK2qjAHxmfwJZyDke9opWxSuiqouIht6HDHAH5oiGDYWuLfi6BypYaKFDatw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RPhvRriw; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3E9794E42424;
	Thu,  5 Feb 2026 17:52:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 111F86074D;
	Thu,  5 Feb 2026 17:52:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B76E0102F2A49;
	Thu,  5 Feb 2026 18:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770313919; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RkGlrX3rK4GiNQXi+0GNluYODZgj5IeRWRRUdOdGIHA=;
	b=RPhvRriwf16jdV+qijBkY++Pd0PrSWuLgz9EDCAwuctF1XeyHjVsWsO6KGWsXzA5jqgvxA
	4CR2nB+vonFuXPekEHuPdF0FWjcXLGgebg0/hyHebj0bEyKOgLMtcRP96BfMnnrGgNOlAW
	TUAbwbriRyHi1fJyYDEirqwJFRx2Jv/CBYmMH6xRuRpCGwBjIfbiYuyKjJ/2y2JQEbHL7B
	ysQsrRGcoqhNlgkE0KdOj9zCJb3ziwD1LeH+PXYNVynkP1vnHGUNkIH61raiI6YhvbsurN
	KgZgGBv0WSUYyDQB3wJIGgFYlZxU0ApmZMDnA/r/trJj0LXQiV/qt1SGdQUZZA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 12/12] spi: cadence-quadspi: enable PHY for
 direct reads and writes
In-Reply-To: <20260113141617.1905039-13-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:17 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-13-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:51:55 +0100
Message-ID: <87tsvvf58k.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263122-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: 68057F6356
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:17 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Enable PHY mode for direct memory-mapped reads and large indirect writes
> (>=3D 1KB) to leverage calibrated RX/TX timing delays for high-frequency
> operations.

Is enabling the calibration so impacting? Did you measure it? Isn't
skipping any non read or non write operations enough? Status reads for
example should have a smaller op->max_freq based on my previous comment,
so in theory I do not see when we will meet these cases.

Fine for the other conditions.

Miqu=C3=A8l

