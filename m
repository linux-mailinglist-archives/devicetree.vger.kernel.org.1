Return-Path: <devicetree+bounces-268121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEAxNPyMnmltWAQAu9opvQ
	(envelope-from <devicetree+bounces-268121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:47:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A451922A1
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2A3E303FAC0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2D3D2DC787;
	Wed, 25 Feb 2026 05:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eOCJCBBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FD12C08A8
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998377; cv=none; b=N4uBLMshbIG7aCkGYRnZPbLfvYdbAtP22tsWcdybk0glR+ThwvcIwaehmzgyqT9FpTOXVvPBYhAnjFmjOxxPbT4/7vHeTuACH6IK6O3CF2lhm0MmL4I9hJEx6rgsfcYm+3q6NVpeJKV/prbkOnIpoUFTLq8uBuTrNRcUBnjyhW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998377; c=relaxed/simple;
	bh=Oph1MiVl0LZG797TrmI5vXhHO5UUltZ+0w5/M+ZLDwo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=amDiEIs8Z12iJbMc8IPOojzwSDc0lCo4EXst9/TwE+0JaEXLSpaMc0Azq8CkLQWX0S88EhgkJt2c6WyvR9gPRzwONuCWAtyXZbOSAMGaIhXhwVhaTVpa21R2UcjAZusw5aa+fnYtYtYaer00rtFMPIyUdStZkcm6TQmM34QqXC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eOCJCBBU; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so56044995ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 21:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771998376; x=1772603176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ctCiaK7OMF92qM4nTlZLKq6zwDFa78jAQVMaISXu7Q=;
        b=eOCJCBBUo894DYuag9Mv8xuj7VpJwVRfQpCADSAz1EOonpBiT/Ok0FkNizFOi1EWwG
         o4D9NP/W6KoG8qKHXxKwp+Sj8n0aygV3bkSLrQK9buVYuU56ee2sdyJzz6B6mvN+RMtr
         iUqNk4mhRA/7j88Ry9Jx8EtbptPeu5obVulzxzOnWq8g01moz3Ts6QhE60u6WY3PUSrj
         96m1vRTnoTDBV3O0FcynTKzUJi3MKzsj9wilNtGAjcKSfSVMMB9pbbr02WsD5bE8VBOd
         KWGrFO84eGV1gEWvnza0KiSLj3DlSkwAptzyc1+Ed6Hgq7kRqbQe8x8xxOBXtuNUYWa7
         F4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771998376; x=1772603176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9ctCiaK7OMF92qM4nTlZLKq6zwDFa78jAQVMaISXu7Q=;
        b=BJtgMrG3fQuf136yYVxfE1xNBagvxUfjhezg1szQhfrYtmzm+vlrB/8Agx3IYc6Yfs
         M+mboKVT7IFXtWDMoI+zZM5hvT6m2+VlOzakb67Nx098DLv6yoa9t52iHPdiPw7ODcge
         /Ih4zXDsCbp4JheNTuC18z3e94+X0sJ1k5vqG+iB8io+BBobsZt39JPx05A6QZEVB8DR
         mB/frU2A3YhqQQ2h5ryeZZyfwlOBSfaiDjcP8O6q1snuBgY2NajgnHh6r3LZ4WSY6IrF
         gXg+S4PiUSgDMVGyv+iKmfeoAb8ETIbqxMREAaaSrMcCdkluLrtB+Vc+YUYkX8Frt2Zv
         Rwag==
X-Forwarded-Encrypted: i=1; AJvYcCVn1nvnj9tTI/cDoblsO0vSLJipsAFnEIBlTW8PDNDtrE+PzLycjyYgQB/hrbGsLDU7IdT5goyL2d2A@vger.kernel.org
X-Gm-Message-State: AOJu0YzDxYCkN9VGk6QNhOuZljkifAfbp+Jhx/xIhgS1qYbtBG1RtjRV
	+HP6LVo2WrUJPAvoDeVmL1qafHJMJrB7GEZepOlKu+aYCBg4IpAcc3aI
X-Gm-Gg: ATEYQzymTpetHC7C11Z39bUuF64F9Y0x893Z6lYgxvuxltDT1gIhaHAlGcwg9IjJ6yR
	kxFvoSc00y7cMh4dCi5sKhy5Wqum7YZSy7IhvL9tnxH+Ltyuetr5V3pX2PtJYyZ+ZIGg86R3dRG
	lgb0xKcB/eoncEfWl1Kk3LmwUCYsDo3VI9O5vWfRZF5/mXTbWu5b2v5K1tDfVJVeol8253G9cZe
	oXkq1rGN0F3FJz+qDJxdQj1zGQlTkfXxy8DRj65Qs4cYC1OMEJMtCytOyJ1RZfN9kr7ywgs5PI0
	dgmrL9TPn+SrX5Q+0ZMr49TOGhgbHIapUoA4+1PXdMcDRlI7MKBPv1WDKGZyXGfrotxW27CfjLB
	np3HDD0iWUdW0hpJVNJ2Dn0jfWghKId98Ike1Eeteq8Ybp9zE7xBtEG7YsA+4m/5M23go7tNEno
	B6iChsIw==
X-Received: by 2002:a17:903:8cb:b0:2aa:daf9:6980 with SMTP id d9443c01a7336-2ad744ea5d8mr125882705ad.27.1771998376243;
        Tue, 24 Feb 2026 21:46:16 -0800 (PST)
Received: from nuvole.lan ([2408:824c:a17:8230::c83])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e318sm119665295ad.43.2026.02.24.21.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 21:46:15 -0800 (PST)
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
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 3/5] dt-bindings: display: msm: Document DSI controller and DSI PHY on SC8280XP
Date: Wed, 25 Feb 2026 13:45:23 +0800
Message-ID: <20260225054525.6803-4-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225054525.6803-1-mitltlatltl@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268121-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 33A451922A1
X-Rspamd-Action: no action

Document DSI controller and DSI phy on SC8280XP platform.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../display/msm/qcom,sc8280xp-mdss.yaml       | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc8280xp-mdss.yaml
index af79406e1..a710cc84e 100644
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


