Return-Path: <devicetree+bounces-249680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA435CDDFF0
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4A3F300D429
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 17:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E820267B05;
	Thu, 25 Dec 2025 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T1MVk/0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9514E205E25
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 17:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766683892; cv=none; b=S1mLRJxi28qJzjVL03F3qYrRMiYQeWSBshydXnnFZzuVGSDgVNI1c0hpaleIPOqb8zptTrl/x5qSOQP601MtJ9ZKsJmVM1DIa1ofTO/0DNIBnCF2gxwXb5vPRGXYBmnrmhRxVt82g1qbJIYfN6zezsPI+5HSVX6OhC9EeHH8HBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766683892; c=relaxed/simple;
	bh=otJZyS4fR4RnBCStR0s7tCenz56e+jMbEq+HBGAX1Xw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bFXp7AbzqMHNPDZUHz3X5kW2ZoAV84hUdCw48AN3AqcJfm3G993Q4F5VNZZDyHfDnBCeftaNMS35KWoU/dkAcBJsSyPiAuhYlFtrcfCXA88+xvM7mMiMs92LGya2m0LWpc5yJs2P3cL+yt2dFXxqKApSaYf+R4RGTt1J3IPq/Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T1MVk/0x; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso10601484b3a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 09:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766683891; x=1767288691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=31apXipNlf1QpVcJgO8AvAiPDS1k+UownqxyxhqGB04=;
        b=T1MVk/0xYZCx0RR+8K81li3jTi8/1EsOZpUpxwS6kZ1XqflZ+prw+mUr6GG3OEbtJN
         p3Bieb+AEvW09UsUwhfHpMZszfTmkIYiZm2E72dP9NW5RKwTJGEhFqhaBUQ200z1XOJn
         O/HUlo2sJS9RWcrHKzUOaRcP7Gs64361lc0+qQwPekQB+m5W2CRrH+DaL3YG7xMGEre6
         uZVUT96Nr2uyj15mpHQqF9HolQil0m76Ul5injujafw1NvFQD7vumzdUBH11bul7sJ/t
         lD2dkG1ns9NrrSzFrqOViXkqt9jftSlc+9c9P3USlauMbbEx44mJDv8Rimpx36Bg8LUI
         J80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766683891; x=1767288691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=31apXipNlf1QpVcJgO8AvAiPDS1k+UownqxyxhqGB04=;
        b=OcXsL1XaTWzmQl/u1WQAKZoGsbeC8hQac60QD8JUz8ewlbFJM+G2927OGp6fDhxhzd
         02QPBLTGD2evhlodiXIfx5xV0MWHw8sjC/PvDm8RS6B/yFW0XOzaYCosNxqcvI6VTpGR
         SlZy/P0uZNEXNsdUKC2hdILKJIGYdx++Biy+FBnGUMRma2hwcqXFquqYzlNClNXUVFKr
         LTXpn2t8CiTcCd96v4Lcn1bTx2vhAODej750KiP3Rhb7fh+eZGGWCDQCK4iCieJr4iiP
         6yPtZ0Vewv+/aAvm1tER3m3fJq1wAHTfkh8QoIY2wxAMk1HOvoh0q0RKrsovoCSgZkac
         tsWg==
X-Forwarded-Encrypted: i=1; AJvYcCXibZapPMht1JkxGCYw2VHyb+TouXkVlrJSx9ELRIEFVslV8d0zqWFKDmhe7jo2w3YEQvY4MI4X37GH@vger.kernel.org
X-Gm-Message-State: AOJu0YwS9eAunvtitg9oiXmhO/jiusdxQQCk2KG0J4yRaIbJRWcxFgxA
	QrwZlDg0+YIcSWJqpmIdQgMhOhcK3dof5XtjxnKbvwncS2OHboG2A/yr
X-Gm-Gg: AY/fxX4CBl7UaeiRqAeQY5VlxxUJX4d0a1Z7RnLwNhoA9O8xAtS9ZahLYjlm/egvENC
	e3pKTf5ilsW1VAG5d0GWWn+ftrijKPuVo3QTTGMaR0me+4b7zBgs0QJNEI+d5nZHD5SDNtrSP2f
	I+fOKUBSY+dASwr0RLO/lV+h+Hk3YylcKdd3WPgnbvN5eMhZNKiwx3d9gv/zmQNuuFaJ9SM2++C
	IjXTwKrMy6v1qk+DuZ4UZ0bgG1uMWFD2OT+bvSH6EdSXiLIvLFG3oclYbAD5RLHVBsQbON5zKkK
	zbxFhEfkA8xPv+SLhVAdPFMZcmBHHVwmnUXmmau5fHG5hdNeFJVrm7D8XHhwC0BmaMJiN4CpVnp
	NBwete9AWThfR2SKXxIA4l6ZPhyRwMVuH/2SBFoekJiKMs1KOwSVbbqivjpqynffAjKcMCffQPi
	2vHZc1YWS2RjR45EGzO4zX8sbFI8aICcRVy/WT8SqvMxTk4MVF11Gq3VrjsgT2o4xuVsZBp7vA6
	7tlgtFQN/hfG+AXRAp2mw==
X-Google-Smtp-Source: AGHT+IG+RrlusK3U5jY/HpNGFiRuvCk55ZP9KNfhnswIoqpfnEX38+YhmOAdvGnR9FlnaOygc0lLqA==
X-Received: by 2002:aa7:9a85:0:b0:7f7:5d81:172b with SMTP id d2e1a72fcca58-7ff664807a0mr20929135b3a.42.1766683890687;
        Thu, 25 Dec 2025 09:31:30 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f300sm19814805b3a.54.2025.12.25.09.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 09:31:30 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: linusw@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	arnd@arndb.de
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	Kuan-Wei Chiu <visitorckw@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] ARM: dts: integrator: Fix DMA ranges mismatch warning on IM-PD1
Date: Thu, 25 Dec 2025 17:31:18 +0000
Message-ID: <20251225173118.580110-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.358.g0dd7633a29-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When compiling the device tree for the Integrator/AP with IM-PD1, the
following warning is observed regarding the display controller node:

arch/arm/boot/dts/arm/integratorap-im-pd1.dts:251.3-14: Warning
(dma_ranges_format):
/bus@c0000000/bus@c0000000/display@1000000:dma-ranges: empty
"dma-ranges" property but its #address-cells (2) differs from
/bus@c0000000/bus@c0000000 (1)

The "dma-ranges" property is intended to describe DMA address
translations for child nodes. However, the only child of the display
controller is a "port" node, which does not perform DMA memory
accesses.

Since the property is not required for the child node and triggers a
warning due to default address cell mismatch, remove it.

Fixes: 7bea67a99430 ("ARM: dts: integrator: Fix DMA ranges")
Cc: stable@vger.kernel.org
Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
Changes in v2:
- Switch approach to remove the unused "dma-ranges" property instead of
  adding "#address-cells" and "#size-cells".

 arch/arm/boot/dts/arm/integratorap-im-pd1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/arm/integratorap-im-pd1.dts b/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
index db13e09f2fab..0e568baf03b0 100644
--- a/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
+++ b/arch/arm/boot/dts/arm/integratorap-im-pd1.dts
@@ -248,7 +248,6 @@ display@1000000 {
 		/* 640x480 16bpp @ 25.175MHz is 36827428 bytes/s */
 		max-memory-bandwidth = <40000000>;
 		memory-region = <&impd1_ram>;
-		dma-ranges;
 
 		port@0 {
 			#address-cells = <1>;
-- 
2.52.0.358.g0dd7633a29-goog


