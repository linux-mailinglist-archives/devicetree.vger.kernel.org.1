Return-Path: <devicetree+bounces-54362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B643A890B3E
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 21:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7AE21C30137
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 20:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A49A139D05;
	Thu, 28 Mar 2024 20:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MtoOzi8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869A313A251
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 20:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711657430; cv=none; b=AVPSUNJA3eBe5pa0uLouwGA1kktgoKjr9cNMoOl4wqnXlnChxmQZPDvmS0HvAM7fWPKE3hoG/kBkuQYalnWzJRTSFHF59Kmp2gW3P6IPa2oP8nrM/W39elm96MA6r0GY0YMrcMUc/RPFOLg/OUXUReg5LGV/YvYXXaqPzC14Gcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711657430; c=relaxed/simple;
	bh=v5pJ2l7y5vuQsj+O71iggWX63IRu9bFDwoKCJogxB2A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=igg13nwqD8BXryKNOu7HGBWGwE/+AuzDLcqsPSSI1U+AsQNtxI9wtRzDO/dV58jV2ld40T9iHF1VX1MT9LGQvcilRus9NjhG+hsKQCMo0myxS1We1Aiw19dy9wJJV9iRxN9OVmH8Kbu8W/dvUJMSPZPIrQn1tUzlyg91JsEoz/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MtoOzi8v; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-34175878e3cso962939f8f.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 13:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711657426; x=1712262226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cBJeVB+IC/vthXWDL7D0a28Qd+NtXyAT7llp1tNQaMs=;
        b=MtoOzi8vSJ/R3wGBglYKFDSw4EJZU2VgIIVoVyUj1WM6cgfHJ3ZuN58pEjR7A9Bk5Z
         Hct8FTau+FjATgsAQIxMUnKSMrTg6uPHmtcUZW30xvxN7OvdoTGREDF8NWG3O2kajcD4
         k7k7lzLo/w1rNkT1X/nKcun8zZffMdLAwMGnGBVbq3hzdBsG/HJNCULu6ORS6H/Vr9Nl
         tm7OSEQUdz7QU8lwVpFEcuzL0vtsrQzhngMDbMgA+N/QS91ICgZgpBrLCuaOfWX0geHg
         1wh5UMrsxJMyreg5R2HXca/gdh1CffJu6lTRkL727nP1yJB17CBm44r60mRHnAZWxpvs
         h8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711657426; x=1712262226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cBJeVB+IC/vthXWDL7D0a28Qd+NtXyAT7llp1tNQaMs=;
        b=o2T3b8EulH0F710oR7Xzom2oCO//0IkuzaduXdTHhznhLUUxB1OCDxsf5UwFRNB+CK
         QPJO8n5hH02WiVGWy58JNYGK08qcCbIgnJtDFim/YNK45vQ4woBfV6nEGN3BQJ/35+AT
         g9mMus6PYrO+49neHdwOAIPoF4mSfjAco3lDc4AHd9psDebExOHmQoWfcc3CrEmL0IIA
         7sMGMwlkxNd8dVICcreKwQsoPF6hes6v1nY6RfDVV2EzDqZ32Y7S2tpGTTl0wXaTrPw2
         xC8RtbBxcUjLxX+1qWtkPSZL6ZDKvIlyXLbZp274llr8Cq8kCijfrA7mxL3W9ic53Zrx
         qhiw==
X-Gm-Message-State: AOJu0YwFVHA+4txrYz3QrHp01g6CzRDIIe+EdcMqXASmrr27mI7L6pq9
	zLTByl9p0ThAXeCjJxYswIOW3TmHSbbrixkiZxvetMZnsXsJwO8p+I8JiILMG+Fj9Q==
X-Google-Smtp-Source: AGHT+IEkBgZ/vPsNlsZxD2ghgv7JDyI4HH6i/p5wXFdra8vGixvwS8pTyCvn61SEvbefm3QDvM1Jrg==
X-Received: by 2002:a5d:480f:0:b0:33e:726d:e963 with SMTP id l15-20020a5d480f000000b0033e726de963mr89174wrq.17.1711657425926;
        Thu, 28 Mar 2024 13:23:45 -0700 (PDT)
Received: from localhost.localdomain ([2605:59c8:6662:b310:26a7:2d64:79c1:dee4])
        by smtp.gmail.com with ESMTPSA id dp18-20020a0560000c9200b00341de138a2esm2538974wrb.94.2024.03.28.13.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 13:23:45 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	festevam@gmail.com,
	alex@voxelbotics.com,
	Gilles Talis <gilles.talis@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Emcraft Systems
Date: Thu, 28 Mar 2024 16:23:18 -0400
Message-Id: <20240328202320.187596-2-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240328202320.187596-1-gilles.talis@gmail.com>
References: <20240328202320.187596-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for Emcraft Systems (https://www.emcraft.com/)

Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b97d298b3eb6..8b978c6f1dfd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -438,6 +438,8 @@ patternProperties:
     description: Dongguan EmbedFire Electronic Technology Co., Ltd.
   "^embest,.*":
     description: Shenzhen Embest Technology Co., Ltd.
+  "^emcraft,.*":
+    description: Emcraft Systems
   "^emlid,.*":
     description: Emlid, Ltd.
   "^emmicro,.*":
-- 
2.39.2


