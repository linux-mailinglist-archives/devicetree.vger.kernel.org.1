Return-Path: <devicetree+bounces-8316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DFF7C7A1B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7018D1C20904
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5233D03A;
	Thu, 12 Oct 2023 23:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ky/YuNs1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD923D038
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:03:03 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CCF1F3
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:03:01 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c9a1762b43so12749735ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697151780; x=1697756580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIH+YvGCzBPNtKNlT8wLBn/0tQkDSpCAQdxybdH6cwo=;
        b=Ky/YuNs1FNez3PueN1yU5xUOODqzPkZO4mpDCeH8r2lRRbYzUjOcJtxB/TlyW78SeD
         ZyF/QFKYJCMsHqykS8Pdz+Bs9h5rmoBrzSa9oWwOkgKdtxMHQfGUofJu1fO0KHoAidxF
         uq0F0Ak343S8kRBVyUS/SxTgjMx0ZM3wBeELk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697151780; x=1697756580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RIH+YvGCzBPNtKNlT8wLBn/0tQkDSpCAQdxybdH6cwo=;
        b=JmDDm6xZvSx51XvI1NkrnzjZJgskdf4queuEdC/HvF4IpcVMoM9SJjGyY95fcLN096
         bGRxm9QvhOe0OiUM7BGo+pad+JccOaJ3lzP8Zfq9BhF9iTM3Kk58SbK35hEzCJLNpYCs
         I3bVZp1hI4RKwvhrp2DgaSJW7MpFOYaQ0BDGJtFSfngOpI51ZJB2lOJLzzfWNiTeBB0b
         GXm3+fJPw62f/bz75zAfEw7KUf+6LZiEt9M2AIVkmt8yxkSpeJDoK7/WNftEbofCOU9w
         +S6QCiYBKm+XqY5QD8qeUPifPJSoE5U3IvBO5mWXtmRyOPR2l5Lfh9dsaDOWQkjr0AAa
         0Osw==
X-Gm-Message-State: AOJu0Yz6sdofhOBMyrPsyN+ESxqiovukOXYuQvv6dZVfaALjNneL8atc
	GiEsdOMbqbdOL8gVRINxQopFAQ==
X-Google-Smtp-Source: AGHT+IFBHMMkJoSakpp1N70bOiH3PMSzDjXVxC2bq1hCrP6zNIw/kZcHm0z6MEySLozadGI5ljy7GA==
X-Received: by 2002:a17:902:f2d3:b0:1c9:ec98:217 with SMTP id h19-20020a170902f2d300b001c9ec980217mr1142980plc.41.1697151780553;
        Thu, 12 Oct 2023 16:03:00 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id g11-20020a1709026b4b00b001c613091aeasm2494390plt.297.2023.10.12.16.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 16:03:00 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
Date: Fri, 13 Oct 2023 07:02:31 +0800
Message-ID: <20231012230237.2676469-6-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231012230237.2676469-1-wenst@chromium.org>
References: <20231012230237.2676469-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add entries for the MT8186 based Chromebooks, also collectively known
as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
the "Steelix" design. Being a laptop instead of a convertible device,
there is no touchscreen or stylus, which is similar to Rusty. However
Magneton does not have ports on the right side of the device.

Three variants are listed separately. These use different touchscreen
controllers, or lack a touchscreen altogether.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 5e5834d9865f..a4541855a838 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,24 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393216
+          - const: google,steelix-sku393219
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393217
+          - const: google,steelix-sku393220
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393218
+          - const: google,steelix-sku393221
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196608
-- 
2.42.0.655.g421f12c284-goog


