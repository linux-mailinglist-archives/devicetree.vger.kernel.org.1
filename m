Return-Path: <devicetree+bounces-36897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A195E843160
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 00:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 581631F24FF3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 23:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B5279949;
	Tue, 30 Jan 2024 23:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tMZlGmcD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA4F79953
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706657856; cv=none; b=d3/M5iaiO7HLHwGQTEqdKi86eEDL1tMRWGoUvp/JwSEvW4W0e2Li73uNyu2aGR1dIgWxJ+GGhizRDarPGL8UgAPin4TmjaLmGUOlsiCGB0ZrEOOhXWZ3bEnaHgVqpX5c7FJMWhrmWMi+6quLAtyL+M6ywBkSXW28OU+KtRHqWZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706657856; c=relaxed/simple;
	bh=1s19bgggjYqjahoc37BYPQjaNkY0EJv/JXA/THdndYc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ux1sw4/vTPyP1Rdwh70guGlbE9P7lpGlyTN1tyKdAhTQBgsx1pxVAXikUeSaLRLpmlPjWvzFSzdgCkBiTr8fm0iB8Exv2DoRdzx9wiUUkoBU5BLV2IalVEcKiDun/mXhjwifdDV9K25Ueg6q1YvhZK8EYnrG0gMPV8IMlry6YTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tMZlGmcD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a349ed467d9so544054066b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 15:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706657853; x=1707262653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gsxL/I99xpEvCIDVwY097FiG8G++5DelyKefubwrp9s=;
        b=tMZlGmcDEvVipqDGLA8Baj+4Fx+MHVV7OYXcTinPrBr/k0MX9ZWMwPRQOwehx67pn/
         jHA2pv7mcXWWYc31xN309oWRKS1wcpYRR24OpFmzyVWM0PqXGb3FVxoXLaPX8dU7uGzR
         vyElFZCUZLo+odsJ7sSjvPFMDb3sBYVt4UuVwm21VrE1EToXIXXQeBmGI9OtfHMhYAPr
         5/8v0cBhNhKxqsm6hXjkwvfCjaDI2opyBdpk88EkmjS9Ug61BlriY79RBsnOOA6JOg79
         Qw3RWNfPla1+PvTA4cxrvY1gJqMc91fqYkdEWomKNEjAa1OTbtO47zHQB23dn+EwBOAb
         8eWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706657853; x=1707262653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gsxL/I99xpEvCIDVwY097FiG8G++5DelyKefubwrp9s=;
        b=i+Xq4xsp+9T3bw+Iqla7S2sfk6TMRzZ6mnKJW97yl0wHqKtzlgw5UxN/x7uAiFDX8d
         0ziOfzRe9BNbTv3mAi/SHYzQwQjuJfAa2Y6XCGi+kKNQjGcX0UBFocCiWBgijqKFOtk7
         WddvCfKC+i4H2IvuF48mhP0jWEVL4UjfkOpCS6pPjtBQuqezUybLc9xcmrpksd05MSKC
         T+4+UGliM8T0XHxniynNiUO6YXQ9bWHhB+YnFPG5DXacdC0RA1oXIgriPHh+hr7Qrgsa
         Gr46iyAB1UwwpoCKbacLBrtZTXAyU9IqBdozFUtgXrcnWLdyS7TNp52pNtEvjCZuXZX9
         cGXw==
X-Gm-Message-State: AOJu0Yx934LspdxrcP/kpTpGoCzOzJnJCgjTAWpGbAGNifzNJ/Aw71Kn
	q6rogdIP0vJVfVTQx67PKXbVNAE1ZcBOBsl9sXZIojwENeXt4zL3NhAHx95q2RU=
X-Google-Smtp-Source: AGHT+IExlGe+3KAgx9wd47PjYqPJmrXUI3Bi+ipxi1Or9XP82qWolc5r13mu2jTYPFQBAHAN37+EiA==
X-Received: by 2002:a17:907:10db:b0:a31:8a51:67df with SMTP id rv27-20020a17090710db00b00a318a5167dfmr7027211ejb.9.1706657852290;
        Tue, 30 Jan 2024 15:37:32 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a3600d7c2fbsm1676507ejc.176.2024.01.30.15.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 15:37:31 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH] arm64: dts: exynos: gs101: add stable i2c aliases for gs101-oriole
Date: Tue, 30 Jan 2024 23:37:00 +0000
Message-ID: <20240130233700.2287442-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now that we have more than i2c interface, add aliases to ensure
deterministic bus number assignment.

So as to keep compatibility with existing Pixel userspace builds, use
the same bus numbers for hsi2c_8 and hsi2c_12 as the downstream
drivers with the intention to eventually add all the earlier busses as
well.

Suggested-by: Will McVicker <willmcvicker@google.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Note, this patch should only be applied after series
"[PATCH v3 0/7] gs101 oriole: peripheral block 1 (peric1) and i2c12 support"
https://lore.kernel.org/all/20240129174703.1175426-1-andre.draszik@linaro.org/
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6ccade2c8cb4..23314ed78c96 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -18,6 +18,8 @@ / {
 	compatible = "google,gs101-oriole", "google,gs101";
 
 	aliases {
+		i2c7 = &hsi2c_8;
+		i2c8 = &hsi2c_12;
 		serial0 = &serial_0;
 	};
 
-- 
2.43.0.429.g432eaa2c6b-goog


