Return-Path: <devicetree+bounces-255800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A52D294F9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5A2F3096727
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597103314DE;
	Thu, 15 Jan 2026 23:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Ey47b6zA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0433121C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520571; cv=none; b=jueirgisI09aGQgHrMDgBvbpuy57pD/EluT4JSKr8t/QAfHyfa6h47EKr00GpYsBB44oAvHENvF6ovDtLZoKLkh+HEG+YctE7q2RsztTSlvya3ZDZiFm/mU3mD+k+tFSxhAlfwFlQgFIxOkqqAWUMY7yLIe759eaRvnENqMq+Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520571; c=relaxed/simple;
	bh=wRP8FmdA12Aje5GTOxIiYJPqjm12DSPC5YqsI4gARmc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kojKdYSqXbyuk8OwvKZXgNhfagr2F3WV1J4Vrci8o26Qr7p07eob47fgiWUy61UyBA/wGKyQxzdjRfJw0HjkjSRzi6yW+zEYIaGLR4aIvi2ut2YW7SpFrXm/jQ2tE3DGHlj1iNhHAGFC8T/zWrJl/bgFX9LjTLLsZ4+sSkVJmIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Ey47b6zA; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78fdb90b670so13969707b3.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520566; x=1769125366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhfgD4MLmYb5AUeJY2eVc/fXqLoD7qd7hkr+2xTsRcM=;
        b=Ey47b6zAzIAhxR+xJDoAjvJOeWR2uF7yXf84lb1fDQlLiCUQPHFS/qhbtoZulQ2d7M
         Gub2oNlAY/lMNmz8Jhb+zuOErZ1fArV3zSgKm1pCmtak75L4it+0IClXiqhsGNgVU4li
         qLY/tYHAcX0Ui+/5gseJQr0RCeinj9yiq+htJGF63aaSpG99gwlkDQyUYSD17kha2Jc8
         xZl05KhoH1ig1ul+N1rSia/NQP9ZcD3R9aRDp+gk7JFLZekVsgtxbNWPBvOAcO72CwWt
         rMv8b16rT2ihbsKIj2WB4kAP2pbsfmBozRBoZenXR15fbp11Vw5Wkf6hW5VnDhtlSuaV
         Oh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520566; x=1769125366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FhfgD4MLmYb5AUeJY2eVc/fXqLoD7qd7hkr+2xTsRcM=;
        b=Ogl3TIvD6NwMempV8ZzcpioibYIc67AkXl84c+SKctMrvgwDoMceEEKwmf7Aj4R/6Y
         5vQpzxiD0kVfA0+PxjnXSdVLl95A/C3lEMch6sdJduvj/xPr5qE9nLSKA/SvLfRby9rv
         L4EfUugKnUNgfmV5LMoL55UbzvSYvNLPucLUMmyT7f8kiEGV5bjYzmJw7pGqFAMiwGfd
         blqITFtwQ5h8geO8QuMEJK+e0/r1wl/IQGJnUUTRF/6rS5cPk22ZO7bW1Wq/wGd7Wkil
         9QdW3psghHJ7yllu5IUWIVyBHqMWN4++5TR9VZj2BzlQ6IVecWZDvYC997sPnQ5w5YSP
         OksQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6CChwdt7ExTezUFoYhwhtg7qX1LWfY/kUAh2yKouC/OLlveteAEoFjEAEe6fGekmoQcEHwz52hqi8@vger.kernel.org
X-Gm-Message-State: AOJu0YzPUFzmC/zuIq18uPXLkod86eCgr+sDA7kgT8yWtkyDLDWnLnAl
	YJ0vQlgjVYHWaQEQMpe0RLNJrjt+SAdTMv5JD5f3NqC63FgI3ldBEbsxTD5qqnCB1Ps=
X-Gm-Gg: AY/fxX4tGzcYo/VOjZZauEQR6nGEBZRSitx2TJ0cwDrOnt1Dci74nhJ2Qp/NfEsKtyo
	EuAVH67gxjce8tOtK1dz6U6/z/Cr+xpHtibHkgyyWNWpeDlcc1g2Zc57KaZj0DjUFWO+i44aDD/
	RY+2eYHJ3l18IoYDmt/SSlJZkLZik8uTyrkWiDDJR6gQEoHVWjnkKkDVAJ4+Jx0GzlbGSg9GHMp
	5J+t2paUdUtqKoTvijt6JvjwQST8ZIHzGbRyltHuumSBJFUosnk8llYmZeaH/YtSaPmJQVA0PZ1
	P59D1WgPu4YeE5+KuC3Sc+iMhpP9IUJfCQk+GJ+bhEwdm1YzVnmo738mPFli+KtER0FEIFYBp3T
	KyZrC4b3Nc5y5jILnFUsVtE/VDwzBD6Iwik5iDZNpISwDWAWruXouUJ1q+/OU4XEFcfawkFX6yg
	9GjRF4XJ5ISbwHbqokbi2CGnQniTL26ocygOpmFQ/dGFgRp+cOziAMvkDSJ6rqPoexX0UU71G6O
	9SwY99VDA==
X-Received: by 2002:a05:690c:b0b:b0:788:c22:1f0 with SMTP id 00721157ae682-793c53c4539mr12329207b3.54.1768520566220;
        Thu, 15 Jan 2026 15:42:46 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:45 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:01 -0600
Subject: [PATCH 2/8] soc: tenstorrent: Add header with Atlantis syscon
 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-2-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Document register offsets used for controlling clocks in Atlantis

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 MAINTAINERS                               |  1 +
 include/soc/tenstorrent/atlantis-syscon.h | 38 +++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 19a98b1fa456..4a2017d647b0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22538,6 +22538,7 @@ F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
 F:	include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
+F:	include/soc/tenstorrent/
 
 RISC-V THEAD SoC SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
diff --git a/include/soc/tenstorrent/atlantis-syscon.h b/include/soc/tenstorrent/atlantis-syscon.h
new file mode 100644
index 000000000000..b15dabfb42b5
--- /dev/null
+++ b/include/soc/tenstorrent/atlantis-syscon.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2026 Tenstorrent
+ */
+#ifndef __SOC_ATLANTIS_SYSCON_H__
+#define __SOC_ATLANTIS_SYSCON_H__
+
+#include <linux/bits.h>
+#include <linux/types.h>
+
+/* RCPU Clock Register Offsets */
+#define RCPU_PLL_CFG_REG 0x0000
+#define RCPU_NOCC_PLL_CFG_REG 0x0004
+#define RCPU_NOCC_CLK_CFG_REG 0x0008
+#define RCPU_DIV_CFG_REG 0x000C
+#define RCPU_BLK_CG_REG 0x0014
+#define LSIO_BLK_CG_REG 0x0018
+#define PLL_RCPU_EN_REG 0x11c
+#define PLL_NOCC_EN_REG 0x120
+#define BUS_CG_REG 0x01FC
+
+/* PLL Bit Definitions */
+#define PLL_CFG_EN_BIT BIT(0)
+#define PLL_CFG_BYPASS_BIT BIT(1)
+#define PLL_CFG_REFDIV_MASK GENMASK(7, 2)
+#define PLL_CFG_REFDIV_SHIFT 2
+#define PLL_CFG_POSTDIV1_MASK GENMASK(10, 8)
+#define PLL_CFG_POSTDIV1_SHIFT 8
+#define PLL_CFG_POSTDIV2_MASK GENMASK(13, 11)
+#define PLL_CFG_POSTDIV2_SHIFT 11
+#define PLL_CFG_FBDIV_MASK GENMASK(25, 14)
+#define PLL_CFG_FBDIV_SHIFT 14
+#define PLL_CFG_LKDT_BIT BIT(30)
+#define PLL_CFG_LOCK_BIT BIT(31)
+#define PLL_LOCK_TIMEOUT_US 1000
+#define PLL_BYPASS_WAIT_US 500
+
+#endif

-- 
2.43.0


