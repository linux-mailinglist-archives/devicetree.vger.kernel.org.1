Return-Path: <devicetree+bounces-244915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D38D3CAA2DB
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 09:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A74613114334
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 08:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6B02E6CD3;
	Sat,  6 Dec 2025 08:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NvWrfxbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7363A2DECA8
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 08:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765009704; cv=none; b=aS7eWh3uWukk320b+k6cs17R+3irGhVHrOFTUYmxD3HjY8PT3BfBTWfkVxdmECl3/o1eE2o7HngIepe6UXHcpcNe1IBNdbx1LiUYJJ01s+eujSb8cYSXwTw8VFZLZMEj0NUEhezMnDloep4/tc2PUp4IT6KgKruiuyzkZd0ZRz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765009704; c=relaxed/simple;
	bh=udlem5Z/fXEsPyiXOwoCFhXzyh44uYOwdlmHnhLhlRM=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=baLzgSHaweu+Vcb33k6ErZiGCrvm5ZgCMH22a8mV6o3sgIhkKuELOiaoAJ84eP6B0VZCuzv/O1j6a14DK3bHFjhXmoiYmMKv5WIWZOxtFWQAHXT+iTxs+k+H7d+liWdtzuJUNv5hQyW8M1qj02rcBEEiK4LsMAT78XNVxQCajvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NvWrfxbf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47774d3536dso27691435e9.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 00:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765009701; x=1765614501; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4FBci3+O4afQtw23umY0BKlPjTmvjUx0lyWZ4/itP0=;
        b=NvWrfxbfvkeumag4dl4Dgzgy2jX65+nmJ25eSFa5bMIZnTX3s9fCoDOZNJ7wnk+3jm
         gGMjqAOL0Rylaj9uBrjB+EPppycsa7J95B9Jg5InfUvI8TaPbayOXBv1uKAIQa3DqIUS
         S43w0ZtfMsHGafVtNlZ3qx3H8nBTypfdZkqJPsI6Ti1FpTpFp7UrTg3UqLAO/BGWM36F
         gwn5Xi5AHjEaFGxTUhPzLQA3YeHi97jwZPfSuAZ4P4e9sizBX6v6khmfBKRTRkqqMqfV
         yoLqqn5qUrjOLViCgDt7bgHBzkyELpDKMXpkEki8uHnWKKs7aka2X+Mw6W0UrjS6i/1D
         KOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765009701; x=1765614501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j4FBci3+O4afQtw23umY0BKlPjTmvjUx0lyWZ4/itP0=;
        b=s3Lr/ap3ebSVCuIkeG7oTK4tMeBvqcSkxlOplkBTYJ1EEkyRPnazuN6z0gAuzWpbhN
         igAqQeqf79mDSpO6SK8IzN9hGCfPAK1WHuvsZ7Ovm56F5Zp9j7N+NJxQ/FIteAQB1haH
         enNkcC6whEYK7NNd13Xaok4+aSoEtlt0ucPALMii88A3LG3uB2YQsIJ8p6Umt46zNpBe
         RfbmVhdQsw/V63fdZJXPI3K5uexfq+X37kaRg2UrZ8uhzNYX7w11IV2LTdxYY2bFS8CN
         dh+sPLCioVg7bWviyh0sFh155Lh6vdLWdwd140pbhZC10GYCub7sCeOKydnUIcyD6oer
         aRkg==
X-Forwarded-Encrypted: i=1; AJvYcCWG3VqFK96DtblhGy7qkN2LV01S6zd+a7CBoa771fg4RMZPr4Pj1Aa5A1+1XKPE6ZBWcPo28YTjJFYV@vger.kernel.org
X-Gm-Message-State: AOJu0YwUyKVBKKmlKQTkVbikUm9Pg93+MrVoXl4CpZZ0rEAEVGNhPOIk
	mKdCFQUIBkDrfdDsPwcGM7nhZWg8RFitZEtukiCe51cF/QRgzfBlweCu
X-Gm-Gg: ASbGncuVgYW3C88f5Rd2TXUkb9YUe9vJtBo2pL9+VYly4VazTmGhT7jh1Pov0Zmuplu
	CFsa61oGZP3e3mh9J5gxF3qXspQ8P9LFBdB5gek/2xIgsCCXWylgyCb9TpB5fGsHrOX2pUQVETp
	32lT+GJIa+PS6IgjvScpB9ypMIESrpQw/1IaFJ1O4TbSIFtj5rqy/rxJmlJ9fQhuNgKZumaEXG9
	lT/x3hsqZwV4ku0BF3eA0BMhVz4jSi/3DbeQm55Td2ish8830Glpc1fnEz/ZDRDiY4GzlyWFHK4
	Hd8bRpqj4D+R6W9ewws1D0DsgYbPZqKnNv6bkgNZBmCS6yChmatRGwwrpTMV1hi0eAvPXAwnyXF
	pfF235NUlofVj8O4IbrxLSG6AXIoQ/qwwek2G47HUKMfn9N/ZK8IeL35u2tHUM9ZMhAJyPPqfZK
	inJdw4RVpieWiuJjA=
X-Google-Smtp-Source: AGHT+IGduH610rn5UO5W1I+quoffTQLyEbtEowPhpEB04wS1de/RlDICAj847j9oMdvdQqNq4Iisag==
X-Received: by 2002:a05:600c:a08:b0:471:5c0:94fc with SMTP id 5b1f17b1804b1-47939dfa053mr22028575e9.6.1765009700413;
        Sat, 06 Dec 2025 00:28:20 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:20 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
Date: Sat,  6 Dec 2025 08:28:07 +0000
Message-Id: <20251206082809.2040679-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The video decoder in RK356X (vdpu346) is described in the same way as
the one in RK3588 (vdpu381). A new compatible is added as the decoder
capabilities are a subset of the vdpu381 capabilities.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
nb: I've chosen to us rk3568-vdec not rk356x-vdec as other compatibles
for these chips are using rk3568.

 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..656ceb1f116e 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3568-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
       - items:
@@ -107,6 +108,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3568-vdec
               - rockchip,rk3576-vdec
               - rockchip,rk3588-vdec
     then:
-- 
2.34.1


