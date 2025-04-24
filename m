Return-Path: <devicetree+bounces-170173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 545FBA9A1B4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:23:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCC834624EA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EF91F3FEB;
	Thu, 24 Apr 2025 06:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="a8zDdSgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0411F3BBB
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475734; cv=none; b=kTVoSX1NRea0myVvgLPIVPhAh7RvusEgQqh+A9G/bruFZtG4YkbV6rX8k3qK8R+EB3lTh7/xDnmqAgsWuzu9Lo0XnHCP6UhgGsjWdFfbw+ZPVWOs9dQF7iD7KKjcwWHDnFZXKZ357hG4Db0vMumFOJ/36lMmzIZkdPy7m4rwk/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475734; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xqk1jpTzU9R7R9Z5lovHSvUk8m5PD8Nz4SWQBQ9RPXapIwfPUn851LBtFbq26mliBJWOB8ofWA673b27NgO1d+HjoIBwviNLtULxy/dHgzJVJOZMFTUNMRmVs/qFHZn/I0uzZ3k/TJQAz3YGPovJGhzXNq9GuttTD/tpOOVjJLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=a8zDdSgA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so5572295e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475729; x=1746080529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=a8zDdSgAkFQrp1XundHUb9IZGL4A0qBSZrFuyLfXIJQXW/yz47QGeQQbzU4jsAX4+5
         m8MtbwEXRl/074HWr90zm2NU4kiw0ZCFec/9K1U3SZjGulR/eeYPIIqTqMz6kSi/SGct
         4oJxEuNPUnx4Rg04/e8OpRty3AHt2lxIByKf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475729; x=1746080529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=snWDF2ZuekA/2T2V3Uq+UpQflNtqNpEXD0zXst6AlfF5t7NP+FMY7+AK+igWPJBVZV
         SMGZShBgHDFBhXoNaxbRjMNu6dnUT2wRAU7H5N68V50RRQN6ycYOcq1bzcXdCefdfLg+
         lIHC/mQu2VSmLnD2r+WXDtxoc/zGGAZwrtViX9oczrU+wI1oN6fM9eH7mvMT9wH3Alfb
         hFowfXxcuNNsydXiem+q50NcVjRXBon9LzYe5Be/SgTsJ7G7/IQYcTCkxRdtuI5LHhW+
         Q2bgydPdiTv7Y1TWdrQ8OMw0DSd7d8pJrWavoxy2WmgD2d5tRwH09lCAVFtpw4uLg0Vb
         6N3g==
X-Forwarded-Encrypted: i=1; AJvYcCU0c8PCq+x4X1+9kCQSyILg0l5zwOow4KIs2Gak6utq62ZhqTROuYdz+J/eQEukUFVoeeZW4u+evASZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyxP1Xylu592lEE9xhRmQJr3aG5iQpvFNJUmWpUJEElJ3q76niQ
	FbiHTMB102/73OAywXEhiWMTZI1QMeeuScWmrMAFhhyEbezid0h3MgUAU0OZsyc=
X-Gm-Gg: ASbGnctiStm1I18xwMBiymei4WVN4H7SV0gkhqSHCwSprEk42g1D+HIeiACPMEd0QS4
	pcnu9L+3vwBZtKHXMOkLk4CRlobjwQaaMKMLaHCOL+QsmW9hHjaKcX/CGZev831mBelF4s3WHBX
	P9ak368nPdDKsv1IC2/O6jAWU4pLaPnl2gYyYDacDbeSsBH+3OKPBQNGpuo5mEQSf3OOKnRQ5yp
	agWlyz1dwqqB1zFvlDutfqPNouAJMYwkhuaURYOzpYtCgOQn1NL4rTxio0Ym3um5LGCDJFujc2C
	LYoImn9vW3uJzUpqluAsfl7ITGYdBDZ0eF79bk82wmKRptNGdznYPwH35RzdLISrFzcDsfaUwhw
	c2cWq
X-Google-Smtp-Source: AGHT+IG82yOPXpYwfi2WQXemi3Y+w+Y+YBgmmwEarjbKGosn9nFuDaCtfqEsVXKjXrDc3OfGAVxz3Q==
X-Received: by 2002:a05:600c:444f:b0:43c:f689:88ce with SMTP id 5b1f17b1804b1-4409bd8f0cbmr8682185e9.20.1745475729593;
        Wed, 23 Apr 2025 23:22:09 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:09 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
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
Subject: [PATCH v12 06/19] arm64: dts: imx8mm: add anatop clocks
Date: Thu, 24 Apr 2025 08:21:36 +0200
Message-ID: <20250424062154.2999219-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
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


