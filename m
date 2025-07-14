Return-Path: <devicetree+bounces-196212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B94FCB047D6
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 21:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85BF9188C760
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7FB27990A;
	Mon, 14 Jul 2025 19:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="HOnP1Jbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE4D27933E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520660; cv=none; b=GISbxiodLz5zIsWa6Sb8onwxShK0VRwmfYLEfeZ8GpRIWFUaVZi6JSCN6fxSKAt9JcUoX0q8IBZdpg8e2ldr+tYKW/xzXSOyl6RBZ87xP/2Tu+PE4q5+DF6oA5cNstn7VU0NXPs4HeOj/SEULLwKW4zco//9nZWPaQM8HwBAiSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520660; c=relaxed/simple;
	bh=y6DxFsYFjydgZJasX4daOP3FNTJLEXvo75wTSG1raJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EplDO1hD6Mawm24AjnTGe0Us58kNZ1Thn5QqIATgtTjG4yIZcHAgTkIem2jhedsaIjYSiLNgOsVqZB0qLNYILTJQRarVucsm2KqHO+BID4jM4HzvZDXSfptiRCliiyY1g59eCeG1QB50M2/ZQEs40ZQb+USeRA0Am7zWjq6v5w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=HOnP1Jbf; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4a7f46f9bb6so51015711cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752520658; x=1753125458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oWoIZzm0uqcPp9ZelvtCnlGSyRPqWxQLJdYrHzVMirc=;
        b=HOnP1JbftMVw9xqoZQDA6gShUTGxYtyokkjXt9DvV2ABLYtKvCxF367xbqmZc9lpro
         r8LRU1EfrZovj2aPBFM4gQdIU8vpqpShHfQbrQRy5eVMjDmmT4EZV5R7RacdLtdATglN
         7Tiff7OrjWiSy+g0YmZczxvJI1D/PsPjpTgAtUjQnAUniSTuDbYob132piMCgjF476lD
         0SU501/5z4U3an4T0OOT5bxYKoWsYHlRka3GLRTIkROVu1YYx3v3S3NlHGdScFW9PYGt
         GsNaPbOCHO3Qf5HdY+TJU9+SP3Kr2w0clzqyBDL0ubjmMDwMfX43pTGU9tkhXST39dEI
         TWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752520658; x=1753125458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oWoIZzm0uqcPp9ZelvtCnlGSyRPqWxQLJdYrHzVMirc=;
        b=jv2f4XhYWplhuezKh7hFR3Wo0ZOt+UV9lQTNf8KMECqDzYVF8Lz2QFzK1RZeazRPL0
         tansk9jTjQIN1b4iD8JiANNMh+fzC2VOTz/ggmSBpIS1zm2nP/lfX4z1TAsoa60QppfF
         z82eSw+JgFpPyJmGmHw2B1AMLhsV66ajkU4pJUPF4fvBfwEW4tpqS9BgT4oMXnbadeKP
         nrGzwrrpwFxk1RHFUuOeZ3eHZM1H+qEBdxnAXg+TTMI5CnNUBe9Sz+4Nkr6yeSjBoun9
         Bik/BLmfx06IWZup/nbWjhYGOSVoc3EY/Bq88g2i1DS8iaHe8jVXL4WG4ohCUCwMtKDr
         X5Ng==
X-Gm-Message-State: AOJu0YyGPxNx+/QoT0XS8oPGUh0YALGr+vzePQR9nG3isHnXF8ZvdCXS
	lx0qgXOr2ivw8imBmkmBzIVSMaWSCXZH/JK2NShIWV99CN+Zt2el13bdZ2S8+AFUYPs=
X-Gm-Gg: ASbGnctPUTiOacqOSa2aIGBNmZjZhe8qW1KiMz9J7yDT9/gUfaB+4KnFaBD6DqKuT7/
	pmzdXKRYf7AHY1Gc6iOfW6xHRF8cW4Ni/8E01cH0qWv0suWIBDo6G9T3pg8TmYHTc7L55RXbk+X
	GQSXDITB0lTFy+tYU8oXxi+isPVMkfw/2fyTuFYRKXro4ZHH1EHE+8Yj+ddjVVMrS+MrK6905vj
	GDeefpahCUq3wLcqHtfcBnbakJ4tWi1rUsqi/47zbtKspTBDcq2t4zGaVACR4k1yZhaqs7UvxBj
	xFEsLws3iIQeDA/CPMeGPTE+yoOeSt8MmpB+ItjJaBkvuHuJ6DISZTinceZTR6Cz/QvEUVhqwmT
	21NppGuUuBrf8AAYaxgjgMYqe4eCXJiZyDB1lgqNtpcD7Kmqo
X-Google-Smtp-Source: AGHT+IH9gnkyuOuPKjSw4HN8uBsSQTfAFopuTxzSbsZaRocX/u4+4/u1WhT40OcTC4OtUT869qGIsg==
X-Received: by 2002:ac8:5c81:0:b0:4ab:5b3a:5f14 with SMTP id d75a77b69052e-4ab5b3a6171mr148318871cf.4.1752520657836;
        Mon, 14 Jul 2025 12:17:37 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab801e542bsm1482521cf.3.2025.07.14.12.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 12:17:37 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 2/3] dt-bindings: ilitek-ili9881c: Add Tianxinwei TWX700100S0 support
Date: Mon, 14 Jul 2025 15:17:22 -0400
Message-ID: <20250714191729.2416-3-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714191729.2416-1-richard@scandent.com>
References: <20250714191729.2416-1-richard@scandent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible value for Tianxinwei TWX700100S0 panel.

Signed-off-by: Richard Yao <richard@scandent.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index baf5dfe5f5eb..c181f5adcbc5 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -21,6 +21,7 @@ properties:
           - feixin,k101-im2byl02
           - startek,kd050hdfia020
           - tdo,tl050hdv35
+          - tianxinwei,txw700100s0
           - wanchanglong,w552946aba
       - const: ilitek,ili9881c
 
-- 
2.50.0


