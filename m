Return-Path: <devicetree+bounces-116981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2E29B48E1
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 168C31C2259A
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA5C205ABC;
	Tue, 29 Oct 2024 12:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IVcfzzAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB49205E2D
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730203374; cv=none; b=rEtn/Al6mPha3IHrz4a4pLXabPJJBbYy05h0QNpnYYkr13QH4ne+Q9GCWQbDeFek/2LfFR2wr91hT0z1+QDCWeLPFl6S7PjQofXWvS/pDPsB6Sq8JrdahICFx9L7VLzG17jKuJIIJl57ylvjguoupnMhZhv9ZN7wruUkj9Vm1R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730203374; c=relaxed/simple;
	bh=ix36Ypfa4HSTVFew1jKjxGav4UwvLvRrA/ifkmPtQdU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SZLyZMTZg3LVJ99zfMt8NBSszYICHPdJBuqAJ2haG2+y8anRAH7vdb4cZxb5AKXuf+Zj2xF6ClNcTNBUZi7dYooUW45UHLUaor7sOSB0DHpzhBdOaa9U/zSq6nlVe56qk+KU0v1M0ZDVD46/a5Y46mMUKYF7PTxrf50fmBYvNME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IVcfzzAn; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71ea2643545so4348219b3a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730203372; x=1730808172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0AT+opKILsnoMVSAUc1Gmwyy4HAQ63QQQzsawGp/uow=;
        b=IVcfzzAnQxkekWSgR2JVhCyzl9uGN5k94M1AUt4JCznTaAGDwxExvlLPkdDH+BL5Gl
         6E/8e6HNW3MJGTsTACCy4Enw3G09Cw1wIMdgbx9PYKJR7fO+I/P4bnPRe4niqmnjPK9y
         4UZCBIKkrOnKl21uz2Q+w1ySyb0qISAkHe2uXUsBehwhXMHaxv0AhRpkqWJlYhO/uHH/
         SNrKb8H3SGd1fKsJqdfQb7ElfCVAVuvU3ea/ZQhMMXihQMP8O9L1r+kjmDiXUht0SKJ7
         x8GfAozVNyHqGFnPwpg2kMQGRPDMbUg3PNA3NcBoVn0nJ2IcQRhZ3jQid6JKFSW20a5E
         Q1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730203372; x=1730808172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0AT+opKILsnoMVSAUc1Gmwyy4HAQ63QQQzsawGp/uow=;
        b=j4NHR/s4e5y7XdrdmXlHnhvsjCQvVyNHIE1WzHNqZsLutdVg6FDKfZSxjXQyU0W+UP
         UfRz/dEG5xXhHcC0XF6L43gsqGyEJCnXw3k3C1wlaMb0j2XcsoQSdZA5c36ycllunCOM
         FCcO4SzKgzi1qd9AZC1z0n0oo3BKhzOAvU81UjgMdn74rUwP+bqU8FSKcGahj9z683Pg
         Gpaw87UOq+IBWy9QjBJiTuXqpBMPpVI/BAhdLFhXX3Gvv8e4K+3WM2kqfG+CtoJ5ML18
         XbETpsjSlb5Pwp38cEq5xPvllqYO2LpFqyYdelS1TZJGDvc/wcTfKfS+lWG4sjaoNKt8
         GzOw==
X-Forwarded-Encrypted: i=1; AJvYcCVMIULRQ7UmZEwj53g2dVSLIXrWjW48YeiCxOK0am0xfF0tYpj2RzxryEO3xWif9iMj74eU9+tvIhXI@vger.kernel.org
X-Gm-Message-State: AOJu0YwERW3WKQuT3PqvREcryT+EDLSBi2F2sLWBVamnJCMdSQbYs4wg
	7VOc+SxmEMYWHNoGplw1HFsc3KO5Sm9E8Lr+l1YE78dN2SYs4UbY
X-Google-Smtp-Source: AGHT+IGSaPWzwYRZBKjWD9RrHpvpb6Xg8xbKX+Ux5F+Yk2959JKoj++AuEEpzabc99znDi3atvlmfA==
X-Received: by 2002:a05:6a00:1703:b0:71e:5d1d:1aa2 with SMTP id d2e1a72fcca58-72062fa0b5bmr16981266b3a.7.1730203371964;
        Tue, 29 Oct 2024 05:02:51 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:c7e4:1ef3:7ef7:5ae0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b7d2sm7428830b3a.114.2024.10.29.05.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:02:51 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
Date: Tue, 29 Oct 2024 09:02:35 -0300
Message-Id: <20241029120236.299040-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241029120236.299040-1-festevam@gmail.com>
References: <20241029120236.299040-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:

compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";

This causes dt-schema warnings as the current binding only
allow 'fsl,imx6sx-lcdif' as fallback.

['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long

The imx6sx-lcdif programming model has more advanced features, such
as overlay plane and the CRC32 support than the imx28-lcdif IP.

Expand the imx6sl/imx6sll lcdif fallbacks to accept a less specific
fsl,imx28-lcdif fallback:

compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This helps keeping DT compatibility as well as using the more advanced
lcdif features found on imx6sl and imx6sll. 

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Newly introduced.

 .../devicetree/bindings/display/fsl,lcdif.yaml     | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 836955de3bc9..08ce19638fbd 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -32,11 +32,23 @@ properties:
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - const: fsl,imx6sl-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
+      - items:
+          - const: fsl,imx6sll-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+          - const: fsl,imx28-lcdif
       - items:
           - enum:
               - fsl,imx6sx-lcdif
           - const: fsl,imx28-lcdif
-
   reg:
     maxItems: 1
 
-- 
2.34.1


