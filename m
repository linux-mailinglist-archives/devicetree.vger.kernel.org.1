Return-Path: <devicetree+bounces-263114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB5JBSHWhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:40:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581FF60E6
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:40:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10E6D304AAC1
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F9C2F39C2;
	Thu,  5 Feb 2026 17:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="2tByKqO6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185852F39C1;
	Thu,  5 Feb 2026 17:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770312948; cv=none; b=MWyEzicUTLnjgRBfV/7EIPy9h4A55QhDnhcv6sBzEIJjSQyf0mFyAVfMLCxXzukvqqPhdwVKprwQ/qpNg5zlzruB3H53psy9YUVGxHLhALeVyzhK64z8woOxeJJqnHXNsbr88JLHDqIkfI3jYUpXV6ZMwdRQ6quNV80o4ab7ZBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770312948; c=relaxed/simple;
	bh=P7qPm+Qj6DOdJcE5S4qzCC8CDusFkdDkAEcNAPbSTjs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GedZT3hcfQM8hxfhLg/MWWT4gQK3CfP0+A/OHvH9FzxyU5s1SBYv9umytRKn8H2cCkjUBc+qC0PoIPuAoSO3gnUfBN9JW/IXH4na8SMwifS5AmKRDI93FJPoPrk/p0N8iTrz5rhfb7NwtgRNeSJpyccenBLZ1BQDVwg85jKIZuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=2tByKqO6; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id BB7F21A2C31;
	Thu,  5 Feb 2026 17:35:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8F98C6074D;
	Thu,  5 Feb 2026 17:35:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 73086102F2A49;
	Thu,  5 Feb 2026 18:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770312945; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=P7qPm+Qj6DOdJcE5S4qzCC8CDusFkdDkAEcNAPbSTjs=;
	b=2tByKqO6OicYo2ldtnWeiYKqZls56u4AqRmLJ8hXdSkgrY3Gq+WqFwi+0LHSUE0ApE+5Jg
	Tj7MhfMmj1q58Q66l2391dNNcK7Zq35shpb5uP3K6RF3bKuQJlOP70IfvjPrbfZodDl49v
	dh0qdNGvPESgdtKY1/fGCpzxWgd4LAc4qfDddLOFD3/SnZyfuvHCwSZp9xy4zNe+5vI/xM
	F3h+tb4rKt55GlZP0D+XD+cRe9keq8fP/u2YuborlJN/UZuZS7t7IIXZYJ4GPlQcmtJhwm
	pyg6LYMUBn24EnUuQ+57IZ8tz+Vn/EtbHONBmtFfvI2qfYFrc2xuACag3rgGLg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 07/12] spi: cadence-quadspi: add DQS support to
 read data capture
In-Reply-To: <20260113141617.1905039-8-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:12 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-8-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:35:42 +0100
Message-ID: <87ldh7gkk1.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_FROM(0.00)[bounces-263114-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 6581FF60E6
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:12 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Add DQS (Data Strobe) parameter to cqspi_readdata_capture() to control
> data capture timing. DQS mode uses a dedicated strobe signal for
> improved timing margins in high-speed SPI modes.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

