Return-Path: <devicetree+bounces-38296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F199848798
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 17:54:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB6CC284A7E
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 16:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4215FDA6;
	Sat,  3 Feb 2024 16:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L5aJstub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084A35F86A;
	Sat,  3 Feb 2024 16:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706979230; cv=none; b=UXD38hYQs/nUvZ+LTYWGSu89+tTDQuLyvXABhYv6ukq6Bv7yRH/iSILC6zLACr3ZqiTfGd2LCle0hYaLerhZwQvWz4QkQ0fcu6xDA6p3WhqZSBwK4IFTok0zRFJ+TEeWsNr+HP+SLgQnkUfEwQeeiPBzbojBEECNnsEASt1qhrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706979230; c=relaxed/simple;
	bh=7gxlqI2KBqsjjbAbNX4A60KwR09PCFX3HAv9XPpjNmU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BNefi+HOs3QXwCUnMy+8ZlnuaFefNUIdvxV75suiqZ3OMzM7HnBiil7ezfcBmk/26BLklDzaZanAi5DC3noGBPxnHbe8rLl5unT2mZR2VKe4UQX0pazqE6I4oBC5LJpRY/7896J+Ab/Stl3XEabxeKrnCf0TzI6ZMjxvtldELC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L5aJstub; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7bb5fda069bso155219839f.0;
        Sat, 03 Feb 2024 08:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979228; x=1707584028; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5yxNJ6iw10E/jIc+eH30kqf5Ccz8IbGrYAyBw9Fu8JA=;
        b=L5aJstubMykpBps/wC6wz2/fr/pBqz6K7bN1fIIZak7Gq3ERJqjVC0xklN9OuoOXaO
         CQP2SrU91yZRSovtYGNa4izR8+59qCB6buKNOkFF9SDfVwREyHZiyHed/g+RxY/pEcMs
         SuEHmfmmcAfFaTGa4Sh7hgJ70LXYckkDP1FedzWxq/mUTdBekBjQXGApB9bGSrW5to5/
         Tr9waSE5AzR1zhk8X+yB1JhY6/Ac84zB/GAAxZBHDavX9ET/B2ppAguoCmMSHBOHICTX
         Es+1ofJPPvnURwMyEqzL1WxZfVSgq6Sr0rCxgbew92dgM+U1ZIflO21jMrlzJSfJLxWS
         fQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979228; x=1707584028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5yxNJ6iw10E/jIc+eH30kqf5Ccz8IbGrYAyBw9Fu8JA=;
        b=EDn1rCnV7QpBGu8Nswj34hhQ9OnSY3vA4OUVAkYpc+YQAu38ORYTFAvfOvQe51eQdt
         clfm1cTD6iIzxPEXQkFUTHG/jto5L63P+YDgSfBBbcsMv4W1In0KTYz8GUW+si02p4K1
         aY5oCnVl2ACfnxGGv+8hwhTFB0oOrYFeYNFKentoNhLJP6I04tUehGEk+yTpdcK/8GHt
         0HwLOlxVulEFY9rZ4TzRmTNyC4Rtfdb2z9wUO0lcj/oH0LiqR+FyeVpScyTQnLa/R8xK
         0N3+jAMXUV3HQ51djZ18LAeyBMXNTt1b7NfFdGcjx/wsQqX/1Z7+cPQMyvrISNrDLbVs
         oJSw==
X-Gm-Message-State: AOJu0YxJmH9arT371qtNUniUGHEttH9+42xxdcmq9NuGXmGQ4TvBoCDN
	awAzuOPLT3jfQuX43Vw8HAAB+SVhKaluitPHwz9MVZyYOlr00ZFd
X-Google-Smtp-Source: AGHT+IGLICMierknlRorVEXNALWPHIbd9g8JvYQciri7x3uPr5CUp4NijI+2uAuRaeVh6/Kmz8+V0w==
X-Received: by 2002:a6b:c953:0:b0:7c0:1f36:b164 with SMTP id z80-20020a6bc953000000b007c01f36b164mr12895332iof.15.1706979227992;
        Sat, 03 Feb 2024 08:53:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVA9CZ4OBFcoM04s5n21XZMv7Q/nxNcmPFO+x1Hx/0kUqPWvHWgXAMhmWWYSeu3FnFFbdWnIQIXkcJ8bvjPe4SRA+PEake0K2o9+SdFQVa0uhauF6xPTPbN6t02ZtR4ijMGSn6bpH/o1D/WhzSp1LNi/qJBO6dUNrXqU0xlwDLjVT0na4dfFVj0vjAP8PLreg0xiTninmHNzxkiLB59Wze+9DOg/GLsJH4TPAUkmXpKZUzkeSul4u9iC6945qk4uxoHVuI4LSZXsQ7y9qiyzP2cMlcs+JP0fV4m5o5JizP5UVba5st/J/YGP/ZOTzDmylMIzpS0bkkba+K1/9SD6wR++0T+vPbWfHEe3wJwDqVW15We868sluUY1Hc5JKoa5QMsz40Hn37WkpB/sCANoznyJeNkPi3K0n1T/KmJJtLTBr1VzyFNKujQekHA3LzIN3TrDhO1XmFYseWfskZ/6n5IdfNiFNYU3rCxUzR6aIYmogpso3AFRoUwnAgAD0esSSDoQ5MCBq/Kh1ck3wd1Rbcu77+yjr6xL/U9pQmqi4sWob0k1ENb/g9aYf8PGpWQaj0vzwjmKo3L3PWIlsYk7bF6hdeM+08pLHa75lJ0UX69ERLEVOhEQ3M+HZOzzmHwP2zGjmSVp6Yf0IOs9xqmJvw32JvuHy+LYGtkK+fWKEw6mjfAYMCyzceYBz8qtTY2se/d98gG3FunwStU6JBNtSDkTHnzjseKe9YQCCR48d63IRE/nASGuG1uzo7Bs6Sti1A252RslipIk7/QB2Is1ulD8+N+9xAvPZqDb25ghHibwI6MlFtaCx66JtMIJsw6TklhYfBvigYAeGRZ9p7yU6jsENqoAhAgA0oJsoBZdtjWtMOkjSu3Sqt+fWW5RpD+GSGtXiVhQ59kCwo59MlPjZfDiPi+XmXRKRrqekWAefFpV8tMcq30iwW+lTh+2VsESwvX7E
 EIkQFHHCNJraRxEphrKmY5jpUPi2se35+9fzW/8/MJU1JVMVbaJ6Ju3BDhiaaIF9ish60lHhllqGuZQdDOEY3tReKYlh46VVzGRNUoYhknSUM9+VgaYtxzn0LVe7CYPkurkr+0nTkOZ030FUw6CpdAMA2THIwB00py45S/j8jbnvTzvgVIlNAeY0tGiYKzEUfSffiU2FR9K7ClVCD3rJDx42Ni2vHIhw==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:53:46 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 03/12] dt-bindings: soc: imx: add missing clock and power-domains to imx8mp-hdmi-blk-ctrl
Date: Sat,  3 Feb 2024 10:52:43 -0600
Message-ID: <20240203165307.7806-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Per guidance from the NXP downstream kernel, if the clock is
disabled before HDMI/LCDIF probe, LCDIF will not get pixel
clock from HDMI PHY and throw an error:

[CRTC:39:crtc-2] vblank wait timed out
    WARNING: CPU: 2 PID: 9 at drivers/gpu/drm/drm_atomic_helper.c:
        1634 drm_atomic_helper_wait_for_vblanks.part.0+0x23c/0x260

Fix this by adding the fdcc clock to the hdmi_blk_ctrl.  This
should be safe, since neither this power domain nor the dependent
HDMI and LCDIF drivers been enabled or added to the SoC device
tree yet.

According to Sandor Yu from NXP, "the FDCC clock is not for HDMITX
in desgin, but it is part of HDMI domain that needed by HDMITX.
So I think it is reasonable added it to the power domain driver."

The driver also supports two power domains which are missing from the binding
that also fix an issue with resuming from suspend.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  Update commit message to both show error and give a bit more
     background.
     Add missing power domains hdcp and hdrv as pointed out by Marek Vasut
---
 .../soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml     | 22 ++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
index 1be4ce2a45e8..bd1cdaa4f54b 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hdmi-blk-ctrl.yaml
@@ -27,8 +27,8 @@ properties:
     const: 1
 
   power-domains:
-    minItems: 8
-    maxItems: 8
+    minItems: 10
+    maxItems: 10
 
   power-domain-names:
     items:
@@ -40,10 +40,12 @@ properties:
       - const: trng
       - const: hdmi-tx
       - const: hdmi-tx-phy
+      - const: hdcp
+      - const: hrv
 
   clocks:
-    minItems: 4
-    maxItems: 4
+    minItems: 5
+    maxItems: 5
 
   clock-names:
     items:
@@ -51,6 +53,7 @@ properties:
       - const: axi
       - const: ref_266m
       - const: ref_24m
+      - const: fdcc
 
   interconnects:
     maxItems: 3
@@ -82,12 +85,15 @@ examples:
         clocks = <&clk IMX8MP_CLK_HDMI_APB>,
                  <&clk IMX8MP_CLK_HDMI_ROOT>,
                  <&clk IMX8MP_CLK_HDMI_REF_266M>,
-                 <&clk IMX8MP_CLK_HDMI_24M>;
-        clock-names = "apb", "axi", "ref_266m", "ref_24m";
+                 <&clk IMX8MP_CLK_HDMI_24M>,
+                 <&clk IMX8MP_CLK_HDMI_FDCC_TST>;
+        clock-names = "apb", "axi", "ref_266m", "ref_24m", "fdcc";
         power-domains = <&pgc_hdmimix>, <&pgc_hdmimix>, <&pgc_hdmimix>,
                         <&pgc_hdmimix>, <&pgc_hdmimix>, <&pgc_hdmimix>,
-                        <&pgc_hdmimix>, <&pgc_hdmi_phy>;
+                        <&pgc_hdmimix>, <&pgc_hdmi_phy>,
+                        <&pgc_hdmimix>, <&pgc_hdmimix>;
         power-domain-names = "bus", "irqsteer", "lcdif", "pai", "pvi", "trng",
-                             "hdmi-tx", "hdmi-tx-phy";
+                             "hdmi-tx", "hdmi-tx-phy",
+                             "hdcp", "hrv";
         #power-domain-cells = <1>;
     };
-- 
2.43.0


