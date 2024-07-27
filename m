Return-Path: <devicetree+bounces-88551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ECC93E0D8
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 22:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2FE81C20DAC
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 20:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D787C38FB0;
	Sat, 27 Jul 2024 20:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="e8Rsk+BK"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24B2D057
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 20:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722111279; cv=none; b=NgCycpnTU1cthCdQfMoSDBIcJ3hSvNILT2SazWJSqtscp8vF5eQCfJAwsyCr7De3ugafN3HNhWfxpLQOCUDStxKQYHVQ56m3/lFU2mtW1X9LaIEY6cWrQVnwo4GksiLUUMkCVPK9jJe2veJGoWq3/t3xPFo9T8uUkmOQ5MwGKS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722111279; c=relaxed/simple;
	bh=R6vOt84YOoIAaK+WRWFakbaXcceo08nM1eGDlst0cQk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YzHbaFF1Vf83qQeOtCKjj/Gt5OaeDAsdSYFggyi44t0xY91QCCtulaoA8RMw8/YsWqQKs5cvOS5FBB4geD6dYDkpYOOQnxegXMlDZUGyjoE8R0X8+9Hx3UBVnm058eXXT2KbvEuCNG+W1VzLu2shTQGm31BXHUlBnYL9dQhvi2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=e8Rsk+BK; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id D91FC240101
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 22:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1722111269; bh=R6vOt84YOoIAaK+WRWFakbaXcceo08nM1eGDlst0cQk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=e8Rsk+BKWeUZYao5mv4C0JKh/9xo4znYwtAn7xO9C6aiXrNFbQdFk0Xb1Ps05kgmI
	 HX1MAfNzS+qOFwJ3gusTx3OvNT80KNyflghEl39NQyEwH2mfjFhjPsQUeLx0YRhZMD
	 VEAH/p0svG7sAWHhWtdencZUmCjVisd9/UG+fp9SWMjkUYDo7YeEXRamWWdIK/XPRk
	 6MAfM6B/f6eOhVSUhRZgdO1W+FXesbsKPcOjFbnhYI7Ukv2XAltiPeL9akmcyvUebO
	 cT9qxIu3B7iNNaiS8zF+5x6lkktEaCYJTwHniD02+1UNUgCTiNYL5tuZBebkDOWAaQ
	 pBTOGbR44xJNA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4WWbSN3Ynqz6trs;
	Sat, 27 Jul 2024 22:14:28 +0200 (CEST)
From: Alexander Reimelt <alexander.reimelt@posteo.de>
To: andersson@kernel.org,
	petr.vorel@gmail.com,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: Add basic support for LG H815
Date: Sat, 27 Jul 2024 20:04:48 +0000
Message-ID: <20240727201413.114317-1-alexander.reimelt@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

Changes in v3:
- use 0x0 consistently
- pad to 8 digits
- drop compatible = "framebuffer" because it's unused
- drop chosen

Thanks again for your time.

v2: https://lore.kernel.org/linux-devicetree/20240530135922.23326-1-alexander.reimelt@posteo.de/

Alexander Reimelt (2):
  dt-bindings: arm: qcom: Add LG G4 (h815)
  arm64: dts: qcom: msm8992-lg-h815: Initial support for LG G4 (H815)

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/msm8992-lg-h815.dts  | 231 ++++++++++++++++++
 3 files changed, 233 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8992-lg-h815.dts

-- 
2.45.2


