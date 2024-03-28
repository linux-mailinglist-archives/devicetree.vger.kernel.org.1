Return-Path: <devicetree+bounces-53931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DF88EE41
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 19:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B68882966F0
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 18:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2109314EC7C;
	Wed, 27 Mar 2024 18:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="NIzq2VvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E514F9E6;
	Wed, 27 Mar 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711564101; cv=none; b=ePk9CGKHAMCRXFcSBf+kFBcWR/hmvD4ELTkfYpZOIDgC9I8b873coBvsHdeF3+DdaBFzh5moCgWqUGwWJLILgclNMNnMc5AycrleJB4kNTY13FCOyHHNaVju6hQB4n6nw50ewgexu7H02J7NpXBtvEquENo9vEmHg3sV8m95Cdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711564101; c=relaxed/simple;
	bh=fTjEPUTSAxIObFeZmdbF/NJPctF2f0U4E2ZqBTsxoP8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mSxzoVqDElU9a5aeA5W02pScDOMRUeRJzpv97spAw42vfhHLUV/FhiOXdEjwpI7zcpeGFNyk8xC0mhfv/BeWQbgR14rFDsbDRsiKIRVI4mx4gZYFMi9Q62fAPZKN8+O3d646bNfDIWhmouRnoZoTtT+tn7/ziu5gOsqRQ5L1KM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=NIzq2VvQ; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id C3AC51FA4A;
	Wed, 27 Mar 2024 19:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1711564089;
	bh=KeDW2eKtmrHGStARTdEcHeEhglHIknghvidML3youGE=; h=From:To:Subject;
	b=NIzq2VvQ0oMePqxNGBUnhwO2Q7IsXFOs9qDexkxfB5ox9ZIb1DPVhn9G5L6/9r0RT
	 SlvYw+GLDjkFYQxMp+oN7alOEh502uWRwajJ5fgaH9OiwCH7auDToPYww0Jsb2SYJX
	 nKlV83bCgiSnASNGcxMC9+VcygLKOCEXdFr0Smt25AKQ4gWVijCZzqaHQkYgqLx6dS
	 kk5kw7lxS8o5Thl+f29dx3bnkzg5ZpANXoFh/ImJqWlCFx2cwx8XryYhOeeepRZxCF
	 wSVpth7ZbZ1KlXCfdzzMiEW/EY2l+JaatzJYLWyseNES7flrmAvP9/9mynPwMxCxtf
	 dyvcxa9yKkwlA==
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] arm64: dts: ti: k3-am625-verdin: fix GPIOs pinctrl
Date: Wed, 27 Mar 2024 19:27:59 +0100
Message-Id: <20240327182801.5997-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Fix a couple of issues on the Verdin AM62 pinctrl affecting multiple
carrier boards.

The first patch fixes a mistake on the pinctrl of the verdin-am62 mallow
carrier board.

The second patch allows using the mPCIe/M.2 slot available on multiple
carrier boards with cards that use only the USB interface toward the host,
this is achieved with a GPIO hog, given that no PCIe interface exists.

Francesco Dolcini (2):
  arm64: dts: ti: verdin-am62: mallow: fix GPIOs pinctrl
  arm64: dts: ti: k3-am625-verdin: add PCIe reset gpio hog

 .../boot/dts/ti/k3-am62-verdin-dahlia.dtsi    |  8 ++++++-
 .../arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi |  8 ++++++-
 .../boot/dts/ti/k3-am62-verdin-mallow.dtsi    | 22 +++++++++++++++----
 .../boot/dts/ti/k3-am62-verdin-yavia.dtsi     |  8 ++++++-
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi    |  9 ++++++++
 5 files changed, 48 insertions(+), 7 deletions(-)

-- 
2.39.2


