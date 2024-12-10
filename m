Return-Path: <devicetree+bounces-129206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCBD9EAED8
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B3AC188A47E
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343C92080D7;
	Tue, 10 Dec 2024 10:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FzyMzPAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC5519DF61
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733828242; cv=none; b=Yi9I1fQoMP6eRQEhdaoGlfELZhdDCkG2obrh3nRphgIPJ4wOfXUl+dgFOcg8IF09Z31Bgo7tAaXGyr3bNZUMaQ3ZlbgFSsF1LxxPxDxZVCE82lXh3QQpy5HzgeBHMHu/QAnt68BMEtKM9cCZcTEwrmpxi+wfzrrB1H5E2WZkEyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733828242; c=relaxed/simple;
	bh=5xuJv86INUped5uDGlXBGi7TMcuhOLOC/aMff07MUzs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JR/3WPC4u/XakUmOMcip2z97teiz7uAaTC6qsQJEHuKg1oWmUA2dBBF8N3kY+eDtTFga5xfwD8JRFzlNnNDIH3Ia83ydDi9yPd/QR35sObfkZc5sJCi8nw48DNsUyHNRPwo/Tn/22ZxTHeQ4HTTSiV+8KpFFXdewUWN2OYGi9Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FzyMzPAd; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-216634dd574so10650155ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733828240; x=1734433040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FAzIOGNvVkOkwBb1FvOdH3YrtXy61Q+UrPzyrwYWppg=;
        b=FzyMzPAdWl730u5H8hi0wbeweCnzRisoNUXEyVwPJ1MDdFrfwhLBZbkQ4YKiJv7wNI
         7VLE6RfOhpj1Iq+M/Cl7kpjvqpFV0PYlJ4DYL9XLAKwZCj6ReZNRYFZQI9/p+PNgwn2t
         RaYRkhYTYvpMY6EEIJNzlBYBaD5A6UXKU511VeVFPN5Gr8VM1zX8HYBm/E7Rr8aKZPW5
         mMeibpTihw6p0LSEbhE+q0R2i3fzT2FejCJTdkwOH1i7QGUYniQike+uN73YDYtkSZrs
         fsS8LNdYGdvvxY+rpCTepYudWz1pHS4Z6h7TgnFe1bcvBfIwYNzq/ZOvC+8G0flr9sMA
         zTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733828240; x=1734433040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FAzIOGNvVkOkwBb1FvOdH3YrtXy61Q+UrPzyrwYWppg=;
        b=cN6w9JxGA4vEOFJd/rxZ2Ke8lWw9P3aHcBqRdcEoF2pXmSNPuZ8v9dcG+jG/TB+z8V
         k0HCIIcM8eTagRsClRKYKfjlMMtHQifJcNU/UyMQYpve8G14Agd1j/1MSQu4q2bA/ZNm
         B3CJb8sR7yo5g8xJpxkGGU5JLq6r5e5yC+uwHlUfEJGaLzBatm0Ucu+PhVsS01UM9ewy
         fm7E80TADf/oWinDykekTIYJ0rzzsvvmKE6nsjJ4G2/peUsqGGv4UNxvXMHjQfaEFXZ1
         rlWaf4F7khmnil3nCCCO0zXs9kyz9hGzffJAJlCQuyPxEZYTKCt+T02xFdFpAR6yxKwK
         4thg==
X-Forwarded-Encrypted: i=1; AJvYcCX9BvHeDl5nPZSCDjBnEPV05cRumjBtyeyarWnG8rqJttbzjhAI6AX5x0ZjoP+qOOu+DDr8uuKWDV/V@vger.kernel.org
X-Gm-Message-State: AOJu0YygTt6IvFTwkpYqR6CmwBzGhfShqbIdcLlvssKgErHy3tsp82VZ
	d3eUxMk9rGLSiuekEWXj0RNCzSCdALcbLN8HWrTn1PuhF4ByzQhL
X-Gm-Gg: ASbGncvE6ECkO7b2HSqU+TbHS+IuQEs3MjrC8QHeDbzOjVMLNldE3XFgguiHpB5hDbx
	zzuddcCrO6nZYvhrRJO4PnQQM/b990e6fIKJMnPa1fkDeF3rzN7nyDWnP1o1Lh3HsM4MlIxcQqE
	1BnjuTh2s1ySLUPwtkvBfnv3wYklZ6svc+rlNFVkzWMmBNF7hOnLYs0maMsAxZXlH02ekIP7NBk
	b4BwF9og6wDE5vCMk/f7YmYulfKacOlOz/5YErjsxd/Xct5d6S8aA+Th66mg3fP1IF/
X-Google-Smtp-Source: AGHT+IHSsGLpcfdmpEL4Mg999asmKbIgDSP7cOPD03IZvcIVz1bYQgiRC4EJz7gHrP9fENJbgq0a8w==
X-Received: by 2002:a17:902:ce88:b0:215:4a31:47d8 with SMTP id d9443c01a7336-21669fa3baamr61082485ad.9.1733828239875;
        Tue, 10 Dec 2024 02:57:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:23ed:f795:ef82:746f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21615b1e6d6sm71068955ad.104.2024.12.10.02.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:57:19 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] arm64: dts: imx8mm-phg: Add LVDS compatible string
Date: Tue, 10 Dec 2024 07:57:05 -0300
Message-Id: <20241210105705.116116-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241210105705.116116-1-festevam@gmail.com>
References: <20241210105705.116116-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The imx8mm-phg board has an AUO G084SN05 V9 8.4" 800x600 LVDS panel.

Improve the devicetree description by passing the LVDS compatible
string to fix the following dt-schema warning:

imx8mm-phg.dtb: panel: compatible:0: 'panel-lvds' is not one of
['admatec,9904379', 'auo,b101ew05', 'auo,g084sn05',
'chunghwa,claa070wp03xg','edt,etml0700z9ndha', 'hannstar,hsd101pww2',
'hydis,hv070wx2-1e0', 'jenson,bl-jt60050-01a', 'tbs,a711-panel']
...

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Added devicetree@vger.kernel.org on Cc.

 arch/arm64/boot/dts/freescale/imx8mm-phg.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phg.dts b/arch/arm64/boot/dts/freescale/imx8mm-phg.dts
index 75bbedc6164c..a134b1833649 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phg.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phg.dts
@@ -82,7 +82,7 @@ reg_usdhc2_vmmc: regulator-vmmc {
 	};
 
 	panel {
-		compatible = "panel-lvds";
+		compatible = "auo,g084sn05", "panel-lvds";
 		width-mm = <170>;
 		height-mm = <28>;
 		data-mapping = "jeida-18";
-- 
2.34.1


