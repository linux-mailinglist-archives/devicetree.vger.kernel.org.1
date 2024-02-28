Return-Path: <devicetree+bounces-46829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3286AF10
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 677D41F24FE4
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 12:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966EF6CDCB;
	Wed, 28 Feb 2024 12:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="AzDfDmoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0669E3BBFD
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709123076; cv=none; b=gd+MaGVjNFspNF8qYFodYrygid2v0iH4MCa8hlUjnPvN1k1i7Hkqd+KSeXiGiEFWv38xfKQ6SGzrbIxVIkeLTCZAlBmC0MI9iRGOXoBsHXSsg0u++L+8ya8DvI/xBCv2jzxyTmByUkSETHSI4jakUsff/zmiQJh3rT45uqdeaPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709123076; c=relaxed/simple;
	bh=AXUB+wekpvvQJofmQTqramJpoql+fl6AVK4WIWaHl9M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JCi8kJy/OKhmOsiQtxLmrWiJnaGJ4AHIN+Xs75XrBKbnyWHfV/OjHMuO0BKuZJbfyzOvaAY4jCdTM/hXBRZVXsgBSxhZywcVHtdtU6VRtJ/WP5vioiuNHSSgmtn4BLHG8I+oC7y2F3dHSggP+IFUphPnxNX65iQAK6JknDjxHEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=AzDfDmoH; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e554f64971so655343b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 04:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709123073; x=1709727873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q45nO3W1ZZnJy1jAiZ36rHKY6n1bYehmKJpmPkGfdDM=;
        b=AzDfDmoHAMGdIuv8/CIfRgQykaRbmDZCCe+E6kmkZ7kO4TKacaBATjKvgbuVQKbS54
         NXe341BwN69CaRC9VfhDgOuon94qUlM6V7WQp+Heh3987Gb8XHWs5lh1LdBmZCFGYs8Z
         eUasXniM1oXENFyNiFFbRJq8zChs22E6v/8Ul7RNbrfhWoDLjAY/h+WpyEhdwrutdqJC
         oI6VsFpIDtCzJlY7g/IF7/8VR7mlJD3YZXhmPbItUXWJgtgTAcNT3Yw4/mHsR7nTIX0O
         TH9Z6uML1G5CNulozaxtNNgHnSLkKUQa/whjp1mqLycXYRWlGHwCF0qOKrLaBYn6LMt0
         bevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709123073; x=1709727873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q45nO3W1ZZnJy1jAiZ36rHKY6n1bYehmKJpmPkGfdDM=;
        b=tJVZkssX1CAW6LIbljk/P4MRqUohhaPSckDdUeNX2e+F1upVFukpZv9MTYZ4UPSVyD
         kM9UGc1foyFF6mWsz6nyURQBaOr5Ksn028fTioJERyejZahOd8fXM4eUKm1B+rAUa+wr
         VCjwyFim0GusD9m+Wb9qqLsB1sPmt83PWS91+xfuIhGzX3hpWkhS73oiAPUTqHX/KyFM
         oEiETUIaCpXVODNz43jo2hBhBmAaSXeWGFaRn4o30dxNpFH79yypYejkNodaTIs0Dd45
         g7cDnii9fPCMR7aHT94rKBXattLC/M54m9ssKabAbZ1Yc82ZnOcAj7CEAGCQ7SAar9og
         cOQw==
X-Forwarded-Encrypted: i=1; AJvYcCXt0QMUCXwoJ4Hk1cshLOaXg8i3MwhLGhnDREACuaolDO9U9n6N2NMVLoQzM59TLrY2kU0TIHFsIWKfpM/IfdTMDe4rMb9un4h9aw==
X-Gm-Message-State: AOJu0Yw4l6+kRDOR9JEDMQcVpz8uXKCaNMIiq9AgIfIJFpB4Sgd23PGd
	HzIrOKGr7JzQ4/rTyo7Pr/bXGYoTczV/6VUiq0mt+foVZsRossaPEhKNyfkmWoE=
X-Google-Smtp-Source: AGHT+IEI5Jgu3qicVasTSsPz9ABZJ3eEgxdaUV9ttamRAtixIlMyDWXyuEJDYpsoCVAD3qz31r1K5g==
X-Received: by 2002:a05:6a00:2da8:b0:6e5:1196:6cf5 with SMTP id fb40-20020a056a002da800b006e511966cf5mr3130013pfb.3.1709123073377;
        Wed, 28 Feb 2024 04:24:33 -0800 (PST)
Received: from localhost.localdomain ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id m3-20020a62f203000000b006dde0724247sm7857587pfh.149.2024.02.28.04.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 04:24:32 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 2/5] dt-bindings: iio: light: adps9300: Add missing vdd-supply
Date: Wed, 28 Feb 2024 22:54:05 +1030
Message-Id: <20240228122408.18619-3-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
References: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices covered by the binding have a vdd supply.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
v7 -> v8:
 - No change

v6 -> v7:
 - Changed the subject line of the commit
 - Updated commit message
 - Removed wrong patch dependency statement
 - Added tag
   https://lore.kernel.org/all/20240210170112.6528a3d4@jic23-huawei/
   https://lore.kernel.org/all/20240206-gambling-tricycle-510794e20ca8@spud/

v5 -> v6:
 - Separate commit for individual change as per below review:
   Link: https://lore.kernel.org/all/20240121153655.5f734180@jic23-huawei/
---
 .../devicetree/bindings/iio/light/avago,apds9300.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index c610780346e8..a328c8a1daef 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -25,6 +25,8 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+
 additionalProperties: false
 
 required:
@@ -42,6 +44,7 @@ examples:
             reg = <0x39>;
             interrupt-parent = <&gpio2>;
             interrupts = <29 8>;
+            vdd-supply = <&regulator_3v3>;
         };
     };
 ...
-- 
2.34.1


