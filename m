Return-Path: <devicetree+bounces-248767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5D7CD58F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:25:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9A4F3016917
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A30314A94;
	Mon, 22 Dec 2025 10:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Obal92Ib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8784F313E2B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398950; cv=none; b=aafbvDef6hCEbjL3dAGt2cj5X0m49NK68W7fJTG7v1Bn4pjYh1q9f7I5WNNx7u7rX9ZdNfZqLQwBl0PGjM6rWCS6SVD6NPQXbR7XSHYBc2oLiYKkMg4uqobdgp1PS5PxG688p0MQ/qxla7Kz/D/Qu/ra/0DQQ2pTqlTMxA69c/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398950; c=relaxed/simple;
	bh=HBZKxM+L4XbIj/0bVAaLELAMW01kR1SncGYaCmbhxbc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bwZn9EkH6GA8B4Q7GspLtXCV+wGJc+7r6PivmggJazvxeoj0bx32xo2iguKFru6RwV8xlJcwXHAheGTICQwUnDk+SY28ra/jKKEc4u7tlMxkm/T83FYn+JyhChi6kjK5u4Aq9+y5PpMYUUM6OELyYXSljDtgInUXODhKe8vdmZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Obal92Ib; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43260a5a096so559667f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766398946; x=1767003746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gV3ODo6F13X1bXwo/uKA4praO9ZfNmVtiFryiaGb6Gs=;
        b=Obal92IbbBkK8Neum8MgXm5UQUhWeJZhX8lMa6IbVSUUf5UgR/kb/SEE7vuP91oyXb
         MsD0ZHiIOif52k5lqjnlvXmbPBAQY4tVstQDqKoPI7gAyVW4mj1200ym3kaNaUqSYIBs
         YtSuAYExZn/i1p6+LmpCCZQOWRTjAX9k1hY73YTArCCwFc/eRDWh02W4We0387lLHZfI
         mA8sm+hBSkAv31YL1zfDr5GFviLmAltzRGwJjIW6ovMycJiR5TGeQBH0aHI0q7bJv84x
         fvpi/Ee07hBvSoqsPkjqhhiX3AWx4DuqqP6V6lLVO/2HrNFgcSbalKSWsNS39AwmmjL6
         KxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398946; x=1767003746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gV3ODo6F13X1bXwo/uKA4praO9ZfNmVtiFryiaGb6Gs=;
        b=ffLWtE+0qwYEorDOaif3g/zVnexzCv3lbTsLnt2TZAc2nwxxLnHHebr5qu0qG8qTei
         uMr60HKweLn3WfzRAVj9tY/5VgfHGIjgmOmpvR4dKkPdDlF07OtzleVFPYjPIyGbsdCf
         oPVw9d7Kv/ovlFmNfMkOllcSF351M8XDzKVZro2K1yh2moJXFVhv/UVzS+Ism5UrfNNC
         yNu7HrAIBM8BCfmmwyvxN5TWEk3pCyfm8K6ZkvDln+0mvYqgfzhscmT7GavznbOM98Vc
         Oh/WrnubCcrsveays07zi5GuzH56Ghl/u3/0uL8UoXpHFZLM+rhcgMAuhRmj9GAXiA11
         YJpA==
X-Forwarded-Encrypted: i=1; AJvYcCUt5WkUbFhaeJHpgK3odMNhUYJe+hvPc3ec6k8MvDVxsvRVl0fO6Gm6bk4pWqe1gdFILnE6S2Sq+CqC@vger.kernel.org
X-Gm-Message-State: AOJu0YzpAXzR6NXDBiUsCO/o74UspxzosO3w4UvKmHzV50p3Ta0cWJiT
	dzW8aGaByD9KDRFCB3QRUuTOpeEZbsUCuJwVHvzRoUfJ6KMuXJvT0wsOBgiPKdWMLVc=
X-Gm-Gg: AY/fxX7Rntd+VHuajA7z+yPy8237xUSa65XSxen/dOhiBuHbgryVE4xnK9qWwtbGQAI
	A13G/UyaHMwoxSQeUfdQyjhXmULfCWPeSoQOYRy050FgieyyAdh19pOD0brQ19qJ8Sb7By4Si5T
	C2YJh/XCPzwnztQlmNhIuqe9ECqt+1QdudAOn6u9fyMlrO8rZMAnaGCkItvaWpzi8eaNsUausth
	g11JgPIacyVVh4rF4Tfg6EuLZcC6cF70oFFEzwm3kVt4N5kxh84sGebwZLcHM34thgzGiNHicBk
	WFthNhI16YGKDfwIuDJXAAP/TRex9Xx2qw5YW4XNOahM5eK4o2R8ZP7MwL2l9IMHFsMTjNoXpe/
	VXmbKJneHNuHVdM+SiFYIAiPfOb0lp48KEtXFH1Ft4JxbE8p85fJNkXsXYAvt5vSVnhK0WrqlS6
	qypB9u/RMPlLX9sNNMRQXEJBju6gnaCC9CMxdlWvw=
X-Google-Smtp-Source: AGHT+IGgiHPoZfvEvLMMkvb40+kGv1VyoyONqoU2+qFBxEmmPGJZxre1hXPXFrJ0WJGq4sn/Equgjw==
X-Received: by 2002:a05:6000:4202:b0:430:fd9f:e6e2 with SMTP id ffacd0b85a97d-4324e4c3e3cmr11605703f8f.9.1766398945842;
        Mon, 22 Dec 2025 02:22:25 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([150.228.9.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82feasm21082813f8f.24.2025.12.22.02.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:22:25 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Dec 2025 10:22:12 +0000
Subject: [PATCH v7 1/4] dt-bindings: clock: google,gs101-clock: add
 samsung,sysreg property as required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251222-automatic-clocks-v7-1-fec86fa89874@linaro.org>
References: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org>
In-Reply-To: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3035;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=HBZKxM+L4XbIj/0bVAaLELAMW01kR1SncGYaCmbhxbc=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpSRvdg60hfuVcDiZdNu950EdMWZySiihRxtyx3
 EfLG5mp+eOJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaUkb3QAKCRDO6LjWAjRy
 utr3EACTGOAhJ1hCnCIVqJuSlu7QQ6AwrTPxufUoAzWVwcfqf8wjAG8/xe1khihoZz9SZ3O0RwG
 wEphnvoXD2NDEPUIteALxG5wUbu+3ottY+wRK4JU3jGRZeJ3TLaCNdJ5CKMElRVNVejVz9glVgw
 6VE9bux7U+ZF3c6m4HwxqhXJhK0b92xnyKg9+dxB9qtbDvtoNMr8G8SXKsZvzFEbpNBCmeJLsUP
 YBcrVOLcavMFiEDVRox0BTXLOJjGezKsstV7NcHAcdSkQwwHvl8AlW50ezGh2W3nzs+I6l9zbxG
 AwiW713NWeb1h17mFZnKzLAlVG+JZnZxz4Qxv6AMmfnjxno5PxHoh9w7k4hpMJwg5oTwNfSrpTu
 dHjbL2xqwfKPLAj3Wy/gEcjgchqy8BZs33rbyvyScai7Hmv7SqBFyPOIoDVNAD4fWstsgxg7ME7
 yvMe5IenPbHfF/hc28u4u+SYySU8DqLpyY9fHD7Ca0XW383DwC3aBKYKt04eVHB4jBanfN1pEEj
 HRjFpGHCRsOgGgfWUhS1jITkKYf8UHNslBftN3etW7HLW+dVre3CErFb7cdeGADIpek3EaaVuA8
 YHUOEpsPCL5gvHQAybewVbWL71RipmUH7EyWPU5lIFABMrF5ZwFIhj9UvK3qSc+pbQ8p1qsfHKt
 FHwMq1yGPZZB5dw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Each CMU (with the exception of cmu_top) has a corresponding sysreg bank
that contains the BUSCOMPONENT_DRCG_EN and optional MEMCLK registers.
The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
bus components and MEMCLK gates the sram clock.

Now the clock driver supports automatic clock mode, to fully enable dynamic
root clock gating it is required to configure these registers. Update the
bindings documentation so that all CMUs (with the exception of
gs101-cmu-top) have samsung,sysreg as a required property.

Note this is NOT an ABI break, as if the property isn't specified the
clock driver will fallback to the current behaviour of not initializing
the registers. The system still boots, but bus components won't benefit
from dynamic root clock gating and dynamic power will be higher (which has
been the case until now anyway).

Additionally update the DT example to included the correct CMU size as
registers in that region are used for automatic clock mode.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v5:
- Invert the test for google,gs101-cmu-top (Andre)

Changes in v4
- Update commit description with additional requested details (Krzysztof)

Changes in v3:
- Update commit description as to why the sysreg is required (Krzysztof)

Changes in v2:
- Update commit description regarding updated example (Andre)
---
 .../devicetree/bindings/clock/google,gs101-clock.yaml | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index 31e106ef913dead9a038b3b6d8b43b950587f6aa..09e679c1a9def03d53b8b493929911ea902a1763 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -52,6 +52,11 @@ properties:
   reg:
     maxItems: 1
 
+  samsung,sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to system registers interface.
+
 required:
   - compatible
   - "#clock-cells"
@@ -166,6 +171,18 @@ allOf:
             - const: bus
             - const: ip
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-cmu-top
+    then:
+      properties:
+        samsung,sysreg: false
+    else:
+      required:
+        - samsung,sysreg
+
 additionalProperties: false
 
 examples:
@@ -175,7 +192,7 @@ examples:
 
     cmu_top: clock-controller@1e080000 {
         compatible = "google,gs101-cmu-top";
-        reg = <0x1e080000 0x8000>;
+        reg = <0x1e080000 0x10000>;
         #clock-cells = <1>;
         clocks = <&ext_24_5m>;
         clock-names = "oscclk";

-- 
2.52.0.351.gbe84eed79e-goog


