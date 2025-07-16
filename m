Return-Path: <devicetree+bounces-196965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9166B07B1F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 18:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AAAC17EF50
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379C22F5475;
	Wed, 16 Jul 2025 16:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TgFvHLY0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C452F533F
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 16:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683132; cv=none; b=FgAF6q6Fh4M0LNXTbW8uxeh/YrqvkyOr+Eu+MhLo5jVcG6euhnsEXHdKGCOfDAR/6dRAIjjTNHr+tbMph493ICynCinO113kwf//DP4Hlkn+olvJWEVA457V2ivOwJQxh+8RlZxR53eCGVyuVkKmralXnTNCgMCpu2ob14xLCvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683132; c=relaxed/simple;
	bh=ifqUWykIKw09YdHBlJDHosbFjVKt99R4kYjqL+6vHWw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UTqXnC5KIWVRITYqBeqTh4NYvRsJOG8cFGUcKoEd4hm1FxBKF8uYPuYmgRRQiUBgIVEQGuXfeOhK3gsjLSgUrwqb7I3yAqcaqRUPonAD+AdjXYegIpPJdqE1cItnCKsiytoRa2nSxH99QxRQquvWRgX0vMEH/F5VgQ5uJwEUPjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TgFvHLY0; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-611d3fcc49fso1129061a12.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752683128; x=1753287928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/KQk61yWGru3067l4BZnwmmevrhJMrhlMNVPC+Oez4=;
        b=TgFvHLY0hT2kvT+89RA0h1KTMJj0eS3UjAiEtPoFdOHkht004sItk8gNtXxZEbDDa/
         k1XAzWu2nXB/zbvAxikyIDBHu0qQ9/R1vYNgdENohI5p4CS+ywpeQzJbfptyvswAXjE0
         S29qHm3KveI8Xd7HvdxVl83KTxeqfd1E0kiflN+YbJzYSFl54mgzbUciMmeG6o8h6gEr
         szm4aFomJvbcr6kDhSzSXjSNuNyVWT1ciKzP1FNKuu0EnXqbMONa5Gpggf5YMNCT41RP
         bQ9BkIIN0BjClQf3x3oLbQ5ersqdTzBOFUTxH59Ei6meRpMxF3nVsJjSVNVkNJKjA1a8
         0uFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752683128; x=1753287928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/KQk61yWGru3067l4BZnwmmevrhJMrhlMNVPC+Oez4=;
        b=Q33WIs2EOZYgNjZqZ4lyJxkorxgJwDK5GKvs5ukCHGDT8/5rLFM5fTS3C2IZDgl2aX
         2Nke1vmhiusARfx+9EJcc8cLK/Pj8BKy03q8fOK7qVJQlxQFftYskpNlhl6nZOGNxUxi
         4T95cOGsRO2YVzlRIehTE2vD0Aj4FEqVrhkOPSeN4JQvxy+nS/atTv8PGOjYZSb+SLcC
         +IsTBXXBIMiQW4DyID+lAYuWAQOlzkU7NW9o6eJlGQxiyCd9C7lMkBwhqaIEGyEVYxCm
         /q74Kn2FE/frRW5bWV8rIzN9lk2t5/KB76j49AOK11WjpKa8+v+yxV5JuUErvOKUaQD7
         i/1g==
X-Forwarded-Encrypted: i=1; AJvYcCWOh+sBIsPxyf/qsbFraKJBPGMHMfRDmgnjl9zQfQXQPc5ToRldIOy0bwf9Jrbj2GijFi0TgZYzJlON@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx3dExnalVoq2XSpHQ4rN3lMgqzykrnFKhWEXYatz341wqDMYw
	x+6DWuy73LP0EkX9DGZsw4NCfOIp/tMt617VhQCXaewp5U0yA9GDKfOucLRShcVxtOsPj+SExrH
	g+wzg
X-Gm-Gg: ASbGncvwPvgSSB9xdf62k/Y8PdFS9ofR5w/r3E4cZtPxU0lLcRw/lZRkD+mshDOvmxY
	yGkBM/IoO5NLXv+cejKSThh5PjUV6DqBRy5o32JB0PHqbIRQGnh79ofU3tLvmoLLorbF9WT34CQ
	uUTv4bQkWYVHp7FtJG1H2i6DRvTA91pGp8YhJwddExOnDbk0q4cw9eInYHmSZY1dmNrcbbtXHkm
	5r8GJTo85ErCmTrVQsoyos+QWMVL0Q3PKnkVEevki/h+saDy1f4Y+9xFk7mbEZ8G55T+P+5gjbY
	6CdQtMlRTWAJm3wsLj91dk1L6m2w5tC6nrcyLkyKXFRNietTvbjarf5kMs8fDL6dZMFqGQsFKRg
	D4i5ja8zhcmjYF8fWkL8eSWSdygPRWP11OJdVEp4g5Fc=
X-Google-Smtp-Source: AGHT+IHRu+EpPehRmNDaTTHsMBmUFIds4t5TwV6Vf+9vzMbgwhOgIMxO5v+ZllAYRRDC1jm7qh/cMA==
X-Received: by 2002:a05:6402:4028:b0:608:c372:5447 with SMTP id 4fb4d7f45d1cf-612821b8884mr1317142a12.7.1752683127739;
        Wed, 16 Jul 2025 09:25:27 -0700 (PDT)
Received: from kuoka.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9734069sm8988916a12.48.2025.07.16.09.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 09:25:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH] dt-bindings: arm: qcom-soc: Document new Milos and Glymur SoCs
Date: Wed, 16 Jul 2025 18:24:13 +0200
Message-ID: <20250716162412.27471-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1754; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=ifqUWykIKw09YdHBlJDHosbFjVKt99R4kYjqL+6vHWw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBod9Is3IFQpmE9WS7TDElgYejbb/uM1v/3EGYMv
 Agge+urKBqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHfSLAAKCRDBN2bmhouD
 16fLD/9RESlWBHNQRw7pktE1Q3UfMJmi+6TEMqrY6r6WOOWjn1p9FeqH0xbgdPaYd3wXwVxVD33
 32KLsTZ088I6iY2fhWn0fvUXgxwqHF1Sxl0VYwvARr40dle3fLOyzb5LzqOn3OKtNcveP5nGy8G
 /RVEiAbdY0PdfcM91S9UK0iuS7OBx/2KqPu58fpdayc45XvrjYV4w1SrhuRbT2fQjiwdLIqE2dC
 NCRM6j25GRbx/G1bWueA02YHzwcXuDMyPw6TX52axGqLIfCAxNgksGXld8U28df0MOLKGTzCVl3
 LgSxP5yA6ZF9LrOBYiww4moFnyo9fWngH7mmc/fP414FxKs/p4UTo0rbJZ1jhE+aUReo02/NkoB
 e85ZsxSwOIOZFDRas0q0GcOmUurrxnINRtkIYHXhbxBZRtZm5aQEv5ndRLpVe7IaY7+6gmpahEs
 1w8BhHwJqi2onCjE5OsmdQVhmFFzZHlvlaj2rpjm6Y8O04Ya3k6dAF+4QGpUiLLhGM+xKltXnCF
 Jx+iXCfabJw7HaKy45gArgWOlonV3gXy4o5mxogPRudr+7u+1uTIeW7Apz0Dvgn98gwT5VVqHb0
 gkptjumSRB3ry8mLk4IBx2jubvlclphYpwEj2W4PYP9wrictwWr/2tTWQoKvyqwH+YRVardiF9m bH+ugEsQq2aiQlQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Extend the schema enforcing correct SoC-block naming to cover Milos
(compatibles already accepted by some maintainers for next release) and
Glymur (posted on mailing lists [1]) SoCs.

Link: https://lore.kernel.org/linux-devicetree/20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com/ [1]
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I asked for documenting the Milos name at v2 of Milos patchset... it did
not happen and patches are already being accepted.

Cc: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/arm/qcom-soc.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
index a77d68dcad4e..27261039d56f 100644
--- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -23,7 +23,9 @@ description: |
 select:
   properties:
     compatible:
-      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
+      oneOf:
+        - pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
+        - pattern: "^qcom,.*(glymur|milos).*$"
   required:
     - compatible
 
@@ -34,6 +36,7 @@ properties:
       - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm|x1[ep])[0-9]+(pro)?-.*$"
       - pattern: "^qcom,sar[0-9]+[a-z]?-.*$"
       - pattern: "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
+      - pattern: "^qcom,(glymur|milos)-.*$"
 
       # Legacy namings - variations of existing patterns/compatibles are OK,
       # but do not add completely new entries to these:
-- 
2.48.1


