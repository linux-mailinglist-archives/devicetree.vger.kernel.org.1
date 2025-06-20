Return-Path: <devicetree+bounces-187796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4D2AE15E9
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:27:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8122319E4F0C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8902367D7;
	Fri, 20 Jun 2025 08:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ds/mNHRj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FE02367B9
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408065; cv=none; b=ctqQv/K3qU2dkNrKxZPd9SYd0fFFkZnIyPRrr1LmXsGkKUA/4a1h4fvFj4+UblGf+5XMJPlLUTnFmK/cZ2y46PboFgZ8qudgsj3BtgXhZpzPttGv/1qwF/yyP7EfDhEolGsamun7D9HMVnZYCj7jLB8tC1gRq1TnoJwsGh00GM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408065; c=relaxed/simple;
	bh=2D+i3G15KhWJmzs9CLvtQ7hedAF2DHhxvlFywkAiVis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YBq2uOJAaThsTd56+grIcmoYVzfJ/XpoE2gt8yikqgUBv+mAtm70IoD86pYwawMri4TbrX3jjSbEDfAH+JJV0BjI8AJm1Q+qgeT74gQJYrW9OleS85LQOU0WwMJqdSXV9qnaAdsXYS/qILrZpJGJLV1lAVMBwENGcwV9WdmxB64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ds/mNHRj; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45365b1a897so2589615e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750408062; x=1751012862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyOwHJZxAKroqQz4dfAYFqm5YCbbl731xMN7ncfMwH0=;
        b=ds/mNHRj13xrzsJjOt29S5V92YddFToXuuBQCFfRQTOJUmWTBT4PfShBU7IcH9GScr
         DB+VPSk39PhZdl0o37XmJ1Km03vCohruHEolgHDu7r59S8j7NETJbpMMUA7I4NzDpi8p
         H+FhdZjrhkxkXvoahNv8s4eg8WjfNmYaoSI8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408062; x=1751012862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MyOwHJZxAKroqQz4dfAYFqm5YCbbl731xMN7ncfMwH0=;
        b=E6SQNLYzb7YPOhbRgQ2jNVdrYfql6ix4QgaY2KO1kfsOQT6Okh2D5tpl2FCb+Ifoa9
         +pxNyIGz3jU9334SAwKEAqfgWAoAu3shT1GivRvUcE7sLjhwhavdJ22PE1uLjuIq/yEO
         9q5SW8ZClnlo7yR5h2i5X3aw0ZyCtw1+bTAK/meXjPp9dE5qaNfDxcZ8LQayHa9UHgIA
         b0Xa76+v+9GeQ7pCe7jEg+3TRtZclfShABcQCFoQ/sqDQ+oux2hUWqlrtIyYVJtApcZh
         WDTNqbAIprEXyZKYFsXJZCgrK9g984KZDDGfo9ttVGw+kYttDp/2COIKt4sPU/rZnLvK
         Mcrw==
X-Forwarded-Encrypted: i=1; AJvYcCWrm6z9F10hVOXInbveY8R5JswbxVCfXCp48tzaM0Lv3Fmaeeb4QSA+AYMl2LzHcoMJDphfiUgKDVFL@vger.kernel.org
X-Gm-Message-State: AOJu0YwNDfkhIfRTgDZMZncB4d6GOgslaiN/Aoji1p37MX6XgNTY5uDH
	65d//Lsmlfib9F07DksEAPVEeEnDoPN+Vxn59Gs860Y5V9zI5hnCwA51GekDtxy4oUE=
X-Gm-Gg: ASbGncv9sv/6lVWq0PWzVXqa22KhcJ59nCuCKTzWF/cPqT/Lc13nsAqK9fpjnqc/G/w
	Xl1DWMnO3ez6LhhaCp/ZCTaGs2fTi1qgmf3m5nPldemCT4LiPecJ2+oHuTo08IqXKl7AsueBkqb
	W4BI5UptSIIjCnr7h5VHQBKGxHWFtB+q0nHMCCYTi9Thi6yjiTi6bSlHZgjv67AAc4LGcg4xI/V
	ZijSZ8rbiKE5xE79wrAxhcSFfr/OEa52omRKIe5nwIjs77Hx+QR0I6fAwJR+8vUZcKgPo3JG5AY
	f+n3mIWXG3YkTYgrLRkiVQwR3ecidgOwndlsydQvnofLlGAVP3G9dp0edS5C+9sSy/q16kPa0Sa
	l8IUSBQ/EtOpsXLyw6fFTTRNLsyGURCbtIP5p1KFEDFoXPuOVnwVP
X-Google-Smtp-Source: AGHT+IFNGxjWHYKGJ+RuQldRKS+UF9Cbcxwd6gKCuUb99rs0xP31oQiaj9wNwY3lpeMMRglpLJix1w==
X-Received: by 2002:a05:600c:548a:b0:442:e03b:589d with SMTP id 5b1f17b1804b1-453656c2b8emr16098645e9.24.1750408062068;
        Fri, 20 Jun 2025 01:27:42 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e9844a9sm52274285e9.12.2025.06.20.01.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:27:41 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v4 01/10] dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
Date: Fri, 20 Jun 2025 10:27:05 +0200
Message-ID: <20250620082736.3582691-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
References: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA BMM board based on the
Engicam MicroGEA SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d3b5e6923e41..5feb62611e53 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -769,6 +769,13 @@ properties:
           - const: dh,imx6ull-dhcor-som
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL Engicam MicroGEA SoM based boards
+        items:
+          - enum:
+              - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+          - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
+          - const: fsl,imx6ull
+
       - description: i.MX6ULL PHYTEC phyBOARD-Segin
         items:
           - enum:
-- 
2.43.0


