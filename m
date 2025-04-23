Return-Path: <devicetree+bounces-169688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE49BA97E8E
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 543EF17EBF0
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE92E26773E;
	Wed, 23 Apr 2025 06:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="j0DNoqSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65952676E6
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388191; cv=none; b=NFgfS0pKEuVVlLZ8sQOZB4VF9y7r4pofD4xsQ+cgEIF1sdkCccHdt8vTI1a/30emxuk8AJqr4lzNC7TO4gMFvodyCRpGdZ+kSoLUok7fuWGT/Tc02lQeKVLZ8YkVa1pxk2Yhbp0aXUG/1Ra+HX3esZGpqAeEViB300+NvOzoXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388191; c=relaxed/simple;
	bh=6Nf3p87xmE+b+aldFiQfNcyvNboXQjvT/SrC191QSNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BoGqkTDZU6Uvw9h2xlrUS+y3hAzlpKefbcvcoaTZua0jUkvXi37S/zft5x6Y7ldxRYAN2Jl6krvXqi3nKk3+qLGKfyzH7Qw4FOYy9m+X0DSVYWMa3VWHXeFLoqAtiRm1h5IpjznxHYIXXBvOCv6im5JsqlWHRU00k/WIoB3Q0HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=j0DNoqSe; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-acb39c45b4eso876037466b.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388188; x=1745992988; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjH/2kqdCORlSdLYP6r4xpoVlQIwGobZVf64uO8zUM4=;
        b=j0DNoqSe5sC91W+M7bcpRK8phdrgFrsbg2Yn0zbvMOM4yvLft1L8MRe8HyEaFmq0gV
         73U5mROhx/P6SBweFIyMfsYikg8ncBcv4xNezGdIyD0T4SQspnA5/04JdyR8Bh8MWvmv
         Ht4sFFWoEr19+tW2czrNt01CW9SXTf8rJgsRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388188; x=1745992988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjH/2kqdCORlSdLYP6r4xpoVlQIwGobZVf64uO8zUM4=;
        b=E7xYiPbgSfbUbu8zYhlAK0PbxwC3pAcNIGKhgc63x5raGfgH3LqAKLAuXngrqC1aKs
         2HjM+uF86JrcKZa3bJ9fBi9h3CcYNbRO0gY28pLpnw1EQf5NAaac7YW4sDj+2RN8XzQ4
         EPA7mAobtgcRWA+ni7QOkUfnRnbsKGl2uuQQnFl6qlk0lHtdnLdSDJSMCGxIpKjUGc3f
         oJpHKE9SF0piUhsLUOb/Tzyl6KQYZ/ZG+sLY+VyGgsNHKDIMjDHfn7kXJ/ciI/hhiix8
         U9ucxqKSdxadkS2IMx/V4+D+oSuOrVptLCPsEXLD3JRZZsDbWLsC4WLoUnjW4QAkX/6d
         2jTw==
X-Forwarded-Encrypted: i=1; AJvYcCVZ70MoLj+X/i7KLZ9hpRnXAkH+cPoSJMuydR4e6gnWY9pDK6DMXNJgdk6DHc8wBP14OmYywx43HGG9@vger.kernel.org
X-Gm-Message-State: AOJu0YyNL4gvwRMGG6aU+OBvtEw6e7QLyrAmW9fffYhcrv+0h0i9gtGw
	SAXfISTdtzSoQIFmcS0WLEjUFT9jU8aaw1gR9sBTh5c4lqS8dNe+Pia2RvqQjac=
X-Gm-Gg: ASbGncvrCnSr+ZrDPd2fPY/dJ1fPy6DMCii/ohlCTMTQOn3Ayv9zV1RkwT/9uXfHtQD
	84OTkTe3RW5XRXBe3g6rE/L+65jyVRtUQ8KQfQTtLzZj8uBCCuU0zkYfAwqdKg0/Oe4yWVhukjD
	SaPfDlBDdfjyWmR8C4m/mdgQ1n3dtQP7iQuC5xtf+SxwCnwkuz+7VvfJk5O6aiKwcuQSta8cD/Q
	xjRVF20FTuqgOFjwkUb7fjRP+nyRlQ3iLi+Lwqb8C76ZjlzPVUODbF3jKbEwSyvVoQi0b4YV8wF
	soGVXsMHTY6rPav7aLd1q+2rmmxGnnBnsM+4hj1wuisGeRggXJg9m+t1MkiZqMFnUBI402oCxtG
	gqDjO
X-Google-Smtp-Source: AGHT+IELsWvXw7F5FZt767HR+UyBJn9wcMcKkXhJc6P2zEo6Q4Ars/jQw/zuDlIzWD0FzCHnIL24gA==
X-Received: by 2002:a17:907:9708:b0:ac2:9ac:a062 with SMTP id a640c23a62f3a-acb74b38943mr1561283466b.23.1745388187989;
        Tue, 22 Apr 2025 23:03:07 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:07 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v11 08/18] arm64: dts: imx8mp: add anatop clocks
Date: Wed, 23 Apr 2025 08:02:25 +0200
Message-ID: <20250423060241.95521-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index ce6793b2d57e..78d71aacd0a5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


