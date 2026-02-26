Return-Path: <devicetree+bounces-268928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHRoNUNroGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:48:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A07141A9120
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4F9D53004F1D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A1CF423A8E;
	Thu, 26 Feb 2026 15:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lBNiHEfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E953D3D14
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120834; cv=none; b=RqiSjxvpwMFadDhlXQGnAigkP7qpLlARXgp9IqqSzoZG7+SC+uTZlMM7I+0yJN4tIQOrMpLa7kEMI1PpjSby2Am4yh/RAseJDFnnFYdKpTbXyYROuXYbzZ+4UerxAAfMPFUkZomDQy5HzfttjDh8GyVXx4l7KcHGYXeQhq09ooc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120834; c=relaxed/simple;
	bh=HWWmjQddmaVsOt9MZKc6MD0VJXEzBstUHcR79v1nw/M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JWP/DZXjOXQifLEtroMVv6WZwSz8EkRZtHNdLd4QEslJMGKx11qX2Jv8//U+KuOBX2Vpam/OKCm9fgdmqBuJN3DsDJF7WVbcx5CzaUQepc5oZ9f+yv/ZL63TllTl7OLyUl8JsUTmgMa5c+17N7k5TAeq/+GIVmeFrDXQ5FhpzvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lBNiHEfO; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-483703e4b08so8984725e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120831; x=1772725631; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOCnZA6+FMHJsj1uVopQCToE7k28a5gpta1dDefWpi4=;
        b=lBNiHEfO0+Lo4uUuI0MWxGRy9B+E9t8Hl9MJ5j1YnAxu5uoXZuo0L50oRYmPnVlFN1
         n1+iOVsuXO4I3HdSDXb7J0YynxnoEBq6lmRkxCiXDI9mFWu+NMP39gYCJmnR58iuZHEH
         TaOPyTUQkL6dYSn2+gzVkJujIR8K5e6x1WWV+emBLlJRqI5Z7oSco5Zzmi4kNLbLtrmp
         Qt0hF4gpdG/cfGIKIGzPwtfvd79XOX+5e04JBDC1tjRMp1IELgc8nkm2ZLLnrGNGTmcD
         Ge8NDDJdQvKb6Bs6V6QrdapFuBS0+P/95AhvlnxOeXqE6mZlwQzpAl3um00DfFEd0ALh
         1MyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120831; x=1772725631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lOCnZA6+FMHJsj1uVopQCToE7k28a5gpta1dDefWpi4=;
        b=COQZTsnPbggBgKg64kMVsEczdG1FQjEzKtDvr3CwQ+RYjMfvW4XHi4blxMz5qa4q+j
         RiV2ioaA9tFRFDaqbiXnrdxa0ai5u+LtDM+oUyZoyneBdljghERaacCiLosAOO3Sv5Z4
         ps5xZW9G5VyvNvqjhZx7D9PTdV6wKMzNagObvEbHpsqTCQ5rshreCPfczj2QyrzcMr59
         klF6mlHyXtXIKKc5UJ4/fiYJOx00CsRuWWOWsaaw8aQF2E6snK6EtzFPKHENr240xotF
         ig+YH9tp8hYJl6skKyGRfXqM4ZmpLCbPAnN2vqWJvGGV7Afp35gYkxR9T8D6GQqKzTGX
         gVsw==
X-Forwarded-Encrypted: i=1; AJvYcCXroNavjNMWCUyLxI42ZIq7D+quxiarI85OiIqrxbuybZqCWPRkpah7OTjcAFx9o0i15UlddrpMeLXq@vger.kernel.org
X-Gm-Message-State: AOJu0YxsjV3L2/gCCoJ49LNOc3cjhFzxfWI5IZjKJ9g5Cgc+SIGBI8qz
	1LY9cbkxJWYy+siWQT83KP8hU7gij9OtADZAWfsrrFR4Fp+KX2oEaKF5QlWtW8sqTXI=
X-Gm-Gg: ATEYQzx4lR718YAkGqbLmZ2/lQP6GRvNRJubIw8mm5+piVAmwfkjrmj94kjdb2EgW7k
	MEJWW8OXAjn2TJsOAsSfU3t4wCCUnsDHYJh1VN7TvK6OWNIhLUCM90ZGmVfOigXLCvtAprPR9vR
	nU5yse/dzL8ifHqBjbCH1dHrYcajP3V4u1VApCvoinOJWwS5hihJPJLihB5SslMTjZznnupHO8R
	J0SgT94lv5venNCwfsY+v0930f1BcaBBU1/bg9Y1bkzRykVHnKHKHYCXJDKM2E8f3+n2w9pVKfb
	MAvlAwaHxk0+k0O/44Aj7lCWDW9ttxsSdeyG5e8uV9lYcp2Zwf+uKvMfedwwRPIbTB5gcVw/uZJ
	MQS0O7qUdnM4LBusHNRjMwED5NE/G8vQxVNGQWrC4dpVvXRarz4lLpf6+JXu6MkG2ZXby8dD3qd
	Px/rw7PSuOiXycYFZYB3NEREyEpIo/rx6GnZEBzWfgswWpzIJ3Pl0SH7LiBvzK1XojoKA6RLfTF
	+vZ2wh6uOb3OeU=
X-Received: by 2002:a05:600c:46cf:b0:481:a662:b3f3 with SMTP id 5b1f17b1804b1-483c33ccbe8mr69194215e9.7.1772120830721;
        Thu, 26 Feb 2026 07:47:10 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:10 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:07 +0000
Subject: [PATCH RFC 1/8] dt-bindings: soc: move and rename
 google,gs101-pmu-intr-gen schema under soc/samsung/
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-1-71d7c4063382@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268928-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email,devicetree.org:url]
X-Rspamd-Queue-Id: A07141A9120
X-Rspamd-Action: no action

The GS101 PMU interrupts generation block is actually a standard Samsung
Exynos IP block found in older SoCs like the Exynos 850 and others and
not exclusive to Google SoCs. Thus, renaming to
samsung,exynos850-pmu-intr-gen, moving the schema file to soc/samsung
directory to reflect its origin, since Exynos850 predates GS101 SoCs,
and preparing for adding Exynos850 description.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../samsung,exynos850-pmu-intr-gen.yaml}                              | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
similarity index 80%
rename from Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
rename to Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
index 2be022ca6a7d..f9b40f3fd165 100644
--- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/soc/google/google,gs101-pmu-intr-gen.yaml#
+$id: http://devicetree.org/schemas/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Google Power Management Unit (PMU) Interrupt Generation
+title: Samsung Power Management Unit (PMU) Interrupt Generation
 
 description: |
   PMU interrupt generator for handshaking between PMU through interrupts.

-- 
2.51.0


