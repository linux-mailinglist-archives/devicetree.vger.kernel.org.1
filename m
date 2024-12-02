Return-Path: <devicetree+bounces-126094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 855489E0342
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EC5A1614B5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 13:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4A96AAD;
	Mon,  2 Dec 2024 13:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TH78526E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01241FE457
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 13:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733145727; cv=none; b=J6nmXC469A7/h9FDkACJLsjhVFqfMabhbBtzVclErqMmA9ApzGsrxEm70ucV+Y/NvLUfAhSZZH+yKvGkUnzrS8L1kHR9oAEUJcjppQOpsxcpB6xwMDzBQz4wyTXPQ5DQkuQPo44EOw4yhOeWU5nrEu86A/KfDKK5YEn9J5MuzJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733145727; c=relaxed/simple;
	bh=VD9nBKBk+YgE/kXPZ+USclBw7JwaYYsZMf+/pcq7BNE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LHBeWRHgU6Vg9Sf2BquKApzJJFXQZz1up4alpVmS5Ytr2IWlGhepJIRJ+Gl15jkq1Jt7VnrWYlTRZGtECRs0aGioVgQozGQPUYzEvSVxOGmX2GMKQQE/3kiW+kJD/j96PyQwdeaoUIH9+8PTzi5hZQWfirZRyUzAyS7GAygD7bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TH78526E; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7250844b0ecso3397431b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 05:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733145725; x=1733750525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sv0//fy9Y6u/oppBNlbQtYr2WKWUynWe9KC5I1xpzZU=;
        b=TH78526EfJJdr3olXGtP0FC06ViyErHejjDutE4KmeeQEUjHyjDjVSRu4YVTxpb03F
         5Hb2pUh5xm2Jqsa8/Amoi5gMYwDL0rwZtp1G82kiG4yh1n7rQuIMJnlZhHhbPwdVgoau
         TdAl+k999YYwAU61HOuEZM6/ZVF/3c/FZmSxM756eW1wwynj2kTJDLU3MYRIht2qu4UQ
         Z+OqIejZBUjhFGLxRbyjBb6VrlASJ5CrBgtNp3uXjUmzIqexYoC0D6308WCFtd/Syy9d
         g4ugUrIVKGzMfdhhCH7sRos0Dz8tJxBMVdohhgJQ2b1R0vpZtFNsQ5FfEcCHHq/qKCC+
         bjGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733145725; x=1733750525;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sv0//fy9Y6u/oppBNlbQtYr2WKWUynWe9KC5I1xpzZU=;
        b=PNgNnMGpPsqyWnC2j4I1ZtIBFrwpNRSOCyxj0MNYX77e7fkUwNiij23byJyY58szg4
         Fbod9UdArJgzNFRZfhcc155HFDMDKQ5sNjbL3skL2Koc+3fm/VhuMOwcFfHN1f3HA19i
         vS11vx1GYUi6fuuo7fddk860wQmvLS5KCrfXOOE/LnuOdsxQc1G9Se2j0VBRDQzQyGys
         0bCG6/CYl9gQQ3qfM3+erwypavbJMdFo1KpmzMvahK/SYV0eKKCCvvZPKubwA5/CiNBm
         HOGgAVkiLdwN8ECXDNJKSFiaWxDMFwJW1vObNJlqBfGSk4JR344cR6Gio8BWHTAroLYq
         wbbw==
X-Forwarded-Encrypted: i=1; AJvYcCUWZhfk9bVwc/z9yqiy5oDzDDq2DQePAxjANx3B7DlQ2bmVQp55dgzuN+VmGWOPy1v1GCRRkKQAzT/C@vger.kernel.org
X-Gm-Message-State: AOJu0YzlPAPlGFXg2vWxoZInXmIkSRX8L73dku8UvGrw6KQ2EJeN8rMw
	liP2uhGi5wg+dXcfImHE39ABJ0hKvNFs7URZsLRvXaRvHrPaRvzO
X-Gm-Gg: ASbGncvQzQmS/ZSaj24NmJh1jYR91Ur/vCYFcQrkaMee/scBUuWn+dGPlc+pxgpaZtV
	V0RUnC0NTvJl+WhsHId6g8fu/YdMcL4RP947DSmBiBt+1GZ8Kiyv08G9anx5S1oQ0edY0+tvqyb
	3wIjxhba9uvg3OXuloliNmQxX2FEd9oizuA/GGHUsRJgbJuLuvTUnD5FlKfVQ9wwSoMt2qgdiKM
	KdvbUPNPUVBPcrVDQAbVuXb3VKk0KxzQ8bzVVDUuuslgpKBTgTgvy3Ein9F4g==
X-Google-Smtp-Source: AGHT+IGsdegJ1akRjnaYj76rP0o2QuAbiXTdSzIRk1IHeRT4Dt5LR1a5f8LbW6gNsw+JFjA0TQAakQ==
X-Received: by 2002:a17:903:230e:b0:212:5786:7bbe with SMTP id d9443c01a7336-215018570fcmr366988885ad.24.1733145724679;
        Mon, 02 Dec 2024 05:22:04 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9b87:b3a5:736:1fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21521967290sm76476535ad.142.2024.12.02.05.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 05:22:04 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tglx@linutronix.de,
	daniel.lezcano@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH RESEND 1/2] dt-bindings: timer: fsl,imxgpt: Fix the fsl,imx7d-gpt fallback
Date: Mon,  2 Dec 2024 10:21:46 -0300
Message-Id: <20241202132147.587799-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx7s.dtsi correctly describes the GPT node as:

compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";

Document the fallback compatible to be "fsl,imx6dl-gpt" in the bindings.

This fixes the following dt-schema warnings:

timer@302f0000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx7d-gpt', 'fsl,imx6dl-gpt'] is too long
	'fsl,imx1-gpt' was expected
	'fsl,imx21-gpt' was expected
	'fsl,imx27-gpt' was expected
	'fsl,imx31-gpt' was expected
	'fsl,imx7d-gpt' is not one of ['fsl,imx25-gpt', 'fsl,imx50-gpt', 'fsl,imx51-gpt', 'fsl,imx53-gpt', 'fsl,imx6q-gpt']
	'fsl,imx6dl-gpt' was expected
	'fsl,imx7d-gpt' is not one of ['fsl,imx6sl-gpt', 'fsl,imx6sx-gpt', 'fsl,imx8mp-gpt', 'fsl,imxrt1050-gpt', 'fsl,imxrt1170-gpt']
	'fsl,imx6sx-gpt' was expected

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
index e2607377cbae..a2fcb1e8e74e 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -31,6 +31,7 @@ properties:
           - enum:
               - fsl,imx6sl-gpt
               - fsl,imx6sx-gpt
+              - fsl,imx7d-gpt
               - fsl,imx8mp-gpt
               - fsl,imxrt1050-gpt
               - fsl,imxrt1170-gpt
@@ -38,7 +39,6 @@ properties:
       - items:
           - enum:
               - fsl,imx6ul-gpt
-              - fsl,imx7d-gpt
           - const: fsl,imx6sx-gpt
 
   reg:
-- 
2.34.1


