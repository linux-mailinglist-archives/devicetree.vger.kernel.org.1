Return-Path: <devicetree+bounces-225691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 585FBBD00B4
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 11:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AFD91893871
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 09:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3AA2367D6;
	Sun, 12 Oct 2025 09:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MBlq7dbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175D115A85A
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 09:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760261530; cv=none; b=aiJijw6gAyV0FcSS1ryF133rS2O+W3+lJZmuF2pCZKxS60f+DVuMJQh92pfxA3Pc8e9Nf9hDWyUpXrd1kMw/wOaVy0D7ja4OlF4NJSPc2WMlkFhQaywjUnYpP33h+6GA0OlQDjcU8t+npjg6iHzjtIl5U9l5wgHjJKqdadRzo6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760261530; c=relaxed/simple;
	bh=5pcPmLkP4uM2Yjcxu8nsSNL0pJqooEybr1f2L0XWZ9w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Cd2FIkon/1pLQ7WoUHdF4msFpCWMgk1LsdE/IzuswWtUafzZrts0AoKPnsF15ISq3mP24CEVloEjnr9SthNt+3idV0fFTqA1QzLMq4v5CCWvbRpiAW6myQborYU6CCqmaW3Bbve6JjdBqwSOsxCBVx5QJhA+534XN8MD9T2i1qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MBlq7dbr; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6318855a83fso7433435a12.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 02:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760261527; x=1760866327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2mWiXoQDcNyCG/Y7xyEyX/kKrmiQYrpx8gb/fQ9TCTQ=;
        b=MBlq7dbrDlhQLpYHoEvTKvWWk4DsSdQrj6Q/PkVINqNAU0Hb5lnX9le/dNQwkdQMEr
         1f8gbID3mjCPJgylh2oqW5+Of3KXbYJ1J7m/tv4nw3qxvP7RwHDeXM6+3LWxqEHok2bv
         4R2vTQq7HQKz1e+SaVtHd2/v6YqGw6TW0rvPtEolj0u4NpqjUvnOHtHNyAnVZwyR6mwk
         jUTnG9nCzHTG1alR3C89xOktuoazmjSV+sfwS4ZfctrEUJfM/VuQS9+LSb8jykZIpV6T
         oZyED1WXxPceNWT4eCeGWsbYlUHTlTW7wXtkJOlH8o45DBxDAHHqAYd0+u8CfEVvnXAg
         D07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760261527; x=1760866327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mWiXoQDcNyCG/Y7xyEyX/kKrmiQYrpx8gb/fQ9TCTQ=;
        b=fT+b/KXLwdlXZlEBA+8dXQH3gBw4wgfhupYywaNO/qk1kd8dtzMx1qHf+JI6inDTDs
         HYue9Sm3J00Y33b5Qp7qaQfxR+4X0WM01UqnZWiCxJqGDsdgpxdBiIZAGKBjKOs8Vbpj
         QAciBEchNYngd1D4u3uxX7phZ0eHZBRh91DKxiyMSmADRhfZHYuFbSqmXNVlgOJLg798
         DSSbmpmbzIggnD5fKYw80WayC3esUOOS0kAtuo7wU0YrI0AeSETfpoJ7iRhFTWBBkg6o
         D8dwhi2NGR/J+z1hgRmEPhJ/WRtORax7IE6Yx4oFL181C21mJ3uUOyUjsxTIIUN4Vlsw
         P/6A==
X-Gm-Message-State: AOJu0YzSNRBGqtmrFpGsWoDqS/n3raxb/jx5m2ubr0FiPwCy2z8B6hCO
	xmX0bQqU9E/radWUTWqAgyjrLBxH+VCpKDJqTrUXdnO+A8fZ8rr4XAq1RsFaFE6kdwU=
X-Gm-Gg: ASbGnctDbjXoHBq6fFHJpZ8W2GL/UaJbat4lSKTtTdFS5Lau6Jv4FX6S3DU31NTDGKV
	6yIGDMKvbAeWrjxBA2l6ZmBcPtVdeIkLHq/bWBM0cfiN8uZLTnUpfYSDYiliL6MU6cJQv0EqaIm
	t4rsebx18XIuy3EymU1dk7Ac0BH43MdoVS3tfDekHaNOIrl0o1w7CQqnJlosFbK19Jgs/5By+9D
	+uokex7lbM2eZighgWh8m8Do8NYgicXapjfo/fp3aLGvfVW1P5f3ejmmOzIud9B3rEf4NQfyzGA
	3Ge01fEHdjVxKxpkNZrXtmrm+9w323kr+eBj9D7lC+r0a510LpPAGnq8A6ovAy3kAp8taxidgeY
	6PuWPlYqO6piHU64CJWtb3osy9WrUgh0nQAaD7Vs2Ed45dCNJz76uVUKv5BvJyhgR7T08bsXx/y
	h5
X-Google-Smtp-Source: AGHT+IHAMPc4GhHxYPiu7DN/dGgE3XL8AkmpYnNc4zzqqyTd0Vqq0XFfmmQ8/O+jhhO8SpuritDGUg==
X-Received: by 2002:a05:6402:27cd:b0:63a:35c:6ec4 with SMTP id 4fb4d7f45d1cf-63a035c73cemr10344738a12.21.1760261526877;
        Sun, 12 Oct 2025 02:32:06 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c323423sm6331597a12.42.2025.10.12.02.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 02:32:06 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH] dt-bindings: arm: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
Date: Sun, 12 Oct 2025 11:31:26 +0200
Message-ID: <20251012093135.80395-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo into regulator GPIO definition. With current
definition - PCIe don't up. Valid definition have on
"pinctrl" section, "pcie_drv" (gpio4, RK_PB1).

Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index 7f578c50b4ad..f74590af7e33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";
 		enable-active-high;
-		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
 		regulator-always-on;
-- 
2.51.0


