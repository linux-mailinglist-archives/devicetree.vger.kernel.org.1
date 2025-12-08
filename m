Return-Path: <devicetree+bounces-245239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E00FCADA77
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 061443004533
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 15:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000132E1C7C;
	Mon,  8 Dec 2025 15:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JlYi4Std"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD1B2D3EF2
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209031; cv=none; b=g8K8Hx3UQaTpqwmMT2CfyINArD9O+CP0yhyewKSB/0JWm5LXm1p2nucg3jvKnXBmGQh3CIU9rN4j/CwGfKAzv6mV6nxCDqpoJbE77MzGarB7LY37991CEgJQia2Ab5UgZgun9//bN8h+mWYrayV8VjwLuzsDowQrT8TYXZilTx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209031; c=relaxed/simple;
	bh=lfdWmhaZJTMON4teAatnLxOF0XN73G5Ei5TmlUHmFeg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G/Qxq/6urwyMKfXkTmKlDazy2xO3K8toKfBDCsxJcfYckJcgHltnfQ7Q8NvG11eGZ/Nb7LMov0A5LqMn99CCQOA+pmKqT16s7wfQw4knUec8JuflTaiojPpskyhcJKOGPcy9rsH9K70onRE/wjQCwZZyOjTcq1GzHkjUTUE99GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JlYi4Std; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47790b080e4so28028585e9.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765209028; x=1765813828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9vxAtmbsc9sfd8WNWIA8+tguwKaRWIk3O57bGcLZew=;
        b=JlYi4StdoX+cEhgdpGBWC5noHgn8GD9pKgTZ+wIoiG4SZ8MVL58J+TMRdh//HRaTrz
         V7FOCWLPxXwRs0bEe3C7KCQYvD4ScXzN/fwY9ShVPmGddGTT98nbZFWlOhM43uHqM3kT
         UhdJ6zoqHi9k67F8nOcubu3Xdvxs0IOiLoT9ReQrtuq6CnmGJEOMrwiIbvkEVOEzlHxk
         MANh+Nq2TFdyB+EpNCyXCbJPHZ5X6SYyX9OJtyRh1dU9WrCnaa0GY8Mq01Bj1D77X1VH
         Ux9QjXpAJx/ANC81dvGvU9pCV9TcngY68397sAw57jdAXTrIZPZjk/RkJy4ZjT9LQ8uq
         cVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209028; x=1765813828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E9vxAtmbsc9sfd8WNWIA8+tguwKaRWIk3O57bGcLZew=;
        b=FN4GdRAkMlkNpt9gP34zX36YNxZPw4hEWOBQt0zHmwxZLfzgKF/zW6owmx8wvjqlam
         g9rUD7ovR9ektTHNKae9HRJ4VuyxW4Lp5V7r16a2xODRZdt7PDM8lbRILcLfQg03rRYp
         MBJvSM7ZyV6VSfGmGs9QNTElzQgQPZh4ALNr9cfnm3FZmvScHU2SX9vxGeCS6tEgf2xR
         +wNSEFISl+S8XEN3bhR5W0G1ZV3719iizUidMV22KKwlhvxRL4u4WN9Ki16S87ij5mcc
         p3Tg5Hj6MxyB8sg0SJVKXXo+xwPDvORKh+1vWsMTe03Rcnpb5OIfOM36T6zIlzzNLbOp
         Lreg==
X-Forwarded-Encrypted: i=1; AJvYcCWx88sU5Sy5NAaaWiFcOnpj57UbQ3IQTZynt38UwyUl0bhya/N0T8a1DBTPf636p+iyCuWFn0MMHtBs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/DEdqQkFidgRRNZXktlf+UK61YduBRrNdRM6ekQpihg20ytE1
	3rU3KejPH3aaFtSFvt5L09HGLUPhTeUzfLhYIM6JLSjchz6QOsNqsyqL
X-Gm-Gg: ASbGncubu+huupKFNPHolfzbq+W/sn7emdCr7qsrWavqOOLjY05Q04FUI01+2/phxYw
	WKmWnY0LWBCVQzUwj1QDwkYIp/+Cris7EFhurkw9XnDbBj4aWQlQ5uIhfjvNqPJvepf2CauNu5V
	w7qITZ6Z8TV9JCfnfy9tyOMd0Y6M22jtLNIt7+sMAiuWCHM+Md3BKzadMkaO2+8xeDJJ5ZFBHnt
	TWcAp9pWrCo0v2CkrKD+2Vn4FwCw7R6usHOPEysnTU5qgtQtJ1NYUTSFTlKU8siy1lLWAQViaWn
	4RVQOt92RmFSpsDVSW7gMJ+63XiVVf85E5qO/Z17+tqMQVj0AXDGxdSiVxFaTuCCucrWAeO+1B9
	ax7LUbp0yUpCWsJuCTekbcpfVVnhx9vkcmNdJbVcr9NafdxR4lywt6I64Iy2D5l5YS1U/uuqzy0
	gh31BzbKcgxCwElu6EEFQmq5mADF4uzCKCsQ==
X-Google-Smtp-Source: AGHT+IFljt5YHUzlULBDoRx85WjVasSaNXrLqrRgyJpEfzkXWUGKm/KRhMnTMpRbYvSGWx2zxHRZAw==
X-Received: by 2002:a05:600c:c3cb:20b0:47a:7aa0:175a with SMTP id 5b1f17b1804b1-47a7aa0175emr11840195e9.26.1765209028120;
        Mon, 08 Dec 2025 07:50:28 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9aa6:8a23:82c5:2b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b150878sm147717845e9.3.2025.12.08.07.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:50:27 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
Date: Mon,  8 Dec 2025 15:50:18 +0000
Message-ID: <20251208155019.136076-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046
provides dual high-speed CAN channels and includes STB1/2 control
lines.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index c686d06f5f56..c53c4f703102 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -23,6 +23,7 @@ properties:
       - enum:
           - ti,tcan1042
           - ti,tcan1043
+          - ti,tcan1046
           - nxp,tja1048
           - nxp,tja1051
           - nxp,tja1057
@@ -84,7 +85,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: nxp,tja1048
+            enum:
+              - ti,tcan1046
+              - nxp,tja1048
     then:
       properties:
         '#phy-cells':
-- 
2.52.0


