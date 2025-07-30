Return-Path: <devicetree+bounces-200882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A85B16730
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D335623F18
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD4C21FF3C;
	Wed, 30 Jul 2025 19:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nPvLd6zi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB5422330F
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905195; cv=none; b=D/R/I8o/FU5IHzsaM1ApJQOZ8iERX0bKdKbqXBxQt17uBp9ZJJ8jc8vmU4w8TRk7eVHj51kexhmxGKW3/CS/CPAsM9dhqgOS9gsrtonalxXHlcKW1NPEzOp7pgyon3Zj8fLugpYFxim3jleSPgIXCL71RQjKUSldXvpS+jV2REA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905195; c=relaxed/simple;
	bh=Q6gqUDKWSByswweoa4MByrpih4dPJFAYYxh1yHsXWcE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kbjQndKJ1Qj3hztU8rhS0udMfFz0cya7gS2iMFaABEutJO9jJMO2r9LBORTQykoyloVUjdlNg1l7hmlCtXw7Z5j4F5hgr3H6VQm/1opeg5xiSUs3eUBb74WTezmLOvy7gnIiu+obBwahwUGrg0C0+xAJzSJogkyNQucTxVJc2rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nPvLd6zi; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3b77673fd78so115662f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905192; x=1754509992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UbYDXw5XC5hpPAAcjH/Cyq+ROm5RlEeQDd+B8eN0DU=;
        b=nPvLd6ziIV0sxVJhB56hAS1DB+nKcr4cyfimvIsjBYdr08of5PubbQFxBkAYAKe0vS
         mcxGWqERZCuBqJanaMDh7Yng1VPXDEps3JWYvGaXrPaguhh/EqlSFEhlXBdzbfQLbc+B
         RCIFoU40SA/spTi2jfCSA1OfeOkJ1HIE+DzbuGVi12u4737turqoZ6V9xsFQtVRT6WdG
         q//CjGGNbZZMfj2kQFP+h8TwA/wECzzWd4uE+47zdNJ61vna3RoM2Db0rZ2l1hnl74QA
         0DjkAk+D3v1Y8xuPjPj3MJ4YQOhu3hu002Pm9tE2v/WA8zIcWqNCj6gS4yyhC0v1Iq4s
         oWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905192; x=1754509992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+UbYDXw5XC5hpPAAcjH/Cyq+ROm5RlEeQDd+B8eN0DU=;
        b=J1mL+6Z86B4HlfgS7Quzdxf3W52DxNWMgxiRQIIXWKmNZKV76EhaBSk0d78JW5XAAN
         Pqv/03MO8vFpGiLRwj9xkAqg5rpPbunhs6USLVe8TFetJ9e4ET9zb7FAXayWrValIQmi
         XMbWvToAYSJu8abLpioX7ceeBil1daQ/mq3/uaM19nqiT1lVjT/8SvuSE17CwdSvihw9
         ESsfGdMaod4XdRdrcJmZ5ul0HgZHz54zWv721n51XsTMczbL0txEVD6lGUpvKE0kHu5Q
         ccx01E0c+g7aGQ+IDG52VPOnTSBKrtqIkWNsx3/nTC0oSxozAJPMKTZr3BL7AhaP2pRQ
         P/mw==
X-Forwarded-Encrypted: i=1; AJvYcCUlovmbbnrcs7TKkrZLYdWQ8fjZBUmrqxvgX4W9Aru+dX5Vhviwqsair5JpmtdN9h9Owx+XZU4bSxaR@vger.kernel.org
X-Gm-Message-State: AOJu0YwhaniLR8Sz2upsZ6AxiCHJ+U96lXGdklkcwvpAL6HKdAE0hHmB
	BpLTMARRIBZ+kpl0zNpG+wU6iUzFBKov510nBMlwuw9nVUw0pRsK5x0KtaYmWxzxw6Q=
X-Gm-Gg: ASbGncvbED+S9Z2JNPeouAuNFB9BmoqaT7Yky4MwFBr3s6qY36Vrq4LYO4eI4nzbMlP
	KuRGGal9ZXy588pdPQaQjDursRqHllO/K8BOZl6qSSOUTRWQgT+I1YuS2XdSITUa+aNTM+cZ1pt
	jJRLoWZu2/VprS/8+0s2CptWGCUkDbUQYIrDRm9MPe6y9hANBWU9zK75ydENsfU8ewdc6f49NpY
	uUlXYfk7zR+rbEsEPHRCqJv8HmSFk9akUKIEdu4xbDVAJiIpWW8Gkn0aC4u5Jf820pTwXb8UT+5
	sPCCE4uenz3BSJ/wErasxvp1CNKFEZf96PqJq6JE5FB1aaMSI5wfVbQl+vwEmsb2XWdBIXghcSo
	cMrvbg6ptOoNkVDM+itGTQ4fK+iKpXtWt6KRgCjeLunRQQMbZ
X-Google-Smtp-Source: AGHT+IE2LPTXnX8h2UuSalEhXHbjsRWmwclLkvmu+DxN2Fzf9KDzutosLelRCaCEJoECy/CePHIhyw==
X-Received: by 2002:a05:6000:2212:b0:3b7:944d:e5e6 with SMTP id ffacd0b85a97d-3b794ff1593mr3557546f8f.36.1753905191682;
        Wed, 30 Jul 2025 12:53:11 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:11 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH 8/8] arm64: dts: s32g399a-rdb3: Enable the SWT watchdog
Date: Wed, 30 Jul 2025 21:50:21 +0200
Message-ID: <20250730195022.449894-9-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SWT0 is directly connected to the reset line and only one instance
is useful for its purpose. Let's enable it on the s32g399a-rdb3.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
index 467e0c105c3f..e94f70ad82d9 100644
--- a/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
+++ b/arch/arm64/boot/dts/freescale/s32g399a-rdb3.dts
@@ -72,6 +72,10 @@ &stm8 {
 	status = "okay";
 };
 
+&swt0 {
+	status = "okay";
+};
+
 &i2c4 {
 	current-sensor@40 {
 		compatible = "ti,ina231";
-- 
2.43.0


