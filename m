Return-Path: <devicetree+bounces-255793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2318BD2926F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23B20309EE15
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F173E322A15;
	Thu, 15 Jan 2026 23:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FWEC3fAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414723168E6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768518063; cv=none; b=ejRmdPI2gEwuRzqT10Q7sPDJmKDYlvLHcWKhLT4tAeDbtbxFvUlicYzy3LSfpqvHRyDpEALuRUbSgt2b8iHwyo513aTPpKil6+J1gcEMpwWB1kLPiThL7j5/knKgQBcX/wV4NSfUMP7Z1IwaqLAUvxsO4+yhRIlYKbLaifZNMWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768518063; c=relaxed/simple;
	bh=0ieyLuiLBkLl0I/xXUxShZmw38Xo/GhNFx1QJLpUbeE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RokmlqPu8mT9DMENllD7NWsMvhd3NrgvTnyxV7AYR25WqgVMCoJ9YAkEmBEEa3QDwyH60LOfOpE+E24/a4zU0+1bbSsHEx58UsRMFd2gjk4q4XlqwaHAQOPQy56Iter7lkbkwf3TCrgdFEDHXoXPalm+15QyDBbH/BPH2C4oWqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FWEC3fAW; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b874c00a39fso246082366b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768518060; x=1769122860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AN8djTaSMXZ3/xf3zVAOtl693GS2jPF9wZ4WuiNjNKE=;
        b=FWEC3fAWJ197EhWHhJ/bbXA+PT6fJ8LrCInwrLCiRmeHycQAAI9d9MD/L6qjO+BvHO
         m0Ia/X2iu6rdV/QY84LLyz26TPHg/r73eJjHl1917/SuNNIuqKf0uR/xfoXP2WygUcqn
         NWBsZuvMnJCylajOnCTKkid1DnW016a5G5v5u7tKA1ZdZW4j2gHqx2rwfIU2Dff3YN9/
         2cP0191XXd3mjll7Hi3LEMu76/OOlVlgs9/9FugwTUb2ECWOtMjIjw0ouctgDg7LPiIV
         UZGqNIUofiKNn424NHCtGQ5XFWHq2TCKTDDxggtQDBuY58ijdd2wrU2LgC/nIxPTVeuL
         bZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768518060; x=1769122860;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AN8djTaSMXZ3/xf3zVAOtl693GS2jPF9wZ4WuiNjNKE=;
        b=H6mwrIO/4VTLIt8GCU5dp9d/j5L6IbTQ2WD4UD/6/dp8eAV0eat+kF3Kp2eu5jaOUS
         ZrgKnRC2DsylkCz6LqrWy81Aun1dUKU9ssaqsbY1T/DpX7gaS1hmW9E4zvynXD9e1Xf8
         PB92JsdQa2Vtkg23Z/kG4lu6M4f52NOUFD7B2bwcVKy6ojBQFJwDH+yrdDuRP4Ue5BwN
         LgI7YX2hzGSRT9d1Y88ERC5BkXJCdKal/JqBtIE28Swp0HNzJZuHOXNFr9wbTHWbI/0e
         6/lH7V0s/wEF8P+i28MXnAAXFdNWUTsdaBrr0vxYlhHJsyG+WikILi3BgI5uzBojtrWy
         dIIA==
X-Gm-Message-State: AOJu0Ywa25CKctAhoHwxbzCgUvQM0LXE0nJ91JUfL0ppsWKSo2sOvh4u
	4/i67vSJfKYXKLGeaMBI0pVw+chrfi2Hb08/uGMJbLpUlWf0eerVgWIzQJ93hsAM
X-Gm-Gg: AY/fxX7o1wPMTy2fNjEYKQHfZizVBrBtYX8FRsYojOUCb60jvNT0t7ILqQjtxRv7tJK
	lEkSu+XORLowBbP0yUSJsBe+gvCKV+/oF6amarnA3IpgYeOhH/7K/jtyX8KSocitD8darDVhN94
	zchcxbxurTM9kh7ImeurkCxZ2HMInMqDLUY7e0C23z541YACDhea8sC+usKXngBePNwCYy9+vJR
	ZYVdxeFqExqAzDkwfDnaISqrbmwg2RIiWLfaWVpGGo2BAoOeqDRZiojgizTMV4xZ9LwQrgHkNTH
	/MFX8oI7nG6EpdegY74CCFZubUUtW/FhOBJETW10zTEi259bKTvvxU6Koi32omjuMyaNNJzM66d
	tC+L6lYOEonyGxlBMFVcdPm65jCyg/7OhYtHvLzAHwsvgXMv/HCpefoEzsAhzoMIJgrrPfe3wg5
	Y5tanAm6USVz4SiGplG+QVJvNa8lyqLw5Pl2K8V5WOkXJZ3LEgemcrdOLfp/8wk4j9wDCYta82v
	ZoiLz2XhRb0bIIMLGwrRx0zENi4o/33yUS9CgduoDYbXs14xvHz+MAnniqKenKRYm1PbzqmBgE2
	zikzcv7J+tgwuf3h9In3r5tc5M/rUXH+hQ0=
X-Received: by 2002:a17:907:80d:b0:b87:703c:139d with SMTP id a640c23a62f3a-b8793857c5amr81612266b.3.1768518060276;
        Thu, 15 Jan 2026 15:01:00 -0800 (PST)
Received: from MacBookPro.speedport.ip (p200300e927012f53d1aa14657f634ea0.dip0.t-ipconnect.de. [2003:e9:2701:2f53:d1aa:1465:7f63:4ea0])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879516900csm66072566b.23.2026.01.15.15.00.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:01:00 -0800 (PST)
From: Nauman Sabir <officialnaumansabir@gmail.com>
To: devicetree@vger.kernel.org
Cc: chunkuang.hu@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	Nauman Sabir <officialnaumansabir@gmail.com>
Subject: [PATCH v4] dt-bindings: display: mediatek: Fix typo 'hardwares' to 'hardware'
Date: Fri, 16 Jan 2026 00:00:58 +0100
Message-ID: <20260115230058.7704-1-officialnaumansabir@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix incorrect plural form of the uncountable noun 'hardware' in the
MediaTek DP binding description.

Signed-off-by: Nauman Sabir <officialnaumansabir@gmail.com>
---
Resending as a standalone patch. Apologies for the confusion caused by
the previous submission, which was incorrectly sent as part of a 3-patch
series. Each patch targets a different subsystem and should be reviewed
and applied independently. Please ignore the previous submission:
<20260112160759.19027-1-officialnaumansabir@gmail.com>

 .../devicetree/bindings/display/mediatek/mediatek,dp.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
index 274f590807ca..8f4bd9fb560b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Jitao shi <jitao.shi@mediatek.com>

 description: |
-  MediaTek DP and eDP are different hardwares and there are some features
+  MediaTek DP and eDP are different hardware and there are some features
   which are not supported for eDP. For example, audio is not supported for
   eDP. Therefore, we need to use two different compatibles to describe them.
   In addition, We just need to enable the power domain of DP, so the clock
--
2.52.0


