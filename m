Return-Path: <devicetree+bounces-224401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC7BC3A5E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 09E963521BB
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2A22F8BC8;
	Wed,  8 Oct 2025 07:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ectvjZni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83242F7AA0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759908702; cv=none; b=UFJ/+1L+ULPsme0EDuLtSuGQKnTDRKFpg8iaflxnYt68InY/jkfG9kMqWbRKe6C0dfkkBj4IvOji/MGMJ2IqPTDZIRbolMAo9nYYU45KFPagUDn8dZcUp2yFWPtrGfzAdgtiAHQixpEWXBNr+uMk7YYUU5awVSe0fOVi3QALnRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759908702; c=relaxed/simple;
	bh=r7b9miz+zGlUHxIqeITYi2Gi+cySbUCD1AnY1/8Oj/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rK9u6U0xMWoq85tQ3lcjApxUOgVbSPF+hJOWpPwULLGTTgGcQUOlYj+PsoyvkkQWhLDLvODMmirK0Xcq9mFDQxtMHndFffyOewgwaKOUowWXq/VGdf8L3OO/VTLdIZxYe7XXYtPmf8rLVsIVRtM89rtGZpP+8KjE3jdjzbwl1Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ectvjZni; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57edfeaa05aso8453590e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759908697; x=1760513497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXtaPkh3GXutadYrt9/amMN99qvUxpYxHtsBwRH0BwI=;
        b=ectvjZniNBnhT5DnLSpNzu2/yyZUGH4x1NJpun4RBY20zR01dI2K7u6ermdYckI/wk
         rYw5LaxAH6MXNgla5ggqueDGY13PVw3Q8j9JblrLiz3eDxmIws1G6f48rgmAjbgZJKBT
         RR21vzwQpmYU+8rewQCRyicae8/IcBdI96JmwOr+uAJnQ9Z37J4nH7jQjyqHPc7VpRo/
         Vo2VGDH4VjVegd4OeifsPcvEwKeg3n0BjdWNAPqAZYoqC3N1mMTgLbVCTvhcbxpxh6bY
         0LhVCZNCwsH/T9qDcdGcLZfqXZeiqG7YFaOIP6ylxTXnQ5DeKJT/nkFuuUuD9d3ELiO8
         +bCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759908697; x=1760513497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXtaPkh3GXutadYrt9/amMN99qvUxpYxHtsBwRH0BwI=;
        b=Eu2dPoqPj0ngVBLuv/xGjPap2WbF3XVCHmdmbgryp/pD8YUyX6m+z3HDuysm6QJO1L
         uH+OfTLnd0i5jqclzFJ6LrveTmlTQ8oOuToCui5qO7/hyaCkt6BskqVb4QD8bcGIeY+x
         upo/mcFjvbFY0g5lZXZhkJa65zIBaJrxyxBhrktt9OWcPm+kt6IXZ3qI7y5EQyVJ89uo
         5HrSVKsHmzUCEqe2MmQVY7CUGpMQaJD1z2y998o4x0f5X8c7M2fnj3c01RmFbSA2Rphi
         PBCXODCENvVW/gSLV/A34zZS8uKFr4jNoE+Ke7ykjl9w/Hbn4P4ygUuc8p58Lulnadlq
         /lZA==
X-Forwarded-Encrypted: i=1; AJvYcCWC1YJgpYe3sosZB/6iwcddFb4+r84bH6XVbHAsKpIRhUGgsQQ0PnYARvpyMu4O7C2IgwqvMcYrQIGg@vger.kernel.org
X-Gm-Message-State: AOJu0YwW+l2il8Tg43sWqA4+szejK0vLWuXOU1/oSljy38Z7PcKu8mke
	b/RqCucaLHMAgFk0U02p4OGqw+zyHl6BpcQ0AdJYSEqCI+3qymlGm0iG
X-Gm-Gg: ASbGncskbsr9EQDAzUI3mVQUkUlkrkmW0Qd1Xgia8awPnLPRYl9V2BudLd2jIE1Nq3O
	SiNl/vft+W33pYPT053ve1SvMLIcUGj2HhZVyhpDY7VIhH2vPt0CmAOqJVYba6n+sNO7IpOgGve
	PYeGOtOuQ8IfI7XFnzJtHG/glpNqUGv8GlY6PXQYcUYdYb2F6Ayga3VjE4AVoCtjEsf3aqIzI08
	dHlu8idNJCrVf4T6pplXc10jfwHuSTTbKdcc16rrc8B5EpjzM3dQkZmUWHTAzeYwqZbcjzQfrMz
	FY6g8H4sU496g+vPPUtdG8TKokdqUDPlq75sbYmm/A8pXvzrw0OVGtLrpw7QpmSncMNbcejtPPf
	gBcvGwN4c/A5/yurqmcKB+Lr/qG/A2j9ZYRL7SA==
X-Google-Smtp-Source: AGHT+IEjBzSywNMkFOAbwPQ/jDGY7x/5cVSXXn3BDGuPeQ0omEve1y2ZqSoYQ22QYGSRP1UJUPETlA==
X-Received: by 2002:a05:6512:230c:b0:58b:5f:d97 with SMTP id 2adb3069b0e04-5906d896c1dmr693727e87.2.1759908697218;
        Wed, 08 Oct 2025 00:31:37 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d22bsm6911016e87.85.2025.10.08.00.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:31:36 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v4 14/24] arm64: tegra: move avdd-dsi-csi-supply into CSI node
Date: Wed,  8 Oct 2025 10:30:36 +0300
Message-ID: <20251008073046.23231-15-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008073046.23231-1-clamor95@gmail.com>
References: <20251008073046.23231-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

avdd-dsi-csi-supply belongs in CSI node, not VI.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
index 584461f3a619..4a64fe510f03 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
@@ -20,10 +20,10 @@ dpaux@54040000 {
 		vi@54080000 {
 			status = "okay";
 
-			avdd-dsi-csi-supply = <&vdd_dsi_csi>;
-
 			csi@838 {
 				status = "okay";
+
+				avdd-dsi-csi-supply = <&vdd_dsi_csi>;
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index ec0e84cb83ef..f1d2606d9808 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -64,10 +64,10 @@ dpaux@54040000 {
 		vi@54080000 {
 			status = "okay";
 
-			avdd-dsi-csi-supply = <&vdd_sys_1v2>;
-
 			csi@838 {
 				status = "okay";
+
+				avdd-dsi-csi-supply = <&vdd_sys_1v2>;
 			};
 		};
 
-- 
2.48.1


