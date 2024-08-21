Return-Path: <devicetree+bounces-95574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C9D95A005
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:34:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52548B239DD
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 14:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48950136E37;
	Wed, 21 Aug 2024 14:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6wqyr04"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D438B1B1D59
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 14:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724250869; cv=none; b=EZ/I2SgZRd/VoW17xChTM8SmJZM0pFadNCazc+A8eiGR7G8bcH9rZHnqImEpkJ6zbI8kr6pixNjdxDFKaNsgFPZOX+gBwqHEPXuDd/cvd0M3XsxJ6B0gM693T7ErMLYnIRIsxHlWmz6Fv3eJYFX1XUbvdv9U0SZ7StAFF0+hJCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724250869; c=relaxed/simple;
	bh=x2eksJKSdXVDVuebuHcjHpwghOa96OpVmrVhc9fVacA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QYORQ41SJWfJMh5hnKs8J9rNqvTuhZZeCxVNZTWjaDd93z+k+2TUTafIjHtIH782QZDPBmrECgYWI4Y0hi0jp5X1xTQSn3JxczGRT+k1/TIX6J6MnMCVP25ydDNZaNesYkT9snO++pshBuapYrJQafcB6Jf/0jAV3itrbVfFWwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6wqyr04; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20230059241so30253325ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 07:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724250867; x=1724855667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kYuzMHGnD8E6XhCjcca6YSJC8fqqzUa5TU6pyjVh+N8=;
        b=O6wqyr041kGv+SwnhyAEtuoXeFcMzleghIAX1CQuJSlACBEHsIhl671o3QjQ3Bdutl
         /9qXkkxEomwCx5t87IRXeXF3ndRFrhFu95BsZR6NbrhW9JlcwaSB60LaPeSh9wGlDslK
         njDPhLwwASun48WjOJIMFZ/rgMd7zgKXOAfUEiYkftuz4L0MkCkxcrFkRUQA0OgBBjx5
         NWqp25w1ryRaflOgUJeFCLOowDnj/MoDwxm/SYQ+/QL9ROB+QBnIPGGuVN/gj1e8zEYg
         XiOibXR5ulMzfD5Bksuyg8LVQZ2zzXeed0+He++KITnYQgrgp0BlMMqxCK/KntfqkCQG
         HKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724250867; x=1724855667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYuzMHGnD8E6XhCjcca6YSJC8fqqzUa5TU6pyjVh+N8=;
        b=wcHcNXs6+ajZvhr35bc8WiQvZ685iw/W2LHCWXIsL/bYuxxAw/5VvgK+BuGUgui+Sq
         LAR279M0PATk++8MTwSEOYaM2KnY90vYyvyUryq+SwW3wE/nndEAJJQghF2QclCJ5Sm5
         74zmiH/HN/hBCgE5SVZU1nRn5mMOEj0zUxWUateWXpt3fveyp3IFhSbJODnH55XlLmbR
         Y/T7TluvuCrzseY6XaIvmW0VHgbZvYXqzgeknwoAtQ5U3vHffb0+GrsjqU6EQK0PgzOs
         K8sxqm7JXhjWnX/Ek9OkT81MuO4DmB2TsAwZqLm8hUMAUXpZzL9wpBKcGGiOm0SNXVOj
         ueRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUup8wqGSe1Emg5mZ43FgEAegTjBlDSeuQav6XPNemhshisNNXZQOeaOP1R41Pz5DHZtoWGTyPIyT3/@vger.kernel.org
X-Gm-Message-State: AOJu0YzThC9xYxF0W2FPhhMmCfi2BjIB2R06Z5TXecMt5avLPK7UwlCt
	s530cUpayNuy6nP472hSmJFlRp05AKgP0uCB24VULzn5G2RBBjNg
X-Google-Smtp-Source: AGHT+IENOLmwq2CAHXK2MjksT8JBzw744lEXox0QL9oHU2yoNNI/73kpNAiaO1no3+rpldC3jhs+Qw==
X-Received: by 2002:a17:902:d2c9:b0:202:311c:1a59 with SMTP id d9443c01a7336-20367d1ae50mr26336125ad.27.1724250866980;
        Wed, 21 Aug 2024 07:34:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:2803:be04:d9cf:894f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f03a35fcsm94639685ad.256.2024.08.21.07.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 07:34:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	ariel.dalessandro@collabora.com,
	michael@amarulasolutions.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio codec clock
Date: Wed, 21 Aug 2024 11:34:20 -0300
Message-Id: <20240821143420.2564869-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to ti,tlv320dac3100.yaml, 'clocks' is not a valid
property.

Remove it to fix the following dt-schema warning:

Unevaluated properties are not allowed ('clocks' was unexpected)

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
index c6ad65becc97..475cbf9e0d1e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
@@ -64,7 +64,6 @@ tlv320dac3101: audio-codec@18 {
 		DVDD-supply = <&buck5_reg>;
 		reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 		ai31xx-micbias-vg = <MICBIAS_AVDDV>;
-		clocks = <&clk IMX8MN_CLK_SAI3_ROOT>;
 	};
 };
 
-- 
2.34.1


