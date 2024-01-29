Return-Path: <devicetree+bounces-36425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BA484112F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB900B22E8E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838B73F9D2;
	Mon, 29 Jan 2024 17:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JF2ZLV0Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924F03F9D8
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550433; cv=none; b=LP7z4T5Eltq005VfOgfPuPC/Kg4UG/G8gmv1vN/wVjpFRcdW9WyC3/+QZ2aPizLVDRo9npeg4CgeVbkH10y2o/qmIq6LOQfwAstVtUmJfgefPCtwL9O4jyTXVJaHkUG1T94IuXoSZFmNUV009ctQ/v1VOUQhpQiKurWuRLy4J+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550433; c=relaxed/simple;
	bh=xffvWscwsryWPZUnv3J069qVlFXq5qF99LAT9T/TrVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N0H41IIk3geTyBFztMyhD9YY/oybqCaV0eQAJ1M/ys4druB87BRbREsBrHGarotuZe5NRr2OUzQ8TwJl2pc9E6c3kreZLoAlfBSnuiGMmBo/dy7M6xD4OGN6BYtJXC6QC47ul2XTDMCRHGuZF015YCT/I5TaFwMvxuPUzE5Vl4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JF2ZLV0Z; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55eedf5a284so1837106a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550429; x=1707155229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0kAVqndB1QNBLooyOSmD2a3LgyHBf46YOYgAJIGaSqg=;
        b=JF2ZLV0ZYmPDvlw+MJ9CPJDgXlF8puaomV6eQSHUktkNIPFu3l01VuabR7pXEM/wSE
         qRtSdLz5Tj6mV5GRVqTLjMMPkRlJXxdD3TeoFG4a/XIihHyUDu5qiiNdmX9pjkNSBTW7
         /fyi8n6gLibsH68T8yOTO2MukPKm+r3FafSRlWQU8Sw7eDYVBmJXtyj2Niz3BQbiU+AN
         KG13faZWijDHbgTnE/Ns+Rl83WWEoV+6eJ+wjd/j4XEZ+Ya9pQDD33AYiNqrvPmtNapE
         T3siDn3csOW/cvyYtBGnf3t8nL7XNkt+yqUKbrMXLxAohSYzrcPG1zEwi5F2SpkXKBx6
         F/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550429; x=1707155229;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kAVqndB1QNBLooyOSmD2a3LgyHBf46YOYgAJIGaSqg=;
        b=TkRz0yNuNOr6wyq1u9FiF7HXFOMzvZ2X1jxtvJAS+p0SxVXwc/52FjRaL4NeWH5TKm
         Rlra2NFopMvBRiBEG7TdnR7oQNh+LTD4hd3fcxlSgEYAqr0DsrP1uklkcOH+HjCpfxzg
         DnirfZaA20+G5duyBi+jcEvcPvlAysAsycu4TwhPDmxxESYODObFebzVbbgmkwmntNzg
         1g1mpGyUqlENUm1NjJ3uL3Xaq7dVQiDWxHoDIREpeEA5Jt2UrLgEtRdhByBiedkna5Yu
         f8veO70N69RvLXUhRp/ZgPUEMQlh9+I2mLmPky3NaL2tQtRz07nP2VtY64XqQowWctMI
         uymw==
X-Gm-Message-State: AOJu0YxW+KqdhVcTwEcB+hgTjExQ/OwH8es1OtzxrZz2p3f9yrsvBT6l
	vt9doU1S/OKGCSPmvXDDcbGTPe6JGGePOWAsECiu4SZ1pTLse4+fDJcuXQ8MjRM=
X-Google-Smtp-Source: AGHT+IFdrhVzCckAZ/eOzLceQsFJve3HzyDts+Rz91mk2AjOqMIHbaavgR68B+H3P03zlMB/mVaGrw==
X-Received: by 2002:aa7:d803:0:b0:55e:f61d:cbaf with SMTP id v3-20020aa7d803000000b0055ef61dcbafmr2535318edq.6.1706550428828;
        Mon, 29 Jan 2024 09:47:08 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id u10-20020a05640207ca00b0055f08fa9286sm1000999edy.23.2024.01.29.09.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:47:08 -0800 (PST)
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
Subject: [PATCH v3 4/7] dt-bindings: samsung: exynos-sysreg: gs101-peric1 requires a clock
Date: Mon, 29 Jan 2024 17:46:03 +0000
Message-ID: <20240129174703.1175426-5-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240129174703.1175426-1-andre.draszik@linaro.org>
References: <20240129174703.1175426-1-andre.draszik@linaro.org>
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
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

---
v2: collect Reviewed-by: tags
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


