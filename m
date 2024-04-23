Return-Path: <devicetree+bounces-62034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D16A28AF84F
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:50:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81AB71F25DBD
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329E1143C67;
	Tue, 23 Apr 2024 20:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lj/CgTBX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98A5143883
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713905419; cv=none; b=IZb3T74VQlyfCMSb2pfEKDRo5d9fslIObQAPQS5+LkpwZKsPwvj5T/rAFLqFXuqfqHGDl0FnGXPsOAAxNDh0rr5tA8JsYb5cbHOXNhx2tXv05MFkP6nXuDH84d7ayXZvF3GEb55CXzXzvCjJi1oCmsWPpelhFKFW+A+frtoAkO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713905419; c=relaxed/simple;
	bh=WARBLKc8IIwkOZR1KT6Pc8Nf7x5S3Qw6DwX2PgELUbs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XV/LQsihYCJfIqwPUctiwLLSrv1yWhAFzY+kWFJq71qM1xWFvayAhTwzZtiijC2onVa6fYWXw3SIfljT3o9E+8aHqdfyjf/00VWArxHgrxOmqc+5vI0HxBFBxLCjbOIuvOBvn0BuEzOaeAFqShxNUZKx8BMsZY7kbvMAl4rXN4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lj/CgTBX; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41aa45251eeso13710355e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905415; x=1714510215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=lj/CgTBXWD5CQMfW4dzCG4gJ6scB6ECUYUscs8fay/vFE0fR3JZRJ5l07Ai4gxO5/q
         wyzHUTJ1lpwBRc5niZ7M/66a1t+GE73GuSp+DCLRSNRSF4ykHIdYqUq6Y0E/S7wMDM8b
         LUxXhfF5+YlO7zQzsc/Sjihh70NDrq079eS3WYyR22lMfAKJ8TDMbw6qg8oRvuUc7h0k
         HIeZWcoUYnTyGOQ0pCFSjTBEJqnGH2w63T8V153+dNTFuGgF4bO6QEVn6/ARlkcZ2ch7
         ZI99JVXs5akUTQPO2jiiILFm7qV1Zpeyj5O0eglSfZTRZZzFV/tKA0bqtOgHfj0fSLRI
         7qPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905415; x=1714510215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=gSb098N/Y3J7QVR5ZTmiATIFH0C76EXo1BtyZ+uFIq3n9LtwCReTxqRJr/bwZXtu83
         NlG9GqaJmoX+BCF3V96zX1K8f4o5wHWWwx5YciHcklMJ2U6LuVlcc+rPf9fF5wfqa7j+
         X9Kg6Pjpkz90Om45ikaJaDN5G9UAu+V2RuLTS46lrUZIuoF54nkWJI8KXD90l449q/is
         ex9Cx9+e3sdT73TG3+feHP8I9VVo1k3opSabmpk3wioqeGw0x5RqhkNbvlPKHy9Bps1H
         8KuqQope2hqLMSBG5J1+Lq6qrfZmRSAAwU4GXGR4X6KGi/0mLHHJTUJnBXvRTPoKQbFn
         rM4A==
X-Forwarded-Encrypted: i=1; AJvYcCXvDlPq6N1scJsltR1Y4XJRaH0ICnQImGz1T+ec8obc2bGuHsXgUeDMVKeFhYwDxg+vlyJxfOFG2O7iu0YdzR5LpuZDAvkPOYcVrw==
X-Gm-Message-State: AOJu0Yw8pysZ456slFUWeVOkkfFy0ZqbI7YlQVNcA0oIWvwhKsLwt75N
	vONoiUdyn95XH7jS4M9Em8FlJe/TUzp4W4fvbF6DJmr0AcmsyhALMlgRWGFJvjo=
X-Google-Smtp-Source: AGHT+IH9p7rRQpyh3qjFY22JgIFm5zaFqK/Hn2YUUXTMJfPhSR4r4a+glqPpxsEltfaY8s2J4KBqIg==
X-Received: by 2002:a05:600c:3ba7:b0:416:9f45:e639 with SMTP id n39-20020a05600c3ba700b004169f45e639mr225716wms.20.1713905415398;
        Tue, 23 Apr 2024 13:50:15 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:15 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 02/14] dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg compatible
Date: Tue, 23 Apr 2024 21:49:54 +0100
Message-ID: <20240423205006.1785138-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update dt schema to include the gs101 hsi2 sysreg compatible.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: André Draszik <andre.draszik@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index c0c6ce8fc786..3ca220582897 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - google,gs101-apm-sysreg
+              - google,gs101-hsi2-sysreg
               - google,gs101-peric0-sysreg
               - google,gs101-peric1-sysreg
               - samsung,exynos3-sysreg
@@ -72,6 +73,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-hsi2-sysreg
               - google,gs101-peric0-sysreg
               - google,gs101-peric1-sysreg
               - samsung,exynos850-cmgp-sysreg
-- 
2.44.0.769.g3c40516874-goog


