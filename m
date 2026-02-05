Return-Path: <devicetree+bounces-263113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIijMu/UhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:35:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C932DF5FE8
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E57B53002D2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69262F39C2;
	Thu,  5 Feb 2026 17:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Cxbb8ktH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F59B28BA95
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770312938; cv=none; b=pRqxKfWdeC/fVCY0Fr1LzG5Z7uQA7HZ0g1oSbQNRgxjusXr0IAkhayU49yyzGyCdO3hI7MQXUm1AK8/hKyAzXP1fQUZit7Pda3hlDJi5RNVewaw1/08XBz3utAtwCoYNuoGx5XbFBCrIlj68nEmeUWbaZzENM/QoFHAx8kpVfUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770312938; c=relaxed/simple;
	bh=tV/ZLocVZdBi7hgAdczYvyRfc5thw1DladriRmwpiZY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GahvEoDgNGsyFWc3HdgKAAqHq38+jV0btTlNUyWOV8DeyLHS16nZSc/95HAf4XGbgs0R9H1vsK/fPtfiXLRid9Yev4I6WnE2EvJYVzU3ermd1nL2RmyRkV/q2qR7eatfPoxnE9yYgLeBry8kNQ7PXpuS0LAJrvTRGWx3v1gzb3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Cxbb8ktH; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 5E0F74E42424;
	Thu,  5 Feb 2026 17:35:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 324B86074D;
	Thu,  5 Feb 2026 17:35:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 24EF6102F1B6D;
	Thu,  5 Feb 2026 18:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770312936; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=tV/ZLocVZdBi7hgAdczYvyRfc5thw1DladriRmwpiZY=;
	b=Cxbb8ktHo2yBQiTArWp/lYhUfxUNbY8ZX2qFF7G9B8VjboTXDRIfVru1OveyU/lvL5LDeM
	ZWXiFBI4h+vF9KM+jHRvi/c4fyQXoiigy6paI4Ab4dMRPsz17xTFsASRiixzewVNtWZ1u/
	L76AB4t3hNaNVUV088iGe1D3jafpCLkYMs6OqzdccpOWwPyfau9gtISd2z1enY6cdHlxff
	GjkU/fzlnm9YrS3wjLDsWGFt5mY4mWwzeLGfYIeHSoqMZoTqx8VELBKSDWKZve3W6uVovo
	p/JABkwcTism9riHOl5XbIEf4Fpx3LxoG5Ew/zTY5YFO0VmTbGvpO6Af2lerlg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 06/12] spi: cadence-quadspi: move
 cqspi_readdata_capture earlier
In-Reply-To: <20260113141617.1905039-7-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:11 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-7-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:35:33 +0100
Message-ID: <87pl6jgkka.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_FROM(0.00)[bounces-263113-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email]
X-Rspamd-Queue-Id: C932DF5FE8
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:11 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Move cqspi_readdata_capture() function earlier in the file. This is
> preparatory refactoring for upcoming PHY tuning support for read and
> write operations.
>
> No functional changes.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

