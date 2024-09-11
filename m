Return-Path: <devicetree+bounces-101996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A42CC97503A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E3D81F286CA
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF51B199FDB;
	Wed, 11 Sep 2024 10:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hhFsnYww"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597541993AF
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051940; cv=none; b=RFkmWJBT1XS+5MZjJmL6UrSWJJlTQGHa44l9Phe/TYbdvYboiKNb8Vvx2f1ilq5qzJK6ssS2YwX910agZ/UPWknBhPP1zPYKzboy+anUkh971VQaVYiaGmVEEOBXLohuRo6UmyK5/uONkC+mH/3l7JO9d0anP4EsC60A9JQj+Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051940; c=relaxed/simple;
	bh=KcJWLcKYuSgI36pSaOyN401+9/udRKSn12pXVUl24K0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kYrDttF3L8D0Wk4tXkFnAL2VOFg9NhDhorBIh/QIhkOhSKwTtaKxoizCa133cZOyl52wS81BrwDM7nqyQuVO4DL3r6k0uEZRmq4l7OG6wCxlg76ktd+BERtk3iXHVrPIG/mKByMIE/BX8L0GEXKDqEzq2Ce0c+v8rVbfsyfzDpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hhFsnYww; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-718f4fd89e5so1709001b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051939; x=1726656739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3HQV01fo8Eazmoun9faxS0xRrGLPbJrswKSNOP5sQk0=;
        b=hhFsnYwwGyr0rcUCPcDu7okifnlAB19SPyKQIbQFXweK348k+uuc/TKGo+ux9UQfB7
         RfEH3+jzXxX1VL34UWeBstCRRg12wv8AgMxz18yRN+ny4RSZVWxVedC/NoPW4eEreq6t
         ahhoCNo31/HLu/qoEzLiPdTru+a9diDVrLofk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051939; x=1726656739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3HQV01fo8Eazmoun9faxS0xRrGLPbJrswKSNOP5sQk0=;
        b=Xdrgovi+Bi3bY/d+ZFD1oNztexxHLi9+kbRcAV59lZTE0XUE24RD+R4T7fQCsry8HW
         cVV789s/XjsJJYSAqmjq06r+OLFBH8qpYFoyaf69wCE8lWCEDWlVZ7dFwLOvPAbbM0Qe
         zKfo68M3EwDuub6bbQRGMWOIEnDxhfpUyWt83aoPzWZKtEdTzlv1E46SF8FS8Gq7ncz7
         JKFJyKyvkTicKwBCyz2+OjdBX0JU1RvAPOj2NEdklTdqKH1wYn6Dn3AlS9/F21QbXGvA
         zl0D6PskC/m4J+MevHB7ld89WDoR6Zve89tc7HEDb2sg/p7BLzt7Mb4O5jyQH/WzaWA6
         vjdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBjWv1UwHlDufO0iUlgw9UcbqDecZk7KRkDOqlgM6aWxv7Pr69iecMkZmPecGot+G7jnfUxH6cDJBj@vger.kernel.org
X-Gm-Message-State: AOJu0YyzUavK4agG2mIFaaxTY6zOQFfHZNeMWlhT1KlEHGsAxTb+MtXR
	F6l5ijOPqNPIAymcINuvIT92su4+73suZS/Q7meOtHqNrkqBLu1UIA/UBDBtCA==
X-Google-Smtp-Source: AGHT+IGpIHc7bP/F9Qr9SpWnaJJbLZcEiPMmrVxSgqEtW06qM8RmvMPVCseAMDYizvq7I6rvYfbmIQ==
X-Received: by 2002:a05:6a20:c703:b0:1cf:2357:df1a with SMTP id adf61e73a8af0-1cf62c8d808mr4373257637.10.1726051938654;
        Wed, 11 Sep 2024 03:52:18 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:18 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 6/8] arm64: dts: mediatek: mt8188: Add SPMI support for PMIC control
Date: Wed, 11 Sep 2024 18:51:11 +0800
Message-ID: <20240911105131.4094027-7-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPMI node for PMIC control on MT8188 SoC.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 61530f8c5599..32e5b7108f6a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1306,6 +1306,18 @@ pwrap: pwrap@10024000 {
 			clock-names = "spi", "wrap";
 		};
 
+		spmi: spmi@10027000 {
+			compatible = "mediatek,mt8188-spmi", "mediatek,mt8195-spmi";
+			reg = <0 0x10027000 0 0x000e00>, <0 0x10029000 0 0x000100>;
+			reg-names = "pmif", "spmimst";
+			assigned-clocks = <&topckgen CLK_TOP_SPMI_M_MST>;
+			assigned-clock-parents = <&topckgen CLK_TOP_ULPOSC1_D10>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_PMIC_AP>,
+				 <&infracfg_ao CLK_INFRA_AO_PMIC_TMR>,
+				 <&topckgen CLK_TOP_SPMI_M_MST>;
+			clock-names = "pmif_sys_ck", "pmif_tmr_ck", "spmimst_clk_mux";
+		};
+
 		infra_iommu: iommu@10315000 {
 			compatible = "mediatek,mt8188-iommu-infra";
 			reg = <0 0x10315000 0 0x1000>;
-- 
2.46.0.598.g6f2099f65c-goog


