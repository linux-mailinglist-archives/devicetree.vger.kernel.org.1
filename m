Return-Path: <devicetree+bounces-266621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDUNGWDmlmkuqwIAu9opvQ
	(envelope-from <devicetree+bounces-266621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:30:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCED515DCA9
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 506633014551
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F0D2F49F6;
	Thu, 19 Feb 2026 10:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Booxv9Pb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF13A2BD01B
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771497052; cv=none; b=E7fBNGKmjgOkAUDlk3xvtrklt9kGHhscVZV2BD5mg0CH8fWmkjjGP+KuQ1CiqiaL+w9xn45AQJufw0U+2Hyf3MbvaqAEcyb+OjBIjyqQwIiWPLO3AMC0WtJBfK5Y4FCrLA13J6JmBS3OQmmNXTFusHpYn9BPEr1gPKNtOSVjKBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771497052; c=relaxed/simple;
	bh=mWFxKxKNm7ktphMkfmGEvfG50qGVqwEZb9Rb9SuOVWg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sdhokV3t8poKg1hEnZeS5aubq9GDjGir0DQuMpTel2DB46DXvh44878n7KxixwdzYIqPNosf8luzd5DkipSZSYIr9/MI0qxxHmrdJgWxcVdWu9D23+lJBnIQpege+lBl57J/D5hrxXX4mGab15N14iAbggxTPoXFrEl7mB2fNe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Booxv9Pb; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 39C64C2F4EF;
	Thu, 19 Feb 2026 10:31:01 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D766E5FB45;
	Thu, 19 Feb 2026 10:30:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4C35910368C91;
	Thu, 19 Feb 2026 11:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771497044; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=x5h6dSzaRazgNOk4NVSUO9wlD+x70M8Q2BQei2ERMhM=;
	b=Booxv9PbJN7mvEol1b8efv6ZI0Uqn4d8M8SzKeniy2eAuYg+MSzDsNwj9/1/oGC7PRtGuT
	gMrHMl4ZE0kGFFTlsFe6q0Cj5SD6I1WHrtv2g/d021QaKUwIbxsB06n0i7dMbg7Ph1peiG
	P+H/PuqvWmQ0GKtFfFVLYfVOtCXwrpZ5LDz/7VgWjKuHw4LZbLpCVoOZxDMcmtJ2Q0EnHA
	j1ObB0AOFn28+dnynxDS0pYIMx2mX73wn4v7/axwNgd9DK7Gp7MMC+gfEcE9JvaUkwRIKD
	TQXizrbkuOUWECOPiVgu2ZpmLjGinlG627DAuRM3PNfJhGiY301vkMcjRd2InA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 09/12] spi: cadence-quadspi: add PHY tuning
 infrastructure
In-Reply-To: <fcdeadca-5bd4-4b03-8076-34d6cad940cc@ti.com> (Santhosh Kumar
	K.'s message of "Wed, 18 Feb 2026 23:37:59 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-10-s-k6@ti.com> <87bji3gkda.fsf@bootlin.com>
	<012a44f3-973f-4f34-be69-286cf924a6c6@ti.com>
	<87a4xdxdht.fsf@bootlin.com>
	<fcdeadca-5bd4-4b03-8076-34d6cad940cc@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 19 Feb 2026 11:30:38 +0100
Message-ID: <87cy21t48h.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266621-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BCED515DCA9
X-Rspamd-Action: no action

Hello,

>>>> This is the second (and last) main issue I have with the series as it
>>>> is
>>>> right now. We cannot set this type of frequency in the driver IMO, it =
is
>>>> too board specific.
>>>> We currently have a DT property for the SPI maximum supported
>>>> frequency. I believe this is no longer enough. Why not making this
>>>> frequency property an array? First frequency would be the default,
>>>> non tuned maximum frequency. The second would be the maximum frequency
>>>> reachable when tuning the PHY.
>>>
>>> If the concern is only about where this is set, we could introduce a DT
>>> property such as "non-phy-max-freq" to carry this information. This
>>> would allow us to avoid any changes to the existing "spi-max-frequency"
>>> handling. Let me know your thoughts on this.
>> Naming is difficult, non-phy-max-freq is too TI specific. I was
>> proposing the evolution of spi-max-frequency because it is backward
>> compatible. The naming can be discussed after you send a proposal, but
>> do not include "non-phy" in it. It shall reflect the fact that with fine
>> tuning we can reach higher frequencies on certain operations.
>
> I tried your suggestion of keeping an array of frequencies in
> spi-max-frequency:
>
> spi-max-frequency =3D <25000000 166000000>;
>                   (non_phy_freq phy_freq)
>
> and updating max_speed_hz with phy_freq once tuning succeeds.
>
> Bad news! this doesn't seem to work as we expected. The
> read_op->max_freq for both NOR and NAND is initially set to
> non_phy_freq, and it does not appear to be updated again by
> adjust_op_freq() after tuning completes as the if case fails.

Yes, none of the core parts are ready for this, we may need extra logic
to handle this gracefully. But with such an option, once tuning has
happened, the core could use the correct frequency for each operation?

Thanks,
Miqu=C3=A8l

