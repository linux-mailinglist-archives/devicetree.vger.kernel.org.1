Return-Path: <devicetree+bounces-149252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C92A3EDD5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11F573B7E1C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281731FECA0;
	Fri, 21 Feb 2025 08:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSqGH+Hw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0442F1D89E4
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740124910; cv=none; b=TXE913OoW52QB91KetyETefZQYlo2XSiyXS7Jrh04T7yRPEAb3iXFbHhawe0J79niKLgypxzrX18tNE9DR0fgMqOEjXpQaq8o6BVGxbNWpQrsM7EHnvjXGzzOsXDEM8KVqyy1Y5l57UWaJeAkDm64dLiDvEaqGRL+NN1mv2jqZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740124910; c=relaxed/simple;
	bh=QX5XQx0HOiQbdiRP32A/ZZWTqbi+RItjZEFRzXGnYts=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VIc/glJq4xyXuMQbhUnwUPpOx9MqfuGk1ejsSSFOff7URqZWjH9HYd7F8XVmXQEj/iFF4kYyh7cWUYEP63A4TQhiBg7q6byCkBY+sjo+Bxzqs1+lnjZZ2I1bzHkRTu3SQmxYuC4kaUEf2hym+aw23zB0mauluKj500pHEGYtXec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSqGH+Hw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E47CEC4CED6;
	Fri, 21 Feb 2025 08:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740124909;
	bh=QX5XQx0HOiQbdiRP32A/ZZWTqbi+RItjZEFRzXGnYts=;
	h=From:Subject:Date:To:Cc:From;
	b=mSqGH+Hw641YNJJx0UsAbMiCvBfNczzOVPM2bf7elvkTau499/UietT1FRhHYu/gM
	 qfD4vN90spN2SKqcAelkxCvnUoKb30dI0G6ZKudnzSadeve1kcvaqP0ylDx3UTQz1L
	 yBjaiGQB9bDnek9G5EV6cff0r0jJTJwCB3WGO3eTczzZW7pHmXLYJR/cYEGm5XAdkq
	 8acK4aGw0ZSof8XUx6gGD2hewKfDKNz+cR+jI8r60vSkEkjoETCnFHM7s9601Egm22
	 gGrF9a+t22/s/mwmga6BIX4KlZMOkJmMDwjA7qtWip3wWDE4rLfQ0kaORioim9yKQe
	 Q4wrlm1a2+99w==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH v3 0/2] Add more nodes to EN7581 SoC evaluation board
Date: Fri, 21 Feb 2025 09:01:14 +0100
Message-Id: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMoyuGcC/4XNQQ6CMBCF4auQrh3TqRTRlfcwLmo7wERSSEsaD
 eHuFla6MC7/l8w3s4gUmKI4F7MIlDjy4HMcdoWwnfEtAbvcQkmlpZII5I+6RnBThDgyjOztFHo
 osZL3WmlrTk7k4zFQw88Nvt5ydxynIby2PwnX9S+ZEBCMMWUmG1ua6vKg4KnfD6EVq5nUp6N/O
 mp1qELXSKylMl/OsixvzeLVbQUBAAA=
X-Change-ID: 20250201-en7581-dts-spi-pinctrl-4160b825ca9d
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Add the following nodes to EN7581 SoC and EN7581 evaluation board:
- rng-controller
- pinctrl
- i2c-controllers

Fix a compilation warning for clock-controller

---
Changes in v3:
- Rebase on top of v6.14-next/dts64 branch
- Remove clock-controller and spi-controller since already merged
- Add patch 2/2 to fix a warning in clock-controller node
- Link to v2: https://lore.kernel.org/r/20250205-en7581-dts-spi-pinctrl-v2-1-ae61df01802a@kernel.org

Changes in v2:
- Fix dtschema warnings
- Fix i2c nodes generic name
- Fix commit log
- Link to v1: https://lore.kernel.org/r/20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org

---
Lorenzo Bianconi (2):
      arm64: dts: airoha: en7581: Add more nodes to EN7581 SoC evaluation board
      arm64: dts: airoha: en7581: Fix clock-controller address

 arch/arm64/boot/dts/airoha/en7581-evb.dts |  4 ++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 62 ++++++++++++++++++++++++++++++-
 2 files changed, 65 insertions(+), 1 deletion(-)
---
base-commit: fd042310df40ad759882361d65afaeaa7bf6d7e1
change-id: 20250201-en7581-dts-spi-pinctrl-4160b825ca9d

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


