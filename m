Return-Path: <devicetree+bounces-16102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFBE7ED86D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 186B21C20915
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D816A49;
	Thu, 16 Nov 2023 00:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mKJco46X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FAAC1A7
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:51 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1f03db0a410so123722fac.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093870; x=1700698670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=mKJco46X+KfRHfdimkO6RsVoiucmsEj9AI0baopK3DFUnGCLIuE73oeNT89BsHKOta
         mvzzyu2KhVgglKyz0HIzTqfgA+PHA50PCp0XvcD58zmz3G9WgA3mUPXJ2ShJm4M/TgpG
         jKZ5GPixHbgidq9YkgBv4qz7q+GkYfhPhlNwljn2FqLKFYGGiUhi3JBkJU0eh+zJuPeg
         at3bB5Zkm0DUNB8C8AMErw3aO/oz/D+Tejwdm01JwpvOKo/QiX/nhiYjEtqjHsDE4ibW
         eumWr3zB5mJFhxI2QTWa1XHwABQvW1EPnL7ohjtIaMYetOgaYBuPvKItinzPc2Mk7m5h
         kFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093870; x=1700698670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=lOTWSqTowX9AGKMQ8DrAtaKnzjhpxN9yhRPtvtItvkjpM+MFDui7JT7spKvc86HJp1
         9RSqpiCbuyW10Xrdt7VCTP2C6pyQQ3BFINhbcnmDKO1J6mORgayDpcSowahcqv7INBIf
         0I+uVHPlrXzBpzoFOYRfa8QkT+l+8oYWZPpo0/hTAZge+rsA8VbJx+IWQ22HKrkQ3q9Y
         +PHpgfNHdVn418L/MS88LLO7tn3YHynA6O/lNtaVnzptpKu8N0b+vLLCSk8aKpM+qBZW
         TkHZyo5/MqARMHKnwpkfd4Di21JZrsRR5bx3kFybFWEZX0F4fVXuJvgJNlKH1kKfuxuR
         aXqA==
X-Gm-Message-State: AOJu0YwQPiZVCFFfg6Awpkkj/ctkVtvKFqOTw2j1n5bMZDH3govlE7Wv
	14aFIOJJFkU5yF/1r2EkLgg=
X-Google-Smtp-Source: AGHT+IFLTYPG2sQjO84tzFuiebzB2LxW4EEUu+lO6YJqaMNF18JRW3+xebMH0nmwSWJxVNMOUoER4A==
X-Received: by 2002:a05:6870:4511:b0:1e9:54ef:4806 with SMTP id e17-20020a056870451100b001e954ef4806mr16831477oao.9.1700093870522;
        Wed, 15 Nov 2023 16:17:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:40 -0600
Message-Id: <20231116001742.2340646-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


