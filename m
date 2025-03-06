Return-Path: <devicetree+bounces-154743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B330EA545AA
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 09:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0825A3A53C8
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 08:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6295E207E11;
	Thu,  6 Mar 2025 08:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iTn1l9Jy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB83D68
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 08:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741251538; cv=none; b=UgtVLEoSBhjd4zOJF8ECwOsr7qBpkfhWnuHXjLQJHmo2PfkpNUzujZYiD187Cw3WhwQmkwA8zNS6T1tTSeyxLMHG1zFxCOZVGQqXSt+eyncd4F4yGsjRpxBGlyhQ3oM5o6SfFCoFEy6U07pQyaUsWJJx/BT2zwccVXtVm8WAPEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741251538; c=relaxed/simple;
	bh=NWlL1nGttJYahk2Cib0CQslDOn2EQ4g8BSNR5s0Vy4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OI0JcJYbGqZKHLdrxEzcN8/v9PCrPre9CSIZbM7H6xdWqILRJgQDSWUKPtuSzEZR9Y2vn46unmjba9wx0IpqA760ZYu9VDM3sd4JNY5uSyOiyoikKwv2A2GU+uLjocFsm78KR18qO8weYQTcLTGj3dV5qs1VGIzbLQFOmjtL2kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iTn1l9Jy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43bd4ccc4c8so465235e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 00:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741251533; x=1741856333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OzaWip0h4cgnJEaNxzWkXQf8pOprxx1UV0JvZpTPUv4=;
        b=iTn1l9JywyFToOEZDB03xM+KZymFhEm1e3EKN2AN33XI7czuW8ZNPfc4sMThRptgyw
         fGQIoVb4aYH0EGIEz0Xw5nPfNFDEbbyoc5VzVl7MZ45voopn9GwOUNssn1atzQ0XU9qn
         0jjCNU441n275PY3Lf6A9YMIldYYp1XOiqZkWkXmiirzU32h8Irulwl1VWyQW/skMfKB
         PShn7+Nq7DGJM5y2roAjl5KlMwdM3SiNgfY+05+ZAPDrUK4Enc1IK2xQKn2cdxru+FlL
         jM6Pp6pVqTsqH0v9AHSxtIEEbeFqvr70aDMCPLSSO9JrlCvK4ZSviEEvIkzD8ayhYN9P
         93kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741251533; x=1741856333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OzaWip0h4cgnJEaNxzWkXQf8pOprxx1UV0JvZpTPUv4=;
        b=JVvnOfemhGHe0w0XQhwjpYHLBEdfOkK4t9tK1OXtYSyNxnZ8nKTsJgHD1Px5RubHe8
         o7neh5DH6RTb0vSlGn4/aj680ZAxk3NLHZVdv9OrcgnjwTwvYrSbNIN56twBq8fszcu7
         AlJycfbfZ1tmrV59Iy+gY5V5xorw4pwV0W/j/84H1JHMU51NX31/ljivJ44U8laPP0ax
         RIilVLyp4XCCIu3oIrQzfng7b7FRvxtExemr0MtIp6RGiYWccbuaF00MH+V6UVhOlJBz
         EJatxTWPaHKRzp4RvEjEen7q3S3gD2OqzfZ2fsbLhQJ5fNf6/pJCFZ2bn4pfX2Er2o60
         tvlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0N/hkry5/3uH0V/zRIDW/efL2OyKAlW/dYLvL7wvC8LbJSYtR/GaMopGCCxWOI0Od3QNauzeW7QSA@vger.kernel.org
X-Gm-Message-State: AOJu0YyzJQmHP3P6uqbSt95xwvmszIvzGZcGfbpU+IfafYdZ2AuqPnMZ
	zS5PBc/UpNBn9gs8OE0ybhe3wHuKOPboR3A5jkBpKoG1eEBHb1gunKzD09Wehj4=
X-Gm-Gg: ASbGncs2o4JT790rE9QPVf06GPEvdtUIIr7eAFUViIZZ1DknuSoAeJqJ/oKnMTioII0
	mzHUpMJJ76Yl9GfAXnZajw0sj0OPAyi4TjersxksGBCR23BwSdRJmDNrRmIZGrWsW20tfg4dae5
	81h4Eibxf6qYJlDfaivCymKB66HdVg6MEV6VLj8Gr+Orgtt2n0nFBU70ZUGVqQ0o1+8F4zph/Qm
	tE6OjMjxbPnZkRgNMGzdlEqIz3+CI+FMy4qFvktUXk4LxGJHYtstPFv+G7vmURr7Bkbpn4XQjPv
	/Ub45Ib9nwdghycYKtcTx7bWb4lDNapwxeYANAWJ1Uujk+3AIaf3l7Z/0FI=
X-Google-Smtp-Source: AGHT+IHVNtHxGr+nftjAhnUun25Kgv6DcFTFjM/EL36b0UMvE/mwNcZOxoyBOBbcisiK5cck01E7sQ==
X-Received: by 2002:a05:600c:1d90:b0:439:9a40:aa1a with SMTP id 5b1f17b1804b1-43bd2ad9d91mr19260025e9.6.1741251533219;
        Thu, 06 Mar 2025 00:58:53 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bdd8b046dsm13184405e9.5.2025.03.06.00.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 00:58:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: memory-controllers: samsung,exynos4210-srom: Enforce child props
Date: Thu,  6 Mar 2025 09:58:48 +0100
Message-ID: <20250306085849.32852-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung Exynos SROM peripheral properties were moved from the device
schema to separate "peripheral-props" schema for child node, but the
device schema does not reference the new one.

Reference the peripheral-props schema so the child nodes will be
properly validated from the device schema.

Fixes: 67bf606fcf18 ("dt-bindings: memory-controllers: samsung,exynos4210-srom: Split out child node properties")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Fix for Rob's tree.
---
 .../devicetree/bindings/memory-controllers/exynos-srom.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
index 2267c5107d60..1578514ec58d 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
@@ -38,6 +38,7 @@ properties:
 patternProperties:
   "^.*@[0-3],[a-f0-9]+$":
     type: object
+    $ref: mc-peripheral-props.yaml#
     additionalProperties: true
 
     properties:
-- 
2.43.0


