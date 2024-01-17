Return-Path: <devicetree+bounces-32805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22493830A97
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B53B028A683
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 16:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DED7250E1;
	Wed, 17 Jan 2024 16:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="AGM2kIWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF9724A18
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 16:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705507721; cv=none; b=GEHJqNACzw3PXOQIxENkvyJnRh5XClBag8jXcRo5JeP8G2V61DEvX3UMVRQRzaIc5Bp1uN8DJkIIBRfAst+gohYgEokvTlymxASZyE0eSKKNewgxQlmtF1NkDDxUY8jDG2KbUVO8YGLwcR94x2BEde0sGYyTlppQ88CnrQacZaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705507721; c=relaxed/simple;
	bh=RmzggMuqX9S2sYKlWB5CTnSQ2ymEjp/UGoryY82oivE=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding; b=kMW6PXyQBZsKgwL3oKEgxK/1zajnov4OAgcyNXeNZZ8kesSJqCrB1/PRVJBtXyYjWImciCH2SEjhh4E4XlqtGSb17y8VsfppEkrkyfGoz0hgo8qizDbAL41pW3+3hI3n0AmbHicAG3wwXBWP08M0N8AvLrVvFS6WEtwtJJixRO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=AGM2kIWV; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-33694bf8835so8504345f8f.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 08:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705507718; x=1706112518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFu9yLDki9n8hZLDYiMoEZqERou6Z5NMTUbYakLpe9U=;
        b=AGM2kIWV9zkOgZm5YdSDtl353IyCrexsWyLpNaXizZKE1vpFt97Qfc4DrQRl9hU1Wd
         mgAKFdFP+XNpCd3yO/9zCnMhGtFd1W6LpYv74cpZt69+8gkYyytY4opyZwKakh1StNJI
         BzC54uf2s/M5c4GpDss8XRaJWGVHf9sWRUzo+bGB77SXHsSmarFarYVs0mRIbo3eXcO2
         Hd7SFbeoWvCTrqocktxS3WJnwXnH+URCh/zDs2U+Y496tg9Xwn8UDMZhryoCx34WUG7h
         gSPjFe/yzFdihgETy1lqiRFeajWvRATHNZ3hFLklSG/n0iG16kPaRhO4ffS5N3noL4YN
         rI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705507718; x=1706112518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFu9yLDki9n8hZLDYiMoEZqERou6Z5NMTUbYakLpe9U=;
        b=UVuscF2PXLyU0YVH3rsFOITwVZwwKMDUngxM04w03XkmzHVx6heECsiHkH9ZNXtGI1
         FrKz2umEAFxeNOA/RwIhMp0MgI1LyndXYMUGYCS7JTf76A5oRCAVu/GqVVBjlu04g5JV
         vqc6WWk3aWkW05LFBYU73XRN+Ens4xNoXZMaBh/Fmn3Fiutx6uTwEty/31yZ0RMfiTY6
         rqPi25YEZZZCtBZrCsqjGuuPUtq2XFmy8vTZIwaURfncZOu6RhE5zmft5dk3y1KQf2kh
         nPHPzjOm3vUzPWKAlT1Ak+JmL6GrHNlelHtasY/aCqueJ9rsETFTd5Ss2mcJm7rRW7Jy
         uFQA==
X-Gm-Message-State: AOJu0YwHdsQbkpScvxnJtG0L9w1kHgE/+Rfyv+EC75UrH4H2wpc0Dlw5
	j46Z9DDPNXW9SoEV/9TyjTFKMKA5bWdvUQ==
X-Google-Smtp-Source: AGHT+IEmgi0LRLiPs2g64YkCGg5BMB/9EVVczXYVKQC5N4pf2ch45rIJoaEV0jPaB90LK0yrggei2g==
X-Received: by 2002:a05:6000:1445:b0:337:c4d5:ce70 with SMTP id v5-20020a056000144500b00337c4d5ce70mr662501wrx.137.1705507717858;
        Wed, 17 Jan 2024 08:08:37 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d0b5:43ec:48:baad])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d6a4a000000b00337b0374a3dsm1972092wrw.57.2024.01.17.08.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 08:08:37 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Peng Fan <peng.fan@nxp.com>,
	Robert Richter <rrichter@amd.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Terry Bowman <terry.bowman@amd.com>,
	Lukas Wunner <lukas@wunner.de>,
	Huacai Chen <chenhuacai@kernel.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 7/9] dt-bindings: wireless: ath11k: describe QCA6390
Date: Wed, 17 Jan 2024 17:07:46 +0100
Message-Id: <20240117160748.37682-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240117160748.37682-1-brgl@bgdev.pl>
References: <20240117160748.37682-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the ath11k variant present on the QCA6390 module.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../net/wireless/qcom,ath11k-pci.yaml         | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index 817f02a8b481..c8ec9d313d93 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -16,6 +16,7 @@ description: |
 properties:
   compatible:
     enum:
+      - pci17cb,1101  # QCA6390
       - pci17cb,1103  # WCN6855
 
   reg:
@@ -27,10 +28,57 @@ properties:
       string to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
 
+  enable-gpios:
+    description: GPIO line enabling the ATH11K module when asserted.
+    maxItems: 1
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddpmu-supply:
+    description: VDD_PMU supply regulator handle
+
+  vddpcie1-supply:
+    description: VDD_PCIE1 supply regulator handle
+
+  vddpcie2-supply:
+    description: VDD_PCIE2 supply regulator handle
+
+  vddrfa1-supply:
+    description: VDD_RFA1 supply regulator handle
+
+  vddrfa2-supply:
+    description: VDD_RFA2 supply regulator handle
+
+  vddrfa3-supply:
+    description: VDD_RFA3 supply regulator handle
+
 required:
   - compatible
   - reg
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - pci17cb,1103
+    then:
+      properties:
+        enable-gpios: false
+        vddio-supply: false
+        vddaon-supply: false
+        vddpmu-supply: false
+        vddrfa1-supply: false
+        vddrfa2-supply: false
+        vddrfa3-supply: false
+        vddpcie1-supply: false
+        vddpcie2-supply: false
+
 additionalProperties: false
 
 examples:
-- 
2.40.1


