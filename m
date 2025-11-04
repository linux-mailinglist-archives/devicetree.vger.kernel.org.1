Return-Path: <devicetree+bounces-234794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C981C30DE7
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B4BC18C33FB
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10652ED870;
	Tue,  4 Nov 2025 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RLVBLjuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF042ECEA3
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257840; cv=none; b=DpVGhOyz4EJ1aWiR4IL10KNlultpi4k9ZesAhL0T9nxzHXMoE1oGOexQx54jOFLBYmOuOsNl2CvGxfQn2AKVZe3ROQTL+7jWTdsyUfKMWkrKQLJYS49ww+WuBzlJaYwhZK8SKDxfnO0IzQFpH1XlriBb1fdWNhmK6pRZJLpAC6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257840; c=relaxed/simple;
	bh=j0EXgrYnvVA59AWsBuPviuInGMrdX8MUdYFnXuN3nj8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=csuz2+XhTdRMvpNIuJkwhDAL1lX5RgHLdI++XOP5mxxga/QHSY4aSExpEr+gKHWJ9KQpjs4RECB/d47mH8Grteqs5OljrSQ+zV0oU7vmkWDSr+u9cTzOjqYXAOcU5KT3vkCuwqzKtcb4h5g0rjkknqoUgg50cFr0IKRSFp48Zfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RLVBLjuT; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b6d4e44c54aso714281266b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257837; x=1762862637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hQ5uBVedfr9KMSyQo0sT0JGcllMUFdDYdUnW2PHKUXc=;
        b=RLVBLjuTdkrv3mYRUgR7W8IF9vBK9wu+UToFWAx6wOYG4zZrlHU2/SmFnjrP5SOgMH
         g+lGWXMR0+nSQb9m75KuVNt0cWxKue4/493Zt/mzWwzIrIsYF53qlCNQQaQg6HljN28c
         VDA0cwsJbTiK5Iu+7aeF57yAV60CIWd/pQv0dAXVQiXasysKDyO1ihJ5aDvZIF58MFuy
         w1YoNTFXrdu8PhLi4Ge9nWhMlgQM+LgiDHFmsSgCvSc+qS5RRSJaMeY3sXbmNbs3iSJD
         m7miRS2QrUFlnXFa8gi2QkLlJfE27QUNShjLXzzlChBRslBTogSM5d6NZT7Lav95eMOi
         jjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257837; x=1762862637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hQ5uBVedfr9KMSyQo0sT0JGcllMUFdDYdUnW2PHKUXc=;
        b=pYZiXtNbcSE1TN6Rs0u/gdpjWgrNnRq6YDavReU2y5VCAf+Rhl/l2kA5HBtyq10ujk
         lyVsNlMEr611eX3DZOE4BPwNaMQS5mFhWDAMriUtfnCDagGWNNFUiBbM/EdcJkRc4s7X
         hyuXV7do05hhVtceamXWb5Qy957QYyyVgWGMLNRZizXJ/tyWWhawZH8/+Q1l9rcmjjED
         q8BPHsCwMYwpB31ysw0Roj7LMbqsU79jsRgkWu6aprKeZFKpn4sSgBqDS81S7MIB/WiH
         rpAhsza3Z1pF54CA94mI7PgZyOOQN6Mwp25GP193F9Qm87/UgcH9mPewk5KdQvPkyEp1
         fLkg==
X-Forwarded-Encrypted: i=1; AJvYcCW6vpjFRTbYgOqXDz67gVfsvPBpsNBSW2KoIElXOfQwmEVIcIlxy3jbBMXCpwODiepJQxqBN55csA5K@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu6wGjfEOm4i+tJQ19xUeTbMnVpkX3z6jw8D+lsWLkVVtjhyLH
	OoOkLhfQuRsjR30vwr68Am0f0guPbgSOOhqUF0Nd6J4a5lMw7G0vz7ra
X-Gm-Gg: ASbGncv363b9q5LUEF0CvjEkgrin+rioKE5j1pA+W5bbtB6ywlfDezVL2GStyWogGHN
	Tzd1rmXRasxKnri6VBlxsawR+jt+26BguaDTATFYppyU+HPsPNbfJ4vvJIyaDmwAobJdwuRR2rd
	DELFj40bGKQZRYdAvZd8Wo5F6nqi9F0QORNByAl7dFeTY0D2BwGY3yz8CpuvhRzsTWubeEj+s/S
	5hfsHUiMhXyDCHAgZ6abJ8u6nevVK+9b9ZedqVloh/cHIOn/Xl2cXNKVFVpRWbhOD8uwMb1M3+c
	OtgUdf6cTzqcqzSJB5tR+b5WrCIKAefSrAJpi6uI7wDim6713wgtaaZIb6kPDS+pULgKK9bAYQ5
	bKg7dABxmSTC5horoX3Jzr47xfySCKznEMF55SN9jD2STJrHBVwXCqpJSIy8JMTX8t/paDEbTeK
	wsDa9n1GL6De/9es9x5+D/+yaLpQ==
X-Google-Smtp-Source: AGHT+IHt2fE/H6FCE9dPp9U8nFD+BbuQEZr0YcTeeDYKJn0Q0W8ZsDGbQTHbvxjqtH0OMOcDf7SSqw==
X-Received: by 2002:a17:907:9484:b0:b40:da21:bf38 with SMTP id a640c23a62f3a-b70704b654cmr1611290866b.36.1762257837013;
        Tue, 04 Nov 2025 04:03:57 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:03:56 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 1/8] reset: imx8mp-audiomix: Fix bad mask values
Date: Tue,  4 Nov 2025 04:02:54 -0800
Message-ID: <20251104120301.913-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
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


