Return-Path: <devicetree+bounces-215651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2116B523D9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 23:49:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BF1BA020E3
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 21:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A319D3002C0;
	Wed, 10 Sep 2025 21:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmjl4Xs8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7872E2D77EF;
	Wed, 10 Sep 2025 21:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757540962; cv=none; b=nIZUhaoxdEmipJjKpuy3nOkNeFSWJ807rH20hFvICEPqRl6HhThpvRdioI21OJe27iIKcqoUJshgYwyMTUP7fNHTSIbzRMsFadw/c20X1E8ULU/85vMDgFuvm3PJl9OxoiVh3FqL64Yiovz4EGzJlq1/oVh7iMCslyj1VYOyZ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757540962; c=relaxed/simple;
	bh=tstdZvGhhnxkrhQe0/MNomiRRM/2Ww6Fg3HjnJoTm+M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IywTzLpLyXDK/iT7hg1othS0K515zxFwLs+8N3osXO+afgUw4ttN+I9YqiuurcPknaihefUq4BsW1CymZ5zYwZXR60vhE4fboSUxv0R+0553j0QS1vPDYe4peezdJ0YYbZysIs+0oAhbatFL9z+fzRYTTKcmqezloZ17FaihGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmjl4Xs8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01617C4CEEB;
	Wed, 10 Sep 2025 21:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757540962;
	bh=tstdZvGhhnxkrhQe0/MNomiRRM/2Ww6Fg3HjnJoTm+M=;
	h=From:To:Cc:Subject:Date:From;
	b=hmjl4Xs8iHcNeiLzA7GdrqFWuP0f7AxsdBnXJAaWA2bO3GOBEpD+3o9fTN38dNVr0
	 6FMVIujJXYDm0O7tqAkfkq3Oy0Qq50vtNXFLxOL0fHg7ucIwdip4Ou4HpWFbKIsTbt
	 7GuEAxdOuNgiN3oNGZ/3ZmUXh2RXnlKDD5J5a3qWd9ZUrn+Tz/F/AfZ5AUV9pK8nrk
	 CUhrAUgDEvZy+Nyx6U/aosy8oCYKctK3fwHAhSlWxN6IrBz5k2s9aPtfnqiDv5Koxw
	 fT8ZKFKuLqzOMyDJ1gawNA0YtXECST85SF6xWyadvEySwwlSJ3DvulkAajkABfFved
	 eYlTN+JUJ7xaQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: soc@kernel.org,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: apm: Move slimpro nodes out of "simple-bus" node
Date: Wed, 10 Sep 2025 16:48:23 -0500
Message-ID: <20250910214822.508317-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The slimpro nodes are not MMIO devices, so they don't belong under a
"simple-bus" node. Move them to the top level.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Arnd, Please take this directly.

 arch/arm64/boot/dts/apm/apm-storm.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 5feb561c75c5..6a6877845ae5 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -133,6 +133,16 @@ pmu {
 		interrupts = <1 12 0xff04>;
 	};
 
+	i2cslimpro {
+		compatible = "apm,xgene-slimpro-i2c";
+		mboxes = <&mailbox 0>;
+	};
+
+	hwmonslimpro {
+		compatible = "apm,xgene-slimpro-hwmon";
+		mboxes = <&mailbox 7>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -757,16 +767,6 @@ mailbox: mailbox@10540000 {
 					<0x0 0x7 0x4>;
 		};
 
-		i2cslimpro {
-			compatible = "apm,xgene-slimpro-i2c";
-			mboxes = <&mailbox 0>;
-		};
-
-		hwmonslimpro {
-			compatible = "apm,xgene-slimpro-hwmon";
-			mboxes = <&mailbox 7>;
-		};
-
 		serial0: serial@1c020000 {
 			status = "disabled";
 			compatible = "ns16550a";
-- 
2.51.0


