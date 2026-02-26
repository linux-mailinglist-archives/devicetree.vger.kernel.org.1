Return-Path: <devicetree+bounces-268931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eL1hLFlwoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:10:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A861A9B72
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA36031D8D0B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AEB4387584;
	Thu, 26 Feb 2026 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nx20Sw7F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF6423A9D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120840; cv=none; b=EU4QQI04FeFgiuW9+Ao7CrJ7dzHHRGnVE/Dg0BwaB9Uzy/4OVaMkuES/u0d9/qv3+4lVD4HfzXxNkzeMlesKTk4SRCfba3Nnmw9OCkqUXgY4bbmJIceafNQ69iwQZSOq9fL9CT47APWAFbLnW6m6navEmXvUtDJlJiQY1Mu6A3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120840; c=relaxed/simple;
	bh=Rvye+ruoXWbdfAJxvkI5cdNATvl1ZuuLfhE1+CBMdn8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rO+KuUG9vh1fdJmK0BoZhJp6TuKH5QLL0v8JdmCrmf/hWXkLIJJwtVF2HsMkBM/U8uJk58xPUegOha4glYwetQecFFbGeusO1WeXgO/mkUPv7LSD45UhpnDys9Oq9+4XNW2X3U/76/1V1wbJF0NkH3PeQ3kxNbIQrLfjEbWkg3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nx20Sw7F; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48379a42f76so8359665e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120834; x=1772725634; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H/kgDWAlaVKVnE11W8S3H0mE7bshX2fubcylJ0A4KM8=;
        b=nx20Sw7FfbkFbfYOs+0/a+KBs/z84t5zpl7j7FhkzUMR4PNFQA8k9n4DQ2kZK9FYDc
         TH8nvi6NGcKfN/ww+3yYqosQQM0xVjucuM4B4cqUcuvkFogmaLXuVvdBJ8Rb0Rw4x0xj
         yU1Fj/DguPQNXRi07WUFz5TCvZ5MeE+ETcMqnPi9uKX+qDOEoRQHhCEn66caHjjnbeld
         cGMIOgyE3KdnpVNIsmjQAbMV2n2xbSmYL2PyaUMSURgN0n+LL+gcsJ3dmIa80hESHULM
         aeBCmHUdQIg3YszmFgiGg3XBBhqCpw48FjWFX+HzksJk3G++3OfDvcT8WV2ykAa6svx3
         /DZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120834; x=1772725634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H/kgDWAlaVKVnE11W8S3H0mE7bshX2fubcylJ0A4KM8=;
        b=Z8uj7RVa+dUR7nTqiJDFAhbb5ONR7Y2tQvxOC2tDemVEDx+R4Ut4FbPvt7LLNIQb9K
         F25K7zZp7OesPRJLzV/QiADlJbtLxT33+pQFD6ogo98PWckmWkRkSkacTTvniKM8yvHE
         kk+gOPG7YfbC3i/PZAAQ/HMMm4qE8ngbFuEYJZBs8J7wZmCI4DQCvzu241WSjuomv3r/
         3xYGf4hR5/HUgfAWDxm69K56/LA6JChKOg3Yd6NPwJWQh6pHj3ADNFj7GhRf9/WdjkWr
         U0mGwEXU6iBw8cN6a36UCL1tZ1Zmpxi5NXqezuirjXES0yBWGzrUzqERDr5EegNPX4Xy
         4EVw==
X-Forwarded-Encrypted: i=1; AJvYcCVGhGG9sbrA4dxID2l9Jh/0czVbeIsU12rZ2o/CzrbGK7902anbC6b7CBenKNnYPkApsJ8GWvZT3ieu@vger.kernel.org
X-Gm-Message-State: AOJu0YwEHXR4snoRZLkwN16fPziDdKwo5bsPy7WJ5V5jyKGtdGULcvSL
	79Il1dR+pg79zPmrNzl1MuwCfwn68g9eNfrt4s5nll0qzllP7HjVB9MaZku9xHKzVx4=
X-Gm-Gg: ATEYQzzhq+/Mw56mykQ1hwbpDK86R/QzWNGq3c8xtngbC2iaGUJMXDvug5bxqu1uVXm
	y4Ks/fxMb2NnSDtH0BdNBhaeEv3N9FdRd2Uq34i5Pwb/979KEXWbXNllihmAqQvem5ZSZTQuUV7
	ltJwltQBofexWeoy29LmKVF29b4aSQ8po1H/HhHBixwc6j9TCGMEsfMRvZ9vPZSVUw7U02Wn/FD
	UOJ9zFQttYBV7O//K5r/p6E+UcFNb3fnMAnJt+tda9nMIHwBQFGwscc+vzKsREjy914291/+ath
	4P972xlb060AHpOdLM987CKcLdlx8h2Pp62+SiDQOrPzf0ii1u2eN67AxA++UZRWoNfRe3YBUYY
	C8huIIkDhUnjQjFbo18TACE5owmOaHclZKHXdpBc6nFnNZ9+Bk0zhlgOcmYyO19LNZFM1BR4KI3
	1cUXbpSKUNnJgEOeWsDZ3gg+GIK1y2P6/cZBkHMVJ5GwruD6I8+RSTp9ljKtTB1gJohxFz4Rhwe
	TFd8LHchxgc5Xo=
X-Received: by 2002:a05:600c:4750:b0:477:a978:3a7b with SMTP id 5b1f17b1804b1-483c219eba1mr74883375e9.22.1772120834054;
        Thu, 26 Feb 2026 07:47:14 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:13 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:10 +0000
Subject: [PATCH RFC 4/8] dt-bindings: soc: samsung: exynos-pmu: deprecate
 google,pmu-intr-gen-syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-4-71d7c4063382@linaro.org>
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268931-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 14A861A9B72
X-Rspamd-Action: no action

The generic property samsung,pmu-intr-gen-syscon should be used
by default for Samsung Exynos PMU hardware blocks. Update binding
document to add deprecated flag for google,pmu-intr-gen-syscon
property.
While at this, also add dependency to not allow usage of both
above mentioned properties in the same time.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 92acdfd5d44e..1ff1a8729989 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -119,6 +119,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to PMU interrupt generation interface.
+    deprecated: true
 
 required:
   - compatible
@@ -207,6 +208,11 @@ allOf:
       properties:
         samsung,pmu-intr-gen-syscon: false
 
+dependencies:
+  google,pmu-intr-gen-syscon:
+    not:
+      required: ['samsung,pmu-intr-gen-syscon']
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>

-- 
2.51.0


