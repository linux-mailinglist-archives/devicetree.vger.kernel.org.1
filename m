Return-Path: <devicetree+bounces-63572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9BF8B5640
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA3F91C220D3
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECA073FBB8;
	Mon, 29 Apr 2024 11:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eTs3vNUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721FD3E49C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714389344; cv=none; b=SvgCZ2/jHFD+7alR10yXJP9Lx+FyEMtx5Szdrk8HQZw/7/IsE2KlKgb35owoQ7ZT2SmvaWMGgqk2FpEjxujudvORWZSKzJMyydZWmgwh7J4ZWRRKawjg8FQ6TwIYhGimt8z8Y9d30NMHF00K8nDgTJZV8u4aYb2wUNb4ueLjd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714389344; c=relaxed/simple;
	bh=WARBLKc8IIwkOZR1KT6Pc8Nf7x5S3Qw6DwX2PgELUbs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KjTHDygaqMJ0gJrXgSzLmRRLhEglh21UgaALzAyeA9kGVDgIXWTL0skcYRbbVw3UCQUIHla312qGZ3mzc9KvSiFpFOcFbJ34T5xC4iPadVH9BiZes5v4QYs6gWPX3QfioFsabGxXdSHtGwOl+4LoG8CrTBKule1F2ocG5RfZW20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eTs3vNUy; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-41ba1ba55e8so20526655e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714389342; x=1714994142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=eTs3vNUya7bNA5zKpq5cxzIQSNBuHDEUCreP0pieQq2Sop/r3kfOZsVVU309MQ9Q0f
         7pgQTfFHBs3AytKICf15QMgVNsVE27EzR2u3rWOsrtI1/zvLYsiLgqWnki0FdSuYsJuU
         eHTi2RK2/A7VzpeYvIcWhBb8lbwyOqiAcYLcNCynAPUrM0LziqPKCUolszWq8uMIawIx
         l+UKJmavnhKuv3a8kDM53mIaEYkW8Nz0tuPAbTfVASADKbKaNKPtb9PBaVh3USx4O9LW
         GD1AZ+Yw2/ZgyQqgA6p18yLA54bWnVf5YwqXuEir3fb8EBkrSQhDK1Ndp5WOkhX1eBKy
         svKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714389342; x=1714994142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7YOs9puuo8onPpvdQ4CfanEhu1eADekMseFBdt3Sao=;
        b=VXCprkUsEEwlM+sgiMNuMe/dhuABNP5jLgx037meZQ2XgS91AnxHoQntDv/ef7Avz3
         PSG9sMtZ6jod8+xS926RZgCobJsIvocMyntfwDn+LMKIuEClpxx1ENaAngnhE44jeHQ9
         Rd0R8TdgNZCXTg6CTdA6fXfNklYNNa1gzrw7xkyjpgg+DaRlH7SPGgcHjyWqqxk7rFiq
         jf1OPINKk82eepqJvYTDfyd3/0XPqewMGf54Tc41KD/ZGal+EVwhDXJtxKWwsnG1tcxv
         d8Wnzcw4Qi5vl9w5GmhJYMI0b2BPkyATWFtvUjs+9qgdDVhwGz2cJGJXSvw24lPMAuJA
         l2fA==
X-Gm-Message-State: AOJu0YympFIhKy+9JnBosskQXwV0wfMpmACtBdimbCDAl8FO+jujytu3
	ZFmD/ZHGKbfd9sXVNy9+UHwOshiPKfj+fy9sZFvz7zE29TJm0+/hih7szj+6w3w=
X-Google-Smtp-Source: AGHT+IHgx7Hr77YwfgooYgYOrE6P0eeKNZeE70sQQxjdW6m8A4bLVKtOXlKGH9X3NxEJDcLuotdqVQ==
X-Received: by 2002:a05:600c:450e:b0:41c:7ac7:17f5 with SMTP id t14-20020a05600c450e00b0041c7ac717f5mr381669wmo.24.1714389341861;
        Mon, 29 Apr 2024 04:15:41 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:550a:b373:6b8:63ab])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b0041b434e5869sm16005337wmq.43.2024.04.29.04.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:15:41 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg compatible
Date: Mon, 29 Apr 2024 12:15:34 +0100
Message-ID: <20240429111537.2369227-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240429111537.2369227-1-peter.griffin@linaro.org>
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
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


