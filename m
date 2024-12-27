Return-Path: <devicetree+bounces-134409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 612499FD62B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AB611884DF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B536C1F8ACB;
	Fri, 27 Dec 2024 16:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WTPQAGHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1281F892A
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318657; cv=none; b=Nz3E+7EuIcf8PzVyP0/J8YsU9ntafefmUvZ4IffApEQHv6StYeExuMUhYtSr575gOPug7M4I4XyqGolEVfa3ZxAP9svKA3cTp64PECACebvzyIvW+74JcRynLDKtJ8ENn42Bps3WHvIkM4gSN2CYydtHvQTnRQDCybJQbpCaatU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318657; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HUFpVEybuGLqkc43JfAhpAA2TkYNs0zkto3iVVfpTQsPhN6LtyJQVAMM/w0NZqJShpwFdBFpHgoucoNmh5nPr5SgRx8BnnjUFLg/tNOf+cAT8mux3kxgSRd7UCthoUdJfHO8xoIWQfEBiQGK80z1EB48FG6KCOXhy57tU2BCeuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WTPQAGHJ; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d7e527becaso11735045a12.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318654; x=1735923454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=WTPQAGHJWa3ynqKV1FUID1P+FM24LriTiQT5BZCL3GjMMrOQxhU+bsSUC8zOubQhVY
         e0y0mFvDrcp/iv7afbTGEjeCnGqaA7XuD8lV2tGLmyMepuNuicGyfHirsqCahJhk7vCf
         y3uhQH+eHVaWN7kfw93Q1t0ZcFCnqnG0Xs/rI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318654; x=1735923454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=c+ag6P0xZL4PxZg3CCpn3OvU1hvGCumk2M7ogBhlOR0OpNkHMFgKFPTfcXIDuH9Zr6
         ZItUmE1Qsp1UDcP6FztkL8hJYNaeVKO5wxYZwtvlK5mx07tTXfX1vyDoVqtQzgAL0fLL
         esh2mUlntTJF5dcLL4/T9fLGaobkt153q9BocLCjevkXHxcaje+GuZLXhE6ssohd2m+z
         SG3oxuLljwXIC/o2pJUxwrM4MgX1BvR1Xo3Xt5MolvtGAnmGmkQjbPZsZwannIla0hgD
         tdXVhoWuZBxOHXvzzlpgmvw2ePrx0hATE7RXMy5oQbrZnOsu8xryrekirooM3NEFowDx
         pOFA==
X-Forwarded-Encrypted: i=1; AJvYcCUtj2u/vDb0erd/bVH/3mXQLD/fPjAzfG/wTGzfyaNUAWrr3HX21kEy1YijFkOLfIChCsDGNnI1r21b@vger.kernel.org
X-Gm-Message-State: AOJu0YxnE2yDxO+y5WWViYb53HXr48MkYZdr85Cpspg9e0R/n+NVcIil
	bFS3DJCUuQHx2fXVUqrPGjxaEi3yxm8Ne9iW1R1WAFjeCUqk5Nc6WVS/g0O2Nlk=
X-Gm-Gg: ASbGnctAX8fyFY4Uq/phjewpxtsVF1J/+Hgi5dyhSQSW0TsNRiCh6zojqdrebol8M9Z
	hOGH+kEv04ZzZmPz/afQdidZltFrmpgpQl2S7GBTiCdZpicDFvrC31QHa3/XwkfzleURtftpVv5
	FYAWv+pSiFpVc7qIrb6AxVx1MogfMMfieNR8AHPCClucRFEi7OLpMhuMBIfaS5g1hSFrZYZ/9WD
	JEYWS+DJfw5UH0wtNdCkHGP5m8TZ1WQ+onOW2o8vM4cQSUy6McixHPZpWzMQWPj5jec2a9lbiix
	ctg3gJaDDkOprIGa81YzoQ==
X-Google-Smtp-Source: AGHT+IFlmdnMThLPb9EkkuKwMxGI60ovbSUep0LqlOvlgpARRv5AlDDZd5jWQljGYpDND2+/ZP6Adg==
X-Received: by 2002:a05:6402:2693:b0:5d6:688d:b683 with SMTP id 4fb4d7f45d1cf-5d81dd9c716mr60767226a12.9.1735318654135;
        Fri, 27 Dec 2024 08:57:34 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:33 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 06/23] arm64: dts: imx8mm: add anatop clocks
Date: Fri, 27 Dec 2024 17:56:09 +0100
Message-ID: <20241227165719.3902388-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


