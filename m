Return-Path: <devicetree+bounces-255261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9C5D21A64
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FEF03001052
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2262929E10C;
	Wed, 14 Jan 2026 22:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThJuIhFB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC27F35E545;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430923; cv=none; b=jTKBJWYOk6Ge6oMX9o+8MLMBSMCgFKOeecqT6CBTPHVnRgMN8jIsZ6/hQN4crd2SCo9LXyOpyc/kqgJqtj5co9adtj9jyRfmy9qR1QeLIM7o/6DS6HRMrjJ90egb2qncI9/ZOLZplfj4BpC6OowVsnnd6Fy5636dWPu/O7YK3Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430923; c=relaxed/simple;
	bh=jMo5ERNKRtgqeiruc+F9jPMXJYYBxN74dlDkfmQDZII=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uDlKH/y0QgTTTWqBY6MtdCBYMFetko1PFre7x5zqTHno8ywaSbMveZbOogAv/iiQiKgTWHd+TRqvlejQ5WLJIyg3dCOt8cOTWv1TrmG9csFWXN0++ivuWSmP/RulRX1rjE48hfBoc25WlGsFmvZ5ISopFp1Cuqw5rxjQBG38sIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThJuIhFB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48A22C4CEF7;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768430923;
	bh=jMo5ERNKRtgqeiruc+F9jPMXJYYBxN74dlDkfmQDZII=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ThJuIhFB8AX9STOwfCgXyLD7aqcyh0/KsdkFoi9wp7plhLeOZpaDhPEHlnAVu+z+j
	 EixqESdMRvtGjsRDbjc8HJbhq2auuj9vbYheVS6dGPyqvWi0sq7swwOw4J47IMAChW
	 0BqKkYxyHVQqyR1+MOdwT4S6p23rXe+qizuVm5sUCa420qw4ELpzHU4wzT6UGElP9g
	 qOknTGjzn8zs38b+yvFkiN7l/ANSBoJdOfSK2FRnoP10mrrM7M+gINmwunZBedZw2H
	 e/uKxNXI1eYZTb0bwiMMBXDJyVcNcMLHF1AKUmQ0pmg8eIDFDCBpXpmk0E/7P5e9t1
	 dqkbBAXh+J1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31284D3CC88;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Subject: [PATCH 0/2] NPU and i2c3 + FUSB302 addition for Radxa Zero 2
Date: Wed, 14 Jan 2026 23:48:35 +0100
Message-Id: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEMdaGkC/x3NQQqDQAxA0atI1g3MTEfBXqV0kZpoA9UpiYhUv
 HuHLv/m/QNcTMXh1hxgsqlrWWrESwPDi5ZJULk2pJC6EGNGsrnLyKsjze8y6YBGvBN+xUpCYta
 1Eo59aNvcj0/hq0DVPiaj7v/T/XGeP71Rk6t5AAAA
X-Change-ID: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=738; i=ricardo@pardini.net;
 h=from:subject:message-id;
 bh=jMo5ERNKRtgqeiruc+F9jPMXJYYBxN74dlDkfmQDZII=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpaB1JBGAoliEo92rosUySpTcYh5fjuWErzCmR5
 HppGRKGo4yJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaWgdSQAKCRA7Xj/jnsft
 6RtgB/4l+A3LhNDT4b9cqXMNp5csRFFGWyKfDyPpXympkNaPKRbH2REuAMiE/0+I4iXxIZpORqQ
 JE1Cw9dxQT9yD1M+ZcSswPFin8PKwPZ5GGfulCLXBFXsF9arrByXGMD4mZeBqfRGna7UTcpJpm0
 Wzifn828+izdBYeFmi1TCS7QckWEeU+C2r+Zgu+boyziOgXPRDHEn/HSDiFD63cePM6p+kWzbSo
 BIgswY+uhQZ4AQhpCLJNt9XhRNZLtc9G9KZAMvP49gUFPYO2nHKHMnUql8n3N/rF2UkYOWVdR2x
 qBfS74rdAAEK0Cfj2wSqEP45cqGa5NfeahwW1H+Dyku6xTpz
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

This series adds a few things missing from the Radxa Zero 2:

1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
Ricardo Pardini (2):
      arm64: dts: amlogic: Enable the npu node on Radxa Zero 2
      arm64: dts: amlogic: add the type-c controller on Radxa Zero 2

 .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)
---
base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
change-id: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e

Best regards,
-- 
Ricardo Pardini <ricardo@pardini.net>



