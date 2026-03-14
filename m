Return-Path: <devicetree+bounces-275760-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QP1XFYPXtWkn5wAAu9opvQ
	(envelope-from <devicetree+bounces-275760-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 22:47:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ABE28F160
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 22:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DCB5E3015D9F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 21:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27A638758E;
	Sat, 14 Mar 2026 21:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MlSIqeQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD16038A724
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 21:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773524797; cv=none; b=FIzlHCiysfqnJCFa0PZZeAOM7Y7UJo98BB0RnqPXnOWUwNXVuviXsmAMQnKVmieR+JFH2BPRlhVZiBjWxITvOcJObyoMPUmRGBi926RfviysToMCb48gtBA+sP04E1ja/j6Ndshbhx/5d65sj7H2EPuH2+1c1tTWiOmjqSyjDUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773524797; c=relaxed/simple;
	bh=HuTZem6WD63BD435M83j22Zf/cfFLJrqs3suzghbsJU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DCP7rRevddb9q1TNUdkWrXnk+AyJye3avxbS+myLpKKfSjFf4wk0m18/rEQLomZvgOimE5i3ClrP4ButnB6vqKzl9TEorNXVH/pQ+s5C9GLWeVz8Wg6nb7X6LOJsw62ALhMaT8gDdwwGaGN4TZ+oK3FyBdcILC39d3luRLLeBwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MlSIqeQG; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so3162760f8f.1
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 14:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773524789; x=1774129589; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WouhV1wJdcqRp0ZqWSI8CA+UTeojrOgDEfJ5Sm8iumM=;
        b=MlSIqeQGJOjs7A26w+w8YgdGfUise1OBdCjtcAqzj0xHVntxWTQeeuvg2QgXCZ9/HS
         h4iYc5F7dzgO29N5YcXWGVx4g1fgF+/pLHFiU9Raq/QzeurOyTjx4HMZCcdzEMk4J5gT
         sV3bwDiUJTlAh5AWvbL3mKsopn900BJQkdCQcKNsagdV3nb+sioRnv0eqNxnUYjXDqkJ
         CDN2eKi9r5mbKSjMYXx8t6ZRKB8t5LZg/XCyFYROC8AEqcEXbZN/6y/XofaCbpVvWtY0
         0lxqSNVL7tWgoXYMhOifEYOoAJ8fwmL0AlNrhbsYv7hVp1X9Pjj6oLJtu2wTzmJIL0UW
         SVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773524789; x=1774129589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WouhV1wJdcqRp0ZqWSI8CA+UTeojrOgDEfJ5Sm8iumM=;
        b=fWU9PCHcOxbcVxKYOV3UkKxQrgA+hsNcWmWmLZpGyjcC4vgqVGhQouoXwv371hjYDv
         zYYd2pUC//gXmskauENymujpv0zdTSBsfLMSFAxosCu+uYhYvPN7M435X5Sxue/pu0bJ
         LB9ukYrC95JwCNn/9+gOJrSigQTMyhGCDco2uDU8kl2paLl4+4qmU3B8CZEwm4693J0V
         cOyTwb3A6VQQUnJFAK3LgSVaBuURTg4M7r93yQUMz4a9umgncCzlf9vZLAF3SSG7iPCz
         1TnATNKCyp2pxq6OUzJN6rtcWmsGspBIQ1enw5nX/PgLADKYqkhojsarNhf8FbfnzxqT
         Yu7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUR7run+vviO0OHx7stF0kGcXt3Far00Inp4rCnCSQXOy+Ip2EeMkDBlTQmIhtAYHC+E9MXCUtRdZFC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1yFBW7z8NdQaAh2Wv31/YHpyTBbYCPleES25+4gdiZlRtyRz6
	Inf/3SbErSrwQM1ZdIgLh57wkpR6rtcwOu/6KkWT75d8jIT1KqCt+3ga
X-Gm-Gg: ATEYQzzE+vAs+equ0y18TQAqU0vyk0S3gsjqIwHNOJWU+0/yZQ1/dkEin4ha4mhguq2
	4MaPyUtVnz1LWHrJv1nOqykAaQIWCtZYv9Og8WJfbyMzx+W8DCTZSvY701YRNhIckwlt+5cE7bx
	S09UObprUx/kqyzhkjrvE8luH+nnBI/+d+gQ+VNBrX7UukYnmE2P6pVLks+h6jWbM9VJ/FNkFIg
	+JIVxkpdjsgQbIofXNocptZ8/E15yytFoIn6UVOok7olNZK1qqbzmMkimSK5+OfHhu0Q+MiYOK/
	oOi26O8uGxyI8vU+dDLHECFuBYpaNR75auMqKQspbtWEpycaan6jinWR4WEFagbKZXfRWNlAc7u
	yB47seJy8WSPZ3AEzYoFBI9zX6ijkkGEENxbU0pEWNleT08GRbr1P/UzyceYOLc1WMqPjBWLE/e
	dbzBxLThacYU7gV3CnT6Oem/PCuLZ6KlLgu/djzKCUeyODy4JDr3uxOkniUHHSzng=
X-Received: by 2002:a05:600c:2295:b0:483:a2b0:d210 with SMTP id 5b1f17b1804b1-4854f56d693mr146590025e9.7.1773524788919;
        Sat, 14 Mar 2026 14:46:28 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19aec5sm28756221f8f.4.2026.03.14.14.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 14:46:28 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Sat, 14 Mar 2026 23:46:21 +0200
Subject: [PATCH v4 1/3] dt-bindings: display: panel: Add Samsung
 S6E8FCO-M1906F9
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260314-panel-patches-v4-1-1ecbb2c0c3c8@gmail.com>
References: <20260314-panel-patches-v4-0-1ecbb2c0c3c8@gmail.com>
In-Reply-To: <20260314-panel-patches-v4-0-1ecbb2c0c3c8@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773524783; l=1325;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=HuTZem6WD63BD435M83j22Zf/cfFLJrqs3suzghbsJU=;
 b=xtreJUwAcy92CqVk1xHYCShCK+Jg73BZ0BQMe9255qqbRrr3GsfgqWIc6mOmasBBAXN7FBBEk
 jSuFlUctZmnAsixaABv59Wd0hoJ9EYftBq1fI0I1Y16SzmbAb/eSIeD
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275760-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,disroot.org:email]
X-Rspamd-Queue-Id: 17ABE28F160
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add Samsung S6E8FCO DTS binding used with the M1906F9 6.09" 720x1560
panel found in the Xiaomi Mi A3 smartphone.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml        | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
index eccfc66d7fe24fbe86e3c25f35beb0855c4fcee6..05451c1b00dbfee9034a05be7be50c3820d3787c 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
@@ -8,13 +8,16 @@ title: Samsung AMS561RA01 panel with S6E8AA5X01 controller
 
 maintainers:
   - Kaustabh Chakraborty <kauschluss@disroot.org>
+  - Yedaya Katsman <yedaya.ka@gmail.com>
 
 allOf:
   - $ref: panel-common.yaml#
 
 properties:
   compatible:
-    const: samsung,s6e8aa5x01-ams561ra01
+    enum:
+      - samsung,s6e8aa5x01-ams561ra01
+      - samsung,s6e8fco-m1906f9
 
   reg:
     maxItems: 1

-- 
2.53.0


