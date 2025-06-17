Return-Path: <devicetree+bounces-186532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 045EEADC488
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9079516D8D6
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0483293462;
	Tue, 17 Jun 2025 08:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FszV23VG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C225B291C1E
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148416; cv=none; b=iVZfI1JkDAB5GzFB9TZf7WjMYhbYM+4KHCFbQviJzIl3+bKpth1rUyl5x/4eW62YiPHH6LSHduV2PWgMucfN9Q6ZRn80QTKXWvfLVDG008uImVvvsaaWmHfhgec91rQoilp0qca03vY5pATF1nuAAzWsaYjuTZKlPefjf0yVxNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148416; c=relaxed/simple;
	bh=sZ4za1Id7G7nTtjakVPvrhklzZJfNGfC4w42qoWdWUg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XUgQWPT9tWmCXokVtqn824xDDIiITRZmVhePWep+yvHEWZGZAcc9qJ7QnGiyYrs0RC6sc9OBcZRZXOjrTfi9v9+cqVfp4+yY/kF1wx3zhDxnjeqP4+eU2m4yiZwQiTaTfIcPhujHhpO/WLKjmYrrg2iq4/ujtr4D1WY3BhCdTh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FszV23VG; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2363e973db1so50572325ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750148414; x=1750753214; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJpSSWKODubMWDu6LS8hKhfIs2zxRW9+kSXB6f03nq8=;
        b=FszV23VGo5soy7GqxhDa8qKGOPpx4ZJMjjJTg/0uTpRAaGcmgNhwDNF7oZyfeVxQTS
         T2NZs4rOdGbY4Ft9XdzsAVa4noz+gFOpJqzBKL26PJznvBmf5hbjUAvVHpwKoqiXIzaB
         PlsEXYnHvIoPcZrZ664znfwMIM+9Rkq7cV1T8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148414; x=1750753214;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hJpSSWKODubMWDu6LS8hKhfIs2zxRW9+kSXB6f03nq8=;
        b=toz3iBnnmA7JSFRLvdO66rPPsWCyZKhMvdiyDhtEJf1e5qw3/KKdWm7CET47rt2NO4
         3NGXJWB2xw6ZvlXom8XhlF7AM6PV9CC5RUG7dNglU/Mtfl+DDlfL9aCvg/uh/XzAbIZT
         QGTa+sYtM0VryFJaW5yk0nbuWm/iz564FjjmuWC1qqGrBbXwXtlADLJn12Cb5kCHZuIS
         Ywi59JdTSXe7HbHOUWmAeZd2VAa2goVRWZq5n6m9/pWsyvBFxjgDeXuCywdw7kjk2MLK
         KtQpJUOJIiVGiGARFe35vsa5hg+X83KrHvgJdlSHa3MQ4+3yT+Q0sb9TAaw7lBISk0AC
         XmBg==
X-Forwarded-Encrypted: i=1; AJvYcCX+q37TT5kg3RI72c8oZ6HxP6gc98k5Rwro78SGHWw0W7eaQvei0xcywmZpl8t2fwqZ3TLcrmlx1Zr8@vger.kernel.org
X-Gm-Message-State: AOJu0YzavCPDqcDs1xRvh2bTa2/HCgkkTNlohSa5IkPAqZRsmKZhdK0F
	SKEBSHge/LB3PhknaCCPOngID4CgABb/Od7l9JUauYqtpBgjQOVyMMoZUsO00Z/gTg==
X-Gm-Gg: ASbGnctU2LD77GdL+fhY1JVJe7ozhxAXs6kF/5rDZg+YkKvQAS48IVplC4wAhCRdG9+
	WrbN0B1Zn9GciXcHHERR9Yhw9Ghf/NWAokcB0QO4RQlr4FC4Y6dywUzmfRAJPB2op5h4Ext0Rmn
	jSh0s+Qgo/OPh1V15H3sDWjRqbGh3HFpUwebCppcABKT3C8sU8E02kedQQ0Y+wPXOHE2D3Etnho
	krXlIBTdfMVT+tOT+e/H65thxh4chd2PR2oY4tLHbtBfbv+EHwNF2sERPIGmDB4zADmQpTU2bD4
	8fIZB082Ob1pvdsV0MEmmD2/ol9CVMrXLo3PB3EdPnXzkRjL1AvYs+IV+U0qsZtFcyhDd/LOnQF
	CldLMsrngp6G7XsM=
X-Google-Smtp-Source: AGHT+IFfpg2r7E+A3hwnVaD8XvFL8a9eXnDD2HrKdh1NTx8ZQ0KD0SKLHARkzMHejSWGfoyIg/Kiig==
X-Received: by 2002:a17:903:4b07:b0:234:b3fb:8ed with SMTP id d9443c01a7336-23691bedec5mr30450435ad.1.1750148414061;
        Tue, 17 Jun 2025 01:20:14 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:24a1:2596:1651:13d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781f7sm74598885ad.110.2025.06.17.01.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:20:13 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-input@vger.kernel.org,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Benson Leung <bleung@chromium.org>
Subject: [PATCH v3 2/6] dt-bindings: arm: mediatek: Merge MT8186 Voltorb entries
Date: Tue, 17 Jun 2025 16:19:59 +0800
Message-ID: <20250617082004.1653492-3-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.692.g299adb8693-goog
In-Reply-To: <20250617082004.1653492-1-wenst@chromium.org>
References: <20250617082004.1653492-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are only two different SKUs of Voltorb, and the only difference
between them is whether a touchscreen is present or not. This can be
detected by a simple I2C transfer to the address, instead of having
separate compatible strings and device trees.

Drop the SKU-specific compatible strings and just keep the generic
"google,voltorb" one.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Benson Leung <bleung@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Added Rob's ack
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a7e0a72f6e4c..2032b0b64ba7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -350,9 +350,6 @@ properties:
           - const: mediatek,mt8186
       - description: Google Voltorb (Acer Chromebook 311 C723/C732T)
         items:
-          - enum:
-              - google,voltorb-sku589824
-              - google,voltorb-sku589825
           - const: google,voltorb
           - const: mediatek,mt8186
       - items:
-- 
2.50.0.rc2.692.g299adb8693-goog


