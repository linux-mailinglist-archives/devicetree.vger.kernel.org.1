Return-Path: <devicetree+bounces-243965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2FAC9EBD5
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 11:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B7A6B4E141F
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 10:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31AAF2EE60F;
	Wed,  3 Dec 2025 10:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="U40jAzEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay82-hz1.antispameurope.com (mx-relay82-hz1.antispameurope.com [94.100.133.251])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8432EDD6B
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 10:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.251
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764758287; cv=pass; b=N/wEe7bTwwCpuJM5yk/P9j1brPaAd4tOFpsgcLNFft1VaEqd7+l2WqdU3WheBWrFVn+bpDj++eXSIFrtDhqJgn7WlvYTldRpNHZb+fbEVeU7fDO+NxICwKJ3ZIcW5/zDQcH9Y8nyIdBbgPbbZ+t5qDt+OArUg+HK7bpVIDcGkvs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764758287; c=relaxed/simple;
	bh=TncNJLmPcZDzWaziXGBOZjRq9TTtaFfqkktv+allXYQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fmnjhg+7wOrDzYu0fF+f/XK9QLzgeHhfBQgGkZIBFFfa0CklnAAjPF+LuvBTedSA8waZ4KRO56HUNZygjWQMD9EoF4FMWTFRjyIG1jmOZWYDKOxtDmVVz7vniQqyhbfMnzxGZ8093BwfElaDfdnbJFrSFsHwtEQ0nwm7ApLh9mo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=U40jAzEt; arc=pass smtp.client-ip=94.100.133.251
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate82-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=TncNJLmPcZDzWaziXGBOZjRq9TTtaFfqkktv+allXYQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764758219;
 b=pyzEufmz6C6fo4pUxwyEZYyAdQ8ZVmOLqbSBvWP5KVfFT5QDTImi9LZSs6ARlCXF2Y6iR3tf
 UHF8x4lK9qzk9QkiGK56ZTbZEONiBo4GMGl8ud6KNP5SW268xWJWvyMQXZtptU4wOZjjVZ3pruu
 NLThatOYgR82LmJ/eJiXd9tCgZ3tHT5LgaxYaJ5P1MRXxVRPtD8Orcp0w5e8OFxKDrlDDWrmuYM
 tKLLoGN1A7JPEHxKAfHXL2pVnmzvgJM06JSLgANfOC/kEO3QOCy3D5b4XOIR6Y5pvLkI50JsZH6
 WxfZNNJQ+9vDSprlGJeU76/9lR2CpHFp5wbp5Kp0p2COg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764758219;
 b=r6/RxzsJv8d14U9WOCQ5JVZu9HubyAPaMQbqiAssWrsAO0cODtZQuiEhPelx3iQqk74yKXUl
 x6TJgpYdpWbvsR7NUWjT73wTVX6/fgIcB0V4eNa/VKwVg6TJVhwvMOKEbznZ4oUnDQ1UVYK69wE
 GqD0p/hOX0vd5VZln/MEfLp/bEFNqTUqTM/wV23esnRptdVXQtFYBOIDlYbSz/NnV/NjgUBK7De
 6OhV8vpTJqA1fVySVgbDKKZfhOJ7j4De63vbeROPWfWRowDePLx1rzxyDi6fTuTSYHivtLGLbMV
 PBY3SQ1HDruB36uIPGKoVTvAdZxeb015NF/rJqMil/C3Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay82-hz1.antispameurope.com;
 Wed, 03 Dec 2025 11:36:58 +0100
Received: from [192.168.153.128] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id E02BDA413EF;
	Wed,  3 Dec 2025 11:36:49 +0100 (CET)
Message-ID: <34bd1a0d8e579aba0a6a88039006500fe822ef3d.camel@ew.tq-group.com>
Subject: Re: SoC-specific device tree aliases?
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 devicetree-spec@vger.kernel.org, quentin.schulz@cherry.de, Marc
 Kleine-Budde <mkl@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Ahmad
 Fatoum <a.fatoum@pengutronix.de>, Rob Herring <robh@kernel.org>
Date: Wed, 03 Dec 2025 11:36:49 +0100
In-Reply-To: <6638e499-2320-41c9-b720-faf4f976e476@kernel.org>
References: <ebc08400-c16d-4ed0-b487-9aabe13bbf0f@pengutronix.de>
	 <58816b68-3b09-4320-9a4e-09f2c2b2d0fa@kernel.org>
	 <aRrcRZvdrbAmsCm_@pengutronix.de>
	 <8ce701c9-6c8d-4b3e-8706-760b8aba89fc@kernel.org>
	 <aRr6JLMplFVeHcjj@pengutronix.de>
	 <e5502ec8-0c55-47ce-a9e5-62e137c9808b@kernel.org>
	 <20251117-smooth-spiked-loon-52df28-mkl@pengutronix.de>
	 <de1739a8-4677-4cc8-b501-2568b7513467@kernel.org>
	 <aRs2y3w854vnHAzg@pengutronix.de>
	 <576a9eae-7dba-47d0-ad66-0a81d1893271@kernel.org>
	 <aRs-DaayhtQTtFXj@pengutronix.de>
	 <9e14fb8e-af84-4072-b0ac-9ead882782be@kernel.org>
	 <CAL_Jsq+=v96eP6V+5Ehi9EQT3iKKU7=t7kvJ-WSA+1WCHDuHEA@mail.gmail.com>
	 <07ee3540-d0c1-436e-9e1d-db1952f609a6@kernel.org>
	 <bcb359cf-0e8a-46ec-9f69-51c4c9e8874e@pengutronix.de>
	 <6638e499-2320-41c9-b720-faf4f976e476@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay82-hz1.antispameurope.com with 4dLvFt4DBkz8nnys
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4dd542daace045f614f4cd39a937d89e
X-cloud-security:scantime:1.847
DKIM-Signature: a=rsa-sha256;
 bh=TncNJLmPcZDzWaziXGBOZjRq9TTtaFfqkktv+allXYQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764758218; v=1;
 b=U40jAzEt428X8YVNWZKrEZBTDYRikqqtFDtnXKwONEis9DGckd63j4RH063gwp4B3jIgxed/
 RUTK0uzL/fuacaHONyoi641qkhUCFYnwydlRc0+eRic0Si3aJnX3onNzk77kxYA73wJqTEn+OSU
 CtvQB0+8lN6lywLsmRzkwzOfoZLDLsj8c1zRrTxWrztk+ViT0CS4J/W0Odln8E823mXb4rkMTnh
 gDG9jhhyg7HjtcJHgLSMJiqxAWetKBRdD072URpBTX2UHerXDZeZNNQhjVkBC9rzz/jmYeyK339
 +B7UM98vLOhvjb6NPHeixptBckXMMCoPNmPQJ9K2STTeQ==

On Wed, 2025-12-03 at 11:25 +0100, Krzysztof Kozlowski wrote:
> On 03/12/2025 11:16, Ahmad Fatoum wrote:
> > Hello Krzysztof,
> >=20
> > On 11/17/25 5:29 PM, Krzysztof Kozlowski wrote:
> > > On 17/11/2025 17:06, Rob Herring wrote:
> > > > > So you want it to be an ABI for barebox, sure, just make it a bin=
ding.
> > > >=20
> > > > What do you have in mind? Other than standard names for the aliases=
,
> > > > what can we check here? That a specific alias points to a specific
> > > > path? That would be a bit too much IMO. That would be equivalent to
> > > > specifying possible values in 'reg' for all devices.
> > >=20
> > > Binding with pattern or list of needed alias names, referenced by giv=
en
> > > soc-platform top-level schema.
> > >=20
> > > One of the points is to make it explicit and obvious (e.g. to Arnd or=
 to
> > > me if I forget, because I follow the same logic of aliases per board)
> > > that these aliases are used outside of kernel.
> > >=20
> > > Just because ufs/mmc/spi can be used that way, does not mean we shoul=
d
> > > accept any possible alias into soc.dtsi.
> >=20
> > I can't see how this could work. A number of boards renumber MMC device=
s
> > in a different manner than the SoC reference manual:
> >=20
> > - Changing the alias numbering is an ABI break, because Linux derives
> > its /dev/mmcblkX numbering from it
>=20
> First, why the alias would change? Isn't the board following the SoC
> numbering in 99.9% cases?

At least for our TQ-Systems boards, we have a convention based on usage (mm=
c0:
eMMC, mmc1: SD card; serial0 is often the console) rather than following th=
e SoC
numbering; that is, we're using the aliases as a form of hardware abstracti=
on
rather than hardware description.

Best,
Matthias


>=20
> Second, I don't think it is an ABI. We had it ~5 or ~8 years ago where
> the mmcblkX was changing based on probe ordering. Many people setups got
> broken, many people complained and the consensus reply was: please start
> finally using UUID/PARTUIID/LABEL for rootfs. Eventually we got back to
> mmcblkX stability but rule is there - if your cmdline has /dev/mmcblkX,
> then it is your problem.
>=20
>=20
>=20
>=20
> Best regards,
> Krzysztof
>=20

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

