Return-Path: <devicetree+bounces-36224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 968B08403AF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E759FB20C6A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16F3537ED;
	Mon, 29 Jan 2024 11:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH9we1gg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0655C8E8
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706527210; cv=none; b=Of4Fj9J1REbojkLXChO4nY25SRn7mQj4iU2b6eIZOqy10yYv0xLeKDBYATautRRpNiu7JUmqkfZsOIUwFeD1pfVpUCJewyUlGHN64Xmte4CjMnNZVvCugNrkQK9T1FvtO2nV6g/th0Eg0RflN1BUJBY0yFhP712wjPQ5GWfqzZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706527210; c=relaxed/simple;
	bh=EmN8RznQlcv3XJVtMjnrACuEdVkzu+e2XyXTojClPv0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bhMhKsChFaOiZCnrW+ZKGy42RRuaHqLmh01fwaM6kuDYSO2CGeZ4LehRSPpb+UbU4dbUDZLa1WBOR8NVMWzNcOGUl8uueOHKlIki7ICq/qJBCVes8s1kGCtonsVfO1GBdvHqGJMLTBzIjKgsxeU+tVufAbQzbAf6E/guTvJxSyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH9we1gg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA01AC433C7;
	Mon, 29 Jan 2024 11:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706527210;
	bh=EmN8RznQlcv3XJVtMjnrACuEdVkzu+e2XyXTojClPv0=;
	h=Date:From:To:List-Id:Cc:Subject:From;
	b=PH9we1ggCYxn4Q5BZ49a6vZ0G/ucZeZFCqfA03kqiDx40XbyB0Pci2kCfOZtAsLAa
	 tAQqe4xf5ZT4xZobWJtNcUrdow2docIM35hOLyrgegISpvIClS7FP0Wy49CPpAzICB
	 fznDQCgaAlOvU0tUD4dlHVZrsU8WhDT/YChEwAr23j3LTscvkJ4KWq+hnUaow+ZM1o
	 6B31tfGJbHU+M5+PI8zlAbTBfzSpkSaH9BrXHqR1CSjdMHmC99GGM+pFcKv/mjbnz9
	 IIAq3fl7kDw5qeYrdpfmskT7/MHzASmobNqXeK8UqFGhpw1A0TDOKJfGGeYv5Yvi9C
	 R9Jyxluc5f6pg==
Date: Mon, 29 Jan 2024 12:20:06 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	devicetree@vger.kernel.org, John Crispin <john@phrozen.org>,
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dd@embedd.com
Subject: Support for airoha en7581 Soc
Message-ID: <ZbeJ5okKQ66FXGxP@lore-desk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="30fnfXUcwDqiOIse"
Content-Disposition: inline


--30fnfXUcwDqiOIse
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Matthias,

I was wondering about the status of the following patches:
https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@embedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537

Do we need to respin them? Thx in advance.

Regards,
Lorenzo

--30fnfXUcwDqiOIse
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZbeJ5gAKCRA6cBh0uS2t
rH6UAP4qkxn7CkKcLaOW7Wu0RgdFjYWNJ4a1a/eLgMiAr1GwYgD/TXzi5bwXyZqG
xTWAJFSl4n/BbU8cIyL2LGCy8Y4afQE=
=fdcj
-----END PGP SIGNATURE-----

--30fnfXUcwDqiOIse--

