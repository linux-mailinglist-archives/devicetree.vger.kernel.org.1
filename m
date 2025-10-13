Return-Path: <devicetree+bounces-226238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62228BD6496
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:54:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9476918A4F08
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4FF32F1FDD;
	Mon, 13 Oct 2025 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OvkE/VPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206A2F1FDC
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388742; cv=none; b=kWM52tRw9DiNxhc0JL2q/jtWZMWYXbrg70Z9vnDyAXdwPwDBVEM5pbUDsNlJjg6UxUh35tHViszuXiPInyMr4yJWe7FdZKcx2fAWWbzwFtcWit1s638LjUXux7EqcNhCR8OYjfoVm0pV6ffiNTCA9VCeUeCBbJ8cm2ILRYbRSrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388742; c=relaxed/simple;
	bh=HJR6kFLQIcyLLWF/k1W5q8ysbhxqx4QOoIJT9GpKoF4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WV9XEGuP8zC4C9ppSRRHl7gUTu4/a05aRJk1qzazbVSJlzs68XBOkbsfc1XNdwdralI3JYQq/sP1u7T0F4tF4DMcoveUVZujT8Fs+XnfbrdWAe5YVXGqCBrlwQ3dNBEU39lhClX31R0G/wmXv2GiRRaB7cChBXn1PJfTBXW/SU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OvkE/VPR; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-330631e534eso5001636a91.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760388740; x=1760993540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxZ/iMk0sFlFcogYti23NV41Ls4gRV33Q62yrcsixBo=;
        b=OvkE/VPRoZutipoiiUmf4BS2bUccLC6PtvhBEdPOuoMLy2Zmao1Z0wY/4of410WdGc
         XmSjZEjeDm2VhP5az3SL0uoymnjoWukIA0DOyh6AOXcGvKd1Ug9thNUSRCbkOMsET8w6
         4kK0RtkCQJ5E2Itx1Gc7hjwSkgWWTqHOhbU6MpHtRBVe+JE1pAiS6lpTy+DwyUwfT6Su
         0PVAmoJ1ZuS9Zk4MGG0XkEN9NJFrtGQtzl3rwHl/w0bMxIKRvDqOhDXD70ffz4Fe9hhi
         V2kmqFrdk76rqkrMSrTyVzndC2hchbmaR9hhxIigzIuRdJI0g+XFs3qONucbu5t6rIS9
         xa/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388740; x=1760993540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxZ/iMk0sFlFcogYti23NV41Ls4gRV33Q62yrcsixBo=;
        b=eqQZRFRJeTnQYcmH97K14hmD4qXRvOcVQdGhc76+KOgaDZcWUvbhu54RxJa2rG8ks6
         4myLjDxEE1UDUYeWgBw8MkbIzArpMhuzzXx3TYt6xxssIsjGO0LdUAIfaZqo4QZb8QXZ
         BL44LgbrwTtkc13XytrB2QD8WPVPF4qnEYmoKMFM5aPnXcmlTzGXwXABqP4vxoyrmThQ
         zNl+FkH4UJNXiwIMaMb+//vH7Rl4hfqxQ/6Dv2Ao01AdpNeGBZ4E/WzExALsBOluZ6wF
         5sswrL3kBmoT1IXKwE0HSf288ur0d4eu3nTJrP/8gmygTrJ/3Cqju9yfNHJ10Ff+Bfrk
         +2lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf9g3quwQbDBlCr1uU+uEDSEwtlIZrNy/HDzuzWR05h/wpL5KRd9H4d4zTGCZt5hcPKRPB3ImqcBOk@vger.kernel.org
X-Gm-Message-State: AOJu0YwVY3dfqRkJxkqoOk3Ao1TetTRYu+ybaszJA6ekugzFqD5H6nk7
	tWz1kAbwQqy38FvApIooqRKnXGAv7YnbSSrK5uxY5gfdLhBssDDzy7y/
X-Gm-Gg: ASbGnctUtVdLeXodA8+ChqK4V0NjbY40BkS3QQjZMjFIKPKmTcnpGmypf+B0GnB8LLM
	BbnW+OrRH7fms+7rR/cA4Pwbc/VotrcHyxWHJu3FaXRKcCaURalnfB0Bl6y0djXMd8l90UIvu0/
	LSIhVhsDdsVjGXKfKR9l+gH6sJAnXcLZHgJo3WPLjmNq/rm3KMmvNtK+Z20INTR9vw8PjWPya8s
	5bJlGtre3atc2WWdEgTOLAE8Ntf8Ai3j592FGCvSb3wDIy2Vn6e+so/QRv2pKLbz2TCOSDAnO+z
	CPZLfDss1iriXUoVtu0WSgUx1e8BzCsseqyqhbNABIGlDBAlLedSLE944zxGxKPCenG97ekbrCR
	76bZXyV+ahmePpI/Ht/zvBVLFlH/UwCdeI7WM0LTis5YeOHmJqE6M2As=
X-Google-Smtp-Source: AGHT+IGoPwwLuuZSmqvJkvje9JpdAVuLDDPRbWWI2juN47Cw6JrjLQfw15al6qeoEvpbB9EAopUh4w==
X-Received: by 2002:a17:90b:4ac7:b0:32e:e150:8937 with SMTP id 98e67ed59e1d1-33b510f8f23mr35543703a91.6.1760388740438;
        Mon, 13 Oct 2025 13:52:20 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cc82:37a1:ecfc:e51c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61acc413sm13445147a91.20.2025.10.13.13.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:52:20 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marex@denx.de,
	stefan@agner.ch,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	shawnguo@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Frank Li <Frank.Li@nxp.com>
Subject: [PATCH RESEND v4 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
Date: Mon, 13 Oct 2025 17:51:54 -0300
Message-Id: <20251013205155.1187947-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251013205155.1187947-1-festevam@gmail.com>
References: <20251013205155.1187947-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

mx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:

compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";

This causes dt-schema warnings as the current binding only
allow 'fsl,imx6sx-lcdif' as fallback.

['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long

The imx6sx-lcdif programming model has more advanced features, such
as overlay plane and the CRC32 support than the imx28-lcdif IP.

Expand the imx6sl/imx6sll lcdif fallbacks to accept a less specific
fsl,imx28-lcdif fallback:

compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This helps keeping DT compatibility as well as using the more advanced
lcdif features found on imx6sl and imx6sll.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index ce31b873fb95..d665f3241e97 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -23,14 +23,18 @@ properties:
           - fsl,imx93-lcdif
       - items:
           - enum:
-              - fsl,imx6sl-lcdif
-              - fsl,imx6sll-lcdif
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
       - items:
           - enum:
               - fsl,imx6sx-lcdif
-- 
2.34.1


