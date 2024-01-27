Return-Path: <devicetree+bounces-35728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD9483E838
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CCBE1F22606
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7533B468B;
	Sat, 27 Jan 2024 00:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F7eOMz9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F817D9
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314788; cv=none; b=GGTflO53uz7Td+07JEM6qGyF2dji0RGlUu4QMwDageT0d63T79EhKk7yHejx2sR6NUp1OWsY7F2GYNzP8MJbjuN1LjYAXLw9AhSVZZ0EqAMaySxlFODcSyZS2LCLd3uvC+ivwxYxFbSfYSmjUiH9FoZPxWaL0DHnI+Bg49tMrWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314788; c=relaxed/simple;
	bh=QCBcVoNTtEzs8YaN7v2UFqWn/6iZ4/+D+SQWJIRaEgo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QUd7p7ZqQcHUZzM4f7Ts61OwerabgEOJ8RyHzzHguMgMHFFHhdWAWwjBCJbOAuhNJc4tYZa1NnH7YSL6Q4LVoKb2RPoPtF0Ee+MkyIU86WA6KtHHrigkl4movE4zRwzWcemTv9sdrGrDFyZVGZYUpIrq9MMN1iDiWaj8L03fRrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F7eOMz9N; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a352ec00cffso18845566b.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706314783; x=1706919583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yUTiJvJqAJFqpZq0PlR/xTJQ+sgK5+j4/7Vro1qj7Vg=;
        b=F7eOMz9NEri2UlbOPGhUwpOyHWK+0PAmepVVUkLdq2R/yqFgWDMITwtrD9fSwddTy/
         doxvJWOPsQaL0ut/vuHpD3Qa5/S6Cqq+06sKqJTo59Y1p1IlwVQm5YbQhlg8XcpPkrJI
         VV/l+OEyAyF962DzVDRyq/JOXsmCRUJZNj9mFrsSGVyBAr84vcYdlEJuB1GPLtBYd0Lt
         vGzXgkh0WE/RrG7rEUUWJUvXwn3oPSpuTvX5msvC8yitHLHHNoCcEvHEY2zcjsmDWU23
         emgOvxjqISTlr9NrEaSaOfOfCYHGP/IjyJfgeh8fQSQqehaUraZRp9GPw2mDi36Ypnd8
         cdbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706314783; x=1706919583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUTiJvJqAJFqpZq0PlR/xTJQ+sgK5+j4/7Vro1qj7Vg=;
        b=ZyWuO8B3sW5jqzuUEMq90PcPyBmsG/8CeAvFqblLxv+KSjQuTnWjwyi2hFsObWwH/k
         ziipF6O1TEvChx0G37ydd5VzWV73c4kGLRHXTMXR54IuDB9bNdXg6PqZ07jN3dYvAI/Y
         TX5xMqVf2F66qkj29dbaj+TDSAs3hVTuwGDzG4JHx0voCElVOMB8pA/OLKmovNKnZ+/k
         XYBcRT6qylhfjvPYZ5QqmMfOnUj4KGIQRijTw8jzbZqdQP/Cbu3KGBXaG8ASLfW7vfI/
         ZljG9PhuIDq9Lr94gwkwhtm6In5otote7OtCqJXPpuabar/uqRWf+FDQ16pqsIV2JmIK
         xYqw==
X-Gm-Message-State: AOJu0YyDtuqctr+3G1kJBj1R/jyHUVyR4QrHpRfUCdhLqv83UKuNmrA/
	fJn56XS4SdttSbruOp86rhUOhZQny7OrYcow2zXBVCyF2S2NRqnAttJDwBgFyHk=
X-Google-Smtp-Source: AGHT+IGkm39NfF0E/k3smX/KQGkNB8Zdyio6Yz3gDcfCSJPUy7NuuFl2uvO0Un5oFOG2oyg/lgq0ag==
X-Received: by 2002:a17:906:a456:b0:a31:7ed9:973b with SMTP id cb22-20020a170906a45600b00a317ed9973bmr289912ejb.65.1706314783163;
        Fri, 26 Jan 2024 16:19:43 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906135000b00a339d705a10sm1141359ejb.80.2024.01.26.16.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:19:42 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 7/9] dt-bindings: samsung: exynos-sysreg: gs101-peric1 requires a clock
Date: Sat, 27 Jan 2024 00:19:11 +0000
Message-ID: <20240127001926.495769-8-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127001926.495769-1-andre.draszik@linaro.org>
References: <20240127001926.495769-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Otherwise it won't be accessible.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index 33d837ae4f45..c0c6ce8fc786 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -73,6 +73,7 @@ allOf:
           contains:
             enum:
               - google,gs101-peric0-sysreg
+              - google,gs101-peric1-sysreg
               - samsung,exynos850-cmgp-sysreg
               - samsung,exynos850-peri-sysreg
               - samsung,exynos850-sysreg
-- 
2.43.0.429.g432eaa2c6b-goog


