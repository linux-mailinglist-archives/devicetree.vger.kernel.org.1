Return-Path: <devicetree+bounces-232743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D41C1BAE4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16F69661345
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACBE259CA1;
	Wed, 29 Oct 2025 13:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GipmGrKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D109E7262E
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746160; cv=none; b=MgdTpDT9MkBruJMi9FWpkx0SpJve2nlPdD1QQXe8/5/QTGw6M4L1oCCsw80oUryZlGlHiIcyBxTxqcVsQqJlM7ZsOQsEkymg47HFeNrEsKmKf/jw1D9E/mAuKPwYgW0vLlE6AHZRk7mRHLd5AJfad+ElX+e5/JsJSjZXjU5Ub/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746160; c=relaxed/simple;
	bh=sHPEcCDYogiAcXc5LYqps5Dm5uc9aiRfkvHMbT9kJm4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mTreKqkdM0H4PVP9NVLqiR0O8FR8zySlfLYC6BznB9IkfW+rdBkwHWNnW6WmQwhwfesFdxRLDrn2Gq/NQhscPX37GidR3nsEiLiXoCkZWYDGWXiTor+5g9dJB5bLPQE6ETwQYtHss6J9gqXAoOxDXq+Qjp6ZWkjWPRM4l4d+Zcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GipmGrKT; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b64cdbb949cso1650117466b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761746157; x=1762350957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t3O1Iu/ksHRGyZsz6LMTY3M2UTA+pLqkjIUkkgFcc18=;
        b=GipmGrKTbokji/z//tbAN+Td6HP2NlQqf+jhZoVmiCL97kSldcR6fTl9AuIYi9m0Po
         r5A4hSB1Gl12gsOkJfHouAOGdiFaNSDq0VOyi/FICuU4m14hclwb4mSowK9tyXwHtaVW
         BgSsFH3bBXHZI+elsJDCG5INH7AWiy7KzyPobXDw0iXjW7aQo36HBDtKp2jPSxb4fuUQ
         LkYQeUNMqGsjy4prx5iRnNWTlzBFnORsFQzoNFp5gDeUE8TDsxBono3SZ+l17RbNSV9p
         yds05VIxpsKCQO8ZGvTikeqruqoWa7V+FR7RaGhfkJALkr7n64vVxnnFF2rfJHvvtpcz
         9p6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761746157; x=1762350957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3O1Iu/ksHRGyZsz6LMTY3M2UTA+pLqkjIUkkgFcc18=;
        b=VfOrkS3rLi3FwZIG7OWP449WPluE4JttloFRX5qpN6ssx7PoeRajLiH3iwkYFbM/nf
         Xyclb4aWVI48HPQj2WktoaYY+IUHml3Xo3/bdd42vl4JeCxUjtU8uQ16Z5roX5oSCEJh
         dDKu/2HiacifSGMGDUImjwM+rzl1mLvidOkLDXsyaRPk7mdIB+INrxEapu1PuUYfosys
         ockCMf3t/1aTRIhhBVZcPal0hcHc/f6S1XDaeYwS7OKkXRw8oM6cbGSAB6jhsW3hv1+W
         k0PFF+JKMB7xWNic2gGYM40PrNROs9ap/Dc/6GJOs7rcl/D38dv2OV4BW611RzZ1ACL5
         6zqw==
X-Forwarded-Encrypted: i=1; AJvYcCWchtkPTV966Xsh1blCtbMD474Me3NH+a83vNd5AVYbSIkzXFGPzaZP6ZK7CxbEYDPjyp2oK0/U6pzP@vger.kernel.org
X-Gm-Message-State: AOJu0YxDoQot2UUpZ4CSSqDGoVzTqfwywVCYtO9+IGHg3LblKIGD9ALJ
	zAuWOcydeW9XCAyp9Ip+S83juf+qCFTshG8hoXEzSweqX3PW2p6Y70se
X-Gm-Gg: ASbGncsLgL9iOQl4o83ZRin07lLwQVJkpHt4Q/VdN13WsxXzFqnH2Xa225xGKzu2yP0
	BhfPMgGDkxwpnJ+s5BMEyEMr41dWvSZedbsrTx1XsvWW82lBCNTeOEi1tLktW21z0x4X4DRjIRP
	06chouZf/kJ8qB9OT9YW55BXSNBQXyeYxgwdQZmlVIpQO62iwjDFHr4cqrUS2QsYrRjHP+n/mD0
	7Eo+Yw78Mw/Gcdzo7DubuXxbxgoAG9EIyVCl/JpaxQwLRmM2N4qfOZjb27og6Ke0G3pvsBrS9wy
	J2l5zp38jj1+5MRgRjVNyIcp3wcr3pzYxwR12AEk2quiovvigNFJ4WegvSO3jUoUi5nQkS2AGaK
	MlP4fPA3SXC8ux6OfGCVrtFu1qrXi6fcw6L0crjDO6t07ZcvnnEiG9aYISuDlKL7HxlpRPIc2Lo
	9bcqsnhNQ8p7qhkxcbL5dAy+5bZg==
X-Google-Smtp-Source: AGHT+IG3fjXdxPy5yprhsiCpSi+P154WFnEbny0GwxKhkE7eZydOCcZ5Zo9k8sLJC5ZAu8sCW+HiNg==
X-Received: by 2002:a17:906:ee8b:b0:b45:913d:f523 with SMTP id a640c23a62f3a-b703d2fe6ffmr341163266b.18.1761746157108;
        Wed, 29 Oct 2025 06:55:57 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8534d99dsm1444960766b.21.2025.10.29.06.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:55:56 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 0/8] Add support for i.MX8ULP's SIM LPAV
Date: Wed, 29 Oct 2025 06:52:21 -0700
Message-ID: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The LPAV System Integration Module (SIM) is an IP found inside i.MX8ULP's
LPAV subsystem, which offers clock gating, reset line
assertion/de-assertion, and various other misc. options.

This series adds support for the IP by introducing a new clock HW provider
driver and by modifying i.MX8MP's AUDIOMIX block control reset driver to
allow it to be used for i.MX8ULP's SIM LPAV as well.

This series is a spin-off from [1].

[1]: https://lore.kernel.org/lkml/20240922174225.75948-1-laurentiumihalcea111@gmail.com/

---
Changes in v3:

* rename "lpav_bus", "hifi_core", and "hifi_plat" to "bus", "core", "plat"
* don't assign the "name" field of "struct clk_parent_data". Previously, we
  were assigning the local parent name to this field, which wouldn't have
  worked anyways if, for whatever reason, the fallback mechanism would kick in.
* replace the whole auxiliary reset driver creation chunk by
  a single devm_auxiliary_device_create() call.
* replace the "shift" field from "struct imx8mp_reset_map" with the usage of
  ffs()
* shorten commit description for patch 6
* cast "id->driver_data" to "void *" instead of the previous
  "const struct imx8mp_reset_info *", which makes the line shorter.
* open question resulting from Peng Fan's comment on V2: how to access
  interconnect QoS registers? do we need to model the sim_lpav as an
  interconnect provider as well or is it fine to have another interconnect
  provider that references the sim_lpav node and accesses its registers
  via regmap (dev_get_regmap(), specifically, NOT syscon).
* link to v2: https://lore.kernel.org/lkml/20251017112025.11997-1-laurentiumihalcea111@gmail.com/

Changes in v2:

* drop redundant description for "#clock-cells"/"#reset-cells" properties
  from binding
* make "mux-controller" and "#reset-cells" properties mandatory
* add "mux-controller" child to binding example node
* drop the compatiblity with syscon - this was never actually needed and
  it was done to allow using "mmio-mux", which requires a syscon parent
* modify the auxiliary reset driver to use regmap - this will allow the
  mux controller, clock control and reset control APIs to use the same
  spinlock.
* rename "imx8ulp-reset-sim-lpav.h" to "fsl,imx8ulp-sim-lpav.h"
* drop the "IMX8ULP_CLK_SIM_LPAV_END" macro, which doesn't belong to the
  binding headers
* fix the values of "IMX8MP_AUDIOMIX_EARC_RESET_MASK" and
  "IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK", which were previously incorrect
* drop redundant macros from auxiliary reset driver - replace their
  occurrences with their values
* squash the binding-related macro additions into the binding patch
* add mux-controller child node to the sim_lpav node
* make the "gates" array static
* link to v1: https://lore.kernel.org/lkml/20250804155407.285353-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (8):
  reset: imx8mp-audiomix: Fix bad mask values
  dt-bindings: clock: document 8ULP's SIM LPAV
  clk: imx: add driver for imx8ulp's sim lpav
  reset: imx8mp-audiomix: Drop unneeded macros
  reset: imx8mp-audiomix: Switch to using regmap API
  reset: imx8mp-audiomix: Extend the driver usage
  reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
  arm64: dts: imx8ulp: add sim lpav node

 .../bindings/clock/fsl,imx8ulp-sim-lpav.yaml  |  72 ++++++++
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi    |  17 ++
 drivers/clk/imx/Makefile                      |   1 +
 drivers/clk/imx/clk-imx8ulp-sim-lpav.c        | 160 +++++++++++++++++
 drivers/reset/reset-imx8mp-audiomix.c         | 164 +++++++++++++-----
 include/dt-bindings/clock/imx8ulp-clock.h     |   5 +
 .../dt-bindings/reset/fsl,imx8ulp-sim-lpav.h  |  16 ++
 7 files changed, 392 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
 create mode 100644 drivers/clk/imx/clk-imx8ulp-sim-lpav.c
 create mode 100644 include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h

-- 
2.43.0


