Return-Path: <devicetree+bounces-117977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 045139B8A7F
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 06:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FADF1C214BB
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 05:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4491E153BD7;
	Fri,  1 Nov 2024 05:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l7Fhs35u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D7E1531C5
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 05:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730439128; cv=none; b=W8gp88Q3SHCJF9s9fpqPzqvMI52VH9vSoLdYQdTFecsPP4U2QRd4PSag9ujI7uXuIEN0seb8YbxhEkqa+ACrLF++z6G/Nq0YwgL8hgukBeiyjy1AwVW1xK+O5egXafBfwtJ41L7YXGCMyEQCL294w1KF99belmaRQR0GTKZ/oVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730439128; c=relaxed/simple;
	bh=09HVl0PcM4QMCH8r2aerECr4Oqt15MweliKME52sZL0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ecLG0ma392DFjh5d6AFXCvmflXxhAWSjufzmegeZOMoc7ALRVYy0THz9C62+CkaFEBD3qFub65IvCokvatbD/gxupvcLjGF5pa+IZdWH3gcIs0IOYBndzjOoW21lidbDLg6gBjvWUPuY8c89ahWs+k2R1EN9S4iXtpd0mmkLErM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l7Fhs35u; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37ed7eb07a4so1233865f8f.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 22:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730439124; x=1731043924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vxE56J5I7W8jE/J/O7V0n1BktdIkqZCCHCx/MzBrhY=;
        b=l7Fhs35uJwHOghT3VM67YWdFuQqay7MT9z0z9DmmmVNoOPrDmWxYylM43IRpec+8ZY
         Ay3W008A60aYW/uFbIRdk2DaNxa3gqtBwPz3uVI41iS77usQeYshJtNSSB1gtJYFKl/M
         DpSLbAnJHpUgIEIf4nAG4MDafdj0E0iMklJ2ap/DPM0WW/gvOScA1rWlgWt5/dm8N5bQ
         P1NmtMrL4qCmSDl/dQyXtD4jcnuZehWeFCjIW6ACfyzDpPweY2C8mMVZ9BXaohl3m4tU
         G/xdeSPfLnOOYj/uJgBjF1n/fDPLPQUkwgAerAiFKJc3eThVCDuAgtvYVt7v6jCZEO1e
         CyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730439124; x=1731043924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vxE56J5I7W8jE/J/O7V0n1BktdIkqZCCHCx/MzBrhY=;
        b=JGjHbmB3gxH+f0y0P7P4zQjEsXxj538qS9+LGFaRq2cJwqQxrAef49HheBXM2g5pob
         7WiiicuhUrOGRDKvCGLWzQivGKHRiUpBNcgbtEf5CFDEw0PtNOUvsizlL67Uesj5kHR9
         bqVU4Q9V/yYenEDR3KWC421CrE+s4ifrxxxRJy+1wT41JxgSrihIy6HcWhxeG7r3s0pr
         JP4KOpL1vAamvAfzQ0QPXfp2WuPK4IVp6aibcStiIAJpe3/VpJxU8uIHEwDTArR3kJ8Q
         X+VL8gsJ1B4Iv6L9PSdI9lE8F7jqIzcI8cUjoDvj8gRw0191FntR9brjkebRh6SKUvsY
         V3RA==
X-Forwarded-Encrypted: i=1; AJvYcCWaQo7NuE3aji9XwwCNOwPMc6UujWsB82pxiNGf/VqiuSfgOrJfkPRDgwO+kjlQajmRLYZTsxk7p9Bu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1vp+mbPitduZNTuX0qG15iy/CVbW6CtELlTvk95gZSyhP43zZ
	NhuC0DXDt8ztnw9DTK7aZU9GlK99IVpaFmbcXNcnu8PYo3gpmW6f9794W9bnz2w=
X-Google-Smtp-Source: AGHT+IFFKbvXyc/s5RV6FUjHjXgrDxMCnCL+m8+ViwBMoUstjYbMI237Z9Vf2BySsf6SX0SLUqrMtg==
X-Received: by 2002:a05:6000:4023:b0:37d:4afe:8c98 with SMTP id ffacd0b85a97d-381be79b952mr4743755f8f.26.1730439124193;
        Thu, 31 Oct 2024 22:32:04 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852fdsm46960505e9.34.2024.10.31.22.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 22:32:03 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 05/10] dt-bindings: arm: qcom-soc: extend pattern matching for QRB4210/QRB2210 SoCs
Date: Fri,  1 Nov 2024 05:31:49 +0000
Message-ID: <20241101053154.497550-6-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101053154.497550-1-alexey.klimov@linaro.org>
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add missing QRB platform name to the pattern matching Qualcomm compatibles.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom-soc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
index d0751a572af3..61de129f7993 100644
--- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
@@ -23,7 +23,7 @@ description: |
 select:
   properties:
     compatible:
-      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm|x1e)[0-9]+.*$"
+      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|qrb|sa|sc|sd[amx]|sm|x1e)[0-9]+.*$"
   required:
     - compatible
 
@@ -31,7 +31,7 @@ properties:
   compatible:
     oneOf:
       # Preferred naming style for compatibles of SoC components:
-      - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sc|sd[amx]|sm|x1e)[0-9]+(pro)?-.*$"
+      - pattern: "^qcom,(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|qrb|sa|sc|sd[amx]|sm|x1e)[0-9]+(pro)?-.*$"
       - pattern: "^qcom,(sa|sc)8[0-9]+[a-z][a-z]?-.*$"
 
       # Legacy namings - variations of existing patterns/compatibles are OK,
-- 
2.45.2


