Return-Path: <devicetree+bounces-254810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 596D0D1CAA4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E011301119A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9E736C0DA;
	Wed, 14 Jan 2026 06:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H9mfEbLV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C1E36C5A1
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768371979; cv=none; b=XfEtDdle7z/mrtM89nu+K31ZPnSlaf8RH7W8BEnXYMkdyZx6roOELkKC2n0TqfLWR0WYKhZuGu+O5hAkZFFNnraV5jSH+AUHLymSdFo7eLRLSVtr6Iv8Gl0lwftCCa1mjXgjdmK9fd5oRqEPICJpnmqxoUdsLnnHpSVnbjtGWgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768371979; c=relaxed/simple;
	bh=tjbloRFSDK5CrgV+ZUNEOlHupL5+IVmFmI5w1TbPHGs=;
	h=From:To:Cc:Subject:Date:Message-Id; b=A6RoWl/FAWl9EWT8/RJfJ696U/AizfEhFRR6o4vZVM967Q53Gzk7X13GSLK+KOkrSON7WZOmNFIWQnV7m4BQgcrMHYbhor57847UnDyDNIaamxJSuZq1oUQ1cCRlqDU9HT1a3bPA5hcEJTFN3VcWLG/+Iju9S8OflFFKmOCBDSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H9mfEbLV; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34ccbf37205so4634198a91.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 22:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768371967; x=1768976767; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ph6IxAnp6q3+uLiFT21GgPymCv9JqfeKX9RiduzDODk=;
        b=H9mfEbLVw8YIk8OEBel5ugr/YalK4aZoIxpFXuhvAgpHWz87GegVntsifykXmWL6AS
         ykrEKRb/TqDTuJ2KRj/vAJes1h3lJiI+p2wb6RHC32xI0tQZWHCEGEMDthO9vwC+szqR
         vwYnylfXH+aANEjIw7Z3GmOlfvm/9TZRTYCmRc+IwBeDse4nuwuLJa5IsRDnRerW/MNR
         ng5M77090R4/ldQvutO1klT748oPRjuiMolU+m0Q1U0lqdbphfeSVbtXLORQ5c0M9xXm
         tix27GiOd6ndDFJjrRhZTP5AHNKYUet3Wn4U2glL4Ar2NgLf0ewBfQlyMc4wnFDFZxXr
         neJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768371967; x=1768976767;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ph6IxAnp6q3+uLiFT21GgPymCv9JqfeKX9RiduzDODk=;
        b=NQsyddf1upM3W1Yf+nCyLXGm7+iqrvIiP/WiXU08Qi3jcURLImyKCOxRuuFnLKCxB+
         8KnSYBIpbw++HeVs3cHgHiaDU+bxka47yp8csrciE+Zw1OHuGkcCYbs6nbSdb2kLIaiQ
         V3x1vgMdSxvtsAPAn1kHc/RmSrpmnVdp5sVSWBGdIAUQKtrqZ7C6WkK5+WKS+5Q0txMi
         oWEl2P75CcPndq5FNHG5K7zC9pD5Zpg3RFeyZA3TyYgzqYqxKYkMstk419QqAkOlesDK
         ajukkA1d1hZctO+OqR1ACctcNTVuG/y/z/bR4z01RnA6zY9xKyq7VziVP/iWUTlIsh6c
         kUZw==
X-Forwarded-Encrypted: i=1; AJvYcCVJgpzN+YTGU4pLNrrqMTu08piiQFYL8Z7kvo4YZ9+azrCRbdOjEW8pZI+6ea5SKJMwSX6yIVcv8FU8@vger.kernel.org
X-Gm-Message-State: AOJu0YyJO5aXNn5LxTOjZpk/3BB3cmEbrU9X8OndWXM+nwGCNuVF0feU
	c/E0B/Ir7qOP4rh22/qK5UHno2eD/8p7lGrMw6OMHwolUlmpYLDizTYN
X-Gm-Gg: AY/fxX7qlVc0mM593yQWwadYh6D9ZIcEfjeBtrpoCSq6nr0PGzQNyBOeo4D6+3jeZfD
	SyzTVyQDOKzUGWpBNrQn4cVZnDD7O14adz7zeyitr4rz/uYRXDOYBQBTKFBgZYaf95s9rBjZM1W
	F/aynUD0kEhelr4saVECPbRomewwVcfssN9/3aPavEjnDJRGt13MnBtsYTHxYPERuKk87OrmvR4
	yyWbX3CRT2wlxOUE1tegNt7K399iQI88v+vBE0QNfzOiLYYtQ98eANHlluXm52hnce1Hs6VYYqO
	3ZZJGLuZHWNaf1QOPYSRhQHF7N5CvfXSvgH752PcxDUFMJyuM4xJZCOSLlUfmgrwwuNxmkhotLg
	OflXLl75ZpuSc7KLjJT78pZxagaD7G/i94aQadAzjTfNb/mbSsG/JUKrF1tDKBScTpEmP+NV4Nx
	Qzcmfh8mg=
X-Received: by 2002:a17:90b:3d8f:b0:32d:e07f:3236 with SMTP id 98e67ed59e1d1-3510915bb29mr1745385a91.22.1768371967515;
        Tue, 13 Jan 2026 22:26:07 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109d88f0esm891791a91.5.2026.01.13.22.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 22:26:07 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com,
	christianshewitt@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	nick@khadas.com
Subject: [PATCH v2 0/2] arm64: dts: meson-s4: add support for Khadas VIM1S
Date: Wed, 14 Jan 2026 14:25:47 +0800
Message-Id: <20260114062549.68954-1-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This series adds initial support for the Khadas VIM1S single board computer.

The Khadas VIM1S is based on the Amlogic S905Y4 (S4 family) SoC.
It features:
 - 2GB LPDDR4 RAM
 - 16GB eMMC 5.1 storage
 - 32MB SPI flash
 - 100 Base-T Ethernet
 - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
 - HDMI 2.1 video
 - 2x USB 2.0 ports
 - 1x USB-C (power) with USB 2.0 OTG
 - 2x LED's (1x red, 1x white)
 - 3x buttons (power, function, reset)
 - IR receiver
 - 40pin GPIO Header
 - 1x micro SD card slot

The first patch adds the devicetree binding, and the second patch adds
the board device tree.

Changes in v2:
- dts: fixed dtbs_check warning: removed unsupported 'enable-active-low' property
  from regulator-sd-3v3 node
- Link to v1: https://lore.kernel.org/linux-amlogic/20260113090951.35928-1-nick@khadas.com/

Nick Xie (2):
  dt-bindings: arm: amlogic: add Khadas VIM1S binding
  arm64: dts: add initial device-tree for Khadas VIM1S

 .../devicetree/bindings/arm/amlogic.yaml      |   6 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 190 ++++++++++++++++++
 3 files changed, 197 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts

-- 
2.34.1


