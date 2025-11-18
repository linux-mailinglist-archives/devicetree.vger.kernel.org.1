Return-Path: <devicetree+bounces-239817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EB245C69963
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id D19702B2D6
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B663546E9;
	Tue, 18 Nov 2025 13:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TG6BVkDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AEC317707
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472261; cv=none; b=nz5tyhuvfTfFk+Kl7VPZ8JC8biyT/4VVE/WRJ5QYHG3yjr3j+omadkbPPgsyWtKMDvESFGwEmmgdOvJRYGx/bowAi5Hs54wUuw+UTXG3VTd1dJFgAnhSb4lbNONmoNcII0ZHxgVUcTTLXN3YTT9vWTevEE8tAqIZ2slqM43MA1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472261; c=relaxed/simple;
	bh=W3mroZUPay3ZZUMFk9IeIw1C7/7Dav7MAdwzRbZPD+Y=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GTDijji1SCagotgjS0F296sL3/bfbceMhrQXSu6sfBY/BGdmshD6Cc/j75ay9ha7P1mSZiNyHjQ6cDC0RbfPP3NyWqUKiPWSH6xF79L2LLYTNTP3nzolHDlfY5zIhSyXTKi1ySHahAbuxA6ZuCBZ/O6Di/MQ183BryN639HupRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TG6BVkDh; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso4663539b3a.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763472259; x=1764077059; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JfHC3Wbcd3Ds6ua6qw+uzzcAe5uA1zhG8wWh+jJWWKk=;
        b=TG6BVkDhd/KWhWHBcShxF2OFpmmeai9fWp0XJveyaAtGVEp693mciWs+XYsXG9E+UX
         Mqz81LlUamB/0zRuBFgVBrYmJ+8KhCjIsjx74/7wIkFkTgSTg2AxTu7vJaKHTe+7YHDn
         gd9aS5KS03oK7YHFQGar7qjiPvKEFM/drHx4+C4rHn5sUmaQlOdXmO1q7/2f83jq5+h9
         6YmGNEe+qPUGhfN2cfaK/WyIsdHFOdSIQohVSFJk57ok0C50SozHaDq2ZIbgv53nRGc0
         lXefGAABN3l1WqNdELTv+PEWOL1cPPeqgzQiqqPZj2SlPRH3ljE2qwyOkFPHjNQDY3+e
         CSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763472259; x=1764077059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfHC3Wbcd3Ds6ua6qw+uzzcAe5uA1zhG8wWh+jJWWKk=;
        b=J3CXBSM8KkkBgP+F1Rq13FN4eYuIXpIwzsAJ/FjqbGr7fRDtUUXx1xP6QGCUJfJhLJ
         bI/SXXuASrbOsw50l1EGwPzWvQ+gdy+JiRE8kW7J3k0HguW8ZPx4FWvocXYHaIbW7yzE
         Gny3dFPWtCvtUHqZSOvVOsdMt2MzJRscsDcLEAk+Yv3HaRLiGAWU7GpJp2JnEwM8IS5p
         D6JPSpWojvAzMAcLlXUVWwgwx60ooEdPVfZVEDEwHd7B+sx2FIi7ep5+7/qLLsi/E7V+
         rnxkvLr9hX03Al3/Cbl4p9+jdFX262qSEC1ZXsf7WrpmpByPzQtq0GlKi/IO2DTYuQVy
         o67A==
X-Forwarded-Encrypted: i=1; AJvYcCUblgDcVtiOau51s6v1wa+pvY0uO6A+ArBIAJudhxqV0R4awWQlmA88waVbUqtt2k+Cw6XgUcI/52/R@vger.kernel.org
X-Gm-Message-State: AOJu0YzLEHManhWbRkBVY41Aq65KmOyG8Hy+QsjGvzL4POVhfwUBMZAu
	kWXmRR3LQMOrF1mQsd8cOXu0tPYviAGpljeObufSK+KPZmSqC7MBmWch
X-Gm-Gg: ASbGncu5YzpCzeam0Y2PwXm0nZgjei7X4HzC7oqs87joCfKCIArJt1MvQvVGPu46hFG
	7kyCivCdzjKCKdAW4vhFkP/Pak/hmjkQEScBYIf82c8iSxxOLBL/quuWyA9ZMuQjUvl3Z6qK/HE
	G6m+9Xj3M0txMoMyVwEyfr/8n3DGtdLH/bR5yqi6jQHzAgsS4Zasg32uABZb8mBBq3quUHyzBRo
	5Nl0R1UMOpCsPhRkLrL+yOnH5VjlUoUK14avntxAHBuv5kDKY6USjO2xiqGoRd+Zh1tsoyoAbxW
	lRSz206g90GGI0Hb+EM/xCRchFlxJEf7IekjyeNjpNe1tKpsrwE4AOpRTn+REWVY9y5bi2gq5ux
	mJMjQ8tHMdYSFRKhhb7Bi08+wq9WiVSw7UWXsO5jIPjXL/NKCFexBmH7LjVnT52y0oDVPgWU9DD
	gdM39R5vd3u9bkdohtebaeaUONcDNOYlIsEyY=
X-Google-Smtp-Source: AGHT+IEjOHi7qZdY1X7C4XG0KQgH5xR1MDapZ2pWxtotMjqqRBYXWUWNxE9uH3alv8dfQKa3CAlMSQ==
X-Received: by 2002:a05:7022:3c15:b0:11b:c86b:386a with SMTP id a92af1059eb24-11bc86b3a2amr3153643c88.5.1763472259170;
        Tue, 18 Nov 2025 05:24:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8863:100d:2a2a:9a74])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885d8sm66885134c88.2.2025.11.18.05.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:24:18 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/2] dt-bindings: display: bridge: ldb: Document nxp,termination-resistor
Date: Tue, 18 Nov 2025 10:22:07 -0300
Message-Id: <20251118132208.143315-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the optional nxp,termination-resistor property for the
i.MX LVDS display bridge.

This boolean property indicates that the built-in 100 Ohm termination
resistor on the LVDS output is enabled. It is controlled via the HS_EN
bit in the LVDS_CTRL register. Enabling the resistor can improve LVDS
signal quality and may prevent visual artifacts on some boards, but
increases the power consumption.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/display/bridge/fsl,ldb.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..6bc786204e65 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -35,6 +35,15 @@ properties:
       - const: ldb
       - const: lvds
 
+  nxp,termination-resistor:
+    type: boolean
+    description:
+      Indicates that the built-in 100 Ohm termination resistor on the LVDS
+      output is enabled. This property is optional and controlled via the
+      HS_EN bit in the LVDS_CTRL register. Enabling it can improve signal
+      quality and prevent visual artifacts on some boards, but increases
+      power consumption.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.34.1


