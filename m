Return-Path: <devicetree+bounces-272980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJLIOZXfrmm/JQIAu9opvQ
	(envelope-from <devicetree+bounces-272980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:56:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EF023B094
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 15:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C329C3054B8D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 14:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589933D5251;
	Mon,  9 Mar 2026 14:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="OpllWE4k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147C83D5237
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 14:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773067910; cv=none; b=MqaawrF+1OSiiHF8qQfi8PeIMg7xQo5TyLy9RvQFedLs6oljTpHCB4CsGOYAEF8OZ7BFiItIfy8PpAv21eEPMgCdd0kwrNktR1aLP1hKR1svYHSkoIkgC8vfTKolFh7U1IpgSPNCMrpmOxE4rFddsqzhXWXKKrVNUSjQEKQjZc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773067910; c=relaxed/simple;
	bh=AsQ61QqfLJ70wtW6aiZP92f6a2RWiA0yiUBJuclzbv4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bYVyNGjBtotjzaGpGamABVqdsVWwJP2UYLdi4nvG0gcWgBabNk17n6eU6LqGT3y/WAv3Os8dhkudbazNk5BaMj0eVTYBFv43fiCWBJV37Iav+EyKrDz+YYndhd30jR8nqQJpK5T00O0yBfHFN+EJ1stFtKF9zspFO8NNdpDK/wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=OpllWE4k; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 774B34E425DC;
	Mon,  9 Mar 2026 14:51:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 44E9F5FFB8;
	Mon,  9 Mar 2026 14:51:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D9D2910369B2D;
	Mon,  9 Mar 2026 15:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773067905; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=hd7IdzAoha2La4O5/dbJJ9/gh71YS868BVfPkqeW6Kg=;
	b=OpllWE4kCUoe/+gc/UG815cKyabprHKi/57hvEdP7SO6k5dmgGKdC0PcuvpNtoayAoe8mi
	0GwA2B2YY+4BT+yryjRyNWiSi/q30KH2Pb5Mu+hhJbKyZUDeEQJKMwYUwPLX+LJloUfjb4
	n5qYOdvlBxqBTUqxUThAGA8b9lwKndRglF9svGovPSa3uZQR1F9nT7kiJzXAjOPcs5Mbp4
	0a8RhiMnlkYKVoH2utdBTGTtiKIt7iVbyMBsBAXjKh7OioFmSoejLJmEWcbHR0ZFmt2MUG
	OtWp90+3fKOKOv+UKw8w5Qth4H6ravVwGhr7sAt76ltOxMG2HeyOmPeorJCNLA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  linux-mtd@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mtd: st,spear600-smi: convert to DT schema
In-Reply-To: <20260225-spear-v2-1-021bcb670601@gmail.com> (Akhila YS's message
	of "Wed, 25 Feb 2026 15:02:50 +0000")
References: <20260225-spear-v2-1-021bcb670601@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Mon, 09 Mar 2026 15:51:42 +0100
Message-ID: <87bjgxoy2p.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 79EF023B094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272980-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hello Akhila,

On 25/02/2026 at 15:02:50 GMT, Akhila YS <akhilayalmati@gmail.com> wrote:

> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
> Controller binding to YAML format.
>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>

Gasp :-) Good to see that you actually did fix the issues. Thanks for
doing that. But you've been sending a v2 for a patch that has already
landed in Torvalds' tree. In this case, there are only 2 possibilities:
- sending a revert of the former patch and then this one
- sending fixes like I did
In no case we can just apply this one as-is.

As it's been reviewed already by Rob, I'll take the 3 fixes that I
proposed.

[...]

> +  clock-rate:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Functional clock rate of the SMI controller in Hz.

This clock property (which I did not address in my series) is apparently
not used anywhere upstream. This is a very legacy property, and my
feeling is that it has not been useful for quite some time already (due
to the CCF being able to provide a proper clock tree now). Hence we have
two choices: considering that it does not need to be described at all in
the yaml bindings because it is (very) deprecated property, we might
want to just drop it off. Otherwise you may send a patch specifically
for this addition, however in this case you need to flag it deprecated,
I believe.

Thanks,
Miqu=C3=A8l

