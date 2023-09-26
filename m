Return-Path: <devicetree+bounces-3463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E957AEE6C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2EECE1C20361
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D797A2AB5D;
	Tue, 26 Sep 2023 14:27:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E5C26E11
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:27:55 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 876F8FB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:27:54 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c5faa2af60so10261745ad.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695738474; x=1696343274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RoE3eW3hdmyIp5DBZQI/nReBBYJkVVywCHuyXQI6658=;
        b=F49uQ7/krn7vbTvILGI9Sok1A4KJKwKkY4m7kii1XlFeLHhgqrfFVlXzKPHpBasY3R
         O5De/BWeQkrFqJkKXJ5qKgIvW3UjBEno9TCS/Tt+611FhKfNJRRTmWgp/sLlYNeQQBxK
         el7i5epawgIgyhJA6Z4B9jd4kDPeF+qhXo5mI718xEhSRNar6cHfpeV/CvjtFmIQ3GbA
         XB5oqyOYbymg6joI86Q+9XXfErmTHKbTJvQEB/opw5hlswIdKLgyWx29KooE9XrCeBj8
         GrtlcLHrNHKh1UFcRi1Uoufqjr+qViscDOe+o4MoSQMY2GaYLQ7CqnJ63icnOTTEJNUC
         OvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695738474; x=1696343274;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RoE3eW3hdmyIp5DBZQI/nReBBYJkVVywCHuyXQI6658=;
        b=rbwI0E4tsfSLiH6faDDHcEdRwPUAjlKUp/dT62Nwc2hDOKVfXceOnDnNW08O/jXWlV
         NLKw9FALbAgYXDa2ptIaitgY6v/PHUQtIzrvIn7YJM9izbYq2OKF2E3qNPyaigDO5mNj
         N3TPXooeNqNkmicSG3NMDHMbVzi4LgwMNBz00JU0tT0ZbNbR4PdE0Bj4pSsLmkKsC3ud
         c9qdcJoxEydIeI1Oikvv3lUBIQZnoYiSEg9gizUGKRjphYlqYDH7wmB0Msb3eCWkA/MI
         LtI03t58j6meGZ6GsuaSqQiKmyKaBML75/zX6lHLf2KXRwYvDdk8wCicynLnOP8bLYSx
         um/A==
X-Gm-Message-State: AOJu0YylxQ+kXKNJ0GkPV9lcQeLRHZc0UsjfFE+eYGyFWpiUB/mfoMRO
	/Px9gC9ntDSCkR2+/Zm/RgU=
X-Google-Smtp-Source: AGHT+IGluCn4Hp2PDjIwnl6XT4YgauQsszYNY5mxUD9wxpm9ViLkJyAvM8ooLC/wE8Ze6ZUGd13rpQ==
X-Received: by 2002:a17:902:b488:b0:1c7:1eed:10f2 with SMTP id y8-20020a170902b48800b001c71eed10f2mr622138plr.2.1695738473877;
        Tue, 26 Sep 2023 07:27:53 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm3198115pld.129.2023.09.26.07.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 07:27:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mirela.rabulea@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Date: Tue, 26 Sep 2023 11:27:36 -0300
Message-Id: <20230926142736.390477-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.

Change it accordingly to fix the following schema warning:

imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional failed, one must be fixed:
	'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx8qxp-jpgenc']
	'nxp,imx8qm-jpgenc' was expected
	'nxp,imx8qxp-jpgdec' was expected

Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v3:
- None. Re-sent it as a standalone patch.

Changes since v2:
- Collected Reviewed-by tags.

 arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
index 7764b4146e0a..2bbdacb1313f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
@@ -8,5 +8,5 @@ &jpegdec {
 };
 
 &jpegenc {
-	compatible = "nxp,imx8qm-jpgdec", "nxp,imx8qxp-jpgenc";
+	compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
 };
-- 
2.34.1


