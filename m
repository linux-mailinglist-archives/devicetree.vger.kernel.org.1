Return-Path: <devicetree+bounces-247309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EF8CC6BAB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE0BE3015ADF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DB41D5CF2;
	Wed, 17 Dec 2025 09:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="RxAOpEEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay36-hz1.antispameurope.com (mx-relay36-hz1.antispameurope.com [94.100.133.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338CF33A9C0
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.212
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962729; cv=pass; b=cccXkTPcOifdTPY+OIgF2koiEoTLmqhHDN11KGwrz0MpC4ydFpon41UE40DQua8+avuPv3Qu5GdX27q3y5Q8aHc3p9rMHgn0ZIitZCzJ4Yk6xA8pd+nfnLB6m4m6CS+hh9tchazS82IbyJsSDfXNNi1BLEJ1mMD1ImDnZfuGR9E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962729; c=relaxed/simple;
	bh=xfujg8/O0zWHhjIR9pfaJn5dYWdiKI7tk4dkgx8mmsU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CJY136FsifTpJukY8p1ik2RWeTWN6SQhDSRe//26pIhzmqyc2Esshx0C4H8/CDeLjY6enGIzqwjEsM2lSV6C4m9f4JTDwCtC9S8rB6SIiyWYQ6QFTPWO35VlMS2Ru883U+iVw0T8oCVvfpNO9heTSWMPgDtam+z2tHL825HKxSk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=RxAOpEEt; arc=pass smtp.client-ip=94.100.133.212
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate36-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=xfujg8/O0zWHhjIR9pfaJn5dYWdiKI7tk4dkgx8mmsU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765962628;
 b=F+KlDUBwoB1r3Zs4Hp1Q1spWckNPTUgjvVXENeL1j1BEzHzM+pd8JxFGJ77DhBn09VXe5JOg
 p2pz8eaAENzYVlSC/ecI/uSZpSrvsmyH5rh20OkBBclE1NXzJBGwOs05odivk2uSkao8ow4yyFO
 vcLxpCEVe/l2eiEFssdKSsD5GXCa/Kqq0i/DPYnxm+IVBuOoueFACC/A56kLnn5LtmlmcWM7a35
 ic4TFEja/R2z1TRjoqnBRPtMAa3G7dFa7InTgaNX8wTNxSoz1Oxm5XFUKMShVSqj+n9aVpAAFfA
 7EhMftSQNa2WGMt8/ICQOpJawmJqJGpilxWfyGUR4Z62w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765962628;
 b=TNMyDblwKfE49qEzvYhaGWNnT9j/cfnkbJIREZuqrYQPJGPje4PSPYJr+aAq4MVMiB8LW4nr
 5oHn447hivw/+sV4WAWNceS734fuDMS7ucisqe8maX3lEHBLpz+pUZh4c1L0KzNLla27/G1nMPS
 6w34m8uE8l+rV8DOgNzJXIvkV7H2FCyFdZ5PQhPgm8C3+cuyRdZBiVeI3SxvOCCUiIue5MjgWdM
 C9vEj4vP9ItQA/dLgtMY5jpVN8r5tCYWPLEZq9cEJ/rrCc8jf1EZUx8FFq601KLY2fA/q/WUc9R
 xDuQZjKH+vXk6PHfowLo3AaR6FBv7g3mGcNoiWf0HKLsg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay36-hz1.antispameurope.com;
 Wed, 17 Dec 2025 10:10:28 +0100
Received: from [192.168.153.128] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 90E2E5A0FA5;
	Wed, 17 Dec 2025 10:10:16 +0100 (CET)
Message-ID: <637f14d1c77c2a1d19f7ea221addbbea51392bd9.camel@ew.tq-group.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and
 MBa62xx carrier board Device Trees
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck
 <tony.luck@intel.com>,  "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Andrew Lunn <andrew@lunn.ch>,  linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org,  linux@ew.tq-group.com, Nishanth Menon
 <nm@ti.com>, Tero Kristo <kristo@kernel.org>
Date: Wed, 17 Dec 2025 10:10:16 +0100
In-Reply-To: <671625aa-f5da-4e34-9c8c-7a1da282aa5e@ti.com>
References: <cover.1762775119.git.matthias.schiffer@ew.tq-group.com>
	 <0079cc291c78b94068f3d8c59df103e951247acc.1762775119.git.matthias.schiffer@ew.tq-group.com>
	 <d13a95659bdd1c840dfaa46afd6d8583f1b7c88f.camel@ew.tq-group.com>
	 <671625aa-f5da-4e34-9c8c-7a1da282aa5e@ti.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay36-hz1.antispameurope.com with 4dWSgY2fCdz2HYqw
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3ce335cbe13af60b1b355940102977ec
X-cloud-security:scantime:2.793
DKIM-Signature: a=rsa-sha256;
 bh=xfujg8/O0zWHhjIR9pfaJn5dYWdiKI7tk4dkgx8mmsU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765962627; v=1;
 b=RxAOpEEtsvrSX6kca7I/FBiPqJ5St2AhNaQ4gV0e6hbxqkMpItikZAAX4gq4GTLBPAs2cnf1
 XJ0xunV7fNE8aCD4I/YzPJUeLKLYR/FIiRlUQbrQI+XKbBIdvAuGy5H0zFHZqFX0iHQPMVziVmo
 QcHzc+eAAbmBz215J1NfYJtgzl1zrjzSCDfDUWip0IOe4TLqjb0QAo4dA5wO5ykwOSrCMwaI/iP
 4Skb8eI5Br78rit1PIvMKWeVhFAK8H3oBi+1avfqMscVAEHGnzyrZKPfcuxcd3EUUajZez61MpP
 SZd48JjZOi33yebUtSSSaJ2WOuJTHJZ/KCYxSsxqlFLkA==

On Wed, 2025-11-26 at 10:47 +0530, Vignesh Raghavendra wrote:
> Hi Matthias,
>=20
> On 25/11/25 15:32, Matthias Schiffer wrote:
> > On Mon, 2025-11-10 at 12:49 +0100, Matthias Schiffer wrote:
> > > The TQMa62xx is a SoM family with a pluggable board connector based o=
n the
> > > TI AM62x SoCs. Add DTS(I) for the AM625 (2x Cortex-A53) variant and i=
ts
> > > combination with our MBa62xx carrier board.
> >=20
> > Hi Vignesh,
> >=20
> > do you have any further comments? Can we get this in for 6.19?
> >=20
>=20
> Oops, this somehow fell through the crack, my apologies!
>=20
> I have already sent out the PRs for v6.19. Sorry, this would need to
> wait for v6.20 cycle.
>=20
> [...]
>=20
>=20

Hi Vignesh,

will these patches by applied for v6.20 (if there aren't any more review
comments)? Should I resend them?

Best,
Matthias





--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

