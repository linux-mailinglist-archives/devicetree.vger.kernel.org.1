Return-Path: <devicetree+bounces-41124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC4F8526CA
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 02:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67D73282ACC
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 01:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E85724B33;
	Tue, 13 Feb 2024 01:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnfgqeX5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AB571B3A;
	Tue, 13 Feb 2024 01:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707786239; cv=none; b=azal1rP+BBjLYg2qsRkhW6VsFwL2Px7ZH8Nlledykgoc7XSBuNJ058wXtXrYN/forFBG9vr3DKoDki3Z+pP1FJYL1Hs+EvVwhl++sdckjA9RdnGle0AlYdDrfW4WxZ0xthzVUuxtyRgMSi5c0jDHEZBg2FuTyA+jvVjsawmUPqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707786239; c=relaxed/simple;
	bh=4k5fPYp42gH3QLf+/maLO3ezxAAlAX85NAtYohge+G8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mxMIxW/4svL+f0kdOqTrKNbyGNoT0LvKu9Z9/XIfdxFaxT4yn/Wq7G1zuWf3JQMRgJJS4MCgVv+CiwehEAT28ApWZgCc28nplQQc2cpaIf/7S8o+Z/CLlZbnD3ekwRLWv38DyVGB8GzJj+Vb0WLpPyAYIEBcQisfk2S7bzyS07k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnfgqeX5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA4DEC433F1;
	Tue, 13 Feb 2024 01:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707786239;
	bh=4k5fPYp42gH3QLf+/maLO3ezxAAlAX85NAtYohge+G8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PnfgqeX5rkbobKUs5k7nJWbYmKsymtwvdw/2f/a4b9OHpMVa2OBzqWX1mZxbASMFg
	 E+eSJ/IUQrQKCNXgelRPz72/bdfQdaZJMT9epgfrfR3vhTv3sUD5m+h1x4nRwjLIFZ
	 gAGjMd02inij3czdITQfwQtjuiItM1zGdLlL8CcrmTwFi9p85FRGGF/MFTbs85Pw+D
	 mu4u7VCyd/ZGOIx8A8l0yqH7WtZFs0G8+VpwMBwqx8iQUv0H1Xskkb2vuRcQkVkzGJ
	 cer4cTALq/ZLYXvKRoDSFW2JdLPeLkFBUEXRApeb62nrD4/+33Vf2Vol1a4xmvngMw
	 5GJ/fU1m8ljRg==
Received: by mercury (Postfix, from userid 1000)
	id 73CE7106D63D; Tue, 13 Feb 2024 02:03:49 +0100 (CET)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 15/17] dt-bindings: vendor-prefixes: add UNI-T
Date: Tue, 13 Feb 2024 02:01:04 +0100
Message-ID: <20240213010347.1075251-16-sre@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213010347.1075251-1-sre@kernel.org>
References: <20240213010347.1075251-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Uni-Trend Technology is a manufacturer of measurement
and testing tools.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db4..e945e76696c2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1484,6 +1484,8 @@ patternProperties:
     description: Ufi Space Co., Ltd.
   "^ugoos,.*":
     description: Ugoos Industrial Co., Ltd.
+  "^uni-t,.*":
+    description: Uni-Trend Technology (China) Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.43.0


