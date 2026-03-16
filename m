Return-Path: <devicetree+bounces-276347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOkDEdE9uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:28:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C023529E385
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DF1632B2D51
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C5FB3CFF6E;
	Mon, 16 Mar 2026 17:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LXvHwC5B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9BC3CF032
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681709; cv=none; b=K9+kBQKVge4QuhiPDeafXqSw0105Mnl7rExtALtf16o2jBUQTgLS7+c/Xs8T4pOJKfr0oUMu/3y2HPrieb7tqWhWduqF65Ajs7anV197ZzKewZeUcirjvRoHGtsIWeKdFLZITWf6Sp6YHZ2rSBG0hPm83dWtlmM6e4ZY0LxMIaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681709; c=relaxed/simple;
	bh=XFTDd7Tadlm0/od3TW1ezaMppdHeqpU3S8hzc5cs31E=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=Kpuz41/z2/fwjyTcl0ZyYSgcR6pciW8/Q8g9tu2YPpjamXRNimgpl+89zm8b2/hNeMsxGzfBzxQS1AnMTscNvVJXHDru7ZDLyXJd8y6BSW6vTfLmZ5qnvN+3WAaHi/TPYNCEHgDI6gZRjUOeJQ0MxeLMqx5dj6dtQpGzxSU+7nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LXvHwC5B; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4142F4E4260C;
	Mon, 16 Mar 2026 17:21:45 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 095B65FC4A;
	Mon, 16 Mar 2026 17:21:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0AAD510372204;
	Mon, 16 Mar 2026 18:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773681703; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=5hJQPcQB/mfn4z9kBexUJFaQDGdy8HXhWPjLr20ro9s=;
	b=LXvHwC5Bv+dbRiyfi15dVgmJUz8kDDC8Thu7YT4mTKLEbQKg9kDD7SIg2o24Nn3hD9LZ2Q
	k4ZuWypoYPtb00sl5wGKGTxPJjDTjSnydQJdzzdw6gwXkg01jj0xgnWQ+AQjXC7cvGAmwk
	pkXWq/wEyhtZFeZFXcuMXE6x0rxUJmizD8gTF2YmGoUDab9d5Lqa+U77P4+lH4yExZdyPX
	yB6k/AhheVUfkWviIwPwQoHUS6k6oikyWFzRGFD8S8RjFLg1kP9lQNCxb4Hxy/ZObbFTL+
	8jp5K26+DTV3tAjV3yT4H9OsSou9BsfquwLceXPCQJ8AN0uK8q2ns6UqWqxJ0w==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 18:21:38 +0100
Message-Id: <DH4DORKIV5RB.3P7Z2RTRNCXH7@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH net-next v3 2/3] net: macb: add safeguards for jumbo
 frame larger than 10240
Cc: "Simon Horman" <horms@kernel.org>, "Andrew Lunn"
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Nicolas Ferre" <nicolas.ferre@microchip.com>, "Claudiu Beznea"
 <claudiu.beznea@tuxon.dev>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Charles Perry" <charles.perry@microchip.com>, <netdev@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260313140610.3681752-1-charles.perry@microchip.com>
 <20260313140610.3681752-3-charles.perry@microchip.com>
In-Reply-To: <20260313140610.3681752-3-charles.perry@microchip.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276347-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[theo.lebrun@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C023529E385
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Charles,

On Fri Mar 13, 2026 at 3:06 PM CET, Charles Perry wrote:
> The RX buffers for GEM can have a maximum size of 16320 bytes
> (0xff in the RXBS field of the DMACFG register means 255*64 =3D
> 16320 bytes).
>
> The GEM IP has configurable maximum jumbo frame length that can go up to
> 16383. The actual value for this limit can be found in the
>        "jumbo_max_length" field (bits 0..13) of the DCFG2 register.
> Currently, the macb driver doesn't use the DCFG2 register when
> determining the max MTU, instead an hardcoded value (jumbo_max_len in
> struct macb_config) is used for each platform. Right now the maximum
> value for jumbo_max_len is 10240 (0x2800).

If DCFG2 contains the value then we can runtime detect it. With that, we
could make the macb_config->jumbo_max_len attribute optional. Then
start dropping it from platforms where we know we can trust the DCFG2
value.

An alternative would be to validate macb_config->jumbo_max_len against
the DCFG2 value, but that is less useful.

Thanks,

--
Th=C3=A9o Lebrun, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


