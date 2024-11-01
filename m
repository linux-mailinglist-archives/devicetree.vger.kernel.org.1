Return-Path: <devicetree+bounces-118146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FB69B92A2
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 14:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5625281555
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C18B1A08DB;
	Fri,  1 Nov 2024 13:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g2hudIAc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98CA158DD0
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 13:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730469272; cv=none; b=P05WsErS3LWLhh9lZz/HihGWLF+4fjtBISb3ttVfcxmSz2xg6BCbbEFGFHvH07NibFiJx1U05jZdnwP5TbOziCPS1qDU1EZmgqsws7Q6FGS0pN6qzZ0E0x5ibCbUh93Jgba7z+T2X5mCkr9AkKRiqIu/tee/bJk24xxCfJX5NAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730469272; c=relaxed/simple;
	bh=g6ZUaDE76IaBaWI5i8b4MvkG/gJKjGtVosTE5T7M0k4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SYGHgbPzT3pgIWn8AIBlvswNHI+tufRKzQx6B4F1jKH6JiTeO9AnipMRXm8sXKPrp/vRTgGixWIxiYewlvzCdNL1kihCXS6UVt9nESSkHicFHryBV1PwRCy8eg5z5LBvUOfiBNucV2czk4Qpd3769z9QCOphE3sLUYU5B1Gsth0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g2hudIAc; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-720c2db824eso1468662b3a.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 06:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730469270; x=1731074070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZU7MAARj0sncxwFgqQLvOZGjw24c60A4QeqGtRoxeC4=;
        b=g2hudIAcRxF02zXi05jevahUYxuqdSdOr0LeoJ1jD5Dm4JrMl6zAGG/YpjAxt1eeAq
         8OdGcfXCMwUpQ5QOwx1nW6+Jr5RkOAhyeRXuFoysnZWqwTbWtGNrqqxXnCSIQjgoCPYr
         twfdK384ATvND1MSKNSwVD6QAQmvBpT/ln+hIhkN9ngynULIRll8ZWQM/2X/eFYVWAZ4
         /Bq+cUMn9Ns5YRDUV1Id/oMAZ7yPZdD072ZbawYFH/iUazS2Srf9RwIX3w/l72s95LhT
         f7I5K2kZfGKTI7TqSTruSehaMrRHw5IjcsSU9KEvEijljw5c2QvDavjeW3F7mK4JhAdo
         vG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730469270; x=1731074070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZU7MAARj0sncxwFgqQLvOZGjw24c60A4QeqGtRoxeC4=;
        b=s8e3dMA0wxaxv2QVijBL3FrbiKaEg4UFKk10DIk/eWcyoBXmuE3ii3+oOplN/jCwnf
         DRp4iHFjxyFu8yPFMLMETVqP4lQZIfcaQVwJ0OxwQdh2VXKW12ifd4vGwnIgW1ybi8yA
         wEmxtobHErEY0NXEL1azaZd58MhlE9b5RU1Dv8Ip16PaDhvYRhLWnhuuq+rzZsFQlOro
         NabCFfIOyi8bNgSN+R0VTuSCVxTopD63YSFVtUe3vlPhCFLgSg114Rajt6/eKCVU6Ik5
         JjnNfUl7Jc66NSCk3qrvBqdpGyZ1TZwiPBJO5NFzJCwWz2RM8/AvtTOBGQb4jSqZ3LVe
         lDTw==
X-Forwarded-Encrypted: i=1; AJvYcCWoDpaNVDnnnZHRLTQsy4nXpbBHM3CEvVoQTjTnSAvP8PMvBg9CykHmZCr0cx8WY5n3CFv+Um0KolSt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy98VX4FEDeMwxqy+hcxRPS+wf1957xxJ7lALael/5Uu8v3xtH
	GVj4DYWrwu6oZUfOJ/TqtGk4CeCWFSQekguCDd0/tPIUqZUDSbCb
X-Google-Smtp-Source: AGHT+IFNvODyOXFIZrFt2e8iiDHQo2FUGoSfpLAmSpRo47uVpMec5MwoTYVpy0Ef1+U4+wcnRG9sbA==
X-Received: by 2002:a05:6a00:3e16:b0:720:2dbf:9f60 with SMTP id d2e1a72fcca58-72062fd6edfmr33829235b3a.16.1730469269993;
        Fri, 01 Nov 2024 06:54:29 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f81d:d4e5:9f89:77f2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc1eb3a7sm2656270b3a.81.2024.11.01.06.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 06:54:29 -0700 (PDT)
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
Subject: [PATCH v4 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
Date: Fri,  1 Nov 2024 10:54:05 -0300
Message-Id: <20241101135406.47836-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101135406.47836-1-festevam@gmail.com>
References: <20241101135406.47836-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

mx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:

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
Changes since v3:
- None.

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index ad0cca562463..72e509bc975b 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -23,14 +23,18 @@ properties:
           - fsl,imx93-lcdif
       - items:
           - enum:
-              - fsl,imx6sl-lcdif
-              - fsl,imx6sll-lcdif
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
       - items:
           - enum:
               - fsl,imx6sx-lcdif
-- 
2.34.1


