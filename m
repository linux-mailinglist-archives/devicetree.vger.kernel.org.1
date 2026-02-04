Return-Path: <devicetree+bounces-262588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INK5HIAfg2nWhwMAu9opvQ
	(envelope-from <devicetree+bounces-262588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:29:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5A4E47F9
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43C833001F8A
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 10:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB7F3D9059;
	Wed,  4 Feb 2026 10:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oaqQ7l76"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211753B52E0
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770200955; cv=none; b=ZTytcFaXfnC3NtmjoEj60RuahhUEp0VK+nqHO//sGPBGP7uH953hFvbvCTVC9lteC9Yxak4drPL9fPMqfEaBExCgjp7IpvBaXnlRGQ8YkUW75ZYbWusmma3tPZRnC927BDBFvhHyNeDlimOJSfccuxj6fL+ShtBA5wxBnzDL6RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770200955; c=relaxed/simple;
	bh=LB2WMksQyfGJhpuEI5Ie02v21FjdlyP1rys2s1FlD/0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=usw/nP3B1XtmdjwiS24fwIJaFCl1K3rfRGSEB1sQg5Vzk9chTGzjpSBSb20T/Yw+XdfoANwDdFKtmo3wguTs7hvjjf1a/iauMQRnjwwxSDKbYI/0PK/T/IeSBYX+62WpQCTSgFtEboQvhCUUtv7M9HfKG9xJTNbFENYpIVNzQF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=oaqQ7l76; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 75AAE4E423F3;
	Wed,  4 Feb 2026 10:29:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 46B1B60745;
	Wed,  4 Feb 2026 10:29:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 136BF119A865B;
	Wed,  4 Feb 2026 11:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770200952; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=01QzhpC+ZgIOpSS8o+hjNlELWio1HwrhuHHzfZRg1Sk=;
	b=oaqQ7l765iQGfSSBX//MES/7TjJpX1/lKC0GyoQDpXOQCn65sDKixQW1izvZx0JghaJrOR
	w45VURFbK+s0tQgpoqr7mbYdRn0x5WCWZyM//0viVoBMTSS4gCKawU3MKv5Osd/aFc+5VO
	8/c2T/N35yj8P/tpq+LNDCg4fXIJ8XD6iqV6uACasvhqgE6pi/WuDwqkor2klF3/FzMhf1
	pBhHOnGlp7ruQd7rI0sHSzEdPo1+W9EiYGx/WvBDlrChXYT3E1wEQTQD/ZiANCYS9+xEQm
	C3tL1rmp2UyPyAjsjDHiKzWhq7Ek+UCm/NwDP/t62jGxMEFqIFeaR9eZUUqaOg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 00/12] spi: cadence-quadspi: add PHY tuning support
In-Reply-To: <20260113141617.1905039-1-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:05 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 04 Feb 2026 11:29:07 +0100
Message-ID: <87343ghkek.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262588-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: 9E5A4E47F9
X-Rspamd-Action: no action

Hi Santhosh,

On 13/01/2026 at 19:46:05 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> This series implements PHY tuning support for the Cadence QSPI controller=
 to
> enable reliable high-speed operations. Without PHY tuning, controllers use
> conservative timing that limits the performance. PHY tuning calibrates RX=
/TX
> delay lines to find optimal data capture timing windows, enabling operati=
on up
> to the controller's maximum frequency.
>
> Background:
> High-speed SPI memory controllers require precise timing calibration for
> reliable operation. At higher frequencies, board-to-board variations make
> fixed timing parameters inadequate. The Cadence QSPI controller includes
> a PHY interface with programmable delay lines (0-127 taps) for RX and TX
> paths, but these require runtime calibration to find the valid timing win=
dow.
>
> Approach:
> Add SDR/DDR PHY tuning algorithms for the Cadence controller:
>
> SDR Mode Tuning (1D search):
> - Searches for two consecutive valid RX delay windows
> - Selects the larger window and uses its midpoint for maximum margin
> - TX delay fixed at maximum (127) as it's less critical in SDR
>
> DDR Mode Tuning (2D search):
> - Finds RX boundaries (rxlow/rxhigh) using TX window sweeps
> - Finds TX boundaries (txlow/txhigh) at fixed RX positions
> - Defines valid region corners and detects gaps via binary search
> - Applies temperature compensation for optimal point selection
> - Handles single or dual passing regions with different strategies
>
> DQS Support:
> - Adds optional DQS (Data Strobe) mode for improved timing margins
> - Configures read data capture to use dedicated strobe signal

I am glad to know this signal is useful. I do not consider the DT
property as being the correct way to carry this information ATM, so I
will investigate a bit a propose a solution that is more uniform with
the rest of the chips description we have today.

> Patch description:
> Infrastructure (1-5):
> - Patch 1:   Add DT binding for spi-has-dqs property
> - Patch 2:   Implement spi_mem_execute_tuning() API in SPI core
> - Patch 3-5: Refactor and integrate tuning in MTD SPI-NAND/NOR layers and=
 call
>              tuning during probe
>
> Cadence QSPI Implementation (6-12):
> - Patch 6-8: Preparatory refactoring and DQS support
> - Patch 9:   Add PHY tuning infrastructure with placeholders
> - Patch 10:  Implement complete SDR/DDR tuning algorithms
> - Patch 11:  Restrict PHY frequency to calibrated operations only
> - Patch 12:  Enable PHY for direct memory-mapped reads and large writes
>
> Testing:
> This series was tested on TI's
> AM62A SK with OSPI NAND flash and
> AM62P SK with OSPI NOR flash:
>
> Read throughput:
> |-------------------------------------|
> |           | without PHY | with PHY  |
> |-------------------------------------|=20=20=20=20=20=20=20=20=20=20=20
> |OSPI NOR   | 37.5 MB/s   | 216 MB/s  |
> |-------------------------------------|
> |OSPI NAND  | 9.2 MB/s    | 35.1 MB/s |
> |-------------------------------------|

I am surprised by these numbers, I would expect these to get higher for
SPI NANDs. I will test the series and report my observations, especially
since there is also ODDR SPI NAND support now (in nand/next, should be
part of my upcoming merge request to Linus for 6.19+1);

> Write throughput:
> |-------------------------------------|
> |           | without PHY | with PHY  |
> |-------------------------------------|=20=20=20=20=20=20=20=20=20=20=20
> |OSPI NAND  | 6 MB/s      | 9.2 MB/s  |
> |-------------------------------------|

Overall I want to say that this series has greatly improved already, I
am really looking forward seeing this merged. I have several comments to
make, but they are mostly minor improvements which won't be very
impacting.

The tuning procedure is very well described in the code as well, which
is appreciated.

Please remove the RFC prefix for v3, it is clearly no longer needed.

Thanks,
Miqu=C3=A8l

