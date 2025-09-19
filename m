Return-Path: <devicetree+bounces-219225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 504C0B88BA9
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7FCD3AED43
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 476752F7AB4;
	Fri, 19 Sep 2025 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yfjJbs8z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF672F5308
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275962; cv=none; b=TaAI1xcrsXUvN3FPWHKGI4JqTzFP9+rSlYzDsTMLRhFuWN5We8jjbbaH31hUtF8RwAjHFkm+EEQZNupFsikJSD+9VIIR7qgvIWDYWyBivrA4u10e1tEArEf5PeMdnNrGtuN/XZIcBP6JWvZe+sJ8NxV4up4mzr1Z2qCY6Jz5BE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275962; c=relaxed/simple;
	bh=mMraxz1KfXDhOa4Lp6riixVKju0PQI0TmWYwlUzbwRI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oBU7tbOc9eWYS91zB59W9PpQeb96QFAgAGVj/UAY5L5BW3IltadJ9Uebj7GQR0tY19VpS+OZ72Z+UHxFpWZGUkLLn3NfqiAyy/DIaNEV8tui+h2vCpuOl82C76rBPEy0JHVBSQAF2JgoQB3LYNxX0Mxa8sAhky10lVXy1lc3m3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yfjJbs8z; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-62fca01f0d9so715980a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758275958; x=1758880758; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xJg7U22MK1JiQA5LO5CM9bHHIrHca1NYKtGFQsxP4r4=;
        b=yfjJbs8zJsQGgpDtUh+/DhjEBnUciTKP4fenL/W/StDYTtrH1s01OgdQ3nIlhvowS8
         T4RWct+vVfttatWB3xNrqwyebq4K2v44o4Ta3a/Kd42FKQhI7d66eMjw0N0AtxsWRLMh
         a2Xp32jmSJMVkMlVZ+ErCkdLErJWasksYy3gM7UiBUV9f0UPAChKDJrB0NQwTUGgfTS5
         YZVYKNvgZWx+GssTNrCc1JrQgGD6A+t8j4g+yNJoRgusmhOsvsYMzE9wEYL7dxB5R/Y9
         Z4KOW8N4NW+Tt4tgpMRWu8+vvF/hYjwa/4IPmQ3eEGxAe65aCv0iOmzQVY15B3On1TdW
         ZC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275958; x=1758880758;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJg7U22MK1JiQA5LO5CM9bHHIrHca1NYKtGFQsxP4r4=;
        b=gMFJeAEQeTrCCIRjZs2aRlw/6soGrjzMEg0Jj99O2UBL2YhWaLxEII8f+7vDGltEdE
         XY6vN2yTwumLWsyzgJuKAD4lOfW0478GzSNGzSXiCuCehPnc1BZK1VtIYXoHJS0uy2K0
         cZUiAUqu4uIXGddOo1NOU+aV7L3Lm7lDLtZxRGpIF+lKybBLgLiO/p/ia+b0cS73JW2E
         bDGncVjHs53FD4G5uBMqe9W/EnAfoo7UO3GoC6yGCrNSqi6mxVD8aH0wzobvQGQDwkdA
         T+S0ZhHnZzlaBW8curv3wKhhW2ho+Dl4IAOlvkw8la8bvJerNtJCgOqtv2dNfJuyTvjB
         JXRQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5Nw51p9i+XvofLLmwKpqc12Dt8lX8LoJMKKOimG4WP9dBiAbIrXw/xSlhIY6vUZX/GleMAmoiZ081@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt8YmUFfg51GCJ01E3YMMre3LXx31xfBthyKOV4Rhz4h9BZOIj
	qhzySrBzYRf3FGLn/NbxypXYKZCpT/AQLKZeqQ0r/cg0Zo/IaLQDXrQhAj7LcJlH+/Y=
X-Gm-Gg: ASbGncuKGSY57yANIzAkITXGIeSETdt0SJjq8CRWrvO8JdR3rK3PIr5k35tRnQs/3no
	mt32Uwmd9SKyWGjQ+s9lTplixQiTQmD4Ek3tsAIgLTGOJitUn6Ws2ptcnzTvp9H7FcoxHvmgPMh
	3t3kugf7MBXGK2BuHk9q8UBLtmd3bo6Z8LkbO4miHxBB1ZY8vouTBvmXqGE0MwJNbh8tF8lBe39
	uT3325V+VFqtQ5q5ZG2AEtNv0XLZwyi+527xwZ4mVhFAu6WEBeVk8ggckZajzSjLOyMCaBfvbLG
	hJiHB6SYkhigv2jRAz+Y1eEaYN9wMdyFAPf7XqyJyMkS7JmUc8YVqpVzkz3Hbh0oXWxgPkMJJ8S
	BM415j3pqZvhXGnU32/TjkbmQeug4Fbtm1u1o9/i0Ovyl7u9ESSXyDL4+DEm7GGBW678eNA==
X-Google-Smtp-Source: AGHT+IGVYm9E/cx1SKKQgvlhctnWTkhe6Z+JABeK/WVkRlVG4Nq2CQ/rYTfusBlwv0oZAUdV2jr6XA==
X-Received: by 2002:a05:6402:23c2:b0:627:f3b4:c01a with SMTP id 4fb4d7f45d1cf-62fc0a5a09fmr2234196a12.17.1758275958517;
        Fri, 19 Sep 2025 02:59:18 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa6f03008sm2972107a12.7.2025.09.19.02.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 02:59:18 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add MDSS_CORE reset for SM6350 MDSS
Date: Fri, 19 Sep 2025 11:57:22 +0200
Message-Id: <20250919-sm6350-mdss-reset-v1-0-48dcac917c73@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAIpzWgC/x3MPQqAMAxA4atIZgNt/aNeRRyqjZrBKo2IULy7x
 fEb3ksgFJkE+iJBpJuFj5ChywLmzYWVkH02GGUaZbVF2duqUbh7EYwkdKHv3FRr43WnHOTujLT
 w8z+H8X0/9sPIj2MAAAA=
X-Change-ID: 20250919-sm6350-mdss-reset-d7ab412d170a
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758275958; l=860;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=mMraxz1KfXDhOa4Lp6riixVKju0PQI0TmWYwlUzbwRI=;
 b=nEOvSMIjb1EJx8t/h3B9Qt+6O9RQANHQ/rfdz2FT+zMFtNxpXQ4F4ptH5JHP5tdcBoV5FrGri
 a3q1vhC481vCmbBR9Tm/W2lJACJtJCfDyKcCaIy9h921kC4lQ2W+72x
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

With v6.17-rc kernel, the display stack needs reference to the
MDSS_CORE, otherwise display init becomes quite broken.

Add the resets into the dispcc driver and add a reference to the dts.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      dt-bindings: clock: dispcc-sm6350: Add MDSS_CORE & MDSS_RSCC resets
      clk: qcom: dispcc-sm6350: Add MDSS_CORE & MDSS_RSCC resets
      arm64: dts: qcom: sm6350: Add MDSS_CORE reset to mdss

 arch/arm64/boot/dts/qcom/sm6350.dtsi           | 2 ++
 drivers/clk/qcom/dispcc-sm6350.c               | 7 +++++++
 include/dt-bindings/clock/qcom,dispcc-sm6350.h | 4 ++++
 3 files changed, 13 insertions(+)
---
base-commit: f83ec76bf285bea5727f478a68b894f5543ca76e
change-id: 20250919-sm6350-mdss-reset-d7ab412d170a

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


