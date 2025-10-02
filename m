Return-Path: <devicetree+bounces-223449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E93BB50C1
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 21:48:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E09F1889C09
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 19:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D897272811;
	Thu,  2 Oct 2025 19:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LTlarZ1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B113550276
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 19:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759434518; cv=none; b=gL6EDMdUgLE/fVt8qG5cRkRPznpn8SgR4ULADfjNcApK8T1jF3wEwROrkJAN40fgkOBMd29DhlLz6H0Sy87+by515jM6fjju9tZ62hVL2VKuU7GwLn5lIP9CzXeOyXoDvDC0iWp7oiv31Rpc/GCpT58vJHdZ2tlSUYKZ+tpfB3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759434518; c=relaxed/simple;
	bh=Pm4l1zpEV2NSredTPhkQVFmQa0kARI/iMaPWVjt0V6U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gXCrZki/9+3CenN6M/dxHDq1sL7kXeL76kgPciW+/3r4G+VU7Q+eXsgMBjts8Mthyk8hjYHeA/QEZvjutjr4nOBEvfjCBGMTwXuCtP+5fmjSnInsLMAOzXM/T3+WYcfBtnoNyHTOuiwN+6r9Imfc9sgoPLT1OKLMQ3yk8+JZf1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LTlarZ1l; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3652d7800a8so10830251fa.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 12:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759434515; x=1760039315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d/gbplP1B7qXcxXjextCIPtkE0JJrRNYjBjwQhhQcJg=;
        b=LTlarZ1lhmHgIKH9ZtJ3jAxyr5UR8wNPf4W1w7KuJgwuxGoF6khn1gjWe/p4dW/U+d
         UiRWmBphsPRgZvFLGENjigqVvbwHOwhKJi9LEVmCRO3jhyOO1C/I3BIIkhEcVVHLbSuu
         dU7cV6AArQluoKVb3OFiBdluzD6oU9GfTNKZIKRgIx5fAKq/rwMqFD2iv57ffyHQoUSV
         r11EvF+VP6QYCX02h8yWvVbknV4VBCBshkAUhPtqASFN1MP3KVa8437XeigkgMR+NS5J
         DkDDaQyUOhQhJMaeyeTrqaIPJ9o475W3h2l5o4jn83fWjRu53VdGAAITns8wsjO9iavi
         ci5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759434515; x=1760039315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d/gbplP1B7qXcxXjextCIPtkE0JJrRNYjBjwQhhQcJg=;
        b=H3277hI4TUaGqcArKQAtcHEBYsYsfs8tlobGDFtN6Mg+IutG2t2Kj6/PhN/70XxYw3
         Z9CR3wkhHMT+hJNAF8nm8/0mbVYKufh9zuOiSvmzl7YQSi65jVNuyq0u3MfgB5tKBEPq
         DI4woLNZmC6I7e9IEkNjTmj2ziw9JuvQ3rnLdWhkGclmJHqI88aAPxgX2fM4TjmT58LM
         E4b9tmnwoTBrNZYFl5YQfyGDMu/0CCAnct3K1I/CjSnLinuLF1S6PrUDIz/LcSXzL5ei
         0AxV7F+ifreYftbMqAQJRjLgHBhmvZPwC5ckFTTJqW2FtY0gxhtr4cK/BxfEqgPhpVWt
         cA0A==
X-Forwarded-Encrypted: i=1; AJvYcCVuS2BMPxRFK1TNCixxDqIvUGapYS/VXNezI1AUZZLuXOdju7Fk75Y8yQdLYV3OmftGXkB7KApOwCXh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6qzvY9lLPUCbRNMLaUF4sjRKxAP/UZNmE+AthIdInt3XSNv60
	jVhW5mYEcbt8abt9roizyxpvsL47kvCO+yZOCEdgNAHXHEumo84Hs9k24b5IWA==
X-Gm-Gg: ASbGncs3wFvMan6RcTP9hrE1YClD6zB0jIXEGEt2mAAUEHpQ6DALCuCRJTzGxabOo9k
	0616DiJb2ZlNulmo5ASEjPqHxeIx5TA76NGRz4zn4sDqx4zSgFMiR75zmCmabVw6r3MEwKFcTaO
	haZAdC7OETP5avB/nWXp21CPj2Kcjeswm3Ct5QQNOLWUgzDLANjsyT8yQrqbXL9AHo3T1/zQThu
	Vz2plBfmejm4VoBlx70AaNpTIb0IQQOi6MajzSfaf9PvcduIeh8O4zVlwz0ahk9giJZNG31B1nG
	BMNnoU9e/nGYSWtGimqlk7WPBQyldnm0/Co4OiuKqxrCvnF3PwPc717xr6SRmMqn/ArySsG8YdG
	mdW8wkWjRRgCMMFQdeiLzOjxK6ONGdSZqR2g1NHWWbeo8Y3H0qpaUPqA7
X-Google-Smtp-Source: AGHT+IELrL05mo/onWVydfWqyfhsUUiXFwKvaXehHGtbG7WXIyXgpRg+lJEHtfppQeAj6E4CWfYJ6Q==
X-Received: by 2002:a05:651c:1506:b0:36f:284:56db with SMTP id 38308e7fff4ca-374c37e9b65mr1127731fa.23.1759434514466;
        Thu, 02 Oct 2025 12:48:34 -0700 (PDT)
Received: from localhost.localdomain.pl ([89.151.31.85])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba3127a2sm8783171fa.29.2025.10.02.12.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 12:48:34 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM53573: Fix address of Luxul XAP-1440's Ethernet PHY
Date: Thu,  2 Oct 2025 21:48:52 +0200
Message-ID: <20251002194852.13929-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Luxul XAP-1440 has BCM54210E PHY at address 25.

Fixes: 44ad82078069 ("ARM: dts: BCM53573: Fix Ethernet info for Luxul devices")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
index ac44c745bdf8..a39a021a3910 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
@@ -55,8 +55,8 @@ &gmac0 {
 	mdio {
 		/delete-node/ switch@1e;
 
-		bcm54210e: ethernet-phy@0 {
-			reg = <0>;
+		bcm54210e: ethernet-phy@25 {
+			reg = <25>;
 		};
 	};
 };
-- 
2.51.0


