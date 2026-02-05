Return-Path: <devicetree+bounces-263117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPAxGKzWhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:43:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E97F615B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4433630010ED
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE922F9C3D;
	Thu,  5 Feb 2026 17:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="koOhIqBy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F39D2F362D;
	Thu,  5 Feb 2026 17:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770313384; cv=none; b=qEqsppZ30pHI7HXcXcR0JUUfksbRT9wxvpkEyI9+e22ecmt8zPhj6yqxk5Ch3mT3L2F8XWEty9LAD/YKCic5GPZhbDEKtUK8Vwc9qlYsSHAhUfP05A/TJhrqGaV1RVc0FGvhzQcsp17M1QAphm7B5EmBbFcbsMGyZHRXFDVDI5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770313384; c=relaxed/simple;
	bh=qiN/3v4/7cTvLyPOBDwDVYZwm4UqwWylArbTyjrlN9M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=d/CksMMWjzENLBjhQlEHP0w6zhAyzSaFfbFQztAvPTdwBrE6+aJz1sgbTqMZY2+PoswsAJcjbEIWuoqXEZX70jgmuOsQdeWw+OUgVJZUa27708/QCoLkI/+n9wH1CM3pv0CrSuvJ9dW7dtxLzM1GBA1DwwZSLCBic+vP2l4qDhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=koOhIqBy; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 332821A2C35;
	Thu,  5 Feb 2026 17:43:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 08F036074D;
	Thu,  5 Feb 2026 17:43:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9186F102F2A49;
	Thu,  5 Feb 2026 18:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770313381; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qiN/3v4/7cTvLyPOBDwDVYZwm4UqwWylArbTyjrlN9M=;
	b=koOhIqByf1PKGszpESdoit5d4AOL4n2V9Nxu9ktt8LL5DiM5CImtOiM3/utZPP/fdkxvoy
	10PaaCTcKImUUMy9Td74AjclkZOzhX/AYXMkEZm8ClxTAwxilQaMW2RIdrKxVzn1NKhXmd
	a18epp3JweKiXzaltKKgeovGL1frD7c5NqdB48l2WhYyE5Dg4yQY1WbxHk6LLDsS+9VG2r
	/yK0ER5r+NkOePxvU1rCmzTJmhb9Bfn4AlUnle7Imef/fb+CSyrILNh+PJNrJmMOjDezXf
	kOqAPH9oHk7NcRiIlQT3qof/MStz4uzgz4CiRQRlwjzTsCLOzU5JBKC+EgNZqA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 10/12] spi: cadence-quadspi: implement PHY tuning
 algorithm
In-Reply-To: <20260113141617.1905039-11-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:15 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-11-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:42:57 +0100
Message-ID: <875x8bgk7y.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263117-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,bootlin.com:mid,bootlin.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 08E97F615B
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:15 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Implement PHY tuning for SDR and DDR modes. PHY tuning calibrates RX
> and TX delay lines to find optimal timing for high-speed operation.
>
> Add DLL management functions:
> - cqspi_resync_dll(): Reset DLL and wait for lock
> - cqspi_set_dll(): Configure RX/TX delays (0-127)
>
> Add pre/post config functions that enable PHY mode during tuning and
> restore normal operation afterward. PHY mode consumes one dummy cycle,
> so adjust dummy count to maintain correct flash timing.
>
> SDR tuning uses 1D search across RX delays at fixed TX. Search for
> two valid windows at consecutive read_delay values, select the larger
> window, and use the midpoint.
>
> DDR tuning uses 2D search across RX and TX delays:
> - Primary and secondary RX boundary searches at different TX values
> - Binary search for gap boundaries within valid region
> - Temperature compensation with midpoint calculation
> - Systematic boundary searches using 4-step increments
>
> The DDR algorithm finds the four corners of the valid region, identifies
> gaps, calculates temperature-aware midpoints, and validates final setting=
s.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

This commit is gold, thanks a lot for the details in the comments.

I have no authority on this part to acknowledge it formally, but I
believe this is great work. Looking forward to see it work in octal DTR
mode now ;-)

Thanks,
Miqu=C3=A8l

