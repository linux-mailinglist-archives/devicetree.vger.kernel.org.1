Return-Path: <devicetree+bounces-255263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5546AD21A67
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D53583003535
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC22D35505B;
	Wed, 14 Jan 2026 22:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJpqSSvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7443559DF;
	Wed, 14 Jan 2026 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430925; cv=none; b=oucmmcp+TR5RfMuYJwYIzLL8NHA3tyE4NLAkYBMTcnUdJFqiETMgxEB77Kzx+MCgiG5KNBRC85p1aRCfhdJhDKoQ/cRBRHwTgLiat8EFp1N2LszHNDwRdwev8BxUJJ+94e6yZ4RXBsPKMsNtgI8akpVfX0AHFiqDoNtntyFoLj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430925; c=relaxed/simple;
	bh=ByL/BpUhaSUXyfwxXMTfBTOdM+/wU89KWHVWit3IeZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g1qzfjw56hqlVSdsyDI4RPT7UwRs1BOND4vdu0yt4MEb/O+NGWB/rLeRZB/89+6baqB9meX021tXeWc9G/k0tg4SLOYmlXrLG1FdqP1B1KiY1Z8Yu3bx2yC3uWsq+2yieDh+9WHoNp1u2VmxzoJ2FaDolhsQoV64uHik+FeeDNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJpqSSvQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E1C1C16AAE;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768430923;
	bh=ByL/BpUhaSUXyfwxXMTfBTOdM+/wU89KWHVWit3IeZ4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RJpqSSvQtjxgls4t1y1SVdTX+PkoJFOqW6xZzddKtUPymI7eooPuoprfPMhzZJMZG
	 l6OhGrStfqvnORQMWD0KZjkPf+qMH5ywpeebiigHkB9f7H+2299Ub+6fUOTmKO4Cuj
	 EiDrGVTI7i+dlfSa8j1aOsFEPSpS/G8hvZJ/AETKECd7KHdJBo864lKIZzR6YYIZcc
	 q2/q10Cx7LNaKFPOJZghxm+JzuLFq79/p5yEJDvxIx6ZzJPwWaNjVLWS+K9J6swOLF
	 28JuwvwVRFeeuokVi3cOUBSxEYtZszurU7NFiucIWcfm3LtTTL1jbHOndeEGeJ8GN8
	 BVMJW3IktqiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E64DD3CC82;
	Wed, 14 Jan 2026 22:48:43 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Wed, 14 Jan 2026 23:48:36 +0100
Subject: [PATCH 1/2] arm64: dts: amlogic: Enable the npu node on Radxa Zero
 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-1-8b5cdf328fde@pardini.net>
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=698; i=ricardo@pardini.net;
 h=from:subject:message-id;
 bh=eqdmMp6peidn3J71/h9AkydpMOUtj1mRqpWe52feB/s=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpaB1KmaU5bBjHFVtHlQhR+8JD0BxN6RL1k4sP5
 pT7lMOYuIiJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaWgdSgAKCRA7Xj/jnsft
 6T9zB/4sWp2MYpPyk50RQWXJ4TUCNsIX3h+AVX/rZKZ3m2cQtlN5RZLgg9WWc8KuRrxv+SwJxkf
 IefNO+MBh3Kg5nwI7Qjd6cPhIPN19r7zMtpyxpnqA17SSsDvkX+Z2LazVfSnMqq44a5VbrBGLPG
 NODCO/yFwkHSBEXLSeCtFl17WGxFJC7zZDQQrP2JkpeepmeayNSfSiYxhpa9LELUCMBYvV8nLyK
 VCo+gr4BEh5DUXAblkt4ySzT6J5utQXzciKNt4oY071YZ+ga09PPZKgxWaisWAKKIOGH/JGII4n
 GjvFSzc3xNPbcEaVMUomsn5wO19pKLCfEpBFL89p64xrwO5C
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

The Zero2 is also an A311D just like the VIM3, enable its npu.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 1e5c6f9849456..a37776d22b09e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -394,6 +394,10 @@ &pwm_AO_cd {
 	status = "okay";
 };
 
+&npu {
+	status = "okay";
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vddao_1v8>;

-- 
2.52.0



