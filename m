Return-Path: <devicetree+bounces-216031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96727B53754
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 190B818874C7
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6D734F46C;
	Thu, 11 Sep 2025 15:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sBZlDMUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EF634F47A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603689; cv=none; b=iUh09xHErwqIcvIPmuOwHPOr8BLZXCk+67q7GXcKFOGpKK3sBqkyMaxbxNXXGT80mzJ7eAtEBFsv6DvQ32/+/60V3Pq+r1gAnvNKiLEYdWQx554nifc4fPaqJpB+EzNYhu6zDZzVi8nMEovE/XArmfuCTBBj8YSC+wdK7t+Y5zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603689; c=relaxed/simple;
	bh=gFPP5AJxajK95ebcT+ygBcwnznDTFSpDjpt5bFKHJco=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OMEyi8quroqmO8mxLkRFdzuGyrFHqqbT8OvpDBkcbjs8oBlTmq50WOqgbcD8bdZkE1ylDiIJbYQdxTVr4KK/jmuy/UkUX2iuS/RWVeGhbhfFaNGD0z3NKdAdO1WMbNu+j1N6PakLsiXQcNv6YblOwrYPSjAKjy/gr5eI4OtJW54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sBZlDMUR; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-88432e6700dso5516439f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757603686; x=1758208486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TL8sBN7m+ljpvNUUKvtA2Gj21T9prXayXIxSz2NFiTU=;
        b=sBZlDMURowbtqyFhuvFBFXvaAZqP9GHX+AiR6MM5AmoPOhu/VkL8lPn6JlOwrOJjkx
         Vlqh6AjuCmydboDwDpi5l9aaIIxopf65+aJ6kwz+8mQqEw30aDHfAgGcHDzXovMrHpSg
         YBNUWD1Qi337fAuTI3PIoV1gJnIZPFGfRFW5FbcV+8/Jra3cNmbSK8N2I5u8rAndjDny
         sbpjC5TA54XNEp3UAAEPsIXhcoTx4VHRcy5qVvQLv+X7yVU7RmLsw1YXvZrReVDvZ3E7
         JsU5X/kB8qd4T7TJLl2a/tDnbo3FiBuxz6TbwONGqfQMwalkRoLWNxiheK1ZSFPMtNKB
         GXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603686; x=1758208486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TL8sBN7m+ljpvNUUKvtA2Gj21T9prXayXIxSz2NFiTU=;
        b=XapSH2QeLK5wB038TFDVxf3t3YUZyT2/zGnBmu28FHebLNGk8lF51CZoIVYjTVqYbz
         opDCBKCOxnCUiLHvWi0yxIyhL7PL1oasrWhZ2amIRnAdi2ZHwD6bZbi6anJRabuWG8Bt
         R4IvsEzqNwWifebwWZHeaV/Hc2CZAfuXp4oegZvqwXS97To8kY1OAa/3FUifAw3HzLDe
         aihwxPEBy4pd653eWKQqAzcBZ9a70kbX3Fpkt2zLtc0yCoQv/H0a8S2tr5Xoa7J5qug1
         KY0MaLKC2RWaXyu/b+ns36Re97aidwPJrQsmyh7iq1o7UVVl6rcr+1eTbvipq16sH+7Q
         9h2w==
X-Forwarded-Encrypted: i=1; AJvYcCXd8W2iuA5tDhqT5E6fHyTlI42mC/tmnVwznFQ4D0qu67jynqeTXN7I9dVlR6jnWgZR6sdawR+9ouHd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6rIsol6Q7cFU66NWM0UzIYHrjQwp/Fjc0bhckGkOpJBOik8D5
	awA/dsbt8bJT8ASyD21brd/d2wPlJRUSSHJCLZEpak/sBg3xSWUw2PmTUQ5xGJLxobU=
X-Gm-Gg: ASbGncvTxfVzboov1YqXPbgcke1JS9nT4htjlHaIykd4QGL0wo0i2VqoLAgBCrAsysm
	Fh2hr0bpE7I/dqeB5/CxE0zfl3HpM1OLtGO0aympgB1xyCvSeS5VqvRkE/5FvekaYB+Wf/9fv4n
	w3zDFUt0/jwcr7a3QDdm9FTo9hTexPtc4UeGAbH8CbpSyeIZF0r4mJkh8MM1qpjVkQ4o3agr2hq
	H3UnMr0roHSdATGlXnDDCcK9llRj3UZl3CgWL2l8SlhANYORjKR/IJF7DsOOpPl3o39lHG2OBZn
	/UHdpxb+WlntfgdqRzJCO8ISihVC0NObMvrgtdIj/l5CD5mvtA4RJ1e9jYvYYs1QrWQcgTjSoxK
	bnS2cVh1MWBJso88ExQZcBv6vCvxnbEMRqHjkTyVJ+foOh/tU6dQqM61Q6gN/AIrJTnvb7fQQ45
	AMFa64ShcbXQ==
X-Google-Smtp-Source: AGHT+IE6DbCHQGT3GL1n9OFvLlun1jX9ds1zSORNzE+G+6Ju2SnMa2q2FJWS74CsRl89wRYBcZzTXg==
X-Received: by 2002:a05:6602:2c06:b0:88d:4fd3:8131 with SMTP id ca18e2360f4ac-88d4fd38225mr1277407039f.19.1757603686287;
        Thu, 11 Sep 2025 08:14:46 -0700 (PDT)
Received: from ubuntu.localdomain (209-227-169-220.cpe.distributel.net. [209.227.169.220])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-88f2fabab2bsm68042039f.24.2025.09.11.08.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 08:14:45 -0700 (PDT)
From: Raymond Mao <raymond.mao@linaro.org>
To: linux-doc@vger.kernel.org,
	devicetree-spec@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: ilias.apalodimas@linaro.org,
	Raymond Mao <raymond.mao@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] docs: devicetree: overlay-notes: recommend top-level compatible in DTSO
Date: Thu, 11 Sep 2025 08:14:36 -0700
Message-Id: <20250911151436.2467758-1-raymond.mao@linaro.org>
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
Signed-off-by: Raymond Mao <raymond.mao@linaro.org>
---
Changes in v2:
- Updated commit message.
Changes in v3
- Rename to 'overlay-compatible' and rephrase the description accordingly.

 Documentation/devicetree/overlay-notes.rst | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/overlay-notes.rst b/Documentation/devicetree/overlay-notes.rst
index 35e79242af9a..77284afba9a4 100644
--- a/Documentation/devicetree/overlay-notes.rst
+++ b/Documentation/devicetree/overlay-notes.rst
@@ -103,6 +103,38 @@ The above bar.dtso example modified to use target path syntax is::
     ---- bar.dtso --------------------------------------------------------------
 
 
+Overlay identification
+----------------------
+
+When managing device tree overlays dynamically - such as bundling multiple base
+device trees and overlays within firmware, initramfs, or user-space tools - it
+is important to associate each overlay with its corresponding base device tree.
+
+To support this association, each overlay should define a top-level compatible
+string (referred to as the 'overlay-compatible' string). This string is
+intended to match the top-level compatible property of the target base device
+tree.
+
+By including this identifier, higher-level software or firmware can determine
+which base device tree an overlay is compatible with, and apply it accordingly.
+
+Example usage::
+
+    ---- bar.dtso - overlay with top-level compatible string -------------------
+	/dts-v1/;
+	/plugin/;
+	/ {
+		overlay-compatible = "corp,foo";
+
+		...
+	};
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


