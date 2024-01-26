Return-Path: <devicetree+bounces-35508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0483D995
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3F0B1C27863
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DC6179B2;
	Fri, 26 Jan 2024 11:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Bx4W899V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAB719470
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706269587; cv=none; b=DiKMZ2mOajKtom8C5TozdGIp4zMM8HPnFJlbGuep2O1fsgfIJ3SEWhdD+zr0do/HquNcoGqWzTrQBS0VzbiUf6ev/VdVmnAiJUKXTGS19Fy0qZf3dGUwpJKPNvRFXeSJevowQJslIosu0BGkTGXisHX5UmzCp43AAKOGYm/FDuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706269587; c=relaxed/simple;
	bh=MYgTpznrzXaD6fYHjmBAqa58IYtxhCWEWhjaZObhnWo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fPQ7OxCPvCXQSi/h7Dl6G7Ts/J6lvzM1uYEyiw/PJq/F1rojBrtyg9a6tesQWSnkHdlwEPTbLRebh6+g+85LpOuqA4Fxrxfc7DH0bZDItUB3gGNkBgR21l4fNoi/IWCYaE5nni/HrCOJqdRyIZnU0s/davWKNU6irz5vxVr5rV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Bx4W899V; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e86a9fc4bso4579405e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706269584; x=1706874384; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gBNfFDWRGxc5HogyZttW4uFMPBW85vTV+PElgd3Td0k=;
        b=Bx4W899V4SAirmb8TeBavpd/JgCUl/glxnURNppgpeWxp3vDokjm/9faPKYhrpu2qK
         YWdtVuzBU/Bb0pfJ0b5VWHzdudghKLFCxPiNtDQLnAkDB0lIkrl92zUHUU92zt5XiFU4
         fL6foluXvxtxmO0EZglIEeMdwabvh++Pz5Y4C+cu65FiByxjeYWNE/e8SmQLxBcDR46c
         FzXrzIeUtKgj+sOlvPqtOGiSrJq7gQWMGLQYAVgoWcUatX1tZWlQ6HXbYISPYHQeqhi0
         HYjjRbWpmlPX9J0IFU4UlLBe++seB92V8+6JWLbCjNJCZZ+pPWF2NZDGR3OHLiTg5jwX
         NeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706269584; x=1706874384;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBNfFDWRGxc5HogyZttW4uFMPBW85vTV+PElgd3Td0k=;
        b=ZrBd2wLM7LTyNvGm+fZQ2UP5lQxe2sOh4+s0d4h6LQPzJ5QqXVM6qZ4WOdI/YSG+5i
         kUouOk/G5ne2OliBuDLZ+QnMhky3QMEZ5vDsqF+6kF59fSY3zo0/XYXnww4iLIz48ARb
         Xq3/sdXf/a3VTK1JGZkB6HpvMP/b5WFYFyXp3qJqnrMrjnczKis8DL2ZadkMaT4mTcgz
         D9KoKPdZ32IoZZmQ52n75EaG0YiqdwhIGs7ZSPUKjwZ5d4hryH7SLVmJPzTXzwn2HHSU
         6temdEi3ujVOHGngtvB7bkkcZ7xIG8382NCqSoY5mKjZA7GCYcqCyT9JN+Dq5SrlXify
         XzpA==
X-Gm-Message-State: AOJu0YzKd7HJC72Qr/pGx6mcQ5TbS5j6qaelXEK+6Y5UlTKLDfcQTl+l
	UbMcMUYNa+ytzIyoJWhsllE2jcucH6k419CcKBna0Z1poe2/47DqtPIYTbWkMu4=
X-Google-Smtp-Source: AGHT+IEEVlW+BNWbMV85vZ6WYdTOqTzeRLV3AEtJ9tACnigk7GOkKqx+ZvsE8SGG0B3BCJLd8T+F8Q==
X-Received: by 2002:a05:600c:3ba2:b0:40e:62d8:3321 with SMTP id n34-20020a05600c3ba200b0040e62d83321mr750444wms.34.1706269584076;
        Fri, 26 Jan 2024 03:46:24 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id vh10-20020a170907d38a00b00a318be03519sm542518ejc.105.2024.01.26.03.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:46:23 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Add regulator-compatible property
Date: Fri, 26 Jan 2024 17:16:14 +0530
Message-ID: <20240126114614.1424592-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add regulator-compatible property.
Also update example.

TEST=Run below command & make sure there is no error
make DT_CHECKER_FLAGS=-m dt_binding_check

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
index 0da5cae3852e..75175098cbc2 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
@@ -74,6 +74,9 @@ properties:
             description: |
               The value of current sense resistor in microohms.
 
+          regulator-compatible:
+            pattern: "^SW[0-1]$"
+
         required:
           - shunt-resistor-micro-ohms
 
@@ -111,6 +114,8 @@ examples:
 
             regulators {
                 sw0_ref_0: sw0 {
+                    regulator-compatible = "SW0";
+                    regulator-name = "p5v";
                     shunt-resistor-micro-ohms = <12000>;
                 };
             };
@@ -145,9 +150,13 @@ examples:
 
             regulators {
                 sw0_ref_1: sw0 {
+                    regulator-compatible = "SW0";
+                    regulator-name = "p5v_aux";
                     shunt-resistor-micro-ohms = <12000>;
                 };
                 sw1_ref_1: sw1 {
+                    regulator-compatible = "SW1";
+                    regulator-name = "p3v3_aux";
                     shunt-resistor-micro-ohms = <10000>;
                 };
             };

base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
-- 
2.42.0


