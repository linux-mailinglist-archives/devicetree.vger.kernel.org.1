Return-Path: <devicetree+bounces-255075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A3CD1F5FB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E8B1530731EF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889AD396B66;
	Wed, 14 Jan 2026 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nuL92y/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71B72EB5A1
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400243; cv=none; b=X5ag6FZQKbYWGDGJ68zqYfL3zEjUwhNu1Ov8V2A0qS6rig3STWnXLjeX37pIcdVSpp12vpsFEmRRApRzGAnheRYLH/UuMdMxIt+8C6a2NQHSRShQYk0fXPX13tB/yMjs3O+dz1Kl3vCo/ojT/M7oAzzNCmNdoEFeu5dbj87DGpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400243; c=relaxed/simple;
	bh=7HVJFrG3U/QwDFKx95QyYbsMuRfAm1hbMd+GcbM229I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Oe47NXaOGKCFsjLLNKA7RE3d8+aW2R/teD3vwJ5vF8XewT/o2SDTSpFB7jpbQZAY7PON2yZY9Ifo523PPrXd7xlXOym/i6a4rZh9k70QcIPkCmP71G2m0LGyyWwVnlksKPgqb8+vsbCvkSBdSCdX5XIMAd4yrOlCtDFYwllDrW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nuL92y/R; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so65165715e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400237; x=1769005037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDx8GJwGFtxKfvZU7MLXX1ujE0p+LvEQKHj4ysnyPoQ=;
        b=nuL92y/RyO0fqNxiOicmIEW1aX2Ns+jU4To/iVBRCBti4aD5l56mJZP8oDf4GYNr68
         PYeB3ZK/O6vNLTZ6YVFOMp3S8PzM0B/PCriopBKjDTo9xt2A7re13AS7hCsAH/w2ThcT
         BhK2EBNhEPe3IAwphi4IIbPPKDenXe7F0FvRP+jJxJAn8jxm8ZFChexF3lymH+eId8/e
         t2MbR1pHa/RpmX/wY2l1P8H19Lhwcfb//cyMKrV7WulCvE7+BZmE8oltIVU34q/tGz5h
         aNoz+bujWlIcABYuIDjf1qI3mDXcrb5wtYjNQTqCR9btD3oaRPNqnCVwczw2R54boV+n
         LYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400237; x=1769005037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uDx8GJwGFtxKfvZU7MLXX1ujE0p+LvEQKHj4ysnyPoQ=;
        b=Jq/0eTqvdogGycu9Tyahd0sc4lOUyXR2RaNlaqICBNrDnRUMvFxNSy4VpTUxs87Zg1
         FGWK4dlppnOKp/bOo9PKQgwFNdtCKxs9KzTS/8mQgvb4cvA+3SC/bpUtFBf9vUZ5jdkT
         QK2lWo66BGbBHMphJKtciG8TSDUnHX97jtsZsmJXEZRq/mLIneKf08BJ2BhO/YIrXocZ
         t78ls1VcowL91TDEWjsTuP7RrEersWfjJ13poSLwMIkRN+E9ypRHdf1bRTUN3jFBAl6Y
         9PCJwuBfzxJz84QIwU80z74/synHd8NjtzMcms0np+qDMqdR4NxbtBE1eQBU3EZ0QIQh
         GIUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5pmcbPAp76JqAb7jdgZFJSlADshTeSlqCExkRF2mv/anEHyCqDf5xjlzdj0mCqriwLKB+mCDWr2zn@vger.kernel.org
X-Gm-Message-State: AOJu0YwxWCg4UqqvsEIsJ97JWWVkBgBN41TlwMcyaTYnatoksiexUtrC
	qFS/LPU0trjyiGp/iWAOPUzvc3xMsyujfUEjuDNnrRpg9bnA0d2X7TZ/RmEFQkNgzBg=
X-Gm-Gg: AY/fxX5gENuIbhymUTaK4YR3mCYJKJY4DICGiRRcLUlbiGwhVD9df6rG5rwkdWCfGsk
	Scys0j0ZP7wpGqL2qVs818Ut0F+lVZhLUQvubh164VTRgHpZnVoObEwPbHXbH74rqaGhrTZ/LK7
	bKp6Sth48EfZItaSYjC62myWRanN+MIUsidA0q9m0vc9YpGZnPT220UoVY6gSRmcg218WfBQdGI
	u/3VHwP5vKPEi+ehedaqiYzqWBSV3/kiq8jNj4XdR+0N5emKqqghh32Nk7/NPBVqmvs/Cj6G431
	s2sVUsrgl57/VURQ5Q3zNI19eNGMvPM/gWq+XuoNigVaqyCE8sCLGDvFmVg8nBhC0JJ0wJXosJO
	jZNw0ggHPcu1rJ3dKcCvo4TDTzELzf3rBlr7b3zzmx4NIGjPNWT+s3pi6e5fCZRfqJgNyG0yP8A
	ObAmHCoXg0bTuBtLHlwsneb55r1E6Uv23m+NELir3ihx9CcrkKhAkKGI7iqrHA3wNJFhpAvTJ+s
	m4MJAHs
X-Received: by 2002:a05:600c:4e4d:b0:46e:32dd:1b1a with SMTP id 5b1f17b1804b1-47ee331937emr30654025e9.7.1768400237015;
        Wed, 14 Jan 2026 06:17:17 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57a2613sm29595445e9.6.2026.01.14.06.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:17:16 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 14 Jan 2026 14:16:34 +0000
Subject: [PATCH 6/8] MAINTAINERS: Add entry for Samsung Exynos ACPM thermal
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-acpm-tmu-v1-6-cfe56d93e90f@linaro.org>
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768400224; l=971;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=7HVJFrG3U/QwDFKx95QyYbsMuRfAm1hbMd+GcbM229I=;
 b=pUkUka+ewej0krIsviJjojhdqN6KPY64IUp5KIuBVVECn9qSsLgLN4eTbUtjxiRCJF+4NmjV0
 aVbDoNVDAOlDzQjkDBwgjyH42sK2PdrvjnCTG1nPFaq9xixN3Ygv0sh
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add a MAINTAINERS entry for the Samsung Exynos ACPM thermal driver.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9de1e9e43f63787578edd8c429ca39..ab44f2de8e8e03ad9bb022ebdf1b6c0058fb0425 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23171,6 +23171,14 @@ F:	drivers/clk/samsung/clk-acpm.c
 F:	drivers/firmware/samsung/exynos-acpm*
 F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
 
+SAMSUNG EXYNOS ACPM THERMAL DRIVER
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/thermal/google,gs101-tmu-top.yaml
+F:	drivers/thermal/samsung/acpm-tmu.c
+
 SAMSUNG EXYNOS MAILBOX DRIVER
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.52.0.457.g6b5491de43-goog


