Return-Path: <devicetree+bounces-239907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E776EC6A849
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 17:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8A77D35F6B2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A353730C2;
	Tue, 18 Nov 2025 16:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nRGm5YFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9636CE18
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 16:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481787; cv=none; b=j3RkMJ0EVaZfQka0dtMNp6ze/B6bDPoFc4Vs72h8YwAPpP6IpPAw7TYUBEAw+WQn0KOGswKKcuK9TgO3oNGd6PtlBAB9gPNwDK6149bPTcQzCxPUMjQF0Ds05oaGZMmv3EA9PCp7LxQUUsvzOFyxNuCNPBYZofzpILbkGvDFCxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481787; c=relaxed/simple;
	bh=8CNzFpWGHJiJ/kMik9XkodfqnXW6wo433Z1B1kwxkag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kl0cgjsydXLrt4XdVLfwRUFgB10B+9vg1yBldzoyQCGylvaWwkYhiL+UoYlKnhIKXwp9xPckuZPzGFs8K3zqioqqCfAAkBg+SznVxgtCT3gqHOmWDKjA5s3OYw2fmofNHJYtjPb2kqnrHTXdq7uJtTetppfk7CTwO15D3YTqfY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nRGm5YFY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775638d819so32991385e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763481783; x=1764086583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tA1YZwkpqBYNCNgFaNMq2uv3rKscqjzMZ5GFDmRce68=;
        b=nRGm5YFYvRAeiTY9VKkN75pX3nUuSratpLyUvdD+nAQqKQdGLv/K6ViaEDb6xIMAGs
         RQlqwRuyCTpztHvSpgtS9RtnLECP/sU1HeB/cHXPEm1EgMzZaiGVl8dUld+hhw6ePhiZ
         yZ922aTehucxcElz9HsCukBTAUtyYhmOhlnzM/v6PrPlU6mK0tyAfDeYgOLZq8N53in7
         sssnaaXzrBWkg8K7N5+9AxfH/LlG80aRCZk3ZaZT9zM17YwT/zSXS2egORSnaizZniRJ
         LAI9/CWRm22EtcACjSJmEwi0bji43TuCnCh/TRPnTiLc8gL94qhIRXg4Dwl+3EpKpiHI
         WzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763481783; x=1764086583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tA1YZwkpqBYNCNgFaNMq2uv3rKscqjzMZ5GFDmRce68=;
        b=ApB/63rh/R1E4qOAkiQM4TFgjeGjoSLtauvKGh9YNOtgiO5uxm91lPp4jGBXHkGPkz
         Ka7CtedqlXwQ8CB0gIzsD2QpjkptyQp2aryXK87k1b1pAgqObm+36ZRQF+SHxnVedzbI
         UQDI4cs9GPAZ8bp5rdJHQ/WSPyMuBJmxKsRvSptyOzm5camqf2MsKF3zi1wZYcQcSygH
         TbKmsrUsoROWwGVEw7eHQMGNsgdRNdgWw4WL4I5gkzc0iTz5+IkIFBn/owbsV00qVN4C
         7dCIVYtREy6mIPaRVouN50zRrsdjrr1eFj1RFavUWlEFEofmK4GuyS/b2IhgpHrzib9y
         3wDQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2mGaCI/RPpkgV7KOcrjKPHPT8LnGeI/WyBWSJEwJRA08Aivh8enbgp7y3eTeaoLY5/K5TRuzVaZOJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxkAz00bUYdV0iB+iErP4X5JOXii4sD1Bm7BbRfR4SRRZLWZW7M
	Huzqv+79QDGTIdEOaza5+HEXpGCitmgPMP8aBPLi+7BuwFwxvzKQYgqhaQ8LhT7SkCc=
X-Gm-Gg: ASbGncsp5Z1WJoUqtcJixGgOm22kIzt+bbyMMNb//kjuUysrtvDHK8j/N8WpqF10nKB
	0aENjNc+piotpPAd/jvV/3J0OLRZHyF9I1wbf+yMf+bCW85m7sBTuaC2fU8CWcQwXoUPye8q+Tm
	zZ/cVgtNeX0UM2sn3BpD5cgSJxz6TyXfMi/H0fX/jwHyr04GYXdgteGd753eMUonyKebRHyFpCJ
	bG4LDPANOvz8O1i5+HENnOpttcrW6J4550FWMo7v1mNBET6TcXUaQHEzwrHAQpE2VPn085JC5g7
	9bQxM7W7CROR4f9IXrxFwJAODYCZBBWizmM/zpjsMQMwM/xniwB0X1LXsES163ZeqACNZ8Azqwc
	VooO1QFjjVYvweKCFRKxeqYl8CsNXWChTkwWobC0MwYCwqfnSTTpasWT8mmU990zvC7OUWymJx/
	Fql6kAN3KEbqMjOXLtsDI=
X-Google-Smtp-Source: AGHT+IHP42lpaoxGDvnSTeMKhUhW83P2qJNjoVXFLokLHe+fGU/P+jnllwRuJQY+oQ4sFZakhTOjHg==
X-Received: by 2002:a05:600c:4714:b0:471:d2f:7987 with SMTP id 5b1f17b1804b1-4778fea8d93mr142436175e9.26.1763481783366;
        Tue, 18 Nov 2025 08:03:03 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:76db:cf5c:2806:ec0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779fc42f25sm171954575e9.6.2025.11.18.08.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 08:03:00 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 4/4 v5] MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver
Date: Tue, 18 Nov 2025 17:02:38 +0100
Message-ID: <20251118160238.26265-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118160238.26265-1-vincent.guittot@linaro.org>
References: <20251118160238.26265-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new entry for S32G PCIe driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e64b94e6b5a9..bec5d5792a5f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3137,6 +3137,15 @@ F:	arch/arm64/boot/dts/freescale/s32g*.dts*
 F:	drivers/pinctrl/nxp/
 F:	drivers/rtc/rtc-s32g.c
 
+ARM/NXP S32G PCIE CONTROLLER DRIVER
+M:	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	imx@lists.linux.dev
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
+F:	drivers/pci/controller/dwc/pcie-nxp-s32g*
+
 ARM/NXP S32G/S32R DWMAC ETHERNET DRIVER
 M:	Jan Petrous <jan.petrous@oss.nxp.com>
 R:	s32@nxp.com
-- 
2.43.0


