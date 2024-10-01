Return-Path: <devicetree+bounces-106780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8518098BB34
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:33:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B0971F22FD1
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBBC1C462A;
	Tue,  1 Oct 2024 11:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bvYea0iX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3811C461F
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782300; cv=none; b=cBTAhsp2wvbKdQJcJbGOYcvP+avLiygM8frkaqXG4LjprJ7VsiA+vgqPq1WqifSFCOdnDi+3aYBBgjOIaz/xV2lioBTgEq2KSUIlIIamFyVSLOs4RWeAZEKfeT5yo9SEB039qjnNMukKfP9OC6Z90N0fDvzgLyoXtxR4t7KWvU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782300; c=relaxed/simple;
	bh=ncaWv5MvjPC1QpMqdPg7gTy452mZzJoZ6cXt6xZrLQY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EADDueBXEVauB0rE5bgfPLSUdGobnd8CGoLa4ntBw++RL5qjpfghERzKYY8zIhYgLhI+osNpTD+QEhFpp+fszdiwpoBpDR85umZJMCplQLx4ZcmyGIzuM0K1gBLODEgczUJhlp1goMhi5GEX0sFeD9RRg+C/5E8Xw9Y/DAQi8L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bvYea0iX; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71b20ffd809so3998951b3a.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727782298; x=1728387098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8fXwFowiSq282GBggx76buGJQF3HVDXJm077wJTisA=;
        b=bvYea0iXS/pJMcGl63fBHVlSO/hv8A1EjyJshG/WdeNRFpr3n0F9/4HYb9Srwb1aDW
         9258fHLl0GirO1/o4JxJNf6pS1P749Jd2U3X0TNWtvxjpcCtQEahA9rVzJuH4kKEvgm0
         gBFRvA2TT58W8LMd25iSZxAqwt59lyqwZcMrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727782298; x=1728387098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8fXwFowiSq282GBggx76buGJQF3HVDXJm077wJTisA=;
        b=elc13tQd/cXP6iQyMlBMw+/oakHZqS99qblyXWJG1xnQpCjxXs1VtjBBPTajxG9rYz
         pFen5L46yDlM5V6ttZhtR8qINj3qIPDZm72GJ79eXV8GBlCr6zBfWftxaTHJq7WBXRIy
         lfOzqnQi05XE6b48Og915jvEpiI0mCccclcNlGzc8SY9VsCIxpH+qCf8x705N/LSIdGW
         W2Ua8HBEtmZ7qG1UB3quYsitESmOLvm6XnZkwYiA7pgoWswUFhBD3qhuC1YD7iywzAEI
         vASTy5Gno3h6E9dmiYem6QqX0oa8kI6FTjTlJXyRxeulV3IX/6E8clr4ColqNPfQ+txL
         l8XA==
X-Forwarded-Encrypted: i=1; AJvYcCUmtfyQxPjflmcS+XEefs1zj6G2qUlLKuQOyRsqlKXkIOPT7wjo+xB8JKhktMbuS44OpoZRr4e+uAlO@vger.kernel.org
X-Gm-Message-State: AOJu0YwKxYeWQFreeK8YBhy3/h7evomLn+CVVEFmDwBU0oMcF45ntmUS
	jL8sFskHdnA7CYrheNkG5Fm/eZYNPz3XBY+Ff0y7+r+69+EkFQwIA4LzK5gK6Q==
X-Google-Smtp-Source: AGHT+IH09z3QCZ1p0pTjFjuPslZ4C1g3IxE08k1hiNGnKInQp2WoOjwX15K0+Vnyd5cLS3+99kg5ug==
X-Received: by 2002:a05:6a00:17a9:b0:70d:2fb5:f996 with SMTP id d2e1a72fcca58-71b25f451e7mr23221279b3a.11.1727782298034;
        Tue, 01 Oct 2024 04:31:38 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:e044:f156:126b:d5c6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm7810646b3a.52.2024.10.01.04.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 04:31:37 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 7/8] arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
Date: Tue,  1 Oct 2024 19:27:25 +0800
Message-ID: <20241001113052.3124869-8-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241001113052.3124869-1-fshao@chromium.org>
References: <20241001113052.3124869-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8188 video decoder pipeline has two hardware IP blocks: LAT and
Core, which are powered by vdec0 and vdec1 power domains, respectively.

The hardware design includes a dependency between the vdec0 and vdec1
power domains to ensure that Core is powered down before LAT. Without
correctly describing this dependency in DT, the system will fail to
suspend.

As a comparable reference, MT8192 also uses the LAT + Core decoding
pipeline, and it has the correct power domain dependency defined in DT.

Update vdec1 as a sub-domain of vdec0 in MT8188 DT to reflect the
hardware design. Also, use more specific clock names for both power
domains.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v2:
Revise commit message.

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 790315c1bdb3..ca50ed20fca0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1062,20 +1062,22 @@ power-domain@MT8188_POWER_DOMAIN_VPPSYS1 {
 							#power-domain-cells = <0>;
 						};
 
-						power-domain@MT8188_POWER_DOMAIN_VDEC1 {
-							reg = <MT8188_POWER_DOMAIN_VDEC1>;
-							clocks = <&vdecsys CLK_VDEC2_LARB1>;
-							clock-names = "ss-vdec";
-							mediatek,infracfg = <&infracfg_ao>;
-							#power-domain-cells = <0>;
-						};
-
 						power-domain@MT8188_POWER_DOMAIN_VDEC0 {
 							reg = <MT8188_POWER_DOMAIN_VDEC0>;
 							clocks = <&vdecsys_soc CLK_VDEC1_SOC_LARB1>;
-							clock-names = "ss-vdec";
+							clock-names = "ss-vdec1-soc-l1";
 							mediatek,infracfg = <&infracfg_ao>;
-							#power-domain-cells = <0>;
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#power-domain-cells = <1>;
+
+							power-domain@MT8188_POWER_DOMAIN_VDEC1 {
+								reg = <MT8188_POWER_DOMAIN_VDEC1>;
+								clocks = <&vdecsys CLK_VDEC2_LARB1>;
+								clock-names = "ss-vdec2-l1";
+								mediatek,infracfg = <&infracfg_ao>;
+								#power-domain-cells = <0>;
+							};
 						};
 
 						cam_vcore: power-domain@MT8188_POWER_DOMAIN_CAM_VCORE {
-- 
2.46.1.824.gd892dcdcdd-goog


