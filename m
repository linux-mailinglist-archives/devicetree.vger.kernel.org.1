Return-Path: <devicetree+bounces-209962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59580B39A92
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 261C716DBB4
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 10:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF0927FD6B;
	Thu, 28 Aug 2025 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="MspmvlIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF80230BF6
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756377893; cv=none; b=WOxhRhX9JsjZKVJ3z+McmtvYVK9exGWqJdQfTpfNRCjYA0s8PSCWAjU6BekVOQmmQFy8kpgueoXQloRTApSRljj/AWsGu/cxI9iuea/L650v95RlL99YYveSRVUAtEvgh3WYMLvzxmKqpjjzfbphtGpZUayyd0uY3OyGI12VNx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756377893; c=relaxed/simple;
	bh=vxUXFMXRQhY+qssMWwIMNlGOo6A7Xk4teYSKAJNdFus=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cLJ4vhohkg4+m5Q0oRxSUU0YAHPkQIaH0EjEqyOPoz8gy1QceZAG9tB4RXIiajq9BF/jyven4TICtj1fsdKnFjVeSYqT5QjVsgevqxVbMVsk2NE9HQEPlS2ZMRJ4Sa8HqQBzZ3RyMiiq59/S2fGIod2LVBq0pLmLvf3pbisAj1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=MspmvlIY; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:mime-version:content-type; s=k1; bh=V6/6PA9gnZwf5PD17gz4dt9Dlnf
	3XxoXBeUDvES7GC4=; b=MspmvlIYxEL+J4KQx6DUGJga9ja2TC3elpOXGVTr6pO
	jIgnvZzlTWVhU70B4ibRfvCvcS+vOGWcHtv4bwPc19Mu8OJUlf+h7zmjAaKkgAhQ
	gYBojtwTkMX+5apbpFdvfGBA8ibbD+KvokEULPdu9Uaszknt9WmtCitq50cIg1bZ
	aHVjSb5n+k4URWsW6OfO48xeEE8Yvzui0WI8ntswYYiOD4DvzFdeE0GRSCGhM7T7
	q8E5OxZHEHckIF3u4AChxQ/0diHHZnqsv2APsy6yqtvZl1leb88tmek5ApGZM6Dw
	TQOuUIZhsYXGAbt2VscNiO+huK84AFA6LjVmugeaFgQ==
Received: (qmail 977142 invoked from network); 28 Aug 2025 12:44:48 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Aug 2025 12:44:48 +0200
X-UD-Smtp-Session: l3s3148p1@owcamGo9xIYujns8
Date: Thu, 28 Aug 2025 12:44:47 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Subject: [PULL REQUEST] i2c-gpio-fixes-for-6.18
Message-ID: <aLAzH6QtnDJrX8fN@ninjato>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7aWwOLTt3YsiDlMz"
Content-Disposition: inline


--7aWwOLTt3YsiDlMz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

these patches were dangling for a while. Linus suggested that I send
them as a pull request to linux-soc. But maybe DT people want it? I
don't mind. Would just be nice to see the warnings go away.

Happy hacking,

   Wolfram


The following changes since commit 1b237f190eb3d36f52dffe07a40b5eb210280e00:

  Linux 6.17-rc3 (2025-08-24 12:04:12 -0400)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git tags/i2c-gpio-fixes-for-6.18

for you to fetch changes up to ed8c952aee4183ac866a83397e12ceb99493c6ad:

  ARM: dts: stm32: use recent scl/sda gpio bindings (2025-08-28 12:33:26 +0200)

----------------------------------------------------------------
i2c-gpio-fixes-for-6.18

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

----------------------------------------------------------------
Wolfram Sang (2):
      ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings
      ARM: dts: stm32: use recent scl/sda gpio bindings


with much appreciated quality assurance from
----------------------------------------------------------------
Linus Walleij (2):
      (Rev.) ARM: dts: stm32: use recent scl/sda gpio bindings
      (Rev.) ARM: dts: cirrus: ep7211: use recent scl/sda gpio bindings

 arch/arm/boot/dts/cirrus/ep7211-edb7211.dts | 4 ++--
 arch/arm/boot/dts/st/ste-nomadik-s8815.dts  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

--7aWwOLTt3YsiDlMz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmiwMx8ACgkQFA3kzBSg
KbZfvA/9HxYpDf+7k+rdVs3C7Fw5r6ryFUbjUcuHLseA//OuAvX25kmFCelUgNc2
orzIHutuAinGtBiiuSazJ3IMvuqKFoOj0zfqgVEGKaOEjkEYDZQgrW5Y2XWhWI5n
RftR0uiESamrigqKcBPtfHvLMUUn30wLCZCw1CJJw2/gtWr/RcGPnBlz9z5DpDOd
66iWwUzoaOUboISKfnaunz1Tc19NVZ3Th4p4M4fH011IulsBlMRVnZKV/4DThECX
bZVYaVaiRDx2d62IKKOMLCNrP2d3ve8BFvpTCYIHF7ddvTHgENXoNSLO6YJChNiL
/lpX/hM/M918uvqltx5mDDE7vhX09uW6IEC6Vu6kXFuwZsWb1e3pNSYnMP65S2UN
lMaqmQMivXBR+leHIR3AjipLgQr08y+K6EY8QneO810q4AVGpEY7eldCbQeducqf
HsdnOpLO0eGlvls0FwM05AJgjDW6/ufjsMiWnbTLhtmR3r6j4DAa2TTB/9r4uq9s
ZV7E1ouKY8Gkfn5LbjKO6GKh6deHeHom3kuvVqG3DFUmj++XX02hPT92iZPXekAc
dir9fLs+8VtoYqRPPzVuoqyAFIZrVuYpLDL4WB3eKqohfU25zf3a3twlzCBpxTqH
RGlmtVckzdc+MDLCymDkYZfO9GvRlxWALXyXl6zC8h/19rqWbOM=
=A7RR
-----END PGP SIGNATURE-----

--7aWwOLTt3YsiDlMz--

