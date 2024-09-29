Return-Path: <devicetree+bounces-106188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA5989686
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 19:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73B4F1F22325
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 17:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1D82D057;
	Sun, 29 Sep 2024 17:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="FR6NZGAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1B82B9B7
	for <devicetree@vger.kernel.org>; Sun, 29 Sep 2024 17:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727630870; cv=none; b=FbHugOMOn0Wj/pAY6eSv12h9a7esqyPPwMskkPpkzS33YVCYJNVd1/NbZtwocW2OK4EjSBPn3jd74OJS+BJOEYy9SNEPBUEk+/Z8Y+9T2E9m8CK6p5BT4v7Mz5nxZih/7+TdUYb0+HkSz8DaRUx8LBl50/vIsPgT5Xn4y3A4l8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727630870; c=relaxed/simple;
	bh=WUERIKhk0ysr6XjanYIBJIslPRVSyrgdwPzHbxGARM8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gjUBrwLl7xQg4sorSLb+wUX1h7qZn4Unw4jSX58PBSn267MWiS7MF+F4eYbaOHkJ68kM3FJqfcUVU5cBei3hu4nl7bsXYsT2IFN9fHiSEwMLDYdAk85Ja8F9qPI7xfDAgv5B2lP5wIkky+eha2gs2M7c+i83x1IQqSUp2m03KyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=FR6NZGAA; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a8d2b24b7a8so856432766b.1
        for <devicetree@vger.kernel.org>; Sun, 29 Sep 2024 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1727630866; x=1728235666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N1af6m0P26utxo00AsF/VQkLQHLRIxDCh3EYFZpR7sY=;
        b=FR6NZGAA3kMI1HJk892P0c8Z+mfm5ApKukLyvEsFo0vOyjnYaloPQFE+RzSh4e0ZIk
         rHwBdA1j3Gobh1dqlpmA+vBHYh2lffkdcmQWkp2rnr94mJ1/Al4RfPxnwjqcwSiazTuK
         A1JtToMIlhC4vOM2aULb9jmISxkna/0T7+I7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727630866; x=1728235666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1af6m0P26utxo00AsF/VQkLQHLRIxDCh3EYFZpR7sY=;
        b=VKeZl09oDQetIPJKb75GKFKdIantuz4nxBfINgwQRhsjxzETl1MtFELELOxBFaWzxi
         Z3tK3iThg4S8hZxg+2SurFcuyCBYbzcSJVGc/kv2cE0+c4zqZUdehAH+pWZsowjFYPF8
         X4pONTaS2E0y5ApmMP0yBTAw1MYsOwzM8LhB/Erm9POj70OxkcP2aUpzZhu1NILaQwNi
         AoAUTWeERFwn8wyb1fdoJGp4hf2SCrOu/ah5FHLCh6X0BJ0aR6/ZlyOyM2i0l9wDHTFZ
         1qCVIJkGweXDRchGGg/1sLtahH+x2HzukZhZcq5AndpPIFcE7+2R+jMa3r37gKIQ4rAv
         a2lg==
X-Forwarded-Encrypted: i=1; AJvYcCVF3Aen8zQaJXevaMjUwNC+sHCpAENlyh6f3updzjhu5JJCWkOoTuFf3YBLQd37aqutQPRDuMbJ5+ca@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1s0eLCn5RveCEQ2XjvuzMHxUu9v0tNtEuIrAMvvBX7vXlvf9T
	4buRGN8L6LfyP9f1JC537Bm6AFZMrXgZ9hKppJKMeUlvJfR2PPCURwA7jEvJYVw=
X-Google-Smtp-Source: AGHT+IHeQSLDDGaGM06C3DmT6DPfJ9OxZZEG7iZ3wShlX9PB2tTp0g7klku7UD5UU2zkoa72aIzLJg==
X-Received: by 2002:a17:907:7f26:b0:a75:7a8:d70c with SMTP id a640c23a62f3a-a93c3098a87mr1230197566b.4.1727630866257;
        Sun, 29 Sep 2024 10:27:46 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-54-102-102.retail.telecomitalia.it. [79.54.102.102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27776a1sm403176866b.8.2024.09.29.10.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2024 10:27:45 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v2 0/6] Support spread spectrum clocking for i.MX8{M,N,P} PLLs
Date: Sun, 29 Sep 2024 19:27:10 +0200
Message-ID: <20240929172743.1758292-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for i.MX8M{N,M,P}
PLLs (audio, video and DRAM). It has been tested for the video PLL on
a board using the i.MX8MP.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

Dario Binacchi (6):
  dt-bindings: clock: imx8m-anatop: support spread spectrum clocking
  clk: imx: pll14xx: support spread spectrum clock generation
  clk: imx8mm: support spread spectrum clock generation
  clk: imx8mn: support spread spectrum clock generation
  clk: imx8mp: don't lose the anatop device node
  clk: imx8mp: support spread spectrum clock generation

 .../bindings/clock/fsl,imx8m-anatop.yaml      |  45 ++++++++
 drivers/clk/imx/clk-imx8mm.c                  |  13 ++-
 drivers/clk/imx/clk-imx8mn.c                  |  13 ++-
 drivers/clk/imx/clk-imx8mp-audiomix.c         |   2 +-
 drivers/clk/imx/clk-imx8mp.c                  |  21 ++--
 drivers/clk/imx/clk-pll14xx.c                 | 102 +++++++++++++++++-
 drivers/clk/imx/clk.h                         |  24 ++++-
 7 files changed, 200 insertions(+), 20 deletions(-)

-- 
2.43.0


