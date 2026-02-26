Return-Path: <devicetree+bounces-268930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJN5B6duoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:02:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B701A9767
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C8CB32B9932
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6EF2423A8F;
	Thu, 26 Feb 2026 15:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="shT7zZYL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8F2423A7D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120839; cv=none; b=sT7dbIlY35yaVWVVZaU8nIB7f4TMyxGfq55fnOmvsI9ZqKRUBlQO5y+N7ZaEyJzLk9hK2S1KS96XJ93g9jamV4fcGXtzLlOGS8exIFv93GlMdqDA+TtiRlkkR1NJrn/OpcQClOgRDHF3+qotUDKAYKZjX477cFpoMU7uTJbdUyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120839; c=relaxed/simple;
	bh=KI8zS0eSrNW0sDC1Q5BeDySFx6bb4+/qC2XzzBPNrd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hvp/IhJr5ofXjOYfZLq8+kjZBILRwAHZtJhOaeE2VLkHFWqp89QdWUUVEH9tIaVo2DazrSA72K6Q8roxsVqCT7VUYLgcuMkipKAr0+ZBRj9PmdCBGsNrhjHHBg2aGQtxVN2f3qbLlfMEiawJ36uZMUl7zlGvhy0JAsXqYQC2+c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=shT7zZYL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso9186015e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120833; x=1772725633; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbyRS2OprBLXmu9ZROhNbQV7yptB8B7WNK7cYLjfz08=;
        b=shT7zZYLqlO+v4sYjOxhrziMF+y129V63JUE/18gmxIK1PWBf+3lwc7kl/68RIosHD
         f0wVhZ57FJQROAQCPEfpwzc6Cxxyjn1pTqI3188WQCcSMt55nvwvZ47ZSXs+QGiQZFjx
         1+T+AJTs0WYzm+3tqYpvxuTJWFQr5uUudf4CFSKEuC0NbHGcJCQ1LhTSiWWv5gWESqQK
         bwDzOnidmE+b6OrF/WIScgF7o51BeX/g3Pc5/PthuFZOcSCI1djgtfGE7MFnuDfYkmgc
         dy7FtnC/14lukVyurKoFsoiu38jjaNAcTCytan4/B3w3MuWVMAAUO5uJdytaxrsrqP9v
         GPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120833; x=1772725633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jbyRS2OprBLXmu9ZROhNbQV7yptB8B7WNK7cYLjfz08=;
        b=sZlv1HA4VnrOknaVYzvE2AJw2WNspeRUUyTjpKGkkPrsFZVvCTsDXU+8FEfjv4sTCv
         QQDyGNCoT1G5Xd9aAa7+G8vJmfuV6DN/9MXQUExBIvUimMB9uG/9dQhPmdXy0a8XyU3z
         ncHpt1JA5HyMVVEp3ZJR9ilyU5xcvDO5EyYlycVKWToFJmaNhCNTGMS91KJ8j4CTknbx
         3wNoWj09HILudjm76+oIA0uPhaf01QSgCSMhPI9vKQ96dIzHT/oExr4nnpEkYhrOAiy9
         AnUqld9O3nNhrs9HmTvwcMUb4fG1Oxh3FkIIkaQJq+fgumSGzMKDtHPMUihki1Jee0iI
         XwLw==
X-Forwarded-Encrypted: i=1; AJvYcCW4uY4DotmYJc+0/yEbPdprWQN5Xk29VdHy07TaMud1WCB2WDJw5504SU2xq+jjizmOdJGiLvDXFeBI@vger.kernel.org
X-Gm-Message-State: AOJu0YytJ2iddxNaNSkm4BwK4zPmrW4EgRG+WASyYgZ6cPCopE6/uYlt
	lpAPDhJHpEkLNag3jzNG2SAVJlDEKJPPx1wvhK9tF7fSbfj5F7IxnnKYZtNH7x1OUZ4=
X-Gm-Gg: ATEYQzzfZHHl5mpH6ka1O+Kqxn3gq/c2Qq24KxXvzC6QGLO5eHlepi1rFgs6Y0XPUa8
	XCTT7WFkTMxFYDr1rl1lUJKWsn7IpflMWTT3otmXuxENenHdT3XRo7r9gVVAtofeiWOhpHtznuX
	8bqq9pk1Xxcxx/f+J32f77fj7P0tnp/+TaUZNDxoI1LrcnAow690S6ybjy0kkknYgS557hDUrbi
	Muu/sEB8Y1BfUGQgJN/IYKM6KcIWRsIi2+hkfqZW/LCQgcldyogl92oKC8wOQg6FgZEEsCa72KR
	3+zc5Emua7+weg6Kjo8Zi6c9OybyVjZ96sPZwYqrHUD6QwtUamr3tYC1NR45NLXbai7ly+LAzQp
	WJN7f3qy4RQeZqRs2mbaGQk2A/BoI1YAqOCNF8q/jb/41/DFY9nZor0ntw260fiPsC/fzRTkeTb
	D0xtpyjMkRqRtNMlEOsDnkN+1VdMYRtKuz9liqvW1azJ1rlKG24LYfjb+4dUPh5HbpND07MSVNg
	mzrN0A8grezjHE=
X-Received: by 2002:a05:600c:c166:b0:47a:935f:618e with SMTP id 5b1f17b1804b1-483a960a0e8mr372926465e9.15.1772120832942;
        Thu, 26 Feb 2026 07:47:12 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:12 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:09 +0000
Subject: [PATCH RFC 3/8] dt-bindings: soc: samsung: exynos-pmu: add
 samsung,pmu-intr-gen phandle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-3-71d7c4063382@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268930-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 88B701A9767
X-Rspamd-Action: no action

Some Exynos-based SoCs, for instance Exynos850, require access
to the pmu interrupt generation register region which is exposed
as a syscon. Update the exynos-pmu bindings documentation to
reflect this.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../devicetree/bindings/soc/samsung/exynos-pmu.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 76ce7e98c10f..92acdfd5d44e 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -110,6 +110,11 @@ properties:
     description:
       Node for reboot method
 
+  samsung,pmu-intr-gen-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU interrupt generation interface.
+
   google,pmu-intr-gen-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -189,6 +194,19 @@ allOf:
       properties:
         google,pmu-intr-gen-syscon: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos850-pmu
+    then:
+      required:
+        - samsung,pmu-intr-gen-syscon
+    else:
+      properties:
+        samsung,pmu-intr-gen-syscon: false
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>

-- 
2.51.0


