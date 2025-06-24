Return-Path: <devicetree+bounces-189148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C79F1AE6E67
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 20:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A73C61675BD
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 18:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F8A2E762B;
	Tue, 24 Jun 2025 18:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VPpnXkIb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779CA2E7624
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 18:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750788829; cv=none; b=K/Qilk5Mc/9Yljz3dFbadlm7gk6SR5L599iNdEFr8haf+cR1zT9d4sGYg9n7Uo6/Ts3DIBixqgjdWN4/g0hK6jWQMFJviCJP6DB4ujOjq0nRz2BOxHPRVVeBvKM/eBLEiSFX4rWB/1UwFmFQk1b3lLavAVwDdOpxwmwc+GUQZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750788829; c=relaxed/simple;
	bh=x7bIFuSH0bmY2kRsFSxdIiraxlTD0X4bjQj1Tx6kolA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Xul2n5yPmCKSQ1MkREOIgUarIw0cq95EFsFdN16O5pcOFhpNiFd7193dc+832zGkVb8abMU4I2IAzHvlHlmyUV6FmbwtkhUQI2C+c+rE4q1nv4D/8Yhgh9oHTUtNHDwb9aApYWqbafEKZACxtxue/c8B7mTUPEY3EItFo+1lIlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VPpnXkIb; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7d3efcb9bd6so65711685a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750788826; x=1751393626; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2BDuY3TQuMxlT97CpLHc0HQj9uQaoAWTaiKt1gOmVfg=;
        b=VPpnXkIbU7r8Bj9WWKL663Mrh9skcapHbkuVomOdhZN2kRy6Ib2LHfgl4sIcd+uYHD
         IBAdgFTmBo2dhpWscTPpOkVKbqW3p0WjwpFuNyKtAnIvMXKQTWcM6QxYSunQuRJ2A2Fz
         cTJS1MpO+lPsV3o7ZFmLrlai77NxsJkPZfkg23ES04pTbjTu6gOse2m75mXEc+jNLvjP
         TObvAGsmkIKhAk/0GJ+g8ZIdmAT88GNlv+DeF/Dlaee/SEiR8mMPB5kpMLcYDrfjxiyH
         QkSkdBmJXLXwPic6op0v25HLOoRUyvKEKylHUBEsjrtOG99RIFghtgws7cbTpaMISD8o
         OpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750788826; x=1751393626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2BDuY3TQuMxlT97CpLHc0HQj9uQaoAWTaiKt1gOmVfg=;
        b=DKBe+7d92LjHL0CyvLZRZtYCODWpuubea/vQOXSu2AtBhrPhIvfLJqY64qp8i7rPHD
         pEeAOPNsbonNsHg3J+mxEmeF9UtDg/Y6Xf1F4DLqZq7P8g/Ry0naAWgueXVxBIbZFY4P
         tGSqjPIKQL7SlruO4T4TmsDdeNkGTBgOOqYGeGcxHBq/gitPeK5Hw9F8rcEIfb7czefM
         qIhVp9UfWvr11IDHOloBV9qzBwMLt3Re+6VfC2lstG7qxiNJ4p3Te7h4YIRkzSpNVFcC
         vt67o/WpeRx7e4hrgOuv+lNGoAG20ciAQHdDaQK8y10VLwxLlrqRkQriI7Tc7+WMjUzT
         Yj3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXkQOPTSX3zRS0RdCOnZckONSrf8MeEKEqp6VTiN57TzCoEJN7m2OY1GZsQVCd5ovTVjfubQ3CervsU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk/N3fUUNa+1s7I89DKKazW8VHyqjzLWn8P8TJ+LOCpmAIWp0D
	dgvkrDouwHawEpM2xLG6k3T6ptYmNa3NC+FKbmnOdtxnv9ztGjUIvHUqx5yxVmPfAoA=
X-Gm-Gg: ASbGncs0D3Rj+aXPayiFrhykC9erwzqPzAMAU1XSx2951XZsxVBk1EbYzprygIaI5wT
	olkhthOB6qlbbLnduYZ5+ltZoM5YXSnULYSrO076PY3LxvLmpxuIKmjr8a+HNqjIb10a41BYAP6
	Dh1TeH3OrP+oJmsloQ7denChT8YKwIye2NNotQ+41iJqP1mh0iDcbXByt2KiDce0fuyMRCMI3Am
	jvOyvOqc7JeB5omGp6V2WVXLaOIstcvHSvvufYMsFwluXaYxjDSzXnpbCC/lreG+pjgMxYWR6ML
	LmwCTvRJWjGrjvNvSbkeWGZMSWcrBd8f83yRMjB3l/E879avCKI+FjzVZ8ygc1NpcY8az9rY90i
	E5h8j7Q68oZNphx2CY+GlAFksNFc21rckUquGoWBSPLTrcJw=
X-Google-Smtp-Source: AGHT+IGEQFq2JZkm7FgnV5H0r5TnpBmsM7o039o22X/+KPEHEtXzg0gc6VA/MUCWCOdeOhY8v66+Jw==
X-Received: by 2002:a05:620a:3186:b0:7d2:26e8:d186 with SMTP id af79cd13be357-7d42971d918mr5458785a.36.1750788826137;
        Tue, 24 Jun 2025 11:13:46 -0700 (PDT)
Received: from ubuntu.localdomain (173-206-114-64.cpe.distributel.net. [173.206.114.64])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3f999c1b6sm532161885a.6.2025.06.24.11.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 11:13:45 -0700 (PDT)
From: Raymond Mao <raymond.mao@linaro.org>
To: linux-doc@vger.kernel.org
Cc: Raymond Mao <raymond.mao@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] docs: devicetree: overlay-notes: recommend top-level compatible in DTSO
Date: Tue, 24 Jun 2025 11:13:20 -0700
Message-Id: <20250624181320.2810521-1-raymond.mao@linaro.org>
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

This patch updates the document with a note and example for this
practice.

Signed-off-by: Raymond Mao <raymond.mao@linaro.org>
---
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


