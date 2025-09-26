Return-Path: <devicetree+bounces-221919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C04A8BA41C9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:21:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72732386168
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9352220F36;
	Fri, 26 Sep 2025 14:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FJQ+l8Mm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2412B20DD51
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896360; cv=none; b=i9YnEdXj7N/T/eGooZnP+yZQQcBf4PMuZijEtNZ/rcWizTvGLGbzdm9fhnAjy53cVcoGxSTnijHciWVEyVYWtzcn99LiaFy5i3pvBomksiLc8/QAa3r2Iq2nsBGHZK+vI6tFesbYZxRd652Sk54/KNBDjsCjeTAbaEBCGu1RCeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896360; c=relaxed/simple;
	bh=qgE1DRlyxJJu7Ruu1746EYrt+DDtbSYwSzn0fLVg2DA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b/yQ+ix2TELrxKWcD51pT1VeXVmNw6x8WfFqrqAnPX4YHZXiUYiKpKqJ6F/6jiJi2jXGldsmjrxgLcCveKjg90XR4lcvtoh2QNPksonc8J4a4CUifw9ytsvaJnN6G44sEUq0Fa8qeYR51pO3Iw29eLXim77opkHHZJasgt47jO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FJQ+l8Mm; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-78e4056623fso16303316d6.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758896357; x=1759501157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9vnEObE36FL1+xYk2YooCCgZ/a3BnQWUxhVd6RBMoo=;
        b=FJQ+l8MmEX2Qtea8bjGxw6u71ksOjX53DfR+35hKgc867QXA1HihlqiDkNgIqc/YP4
         rFggfMYR9K/TbdsWgy2gOA2wmOoj7UomlewV/Ua3vOEx90Pn981WzGPZTsNyqRrV0W+F
         6W4js4xRYjKI7cqVgho0MrGw+zKHYJPzz97M3pnok0JkAcc0lmwu/CPZNjDrthF1kxng
         4wLvHMY3gWZMXmzcJwUHQKXW+avdZt/x3CEEDBtX7ufevNTinN/Em4+shPHok8su2xQ+
         EOsMmB+tNQV/YoW9/5qm15AZ//ZsAV8gJ4a1W2STWdS1UZy+s5RzlEv8sG9KOhvS10r+
         Juvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758896357; x=1759501157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9vnEObE36FL1+xYk2YooCCgZ/a3BnQWUxhVd6RBMoo=;
        b=t3o1QXRMdBZI98tMgKBlJsfknMnz4NuAYu0R1NVsB8Y0gZS/oupG4RE6F8GJQ66ZA6
         s+mzX6R9Ck3YyaRNCjnLHZ4Iity+si0fm/GsDvUH4tgqy9Bv9RfCa9O1FRnj2BW1/x6I
         CVJSx84pJ+X3AlxKSnvh114SJTDAjXz5+3wipBmYbVybplP4c9H0wfiqtZCRwnsacVV+
         lgOEMpIjwyPWaW8NQcTLcNhZQD8f2y7vEPPZS3mlAV5zC0qk5bT539gO7nCdjyP8n+7K
         vS+UJT1w5LkMPxYXePPKQaufqoo2wLsNqLgMO+dgMA1Dw0J0GNrELcq1kGE1/8YlGC6E
         //rg==
X-Forwarded-Encrypted: i=1; AJvYcCUW7uWwgiaDvNFaPjcswSHk6VAx0JTlVW574XkWaoLqFGfoh7MoZF6YTMKBqt2L0170zXzDIq9VO75Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzAMMy0IS8/5MLq0BzGDJvjmvOZuuwTsAqqdHcF7ubW2oTieim+
	Hj4dKCv28evrZ4tKhCcBA80EgAkYTtArGSVmtR/cb5JrYg/nnXmLe9wd
X-Gm-Gg: ASbGnculflveTuo6sKqXp51hSvxiMAcPr2hRna5tZQKD59Epy3n6fmVAWk2zUxUNjal
	V5oEVrTNUMrfyCiqh9SiU+FbvOcKwf9QypO0TbOKaZ6cw9qLAR+C/3Cy2fJj29QadsJFM133zZs
	Im0oY/GFTdZK143ZmiJBLh02qM/QurtULbu0wR0m8yInxBQaX1wHrHvtVLoVEDQBRKP77AY/tDc
	OzFN6Nt/kfbZ+iUIMh1e9l1SFt9eDpSCDl6bsVlG13GhbRxV2FyMhAdtur9jemfrFJiaNJjOJYa
	TK1LYdKs68rxFQo4/+Y66d5jOJ512lpheb3pf+BEfh4+WS0dkLByn6K5zWtXn9J491RpgAerr+V
	SJ2q7A0qZXAzOOcj73SKVFnYPzwbdKGo5jP8BqdFPjSvqSlVLVmvsqpZk1GVh4FV6rgn2
X-Google-Smtp-Source: AGHT+IHX+1NCTF/ARuPbB6IXv8deE5J4rPSitNxlvB/PPa7wmNUGhXtpQbzNPBYGW0Ohfyq0EGQcGA==
X-Received: by 2002:a05:6214:e44:b0:7ad:19a4:53e0 with SMTP id 6a1803df08f44-7fc2fd77573mr93039126d6.26.1758896356702;
        Fri, 26 Sep 2025 07:19:16 -0700 (PDT)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-80142f5d6d1sm26649476d6.33.2025.09.26.07.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:19:16 -0700 (PDT)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	=?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH v5 1/7] dt-bindings: vendor-prefixes: Add fdhisi, titanmec, princeton, winrise, wxicore
Date: Fri, 26 Sep 2025 10:19:02 -0400
Message-ID: <20250926141913.25919-2-jefflessard3@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250926141913.25919-1-jefflessard3@gmail.com>
References: <20250926141913.25919-1-jefflessard3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add vendor prefixes of chip manufacturers supported by the TM16xx 7-segment
LED matrix display controllers driver:
- fdhisi: Fuzhou Fuda Hisi Microelectronics Co., Ltd.
- titanmec: Shenzhen Titan Micro Electronics Co., Ltd.
- princeton: Princeton Technology Corp.
- winrise: Shenzhen Winrise Technology Co., Ltd.
- wxicore: Wuxi i-Core Electronics Co., Ltd.

The titanmec prefix is based on the company's domain name titanmec.com.
The remaining prefixes are based on company names, as these manufacturers
either lack active .com domains or their .com domains are occupied by
unrelated businesses.

The fdhisi and titanmec prefixes were originally identified by
Andreas Färber.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---
CC: Andreas Färber <afaerber@suse.de>

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..cd42bf7a96fb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -542,6 +542,8 @@ patternProperties:
     description: Fastrax Oy
   "^fcs,.*":
     description: Fairchild Semiconductor
+  "^fdhisi,.*":
+    description: Fuzhou Fuda Hisi Microelectronics Co., Ltd.
   "^feixin,.*":
     description: Shenzhen Feixin Photoelectic Co., Ltd
   "^feiyang,.*":
@@ -1235,6 +1237,8 @@ patternProperties:
     description: Prime View International (PVI)
   "^primux,.*":
     description: Primux Trading, S.L.
+  "^princeton,.*":
+    description: Princeton Technology Corp.
   "^probox2,.*":
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pri,.*":
@@ -1569,6 +1573,8 @@ patternProperties:
     description: Texas Instruments
   "^tianma,.*":
     description: Tianma Micro-electronics Co., Ltd.
+  "^titanmec,.*":
+    description: Shenzhen Titan Micro Electronics Co., Ltd.
   "^tlm,.*":
     description: Trusted Logic Mobility
   "^tmt,.*":
@@ -1726,6 +1732,8 @@ patternProperties:
     description: Wingtech Technology Co., Ltd.
   "^winlink,.*":
     description: WinLink Co., Ltd
+  "^winrise,.*":
+    description: Shenzhen Winrise Technology Co., Ltd.
   "^winsen,.*":
     description: Winsen Corp.
   "^winstar,.*":
@@ -1742,6 +1750,8 @@ patternProperties:
     description: Wobo
   "^wolfvision,.*":
     description: WolfVision GmbH
+  "^wxicore,.*":
+    description: Wuxi i-Core Electronics Co., Ltd.
   "^x-powers,.*":
     description: X-Powers
   "^xen,.*":
-- 
2.43.0


