Return-Path: <devicetree+bounces-232744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1330CC1B115
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B2DB734AC3D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA54928B4FA;
	Wed, 29 Oct 2025 13:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kjrUJgpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3B826B761
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746164; cv=none; b=KSmxX1r4b6hB1FADGrY5EWcfrb/EZKN4inxi5mXxgf8c7RjVR1Sr59WWni0RbYv/lJBcEqto4yDLRAOUI3w9TEMPKUHM8WcPKfAdbBlkXHPSjG/dzZgbHUXuGlhLOX4PI6YsPP/BYgwCZ5dM2YWCA0NbcvGkThyOsN9oAl0Fm5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746164; c=relaxed/simple;
	bh=j0EXgrYnvVA59AWsBuPviuInGMrdX8MUdYFnXuN3nj8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnvwHvFI/iis75FD6vfwfWSLqYz4upw/uL0ECsVpHfHPI9jmZ5brc+725RhD3ppCzlyEbZLJP+UOuOtvlP4ivG5VF7wHJPHQXINxiWh7IL+EVc64hE3KoU0H6ms64XdlMz622bAy6qDYhCMM3wCVzt9dMftpec3fZwh+Gu22BoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kjrUJgpt; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b704db3686cso56063266b.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761746161; x=1762350961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hQ5uBVedfr9KMSyQo0sT0JGcllMUFdDYdUnW2PHKUXc=;
        b=kjrUJgptY7kUXvzbzgSuOIk3nRcChEkdH9EfIq2si4HVohLV9EHM2pgC46i53SAvHy
         OwZNgmnU1SoGylK5ZhcnUj92AVbTtOdThtWwEsrxAxwMwhudrBxYCZ+zARILVq02e3K+
         NNbbsKOm7GgHTAz9gGyQ3Yjo6IbuSbg5BPqmzOlaUqRjJDhxJKEVIytlly8S3WW/fAvs
         H4aIkky0fsvLtBgu92tUcxI0aw063Ns8kqv3u43eZ9phlonJ7SYdpPhMRhjA9KUSyoeh
         C0HhmFqLnYdmBZL5V+yTLA9QohOxM4jds0Jubwoe+nVLi4Hz0T16zh/L9lSkBVGHJPRc
         M3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761746161; x=1762350961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hQ5uBVedfr9KMSyQo0sT0JGcllMUFdDYdUnW2PHKUXc=;
        b=Ogg3VRlqSMAIq9aN27lLIf62Wl6Bv3IFUMsAhYlog/KKA3s/McZj2qXUJxT50UIT9o
         9jrpPUi9tT7cb/LGH8JwbkfoHa02XdV/BG0ooesj0XwCzZ02R7LxrycFPUd29U4wqTJN
         dC73waK792tHJox62B8rFmcZKFwHCc43HAQdlzkF8uMSuhUp5bS2W4dLjiavcZec3iO5
         Dtc4qfTDmuJTAmJuzvQ6gFBG6C2Ac5iIBo25ptI7LFLvtQmSiRxIFxjBvt8BBHsRry8h
         VPy29xvuOwk6TlNNb6lXvib7HMFc+73Vi0cUY+DlUdbMLhS2v9yjbFFRQhslJk/khLKo
         ujjA==
X-Forwarded-Encrypted: i=1; AJvYcCUyH035oqRtzdTzjj6idw4Z42V8fLq+1cRu6aM2jBKBuDQ5MwZF6mOd0fgu14pF3A1B46bTQFnGTUzK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1kNYpysSzG/YlC0NCJZ+Pknvjk1t6aXA4a2Hf/4Us+WJYhRdU
	pgjbC6h0DocOxmqvfy4DPMKl4hRSrZZCnqHXVROURLmCOxiHWlB5OjY+
X-Gm-Gg: ASbGncvvt7ocJFFZDhPgNCkglDr5b2zLZ1tGm+SNuoDCQTsUU2XMYllcerEd1ieTKPH
	1uCXdsDlDqvBNzIaXtUPAHnD57GTZozRbIixKfFqm//7ogZSXJQPhvd/mrSBlelUpsiOczxmTyP
	xK+Wn+PSfoRW3bO1Koe1UxFDzILsYVNOnFemE7HR7bS6+7xFTMBVU8b8TFk1986qNHTpJ5EJ/En
	Ky9Hykmr4/ls9bvzlELBddd/BquToEaDyBOXwk8rYVW4lesOt5X9VRYIxfXJ7qRuM1sckzTT7B1
	f0IEZd6X8hUvGuX/7qDYZ+pFjGgBmQQzsPPFbZU7HzJBT/2Aufrq3nlHMaHul+seBgfje4eBtbw
	bjKrbcnkw0eN8O61EiPqlGE3xEVOEWIBVdvdtMIqvtefzemS7s5oiWnpVP82m/vmCQxLTm+jN0n
	zXFxrcndVSRHAsT8PxCKxWhPBL4QWPng==
X-Google-Smtp-Source: AGHT+IHrghZaQi+o1U9HBM80X1LpTX8WL6sxC8J/8ai0EXsL/1XFPVew5l5qwKEGLRSKZrM0eDMeIw==
X-Received: by 2002:a17:907:96ab:b0:b6d:c44a:b698 with SMTP id a640c23a62f3a-b703d4aeeecmr296884866b.40.1761746161026;
        Wed, 29 Oct 2025 06:56:01 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8534d99dsm1444960766b.21.2025.10.29.06.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:56:00 -0700 (PDT)
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
Subject: [PATCH v3 1/8] reset: imx8mp-audiomix: Fix bad mask values
Date: Wed, 29 Oct 2025 06:52:22 -0700
Message-ID: <20251029135229.890-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
References: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

As per the i.MX8MP TRM, section 14.2 "AUDIO_BLK_CTRL", table 14.2.3.1.1
"memory map", the definition of the EARC control register shows that the
EARC controller software reset is controlled via bit 0, while the EARC PHY
software reset is controlled via bit 1.

This means that the current definitions of IMX8MP_AUDIOMIX_EARC_RESET_MASK
and IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK are wrong since their values would
imply that the EARC controller software reset is controlled via bit 1 and
the EARC PHY software reset is controlled via bit 2. Fix them.

Fixes: a83bc87cd30a ("reset: imx8mp-audiomix: Prepare the code for more reset bits")
Cc: stable@vger.kernel.org
Reviewed-by: Shengjiu Wang <shengjiu.wang@gmail.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index 6b357adfe646..eceb37ff5dc5 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -14,8 +14,8 @@
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
-#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(1)
-#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(2)
+#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
+#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
 
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
-- 
2.43.0


