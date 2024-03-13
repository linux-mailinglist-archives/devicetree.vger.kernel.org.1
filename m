Return-Path: <devicetree+bounces-50347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F15A87B19C
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 20:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEF7C1C2325B
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9704DA05;
	Wed, 13 Mar 2024 19:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iXQcDHWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E5D446C9
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 19:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710357119; cv=none; b=IfYe1C47gjUbVVBcC6bHDIADuAKIAAdewkS6bxBVCK/cA6j0NQfJ1sRsv9DgngZQWwJoj3nDIILRUPG6ut7b4iIjFIxTvTxMCAtvmI0sBfeHXuMVDD2ZJ7RTA/62LivAH0hHcMVe3O8bCV/2aJuz0m6PHMN8JNV/ruRRz3UPYXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710357119; c=relaxed/simple;
	bh=xAZsAKH1ye0/03jXaOVbVO12tdFhb/vpC7941EDR4ew=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GSkItSP80vO7/O8nQYIqW5i6iQv3vGI7hE17An1IcwwrIqU1KXTtPIpLFJNt6HqDFqOq8y1IqMSzwnNCjrbjmKUryAwb4skclfaqSazg0TtIad+cwXLxUrvkqkazTqdqLK/CvAR69tIVhGJ7GqoYGDD04Q2fo4MF58obF0ctRfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iXQcDHWH; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-413ef6985bfso1181005e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710357116; x=1710961916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y/xj0UR1xz5ufUD59KROFNvtGcq3lEyrCKjuyydwu4E=;
        b=iXQcDHWHsIg7eJVF/bJhsM4HKDbuyNm8bNieT3VGBlxxztrjDvqAZN7WyHGZYJlQuX
         Z3lmhUMGMBVCed/IO1yptdN2a64zw7Ch+7mfBSbv7jM3X0c7Z1MjsXipT98fASX59Gjv
         8VDyYElmzeO0DFRUMbtuD1Q5t2zTz+XA3bKSTbbcGwUNnYQJHQEdKXLhyCUzImqq1zIa
         DLGu+nQBaTU7OCwb8L7aO7hecGumzGqrR2YyNgMQSw53SuFxCKK5nHYU1KaP61BWpIJX
         TgDW0eKol+LbzwYOGeAz6/ijAwL9a1DRbXM8mBbWGGQN8Hu5eJY0dsmNz9EDGZfl4fb+
         KB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710357116; x=1710961916;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y/xj0UR1xz5ufUD59KROFNvtGcq3lEyrCKjuyydwu4E=;
        b=uTROW0oQqRCqgfhA6lbGzngjqWLy+a4QzKHwMvc7G5qwf9EgqgplXFuBSKjI89IGJW
         QDqH4qSxJikdfZXyhWCIIFnncHeJ6bx8tNuS1TlS+XWh3Zej02JCiz8y/MsoHgb3dKcG
         y3y4zd4Eb5rIJzEB2gvFQrByUdSRlGdEKfoUqy+vZWJG0+oMFJjCJ6NXDZ3lwgpIQiDF
         CoFL/E8+n4FkIr/0jzCmVyev0Kzusnv7tBDYeiTSBfEXMSkYLJwtONNdH6YcfhPEd8xw
         TA6aJ8kmkPjDDKdE90WiS7rJYKuPRtv+B0oixsweU7YWpgz4LVZ/prcRcfCDP34niP7C
         qRyw==
X-Forwarded-Encrypted: i=1; AJvYcCUFrpYp5PJmNV0l4BbM7vKWGtPrYSF3Sj5X2zE20/tbpG2AzbMCPYefmXSabiTZc06P7khBgOrV0vW/A9su2Gv80ni6Loa3zuMr+A==
X-Gm-Message-State: AOJu0Yw7eQFKDOpysuq/RkVoZXjFk9q1vkaxtw5LY051vdNnMikkiEdG
	tWOpH9mKmEThLnW/4iCUo92hDbau/EZ3jxft+kVGJ1mVp4nPcLU99J1r46uctQs=
X-Google-Smtp-Source: AGHT+IH2VT0d1ByDtOpBoLQo3BzOVY7nQo6ZUdI4WEGi/17EtI0Mk+fyuv0nHewFDS7fu99kUObjTw==
X-Received: by 2002:a05:600c:4f0c:b0:413:1ad1:78e9 with SMTP id l12-20020a05600c4f0c00b004131ad178e9mr651714wmq.7.1710357115709;
        Wed, 13 Mar 2024 12:11:55 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id a2-20020a05600c348200b00413ee7993f3sm990512wmq.40.2024.03.13.12.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 12:11:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: samsung: s5pv210: align onenand node name with bindings
Date: Wed, 13 Mar 2024 20:11:47 +0100
Message-Id: <20240313191148.21792-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect NAND controllers to match certain pattern:

  s5pv210-fascinate4g.dtb: onenand@b0600000: $nodename:0: 'onenand@b0600000' does not match '^nand-controller(@.*)?'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210.dtsi b/arch/arm/boot/dts/samsung/s5pv210.dtsi
index ed560c9a3aa1..23459430410f 100644
--- a/arch/arm/boot/dts/samsung/s5pv210.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210.dtsi
@@ -72,7 +72,7 @@ soc {
 		#size-cells = <1>;
 		ranges;
 
-		onenand: onenand@b0600000 {
+		onenand: nand-controller@b0600000 {
 			compatible = "samsung,s5pv210-onenand";
 			reg = <0xb0600000 0x2000>,
 				<0xb0000000 0x20000>,
-- 
2.34.1


