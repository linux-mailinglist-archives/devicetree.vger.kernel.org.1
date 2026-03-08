Return-Path: <devicetree+bounces-272548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KzzHlUcrWlzyQEAu9opvQ
	(envelope-from <devicetree+bounces-272548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ECD22ECCA
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8692F301725B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 06:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB6E304976;
	Sun,  8 Mar 2026 06:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b57eczjC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46AC28150F
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 06:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772952578; cv=none; b=WSUMQYuAnYiD09JRQejqrVZloFjnsSFAE0zjBW8Tr0nAi3DtjkErVWCEYeyIb3KDiVTY4eryb44LKNlMx0goZhS5EsQ4sxlOplHJFUxQoBl3cmL9hQjBUOBdR4IZrTOZyd9HpwrFS4TWu/kyw0v4htITi/+Q8W9sw9eQu28XLqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772952578; c=relaxed/simple;
	bh=Q1Mw4iPnEI5rsfDY+AeNe/Tw6s3ezyKHhYdsva5o5c4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LSwcqX90CTsQBu5wAV9OcGV+/6AO8P3vImO1tQOK59XOPbiZrkRNkn1W6T9kiYaMWczA+tQceEvLthcvzrzAQ8xOPKfdr2aTKzB1FKugFIrMqs3CbGH0QPFtoUcDspQTKOw0ABoDj68sKKPX7Y2jVZ/sdz6F3Gmm4/gVgJaBcQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b57eczjC; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2ab46931cf1so72550275ad.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 22:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772952577; x=1773557377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4328We2ZSbU89dRtsmQ/+aiFXF79IsV//dOQeF+Tbo=;
        b=b57eczjCTSx1GwYIQEaVk7w2POhYJOvhdWiCf8YP4FDRvZGT7hoYt9EfE/WF541LNq
         7JfWZ5InnmyQ2B9Z2iAJkSAuLu6pzoIdp2ELHzGJJhXFL4XPLkwD8CBprnSWYCE3Gj9V
         5p+UdTioQVZYrhLitdk7CgUHwGbUWGK1+hS4F4IILCXOoXWlighMVAN2C3TGUd+dWh/G
         N0/Gjncg+3bnRo5RI6ebolqGJkrWqiqPnAN6nKwUibMzAKw7nDsXDMQhlISSszPcyFla
         uSrUdehJH/ibTKnnlbNvtVnpcA46Uo5mvg+YShNugOFgokQb2OHjSd5tbvnljY7bhjGQ
         kiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772952577; x=1773557377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j4328We2ZSbU89dRtsmQ/+aiFXF79IsV//dOQeF+Tbo=;
        b=tXwOACzlGDvw0VWdOVms5g7EYpEvhh7+dxKK9s21e93XaGLzf/5kfrTtEY0uN6m66+
         uZjmig4ehoG2Go3TQ8V8QCgwVOXfHtxyG1HULwN4oYC5prclF9tZx5Xs+C22aCGluSjx
         MlWTQInWBjAElkYuFKITQa+Nwd77Q2PjQc5nQsM/aTy1Avqp7OW7YNnDUq9y0YMGbmeA
         ns6O/k5XT58CWq1j/vHzU2VH8Y8MMZGSU9P0QmxQ8FZdMnVAwBlDN1ZqJ4EB69Dsp2m1
         F3NxU7EiIiwD47ICQaraHCIH8hn6qIAZRYXtebBrX8+bnIZ7ddQ2kUau12CuZIpchioI
         ni3g==
X-Forwarded-Encrypted: i=1; AJvYcCX+w7chmoO/WFPh/uzeAEUNHH+wGvQF91IQ29u5tu94CDeB+AZX2/eq1pPZh2PohrQuYiQOYP7wuDep@vger.kernel.org
X-Gm-Message-State: AOJu0YxOhDuKpEIaLwOu5gTP1HGnrpQ40JZuosrCVPJItAxabh+vj8Ik
	MIHyKyTPJf53dP3UVafHT70zESfkZI1GIwF7aYv85ORw8lcr/ganyyxX
X-Gm-Gg: ATEYQzxRqHjVD8/FmkWVt1ctv7GkDlRtWQxm7Zsu4s4TI6twoek4npvlFaWmN5yTcWS
	WS3zSgsx0M7GTud4PGywmte/w26mJcbx3btrd2EBWLk9wzxSaju7ESOeqSaqXpLh9VtDC6Wedeq
	WFdwyKKhCpakNkxtJjjwasONIv58/+3Ez+eEArcM5RPE3dPk0cwVesSVzvCDDhqMFjMCVi6zpUN
	otSb7Me250BfQ+ndfx1aOsfbw8Cmj6mDHO2TmKt/GfanVZkTZZCRi8mTp7TzoPyUg4+I7rGtCjB
	WxXGBaAzdWXy/FjNHqR+HlWa3Of/zld+RsjDdJKCot4KEeyocnI2coDrlLbLEsdAYxvrvbaSrBQ
	4FYdfjRo+k9M2CtdBzGPX1xhALy74qtHgt9a1PD+awK+X1EDs+VT684jsA4eRHAcJwvu7HblEyh
	fI601Q8sdAQMgPeSL0+Q==
X-Received: by 2002:a17:903:2983:b0:2ae:5350:3a4e with SMTP id d9443c01a7336-2ae829f3447mr72533275ad.21.1772952577318;
        Sat, 07 Mar 2026 22:49:37 -0800 (PST)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840c9a0csm72503225ad.91.2026.03.07.22.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 22:49:36 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tianyu Gao <gty0622@gmail.com>,
	White Lewis <liu224806@gmail.com>,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 3/4] dt-bindings: display: msm: Document DSI controller and DSI PHY on SC8280XP
Date: Sun,  8 Mar 2026 14:48:34 +0800
Message-ID: <20260308064835.479356-4-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260308064835.479356-1-mitltlatltl@gmail.com>
References: <20260308064835.479356-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 19ECD22ECCA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272548-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.2:email,0.0.0.4:email,qualcomm.com:email]
X-Rspamd-Action: no action

Document DSI controller and DSI phy on SC8280XP platform.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v4: There were no changes to the patch.
---
 .../display/msm/qcom,sc8280xp-mdss.yaml       | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml
index af79406e16..a710cc84ec 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml
@@ -50,6 +50,22 @@ patternProperties:
           - qcom,sc8280xp-dp
           - qcom,sc8280xp-edp
 
+  "^dsi@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,sc8280xp-dsi-ctrl
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,sc8280xp-dsi-phy-5nm
+
 unevaluatedProperties: false
 
 examples:
@@ -129,6 +145,20 @@ examples:
                     };
                 };
 
+                port@1 {
+                    reg = <1>;
+                    dpu_intf1_out: endpoint {
+                        remote-endpoint = <&mdss0_dsi0_in>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+                    dpu_intf2_out: endpoint {
+                        remote-endpoint = <&mdss0_dsi1_in>;
+                    };
+                };
+
                 port@4 {
                     reg = <4>;
                     endpoint {
-- 
2.53.0


