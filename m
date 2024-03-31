Return-Path: <devicetree+bounces-54954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AA68935CD
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29FE91F22529
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48326148318;
	Sun, 31 Mar 2024 20:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uq48qO9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456A6147C69
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916950; cv=none; b=CvLQvx7vt7XmnvfI/UG1ZguIxBtO19ORXkUZEvyMUFU7YjnP8tzQLgxszPsyFZd7AFjV0GDkxFpLoGqq2vJ12jkiSeq5Psk7jekrY7h/WlsyqRAzrbojZaYK4J150HaWU9cEith4NYFPOKNRW+mxBZb5ZWOfvl+l9xMcZWFzoXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916950; c=relaxed/simple;
	bh=SFNXn1zh/yUH5lKBoXzlQkp+p1CQ7cqY5rYlPQmKP7Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uOyHV9GqV0Qc9enhVNFgVORqIpnhcw/c5YmmJ5CPWpmsACww/BqZkI/q9Ia9U6tyAMnII1mPRjv89bRaMpa4u0vSms6VGn1wrty8Ivn6YL4wGsG/rsemHWyftNdzkXf2ketxVOrnIsbzaUiNHFwcqFGz/UXJL6WHPJsbL0N7UTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uq48qO9V; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-515c3eeea5dso3907955e87.1
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916946; x=1712521746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pQWdjTwgnIdZS6takOhMDQQy8XjSBnwUC2ksC3WzZco=;
        b=uq48qO9V6rxMCbEH7Bp6v3NsQ3upImPA1+bKYconmz5oC9Y6q9m8jqumYC6IEPPVKJ
         K1n0VgjaR/R1OTWdRJIJo330JQgBbKqxbpjlAjRPm3+GnY3SBloAxYyT+p0PdyIGhTg/
         A6+rM+R0+vL50iiMBnjlXUjXcn+kHx0e/mIo8oHh+vqXmQJEPsOuA2ylpoQ6sd70Ynuz
         y4ielphR6oe3iFJTZumLfc3T1ai76iQ0rPN+nAcbmfD0oIZ3OYjJuEnNY/dSRosB7PMg
         fvnX1Y3D94zzhOhI9tIdZgl/tEpV5OY0trM7NX+ftYHclUlumfUYUU7vFcaOvo5OBSNU
         YxAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916946; x=1712521746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQWdjTwgnIdZS6takOhMDQQy8XjSBnwUC2ksC3WzZco=;
        b=HuALquDUH9NAMXoV5kG2I0sm0uDOp5FV1PvXXvmMoJWBYN76wzUigslcp1huJNmv+x
         hrVVdbGmriD2uuGtZX/uzA8nG67SAhXedkqnton3/03cTchZnrpOmtlmpyVWudtFhjY4
         NfOEJKt/gr/2OEO69zuSE9ahyCPAhYu0SRcIBm+P85iPenFYW2QDPKl2+wwB4A0Buw25
         rd6H0lIKcMZMNmE74+8Fg0OyHL2dWPr4tH3w5E8O0Hr98TAl26DKiIG/SebUAnjIXWKp
         sYxXCtPrPn3mmr4ziNxBRgPDvmxh+EH5DQx8N2JuVevUuD5hQnCPIERn1aVHCzizub7A
         hXww==
X-Forwarded-Encrypted: i=1; AJvYcCXej4fsg7Q9rC73xZnQVMVBEg39Gl/yCY9bq92azSDBpP7+8prR+nTnwQETaWniyKjhw8ZBMgOgBiKrpHAFsJq4NFLAS2xxiKMaBw==
X-Gm-Message-State: AOJu0YyI2acBjBhvylckM5gFqgSazu8PAP/vIC9ztml29/zx649IDDbu
	fFJLgNDB6XrVJ3voKlOwaSvgpTyb0rBP+o2LpmyMcl7dkYMNXu0hKA3xZA26EdU=
X-Google-Smtp-Source: AGHT+IGQdqPZQuZrp4rMIkttCQZXwzzfHQ8qGULNfSAfqZZSLM5BQiVtoEAQJyL03sBpJPsmSiXibg==
X-Received: by 2002:ac2:465e:0:b0:515:d100:1650 with SMTP id s30-20020ac2465e000000b00515d1001650mr4831112lfo.57.1711916946553;
        Sun, 31 Mar 2024 13:29:06 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:28:58 +0300
Subject: [PATCH v2 01/12] dt-bindings: display: fsl-imx-drm: drop edid
 property support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-1-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=SFNXn1zh/yUH5lKBoXzlQkp+p1CQ7cqY5rYlPQmKP7Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceOu5x7edAmH8+j3eGaGmmWCs+FoRdo+9fSq
 UX49KHJUhWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHjgAKCRCLPIo+Aiko
 1XkMB/4jYrMQ2Pto+iPk8j5wCQ3lBNRQBXOOxIa36gpTWGBLXN2GMgq4T7AeSxsn9W4uYJAhsST
 zHQ4WQaOaSHhKvVfvr6alCYvShW1Yffn7kru9PtHsb1YlYvbfyYV6GJy4r+eOitmea2us9BMgqd
 75bzb0KkIdLmVYWRygT8xARQ/AZ0RZRvmWJKAKq94B62Yj3eNCDbWUkpHtkte3s5Z1IawpY75jR
 RCDDAnQO9BSYH2we2tHqKiIbf4TJBGRQpIM3486HR19gxyNT2AVWyZVuMY2UxZ9drbNgwIfG20z
 311P8qvYPgPF4VXolTrtGq+n9JR6WwA+ID/jrmIaxce/aZRk
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the in-kernel DT files ever used edid override with the
fsl-imx-drm driver. In case the EDID needs to be specified manually, DRM
core allows one to either override it via the debugfs or to load it via
request_firmware by using DRM_LOAD_EDID_FIRMWARE. In all other cases
EDID and/or modes are to be provided as a part of the panel driver.

Drop the edid property from the fsl-imx-drm bindings.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
index 3c35338a2867..269b1ae2fca9 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
+++ b/Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt
@@ -119,7 +119,6 @@ Optional properties:
 - interface-pix-fmt: How this display is connected to the
   display interface. Currently supported types: "rgb24", "rgb565", "bgr666"
   and "lvds666".
-- edid: verbatim EDID data block describing attached display.
 - ddc: phandle describing the i2c bus handling the display data
   channel
 - port@[0-1]: Port nodes with endpoint definitions as defined in
@@ -131,7 +130,6 @@ example:
 
 disp0 {
 	compatible = "fsl,imx-parallel-display";
-	edid = [edid-data];
 	interface-pix-fmt = "rgb24";
 
 	port@0 {

-- 
2.39.2


