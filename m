Return-Path: <devicetree+bounces-242278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 43407C88D08
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 336144E1DC5
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D3A2882A7;
	Wed, 26 Nov 2025 09:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=zentrica.pl header.i=@zentrica.pl header.b="OsmNaASO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zentrica.pl (mail.zentrica.pl [51.77.244.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAD98F4A
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.77.244.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147720; cv=none; b=cJxoRd4Ew/8LffcIs0Q5MgXS2ShD3HaKpEt2em9aVXHS5fDHVA4xpUPT/p+m3O8nTRikpCrUCB9Q2DV/zzslJnssc8R1RSmwSMU0ygL5ctH12gatlZPe8pjsWzgztYFPKGQKaHuWCo1jRwR+9cm4G5J+Zd7HxA0oD/fhPY8dZNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147720; c=relaxed/simple;
	bh=oHEZATbnZZpiPenSOjc9SqTSdDoS02ywehep2dkwchc=;
	h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type; b=gDzUiKEKe0NaCMDRYNTUMXDa38IfFe2WFeZ/LnS36pcecrFMxk96SjykV4ZoxEY0ptJlBU0ufRRgp0opr2UuZWEVs0vcgXP3H2hUfHXKv79xWmIRU+0/sc0IIPvCO53cza0pra+DRifLeTq/rjoXsF6MW49eQBoybJpaq2aNflw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zentrica.pl; spf=pass smtp.mailfrom=zentrica.pl; dkim=pass (2048-bit key) header.d=zentrica.pl header.i=@zentrica.pl header.b=OsmNaASO; arc=none smtp.client-ip=51.77.244.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zentrica.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zentrica.pl
Received: by mail.zentrica.pl (Postfix, from userid 1002)
	id 51BDC298CF; Wed, 26 Nov 2025 09:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zentrica.pl; s=mail;
	t=1764146795; bh=oHEZATbnZZpiPenSOjc9SqTSdDoS02ywehep2dkwchc=;
	h=Date:From:To:Subject:From;
	b=OsmNaASOvViC0AC6o0QJIb3tgFuUnrDNMWljkY5FCaFgbJm1nc68XjCnNophxP7lH
	 Zu9DHjwhSTZnuqbBL8tLirYv40gsRuvHjUD2ixDHNvAHyPj+cfY7zMMQhgPZ932ATO
	 cBPERlDI4jE1ZCzhrnxEkgCV2z/7mPmW399+iW79GPJomcUDTgjfrYeHtmLkeKn7sO
	 gyu8xhLPCIAmUtpvTlsHVTMJwTsSBGImbc+RsaLJtrqx5WJlGQFR5Sfl569mbx0+l4
	 MGhOT2HLslSLeqHNiVt5FPIVS7I2l0eBSvBVBn+Z/MRbdT4nLWy+JJsOIfeOx6OK5Y
	 RtxWyjiNYMYLA==
Received: by mail.zentrica.pl for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:46:03 GMT
Message-ID: <20251126084501-0.1.m1.28cna.0.yg2d9prv7n@zentrica.pl>
Date: Wed, 26 Nov 2025 08:46:03 GMT
From: =?UTF-8?Q?"Micha=C5=82_Pawlicki"?= <michal.pawlicki@zentrica.pl>
To: <devicetree@vger.kernel.org>
Subject: =?UTF-8?Q?Odbi=C3=B3r_w_paczkomacie_?=
X-Mailer: mail.zentrica.pl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dzie=C5=84 dobry,

jako lider w us=C5=82ugach kurierskich w Polsce przygotowali=C5=9Bmy elas=
tyczne rozwi=C4=85zanie dla przedsi=C4=99biorc=C3=B3w.

Stworzyli=C5=9Bmy abonament =C5=82=C4=85cz=C4=85cy dostawy do Paczkomat 2=
4/7 oraz obs=C5=82ug=C4=99 kuriersk=C4=85 - jeden dostawca, jedna faktura=
 i przewidywalne, sta=C5=82e koszty.=20

Czy mog=C4=99 przedstawi=C4=87, co mo=C5=BCemy zaproponowa=C4=87 wzgl=C4=99=
dem Pa=C5=84stwa potrzeb?


Pozdrawiam
Micha=C5=82 Pawlicki

