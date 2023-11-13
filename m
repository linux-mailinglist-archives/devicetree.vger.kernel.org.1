Return-Path: <devicetree+bounces-15442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 850147EA301
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 19:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D06EFB20912
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 18:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EEE1173E;
	Mon, 13 Nov 2023 18:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bPecw27Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A453F2232A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 18:42:44 +0000 (UTC)
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7CD10E2
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 10:42:43 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-28099d11c49so979752a91.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 10:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699900963; x=1700505763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=83dTJne/ZEswG1uslaCdjsttQj+Q5ottvIejwOIVJSc=;
        b=bPecw27Zs6xvzv6osQaGb6KGJgBm6J0c/tbf+LcrDScB8seDh5LFet6SAZ9bDD935T
         rMMSnu8mQhAA2zXd0gJoSdCTptHUImdV7THdEx/JOWkOv1JRzq+d0DforFhPXLl2ItAN
         efqmqgT0tfoD5DwfawIdRNNqBtEPkRxjrZUa7NXpfB78eU+rrj2LLl0cp7n45DBtZhd8
         B3gFp/XY06RNx6RsJC8cuVpXVwfvbLwtWF1H9MpLfJzlgpRv9EiuSakYOkXmPINmwWdd
         aRHq3JKx6amBpCkcr1jnWZ1Ns1DdUtGJMqe+0dxGB2/N73IGeZNpybbVdYnw8AV7mpvX
         xZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699900963; x=1700505763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=83dTJne/ZEswG1uslaCdjsttQj+Q5ottvIejwOIVJSc=;
        b=Uey1KdVXJTJvSV8IyZ919WMFeXdz0OVvj30RacFf/8UMyNrLYiETQcTHPwGMRzCcX6
         Phm5mjrkB0MWjxqRlOQVDsBD3QeqB41ScDkHKCJsc2WiorKx3c2dlPNGBOE5WXILy7ia
         5+XgdnnFs+H8iSLLO4VJo257xto4eqVtAU4gf1BWN2dnfupixmEtvZfxm2SB16JB06Hd
         lmPLAa1iuPmrVeobgpGyVTEkxBBsgn7mawNaufluFAZ+dg04S7RVnN6ZhLRcr2YLv9EB
         Q2Lu/KF45zjFynw7vXUuxYlmdjfWCPIhSqVXMYFO+wB+dS5JSFAJ6n0xGu24RYwydKhL
         p9+A==
X-Gm-Message-State: AOJu0YxlMohmvO55I6kWziK6SFbcgYvmsIUWcQjPX7vK8aHG6ghQ80Lt
	7df/Ipszqj70FI5e6Kqc7dI=
X-Google-Smtp-Source: AGHT+IE18P4kdu8KiAkzvp8qldB/a2oCnWajmVuBXmcn01T0bSLLROJ8lYJsFZXpEsYRtekFOXxSVg==
X-Received: by 2002:a17:90a:df0c:b0:283:2846:f67d with SMTP id gp12-20020a17090adf0c00b002832846f67dmr6645512pjb.4.1699900962973;
        Mon, 13 Nov 2023 10:42:42 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9049:24ac:b727:fd76])
        by smtp.gmail.com with ESMTPSA id f6-20020a17090a8e8600b0027df6ff00eesm3967423pjo.19.2023.11.13.10.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 10:42:42 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] dt-bindings: power: fsl,scu-pd: Document imx8dl
Date: Mon, 13 Nov 2023 15:42:30 -0300
Message-Id: <20231113184230.14413-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx8dxl also contains the SCU PD block.

Add an entry for 'fsl,imx8dl-scu-pd'.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- Sent as a standalone patch.
- Collected Conor's Ack.

 Documentation/devicetree/bindings/power/fsl,scu-pd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml b/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
index 407b7cfec783..7a0f1a400868 100644
--- a/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,scu-pd.yaml
@@ -20,6 +20,7 @@ properties:
   compatible:
     items:
       - enum:
+          - fsl,imx8dl-scu-pd
           - fsl,imx8qm-scu-pd
           - fsl,imx8qxp-scu-pd
       - const: fsl,scu-pd
-- 
2.34.1


