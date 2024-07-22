Return-Path: <devicetree+bounces-87134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FCA938A12
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6F431C20DF0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 07:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881FA3770C;
	Mon, 22 Jul 2024 07:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Qa2ZfY2O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052F7224EA
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 07:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721633520; cv=none; b=uVetArmnMPhKUWCkm4BMyR+MI43vhB5ImtAnWDeT+UqJw/BcGnxtBqYsVZcFMkFOC/FwJCptBfQTTx6QB1yLnuKPDc6O7cpR9DKRrdgJtDmECGToleURzochQZqH7/66PClURVx4sYQF2F03wXxF4yfg6w12CjXEfiUxaxqN2IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721633520; c=relaxed/simple;
	bh=xv5BUQaO7i12oA2wxyyxUMQKqMfNHfOLBT3IHiJXaEg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=RvLXeNxagpgQ9LUzLRnyEDEWdZKPNP4I6TTxLglOweXU+XSy8kcpEFIhqPPn/3CCer9WweWKcU2LkdCKGRlyalA4NzPHK5oh73utcXtVQou5KN6mAQYu3GLRtKAYUwL06D4FtHzvyevJnfAvn7WwadzMqk1iK9j57GSTrc7ymG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Qa2ZfY2O; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70d1fb6c108so458280b3a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 00:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721633518; x=1722238318; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xrIqnBMgcc4mGKUscqbrmcY1TR9qTmMNkJAbmzQyPX8=;
        b=Qa2ZfY2OsRDL/gwZqW9ySV79ZqJ2O/6dJpjyADwKCOoaXuJtW2PnKgu8xWFClC7G4U
         fVYLOEIV3S8JOlkyKmuFyVGPVjUM+QcHYfSUZM4Yu0zF26sZYEb7OVl3y5xQeGueSWw1
         nixyf2BngbaUMq/RFNQlHwNQkpPihuA3yl6Gh2Co2/dLIgvl92l/HlVv3UvAZ3BFxi0j
         hdlQMx0AFyFVg+zbgwYPqCYy044U+L2SL+MoMtr/jUXIJ+twGn3490pbniXm9vXWb9qT
         5/Xm86JQrOX6HM3cGJRpvR9u9yuHtBk0l5Kr2mlczMc3G46JD0nkQOTpLIhVodINxXDf
         OwNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721633518; x=1722238318;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xrIqnBMgcc4mGKUscqbrmcY1TR9qTmMNkJAbmzQyPX8=;
        b=b5NBmeohIvbze8ckZtBTwyGUTngCL98IRZfJIzH64aa7IKShIyhsTTmPqhQ1PEXCcl
         u5wDVLeJmgAcXyhBECfSVfQTHNPU/UOujvk+iscxjsLVtZFNoiCfdTtMP4+bv4Zw13ST
         VJFljyAJ92s0Z/zndvJl4ArdEt3lv+ZuNYwjAB9w0pf/XpBjqp6croA7VOlKGdsnokfs
         skDl5OLvNV9XN2AM7tbSzkuvO2sEd4L0k+QbJlwtA1VIZibo4JTAoiEP5XQ5UcAD3T7q
         kmYUtQ5NF2C8JbzLnh4Ee/OLCyh2vP7Y2Lt1N/5HUF1BnpykQtHPSCcemJYzAxlCtXLU
         IjXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUt42GMujoQGfAvSG7dDB3SZs/tHHBQkYpm7hykp/mEV3m0cLWHve2XQ19H1S7rdvAT81KAdzR05EGLHy7mLeKw2H8NR0cDBQmUCg==
X-Gm-Message-State: AOJu0Yy8arZ7seC7lh+21/b+Q1sZRHiGHWs+P7FJwD6l/Hdg5VJSGndG
	vSXczrNwo7T5GRdQNJeoeHzBjBYzU+WoPTzEOgeVxt7cWRyWAuy+Pjwyf7zYMUY=
X-Google-Smtp-Source: AGHT+IGHzuEbmhlre23pfm+UORHBTK0Szzk/9tinz/m/bcaMfKygO0+QpUCmfNaQz1HzDVAUKcSFzg==
X-Received: by 2002:a05:6a00:2e86:b0:70d:2497:383 with SMTP id d2e1a72fcca58-70d24970528mr1843574b3a.18.1721633518289;
        Mon, 22 Jul 2024 00:31:58 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-79f0e6c9461sm4081162a12.61.2024.07.22.00.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 00:31:57 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v4 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
Date: Mon, 22 Jul 2024 15:31:35 +0800
Message-Id: <20240722073136.8123-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240722073136.8123-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240722073136.8123-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V4 and V3:
-  1.  Combine the 2 const into an enum.
v3: https://lore.kernel.org/all/20240716082851.18173-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
-  1.  "ekth6915" isn't a fallback, modify it.
v2: https://lore.kernel.org/all/20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1.  Respin the series on top of v6.10.
v1: https://lore.kernel.org/all/20240704085555.11204-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 Documentation/devicetree/bindings/input/elan,ekth6915.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index a62916d07a08..cb3e1801b0d3 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -23,7 +23,9 @@ properties:
           - enum:
               - elan,ekth5015m
           - const: elan,ekth6915
-      - const: elan,ekth6915
+      - enum:
+          - elan,ekth6915
+          - elan,ekth6a12nay
 
   reg:
     const: 0x10
-- 
2.17.1


