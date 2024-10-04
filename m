Return-Path: <devicetree+bounces-107698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961E98FD32
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:16:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 204DE284635
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 06:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C456F7581F;
	Fri,  4 Oct 2024 06:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="y4e4goPM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D9252F76
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 06:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728022565; cv=none; b=EYyDANVHLJ+9exkfs3NNBqhSZvLbSQZypEIZGER+CIukaxtLS/YbIoWzo/A7bzBa7PoM90lJMeQZpsuUQVEHPMWjcg9Yj/UkO80YyyKeYvCofDyd606hqEaX7YrjLzmD8abjtL+ihAnCvV5NrSPh18qHsZplh5ql9rbrQa1kFSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728022565; c=relaxed/simple;
	bh=ND2xakU1Ed9cn9wtrPt+jwHnXKN2SIbAPbA3s1VC1iw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hweEYcpDQRbdBYieUr+06K3K3BamXFy4LFmLAsCXN4jx42teFxqFc0lK/YaQ5CAZHbD0jFmEoah+kd9YMQYTdSmaxRnuullx9ZAtThuzZYGeENOPbH+EhC5zwBswCYZ4R3GhnGFtLfhVDLj068fhqDhyqfl2KpVFdFKyn+/XDdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=y4e4goPM; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2e199b1d157so1365848a91.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 23:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1728022562; x=1728627362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CiPQ7lESH5Gy691au9mdhveuFFHiiywWJe9zyxWKyzs=;
        b=y4e4goPMFCs+N/H7U1GJy1RSQhIPKr0uUn4zJvYCYyBp3eyWI8FDfRp5Z5caZhzHGj
         mjnMWxO6SPjIjvjnV06WKJM9/0PwZdutycbYXQ9UO0NvQAPZkyajngCWrSr/DuAy5lm7
         TAxgRVNUihX29NxYOJ89lOC/nYOL1y2gXXNU6uGeL6qPSpE/HKdyNs0PILXpAxH2sRHm
         3xIEKWgFY3WZKhwYDCiN/gWqJlCxWz4c55Ts0EAXQRcY1C0m6cwQWosYxGCmT9PTavW+
         5JopUw7RsDrvJB+jAmCW6IUqzY9ig/mqVV53x+h01d9uElqfHFeDkz4+nvYeYrL0IY7l
         NoBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728022562; x=1728627362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CiPQ7lESH5Gy691au9mdhveuFFHiiywWJe9zyxWKyzs=;
        b=U5HCO44T9BakQ9Afd0G5XAHmS9fTzw1NvB5fTcjsy+UoA/vz7mJzWzawy6qUn+nj8W
         seHkEjl1b97xV1F67pgSBTzHSjHu3OW/V+/RLXPs/lICgXf6K4ImVtka4mVKUpgkP4LE
         MwnelKN3LHTMwJ8BhGdU9dHzXbRONwNHut2peBmvokZOtI8LckreCFDHgqZd9fQTRlhK
         c+yZE5A01mwddZIPyPzMfZo0V7jGVbGb9XUNiPawQbnV++XmBrDFcYrfR2mTmmZIv2h6
         6NvbcxTWpD0PhciViy/oA9yjz1IS2JrMZ/Yblwl14ygI7dmKthu+/rJ9/NEACqTZv3e9
         IyvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWijBVs4A8jmEC+naoJuCAy+DzgapbMRmb+uft6m5NcrDFAb4bubL+Sv0RofJNCKANV7JdlIC0T80Cq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy240ABI7MrxJcboAWwYvcMzIdPPw8gegbB6ljqvNKgp/M86yNx
	R1ZJkgG50G8NSpZIxNeLBxcrX1QSt7fvMZv2mZluRJl6i2H49oT22up8eQJY1D4JH0QrWvKNQw=
	=
X-Google-Smtp-Source: AGHT+IHtbGb53QIqfIfaHFTTKzwgD4vmCfhsKiGIH6YMCbaEJi/On/jh5vfbtaP4ptDCa90Hd1a7vw==
X-Received: by 2002:a17:90b:4ac7:b0:2e1:cda1:12c6 with SMTP id 98e67ed59e1d1-2e1e63c58c8mr1636571a91.40.1728022561835;
        Thu, 03 Oct 2024 23:16:01 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:97a9:b968:cde4:c75e])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e862328csm672661a91.44.2024.10.03.23.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 23:16:01 -0700 (PDT)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
X-Google-Original-From: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To: robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
	stable@vger.kernel.org
Subject: [PATCH] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY ID
Date: Fri,  4 Oct 2024 15:15:41 +0900
Message-ID: <20241004061541.1666280-1-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

On SoCFPGA/Sodia board, mdio bus cannot be probed, so the PHY cannot be
found and the network device does not work.

```
stmmaceth ff702000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
```

To probe the mdio bus, add "snps,dwmac-mdio" as compatible string of the
mdio bus. Also the PHY ID connected to this board is 4. Therefore, change
to 4.

Fixes: 8fbc10b995a5 ("net: stmmac: check fwnode for phy device before scanning for phy")
Cc: stable@vger.kernel.org # 6.3+
Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
index ce0d6514eeb571..e4794ccb8e413f 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
@@ -66,8 +66,10 @@ &gmac1 {
 	mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		phy0: ethernet-phy@0 {
-			reg = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy0: ethernet-phy@4 {
+			reg = <4>;
 			rxd0-skew-ps = <0>;
 			rxd1-skew-ps = <0>;
 			rxd2-skew-ps = <0>;
-- 
2.45.2


