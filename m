Return-Path: <devicetree+bounces-222109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC94BA5F4A
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25CE632372A
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7684D277CB6;
	Sat, 27 Sep 2025 12:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DYUv+w51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE47919EEC2
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758977414; cv=none; b=jZ10K6jP5tqrG/n2Drh3bwx5dvzsTOOl7ERtvKlh1Uq3N5wfru7q6B8bYv+1xitBOJ2jkm9F/veULcaRqRUJk1WUxL+dG3rBgXiJp5fwsK8OekVHlbnXVzv3lEQy20SxeUGV/6LZEcm4rV997QD7OCu+ajkcEusVEh4LWFmDENo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758977414; c=relaxed/simple;
	bh=D2542oNaoMpDO1bW9r88Fw3LdBuOKemDD3iAsb+8pyQ=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=Dv+xn6V+cZdba+/rMe1Bwp+9JUe/Ka949WFWpN1rLJplVAo4gMKcaF/mnhmp8mv/u6RrV8URPST3ejNXjQVFa60EEt363elj2bXas93uRSZ0JL7FGirV1aYHzmCLQrk6UpE+4kGwpE/8+OpT24Ba5kvuhy3bCAg/txksqwLGJAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DYUv+w51; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3fc36b99e92so2517746f8f.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 05:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758977411; x=1759582211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SDIgvocR7eSGyBef7vxMCGlKJolA7WVr3JO0DUc8Zu4=;
        b=DYUv+w51oGPXgIr0y6VuJhar61xskg9sq7iPbDugw3rFZ3vtnK3xthjW+obf+5GPgU
         QrAHd2GhoPbvP2nfMw7m3TjLUQVvnDHqVEOfC90aDQG4FSgDVyUtY5u/jabQLPt7PEZB
         WV6gZfaVZbYeJYCueZTXWh18FRIaorZ/JlxTGXws9Ja2Vln+niOz+mgV3VnwJHAKhwZY
         f8wkjaZg25i1vA5RrlCqPprq8zrZd//sXCeRHqotm4ihoD0hZSSEjfOK7appONgEUbb9
         HUTeY3ceg9WmGgZqRjy4dxTbdAhVHfYjZ+MSccm6uAeK3GtXK0eGAAaa5WuKnCjqD6oF
         6lcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758977411; x=1759582211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SDIgvocR7eSGyBef7vxMCGlKJolA7WVr3JO0DUc8Zu4=;
        b=XaE6jXHqXZ75zigpRvsuw2Rc9VF8SctmBE5kSJO6EVSK4Q9cy6MtLNpWeQMx8zZgtX
         B5ZgAaK9/nAZ+vuXSocVpVLCDXl0vx7pIT/bT0PZU8nYxjT1obLRgw52ts/iQF3T4liv
         F/GG7FcXrm3T09Gj2en8PA+v+69Sv89q/a1UyfnQ0OaWScQbwGrFdNVML+oE69pudu7P
         j3TWNLPp+EuKXvp4LH2CXIq0qy4l/qdvQnwlGavNFuriwnIZGwCQ9fCg3cGktLmsj8vT
         d3o1vO6HIV9uOOEQaa/j4/kiMrxLT9Grw54yNPyUq0XyANByMqY5a1vI4Sgpce8NMUK8
         cLhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr18z3knE3XU6Fzh5681IzadFFDk5/+9TGR/lGajXmZlGQvmdCT2jkpLln5odVRsEfz/vwFrOKNisB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyth8s+jZKqtxkJfYMYqYpvkuCA0bcQWTebUxFNeGlvFRxjFMRS
	KfORSvGXM8Ek1pdTUve3tA7oTVuIGQ8dHG/KV0HzqoGGqMckXOGQC3dE
X-Gm-Gg: ASbGncunW3d1p/Tghz6RRDWIm75QmVYXA6ZY7d1ECjSCnCx2GzWMXjuwBlJxP5ASXPZ
	R7m1M+ZRtD30UsQh2TQNlBMVp/1vBNj5a5eRxNfxb8w2WOGmaJP8x+ePySmC02/98Xr/eSDmW7C
	q+nG2+XzcKMSAA4WeKv5j9nPMStI9ptCm+tUL/Vob8CkdOj5SWJ6yU6qpF2fYnCDxQW80wJMBY6
	VCLb6eG6wx3iNmUnOV7/0H3bItizL7KwRLFBp9EBW5Kk6mffCqE24oelEVsZkzze4gzju7+I+X7
	60VdxG/bSeXMzbisz2d8TZhMvDzv/H7SpuVAn5/wscRvAmlEhEKU4OhI+v37lKfZ1A9SJc+2plN
	bamYKlLoW6CGU95pqVEdPlFn/kqXbX9H9RRbkWw==
X-Google-Smtp-Source: AGHT+IGHl/MrvnBmwYJlng90W0ae6rxBIE9Nf84TxnL8stOE8Xyl9IXCEHjFwJhjKBi77KUw7CW0SQ==
X-Received: by 2002:a05:6000:1ac7:b0:404:2fe4:3a80 with SMTP id ffacd0b85a97d-418069559cbmr2197982f8f.25.1758977410844;
        Sat, 27 Sep 2025 05:50:10 -0700 (PDT)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33bede39sm115338255e9.18.2025.09.27.05.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 05:50:10 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: add support for Tanix TX9 Pro
Date: Sat, 27 Sep 2025 12:50:05 +0000
Message-Id: <20250927125006.824293-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Oranth Tanix TX9 Pro is an Android STB using the Amlogic S912 chip

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 2a096e060ed3..08d9963fe925 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -134,6 +134,7 @@ properties:
               - libretech,aml-s912-pc
               - minix,neo-u9h
               - nexbox,a1
+              - oranth,tx9-pro
               - tronsmart,vega-s96
               - ugoos,am3
               - videostrong,gxm-kiii-pro
-- 
2.34.1


