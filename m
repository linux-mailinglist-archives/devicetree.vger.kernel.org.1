Return-Path: <devicetree+bounces-211826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DC3B40C57
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 19:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 973261B63B4F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 17:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D599345733;
	Tue,  2 Sep 2025 17:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UWNm72vQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACED32E0915
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 17:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756835080; cv=none; b=XuMBvt71VdlL1iPrjW75yTRkmtai7fcN2NuffmuINRCSQwHmabQm+DTqOo6tJdqjDwKzhWOPEwDx9TK//OLkjiMlFl3j+TMx8T9TjaaD+JennMzl8C1iIdnjKcvLHpSNSw1ueYJ5M606Im2+d+QTvymVAlbW1PJePaXH+xa1N5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756835080; c=relaxed/simple;
	bh=BdSiKF9n+eeUAE53HFjfWgvtvo0CoweAVbKX7PsygsA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=d1eJLzVhzT3Eagvn3hzmnhRmJoc+mndiMezV4UMjLUP4AvyYYt6zJguuthRSSk0Eyg3SKptqhjT5L+SsYIC8XcR+/vah9Ux4CYBZrmg5yTFKsckpD5uz7MAiNObpIHGtK419DkZChRUKXqdsOyABwstkUmkZiH8KmIvEBZJZJus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UWNm72vQ; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4b109c59dc9so68477841cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756835077; x=1757439877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2mw2O9IyBVINEqUK0JHnLd+CikD2F9nmgloYlgwO8Xk=;
        b=UWNm72vQNYs7X+YPDrLDqnvGcU0E+U8dnZnthV+HQx+p8O8Kp3KNc9Qjd9y52bZX8G
         vadsu57e2rrGLdzuSiulkvvSyFzy28b1UpNv/Z60GgDdqCrY4rMcnsuyX19Dslt6y/3K
         +vPdRmalidlzNSYYv2zAWdisft+b2K3jXz+/YeiYclKGtaLHuCyrGQ/9r5W9WfLgnL9I
         2q4hOK8KPEuRJId8dYDTNG1CW5Oza3Qx9SCHY+1RSY0Tdy+NTxAV4Ek1wC6QGiaMvtTd
         1jPNauY7Off+IS5Du2qf9xI8m7SXO3p4H+58mHFo3YxSctEbhlhPb734z2hyURklC8My
         5AdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756835077; x=1757439877;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mw2O9IyBVINEqUK0JHnLd+CikD2F9nmgloYlgwO8Xk=;
        b=PrpN6BMhSQv63pwxAOyLYtHKvvcBf/uN8w8/gt6ZuIUocGGhmbonLFIkoXj37PCpn2
         4pZ3fslLcVAaDbd/fnIIL5hdM7dJBSvriIzKvOECmihANqlhgtWxrFAd8APQfijLumGu
         Q0Quj7+xp2KFpYAk0r25txH+03yEXfA07en/Kh+NEmfgh6X7AuKyj6sy2r+lPnwCxqOB
         2wGWqm/Qm9yMxjrrhI5p1AbT5K2XatsHqug6G6VbAaDyCTna0uYJbsvSg9e+86BRO7Tq
         J8TFhF4kc/Tevfehy5fNC+xyHEPGbKEYAFny6jCGgFlCp/5v5uvqxvSt/k+b6Zmg+Ntr
         tffg==
X-Forwarded-Encrypted: i=1; AJvYcCXsnW8y94LnzZVi8acfPB5uaSINhmZlZdFgHWCSBvrNklgS0AaBlN1MdyYhgCrRulUeMpl36WLWtTou@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp9dyaTe8hImAYLUB0hfOE/q3Jh/TazjiW/Ou1LBE12p4Kew2u
	E2Jtr0u6PuDAxuMsgsTDt+uRkbZ53hgCl2r+EVN+WAgcfM45YQyU+eF6+asfo8MUCPk=
X-Gm-Gg: ASbGnctTLqJejgFlDDhsv2ygQABxVF+d04hBUdflGOXP5mXa7V5xEn1BkcRcVfvCaMh
	gTleKyWNYhn0mUUPX+R85Zc5+0IKQrJYgs+zwlNWCoDU4/hQW1EAkNdjiO4nFFFby1DLFjYSFxo
	ZDTjOHP1gQpGbjJMwXToIVt+H4/WLkamR3JNmtlQh/2+yQRSc33KdY/g0z8MPVLb2N7MIXvwFvL
	V8/B0ew+KOXsuPyg1t/hVnz9XCrWRcO8vbqUmkf6JBCZHTrpsoFs6Th9lxFDBIWiyq7PFSV5f2O
	0ZBvJkAteitbpVIWkGwsCYM+nBKPxy5OmSU/u0uLtS7Gg33akwovm9MRgDhSmzYqMX+KHkxtbkI
	8LJJnybTLPm+5zCyRCTwSedvu/o9b9SaDvUuXiNDEawJerhVgyj4M23Dxy7R2Gp5GjDhaooizF1
	YJX0EM3OD/XqqPYRcJajlA
X-Google-Smtp-Source: AGHT+IFyf4Ivig73sOQhD71vsZ3IHMgCorpcKXWlE+x2Lg1DUGxucTOJYhdeLvnLQSIj/vNApEFeaA==
X-Received: by 2002:a05:622a:4ccc:b0:4b3:4cf6:f666 with SMTP id d75a77b69052e-4b34cf6f7c9mr32859441cf.11.1756835077394;
        Tue, 02 Sep 2025 10:44:37 -0700 (PDT)
Received: from ubuntu.localdomain (174-138-218-227.cpe.distributel.net. [174.138.218.227])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b3462c9621sm15095631cf.24.2025.09.02.10.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 10:44:35 -0700 (PDT)
From: Raymond Mao <raymond.mao@linaro.org>
To: linux-doc@vger.kernel.org,
	devicetree-spec@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: ilias.apalodimas@linaro.org,
	Raymond Mao <raymond.mao@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] docs: devicetree: overlay-notes: recommend top-level compatible in DTSO
Date: Tue,  2 Sep 2025 10:43:50 -0700
Message-Id: <20250902174351.2457022-1-raymond.mao@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When managing multiple base device trees and overlays in a structured
way (e.g. bundled in firmware or tools), it is helpful to identify the
intended target base DT for each overlay, which can be done via a
top-level compatible string in the overlay.

This provides a way to identify which overlays should be applied once the
DT is selected for the case when a device have a common firmware binary
which only differs on the DT and overlays.

This patch updates the document with a note and example for this
practice.
For more information on this firmware requirement, please see [1].

[1] https://github.com/FirmwareHandoff/firmware_handoff/pull/74

Suggested-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Raymond Mao <raymond.mao@linaro.org>
---
Changes in v2:
- Updated commit message.

 Documentation/devicetree/overlay-notes.rst | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/overlay-notes.rst b/Documentation/devicetree/overlay-notes.rst
index 35e79242af9a..30b142d1b2ee 100644
--- a/Documentation/devicetree/overlay-notes.rst
+++ b/Documentation/devicetree/overlay-notes.rst
@@ -103,6 +103,34 @@ The above bar.dtso example modified to use target path syntax is::
     ---- bar.dtso --------------------------------------------------------------
 
 
+Overlay identification
+----------------------
+
+When managing overlays dynamically or bundling multiple base device trees
+and overlays in a single system (e.g., in firmware, initramfs, or user-space
+tools), it becomes important to associate each overlay with its intended
+target base DT.
+
+To support this, overlays should include the top-level compatible string
+from its base DT.
+This enables higher-level software or firmware to identify which base DT
+an overlay is compatible with and apply it accordingly.
+
+Example usage::
+
+    ---- bar.dtso - overlay with top-level compatible string -------------------
+	/dts-v1/;
+	/plugin/;
+	compatible = "corp,foo";
+
+	...
+    ---- bar.dtso --------------------------------------------------------------
+
+This top-level compatible string is not required by the kernel overlay
+mechanism itself, but it is strongly recommended for managing overlays in
+scalable systems.
+
+
 Overlay in-kernel API
 --------------------------------
 
-- 
2.25.1


