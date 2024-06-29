Return-Path: <devicetree+bounces-81634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBC791CE6C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 19:52:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92FBD1C20DCF
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 17:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1320C84E04;
	Sat, 29 Jun 2024 17:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0JgtN/x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E413621364
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 17:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719683534; cv=none; b=pLaHMmyGo63VIwz1dWaTWS/H1XiJeNIQ8lX5gg8unxz0SIgz9aPXrTTP3StFXPVneh0xGFiF4GQc5l6yNhX5XauBH67q1NYFrGO7wc03Xb+CaSybMNZ/u7qmbpyCjMB/HndoNYmDyBXvwxrB1cBfE15Gi91tkGV1UFWY8brZeko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719683534; c=relaxed/simple;
	bh=3fHV6U/Bv7gh82YqVltuchhbbgFmiy2GtgXiLAEyMgk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TqND53rRF6iVENd41dVTrXHSmoQmL2+ow8hd2gNg8agQ7Q7sUbq720UoiCu2bCcx9dq85hSkZYpQtsYY+c/SXloz9yHO6II2fbI4berZGIJWxSsCnX7o71H9aNilQajNuX02+nHNMEQM9pYNbyfi9M4ZsAefr+4Y4vOOYosu6pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0JgtN/x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9399C2BBFC;
	Sat, 29 Jun 2024 17:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683533;
	bh=3fHV6U/Bv7gh82YqVltuchhbbgFmiy2GtgXiLAEyMgk=;
	h=From:To:Cc:Subject:Date:From;
	b=g0JgtN/x+TzrRQ2mvwBV5IlFwDpoQ4kAcL0A51Gl2BRqeoYEnit88gOFnGJQacKI8
	 BFuJl3nVTDcdC+hTOWfau7piFZMYzoFURuWORQB0osOfDEmf4z3TJ7YMGWV1xPpngA
	 aEVstEhgfviuOhhjWXT3Sk1a1nZ5ccdkO1YJMFwMH6CxXvfMy14ot4ht974/SMWXsp
	 XTA8Slynqa1eagCvGQNrjDDNx0iay/XmX55+CyM5DhjBO6EGYC9cezoPae/6g8VZir
	 GedencQ98dbGGWGqzCKiffoJGr/o+E4V1nr5NN1bpfAfwGlCsYaGQj37rlCwcfhCwV
	 D6GNOvy9ups7g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 0/2] Add dtime and Rx AEQ IO registers to phy-airoha-pcie driver
Date: Sat, 29 Jun 2024 19:51:47 +0200
Message-ID: <cover.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Tx-Rx detection Time and Rx AEQ training mappings to
phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
support to En7581 SoC through the mediatek-gen3 PCIe driver.

Lorenzo Bianconi (2):
  dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
  phy: airoha: Add dtime and Rx AEQ IO registers

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 15 +++++++-
 drivers/phy/phy-airoha-pcie-regs.h            | 17 +++++++++
 drivers/phy/phy-airoha-pcie.c                 | 38 +++++++++++++++++++
 3 files changed, 68 insertions(+), 2 deletions(-)

-- 
2.45.2


