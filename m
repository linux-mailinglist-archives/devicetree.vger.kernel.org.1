Return-Path: <devicetree+bounces-221521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C99BA0949
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C247C1C2143F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2853074AC;
	Thu, 25 Sep 2025 16:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nowPuaMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D39305E18
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758817430; cv=none; b=s/MglQQ2hzPqc2a04UZctU/djYh4yt5WP5Q5aipgufi5Zlozuk4vZlDyQKaehwzDmqhDLx6noQiJ+vGYvKR1RN/s7WlniABf9JHv6NhKRn78AKm3h+kml+gli4oIU+NsB29xKq7VE/rzGvZlyRlzwxS1f/wXP8Xw3apmLF1K+CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758817430; c=relaxed/simple;
	bh=59SyfGUG6nSEzjiJE1uCa6wYniUO5aKzhiQrG33uKX8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ByQvolsfKZbH4Si3JmZxoh1wPCkQKUhr+AEl73Di3VRzU09P1svfFTTbgFuXjLKBs4+dhJqrEc/WRBeUSTKE1Oh6TAVG1cTVbK2LSFBubUisS7g240mHG4yrIOK16Fj2lmjLi2T4QE6qpyokfrHSuSIPD4hDC2kx0hi96hiZwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nowPuaMz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3eebc513678so1300080f8f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758817427; x=1759422227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bhfgeWKTTFehUL5ME9QvRLQsevmzrNA8iD7btwmAz3g=;
        b=nowPuaMzywjIrzGc5zq1Ws1553kNgA/t0BWdtAo7mGlD1A38EWNDdoOSULUaSFkxOn
         9qcn2EcxxYPq8CX6GGwZabBoL1jIzNllOcUrCQKnA/15vqtnB4XPHms4DICcMe3vi/nM
         MXLsHlx1mf1wodbQxEl0uMx7HaDW5V00hEwadU1SPb6Xj1SIpLLv5CERov5qeo+OXn60
         GrYrsVS+y6gcYhVFb7QzkKCgOZ4TokXjCYBzpiRH9u7ohIUQ/jF5QOfd6aL0wGw51sm6
         hRctnqop+3n93XV/73OE3aKLJNoK/eVRKpSSqTZ58Lg/OA220vvZomo+LpXyoLTFgGxS
         dekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758817427; x=1759422227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhfgeWKTTFehUL5ME9QvRLQsevmzrNA8iD7btwmAz3g=;
        b=uKuxpr8gKnrfP3JF7dhrs/PwKkxFeM7Rbf/fOt7qG5bzyJKtXxZ9T2TdYFnYh/21sG
         pONYv8xwOWyVEQsyZW0FqdTPr3CohkxYxbH2ynMN/iZZfccFokQYDh43j3mKF2t2NPNp
         9/fLnNWv4ulQjB5Xd8vqpJwoqatLaIG69/zMGTmrmyerXCNuL5Dz66aHhsxJiR8bn3NV
         emVZcJNs72qb7L5FyjWHGxuxwr2YQ50/moo3zttKY/QiMEq1vndK9LSc559EpSiZN6/7
         48wr79UA7GSW7D8KGzPk2iyMKxLEsLKcPP89PpkfdZKHhh59gFj9gLuQIj82ap6QPNyN
         iFxw==
X-Forwarded-Encrypted: i=1; AJvYcCXAIKTx5dqMygAzr5QYmwWBDknL2uSN1K3BG6RAJzMxNdVZ/pMvOd5jpEsZ3m41zt4N1yCT50mYxRN+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4y3ezRD2rdJHeD7fEKzeGliNv9hBA3wPhKytkoogHVzaNPyom
	zc7ztg7IgKKsQxU+yh5uVPQmp4Yb/c5DEcvx6L5gELXbEitSBhQG/jLe
X-Gm-Gg: ASbGncv+Ci2I8N3rYGiKqmsoBCo/SwXplW3Mq0J/KocQ4iB5+dDaX3fDudmUpGnhVlr
	MaMYmte6ayodIj7lc8Hx4sPg2dPABfWX9YZKQPDoO0a7iL+K03E02eNAoX3mqJvNLLxXtno9Uyx
	gkVzMCH/ntA+Vf36QUzGmVBivdiOdI58SObGN9zs1FJ7/CgxnPTHTtXHWailCnaTsN82gft7IAH
	nK7/sb5ZK6L1SyOv9yBCMLHTZ4vkH1qh2P+x0JmA/eSCGBT+rz0a9NPrjTJCT0qfjRh55GsU4DF
	0/UTu906t1e+U5wutsdBohAEa9RL5dFa6aVsMTpftnxchZzD6nxvRTi4xEjRr6zpmfEf+BRq1xb
	CbcWOQgfRHW9JKSok7rT97lzd42S9tEdpXHIFQeNUwi3Imw4lHBal7RafIostBiGcH4XJevg=
X-Google-Smtp-Source: AGHT+IE30qlsw+LGQbGsOMA9cwguph9rKHkg04I434dGAXsnLJ3Ub8ZjYMz0XZC+8/ecQZtZP2gmGQ==
X-Received: by 2002:adf:f10e:0:b0:413:46a6:6a51 with SMTP id ffacd0b85a97d-41346a66a66mr555231f8f.38.1758817426788;
        Thu, 25 Sep 2025 09:23:46 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fb985e080sm3534819f8f.24.2025.09.25.09.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:23:46 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v3 1/4] ARM: dts: mediatek: drop wrong syscon hifsys compatible for MT2701/7623
Date: Thu, 25 Sep 2025 18:23:15 +0200
Message-ID: <20250925162332.9794-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925162332.9794-1-ansuelsmth@gmail.com>
References: <20250925162332.9794-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The syscon compatible for the hifsys node for Mediatek MT2701/MT7623 SoC
was wrongly added following the pattern of other clock node but it's
actually not needed as the register are not used by other device on the
SoC.

On top of this it does against the schema for hifsys amnd cause
dtbs_check warning.

Drop the "syscon" compatible to mute the warning and reflect the
compatible property described in the mediatek,mt2701-hifsys.yaml schema.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm/boot/dts/mediatek/mt2701.dtsi | 2 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/mediatek/mt2701.dtsi b/arch/arm/boot/dts/mediatek/mt2701.dtsi
index ce6a4015fed5..128b87229f3d 100644
--- a/arch/arm/boot/dts/mediatek/mt2701.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt2701.dtsi
@@ -597,7 +597,7 @@ larb1: larb@16010000 {
 	};
 
 	hifsys: syscon@1a000000 {
-		compatible = "mediatek,mt2701-hifsys", "syscon";
+		compatible = "mediatek,mt2701-hifsys";
 		reg = <0 0x1a000000 0 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index fd7a89cc337d..4b1685b93989 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -744,8 +744,7 @@ vdecsys: syscon@16000000 {
 
 	hifsys: syscon@1a000000 {
 		compatible = "mediatek,mt7623-hifsys",
-			     "mediatek,mt2701-hifsys",
-			     "syscon";
+			     "mediatek,mt2701-hifsys";
 		reg = <0 0x1a000000 0 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.51.0


