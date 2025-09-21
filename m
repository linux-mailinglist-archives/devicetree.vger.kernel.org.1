Return-Path: <devicetree+bounces-219775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C6EB8E236
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 19:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D7034403CC
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 17:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49AB827466D;
	Sun, 21 Sep 2025 17:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EAj+dlII"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBC0261595
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 17:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758476043; cv=none; b=G92B4Uwi7/K7tAf2B1pKdSFvaUUNwbopCwAxQcF6eGkmoCnE/awIEAVaWHvhYrErPFFvWEo5fp9XEV2XyuGWO+UvT8/kn5ST6p6sVw9CQxjvIHKMrm5FjjjadlTcL+yqwPvj5SL0DhJLsEIYTfMdrvVNaSGoRPcdwbNHPlbnUpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758476043; c=relaxed/simple;
	bh=U5rpBoUei7B3mGSsrABizF4eMV2IFAukcd+gEXdncFM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LwRnW58dZ0iTwdrFv2w2TIyxmCZiVHsAFr8d5Nh4n1AR6p4mvYdiQnuAdHkO1qxgewSDUiop8+l2hoYNhCO6kQ65kazvc4nw0t3jiEe+JEbvbRayLdQNy6p6Gpre1maHXmEqi6e8dutjtT/EHDHMDoOcOI/73OpuihHiF2a03W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EAj+dlII; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b0418f6fc27so629543066b.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 10:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758476040; x=1759080840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzJWTSZGsWBx3i24RVD3dVzdxwVQmNlRx6nunjK1UCs=;
        b=EAj+dlIIBTB9kaQOcBw7UV47CTJ83QUI5B/zZ0Ah2mer3qenpabJ2+YN2SA4xOASag
         QJxL4ycyRwpCjP3UVrmy3983wE6erOMJNponKLEaXL+2yF8jo+WqWYcVTKi/q8GpyNcn
         SmQ/OMw1E6bLCQitVI+B7YIaCYv4YfXYzPdzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758476040; x=1759080840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzJWTSZGsWBx3i24RVD3dVzdxwVQmNlRx6nunjK1UCs=;
        b=Ej4qBnlz8SAoDiRYqapTbuxoUvkJ3BR2izq2zqSIwhAvcUv0Wl7SsU82IAyYtvsov0
         99Us4l/WFtyQJ15D1gKeSZ2MFyen8kCSIxTl4GqCD6V77fr5E9gxbKNQp579eJTPpiWr
         aJM5LP6/LGORSUrbasj34pYEtawvk8pEfr82U84uNuwOdaERZG7v4cDMd69Pmmuvr5me
         uaxdu2Fg6W3pWIDcHpYLsyX1uxL0QooPfHJm/9xK7BNy1YPGwENc2rPqfQz5Fz2AKkBE
         TfpXJ20+O4MfT/ulAdh5oI4+ZBu8kMAXgxBGaL5VXxIAAG3Yy2UCxAGgLpg2Q5XmTwfc
         HeVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbi+QiCGgv3ZLXm0TXfRJducluRfEuhSCiIF+DbdOdRAz0XY8VCxytn0XoinZSX4ilKtnolfBO8pG6@vger.kernel.org
X-Gm-Message-State: AOJu0YwmaW193MGn8R+7GZZDnfm1i+rSRdL5n/kzc3D2qViuussjxHu3
	79EcObOpKuV84+jIVvhiFdw028gcXtHV7SyjxRavbHm2HPkCGAQctVcmXHbisDBKS44=
X-Gm-Gg: ASbGnct7PjRIy1whgs52qqteKAKGqWHUysCyKXm2Oqr16ynYbGGipwx44ezcE8O9qXM
	6PWwUh6RQI8nl1ceh8Djcw9Q+KF2mWzcpqYO4BfiHwz0qxJVtjQsWskDZFYjDDyQa2cDT2wRceZ
	ZsXdFDy3CSf3dobnwZeobxsXqc5CH883UsS1DFb/O+x3Dl4fn5SVoF79MFauqZ1voIlR2ZiaOZt
	HPpv3mPOOmAhuMD6w+3j9rLt8inwGmmnRJ9nC3zIXu85CEvlfRVYVbpJ0/ttn39yu3eWiJBGevF
	jzmrzJbhg+TPy+LEFY1Dbxein6StisGsnGlTGebwGdCxazLQkv5wmKgXBnW4KJTCgu40i69wkFR
	XTBWdYaAxSGgHCyd15icR+26vIXAnPZjWw//4VBToc/BD3Eg99mRq/Jx4hO/F1BquZaw2KRgSuE
	8Vqvn9Zxjc/Ge420vTrRstlBVxH5m7Yl/tTQ5I27FWtrJAwJlofAVgV+Jytea82G0S
X-Google-Smtp-Source: AGHT+IGz0pd6yisb8PdKwdoXAN1/izzqJHKajxmZxcXhsHPhM86fjHeHGd4HkEVtbFTY3+U0FGA7cw==
X-Received: by 2002:a17:907:3d94:b0:b2c:fa32:51d4 with SMTP id a640c23a62f3a-b2cfa41a17fmr31404666b.3.1758476039775;
        Sun, 21 Sep 2025 10:33:59 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2928cd31a6sm324347266b.102.2025.09.21.10.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 10:33:59 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	sebastian.reichel@collabora.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 3/3] dt-bindings: touchscreen: remove touchscreen.txt
Date: Sun, 21 Sep 2025 19:33:44 +0200
Message-ID: <20250921173353.2641438-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
References: <20250921173353.2641438-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With commit 1d6204e2f51f ("dt-bindings: touchscreen: Add touchscreen
schema") touchscreen.txt is no longer needed, and since no other file
refers to it, it can be safely removed.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>

---

Changes in v6:
- Put deprecated the properties added for the eeti,exc3000-i2c.
- Drop the example for the eeti,exc3000-i2c.

Changes in v5:
- Drop patches:
  - v4 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - v4 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema
  because accepted

Changes in v4:
- For rohm,bu21013 bindings:
  - Drop description from reset-gpios
  - Simplify description of avdd-supply
  - Rename bu21013.yaml to rohm,bu21013.yaml
  - Add Reviewed-by tag of Krzysztof Kozlowski
- For zeitec,zet6223
  - Drop "Phandle to the" from vio-supply and vcc-supply dscription
  - Rename zet6223.yaml to zeitec,zet6223.yaml

Changes in v2:
- Update the commit message
- Add Acked-by tag of Rob Herring
- Add patches:
  - 1/5 dt-bindings: touchscreen: convert bu21013 bindings to json schema
  - 2/5 dt-bindings: touchscreen: convert eeti bindings to json schema
  - 3/5 dt-bindings: touchscreen: convert raspberrypi,firmware-ts bindings
    to json schema
  - 4/5 dt-bindings: touchscreen: convert zet6223 bindings to json schema

 .../devicetree/bindings/input/touchscreen/touchscreen.txt        | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt b/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
deleted file mode 100644
index e1adb902d503..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt
+++ /dev/null
@@ -1 +0,0 @@
-See touchscreen.yaml
-- 
2.43.0

base-commit: f975f08c2e899ae2484407d7bba6bb7f8b6d9d40
branch: drop-touchscreen.txt

