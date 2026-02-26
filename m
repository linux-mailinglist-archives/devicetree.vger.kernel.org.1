Return-Path: <devicetree+bounces-268929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPjkK0xroGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:48:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E6A1A9127
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C8E1300908E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1A5425CCA;
	Thu, 26 Feb 2026 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kNugA4BF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8421E38944C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120836; cv=none; b=XrPOeXb32SArkt+qDsQRWBP9ENCszMEh6xBaW7YoWiYD6adllm9sUwsCKT66L+W7Qfhu7kh9y2EuD49W555hKwnxiG0Tzom364p1Sgu+KX3WKtGjsUzXq6LLkA/Y10+dzpvPtkYCj9Nb2s2dJI3ev9aNyVDLRUx30NAcYiGSgdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120836; c=relaxed/simple;
	bh=Qm9tTA61Ww9MqAMv3+0Yi00nEvS8JCqJXhVchUlKYn0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MLeODtpwNZ1GhTNy20Mc//G1DdRcsTMV/MMFm8s3Rt1x3npIIaJXVL8QvkUJNNQ6y4G3YE9y02X3ClZdjfF0yLIOYFW8zSgvAnyHtxWchiN6WDQRPgdVusZ+AbR8LtAbQH/DJ7yzASQ90MTkUNNOn9brSnBftojxeGtBPNXZ5CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kNugA4BF; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso9185855e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120832; x=1772725632; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zmmAx1S14LmDHsFx+ndwJCjg5ME4U7XjD590Zfkzuzg=;
        b=kNugA4BFt7lb8qhluU1N7NNJTDeSrvdYB0/ea0Xltb4aWj/jTXK4HhIiY+jtmKHGis
         mP1JKxX1Fe5Q+RkWAANmtgbgR3z2DOdIIQJQjOWOqTqkz/hjAx1iH7aCmRuGum5PzDrE
         yvt0ZfmmW+ONpbOReWNCTRVhIEYIX4JFvoeY3tE94jgPj+xm/+GJYphzxk6IyXVXjk9v
         f51K9Nq6dB6X2rIbxryikxfJRiGHzRIG4Avr9TGic6nEsD07AWlee1YNFBHdGu2eV4FV
         v6gVQJFOq+alQbene0ZeIHWlssFIdgxGPO1rRjrO3K5yuNyp6kHhsNZOFkgPqqGNUrUL
         Azew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120832; x=1772725632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zmmAx1S14LmDHsFx+ndwJCjg5ME4U7XjD590Zfkzuzg=;
        b=YWRiSyZmh6hmo0TSIZnhwNGSThdVtN/MoFHVlJIqjkSu8+bto0XI0R6EtKmZwYB9XA
         EtrG5pykjqaD/F+y7sK6j2/v4BNhxFgpmTemK2MQEp1j4I6oy9TKv5oplpF8sOXM8bAh
         9VqmT7RifrfNAidenoYxza6tqikdYQnLgRFCg5VTkaLvsPslOeCPSGtFjAaZeeBDK+dU
         uvsYLGrG1fq4vu/a0NFPGXu5bvg/bexNNKjXDQmLRqxf2hGKpfeqTFtxS7J2DSlVmLdW
         KpdpD4rCohqlpwtHGTOxDa2kju04oZLuNf74ToYdACv9wXyNiV445NoGdR2L/KaGUGpl
         OIZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaC2WijnOgiHE+UJLRQUIwxVWKo7q0DWSZRiasdbNTMZsf92hZJZGPHAjkOHiqZrW7O/Vki/gLJgJU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ZoE63BrZqed9gtKDC1w2FWk2OC9+9d0jqGmFpXU6rWKbgwpn
	tFuO4W3MicS+bI4KMdK/VC0XmLFoNqcZR4L0zxerlHtoxM0mWHxeXXgeBN77ZRWEeH0=
X-Gm-Gg: ATEYQzzgH3XWT6kMHkCJI+8zNXSzpXw1fR4oobl1GIZg84qUM6uszg77Nm1jzmfnf3+
	VFgd2Cpo1TXWg3h16JfHIufkVu8R8bJnxMhmQLnMaxy/9w+vi2BYbW3F7vo6e+YG9GPTHpNIIPG
	aDOFbNkhddYcQQ8Rr6rF7oLr2PmTHRxtsF11DjnmYOSIs7pIU4WJMBbyWoAy0/XZ3tojsiOy/ux
	3yb6rqxZAarOviMNwOD0VDzJD9LIM5gioWkc2vA3AfZ69F7qwoD6lsMrZRSCgELU7PbkXYZ17Ku
	xxS8id8sUpvNWleYHICo4zFQ61uuep4jgwSAuCsc/ti1xttHl42lQPTu55qKmz15K6m+3qWqWcl
	oWPHkWPPSeWM7AVhfcA4dn4/B6R3hGcoHNn4BGIFlxm3/SoxRPrdlEwxy/0QyaN9S39+FH3r+0h
	uD259FSlOtCWyzMtjj7T2PFSPdupg7GdAcwRzQTkhrQ9UavljQh9Gkb0K8joD3HUE+3eT41HRUj
	4hezAhdrd+4H+M=
X-Received: by 2002:a05:600c:3b0a:b0:47e:e2ec:9947 with SMTP id 5b1f17b1804b1-483a963df7amr351710945e9.33.1772120831805;
        Thu, 26 Feb 2026 07:47:11 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:11 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:08 +0000
Subject: [PATCH RFC 2/8] dt-bindings: soc: samsung: exynos850-pmu-intr-gen:
 add Exynos850 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-2-71d7c4063382@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268929-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 92E6A1A9127
X-Rspamd-Action: no action

Add samsung,exynos850-pmu-intr-gen compatible to the bindings
documentation. PMU interrupts generator block support is
required to enable power management related functionality
like CPU hotplug, sleep states, etc.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
index f9b40f3fd165..df23467d0e0e 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos850-pmu-intr-gen.yaml
@@ -15,7 +15,9 @@ maintainers:
 properties:
   compatible:
     items:
-      - const: google,gs101-pmu-intr-gen
+      - enum:
+          - google,gs101-pmu-intr-gen
+          - samsung,exynos850-pmu-intr-gen
       - const: syscon
 
   reg:

-- 
2.51.0


