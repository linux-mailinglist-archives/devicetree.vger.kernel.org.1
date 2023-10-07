Return-Path: <devicetree+bounces-6705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 367AE7BC821
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 16:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67A4A1C20959
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC142771D;
	Sat,  7 Oct 2023 14:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q5KjAzAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7217F9E7
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 14:01:09 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2038CBD;
	Sat,  7 Oct 2023 07:01:08 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-406618d0991so27705535e9.2;
        Sat, 07 Oct 2023 07:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687266; x=1697292066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zT+UyLNrtTIL3bbAzaCCFygmUaFXv4MJR29ziVQ6mVY=;
        b=Q5KjAzAQ2fO5ShChwVJ00wTPbYwiXKvWUfenBqzXC9qhViZ5XLkuW//ESCj2zromGP
         oHWRL26LGrEOr5TkOjhfFwDR4v2umfN65jgHmSPrHbDq1QliIVUYIfk1szJXXine0KEU
         RVVdHjnbItduk03sGEz8RV8TpDU5y9E5s9prvXbe1xs6+saA/KMbfTcSWpRDMTJT04K4
         N0ND90inyxAqdJIAqVpli5BNSe26p8gouawhwRufBpn+Krqny0R82/6gZrxK7fmeXwFI
         Vt6zLkTifBiMzTcEhvxNUbzy46DJ8QX91PpwTmH+XGTW6RIylwe6OSm3TE3n39AR7U/s
         BFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687266; x=1697292066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zT+UyLNrtTIL3bbAzaCCFygmUaFXv4MJR29ziVQ6mVY=;
        b=xDrqQ5S8aqmQ+AS7+YpwkMt7Ps49BgMqnTaQBWXxzm1TisNAnWRES1gPoz1cO2B/aQ
         lK3GxUt6oFadh8SkjQAZnYWGT3RgasGtvsDCWr5vBxLhI63lNt/lFBvMfSJb9aNpDICh
         F1BmZ8hCb7lFv6A+6pK+xS/Rei6dof4THCApaWCfO5B3dHOAluO9vz9WCuDdf2N9X8l/
         PdJn1CLoyZO0sAr8s4oqgnGkyJuqhBG7ecTjEHFB8t3echVOYOc8AoY9BYJ9gueZOelH
         tkWkqObosYJwcKOh4CHUJJmDNHIXmsr2gUmlVBkgVzRMrDHHxJ694+LrgDZaP+sl1G6/
         C6+A==
X-Gm-Message-State: AOJu0YyuiiNlTao/OBfV3hcqB1vg99842w4o/yW7wmr6HCYTVgW+yONW
	/xyS4GoeQSB4+s7tAaFrSiY=
X-Google-Smtp-Source: AGHT+IFTgNG+SUnfvuJjpfF+KF0NxkqiuO3cNvZJSlX7bz+MSzTjE1SvIxxxorryKRkkwFDP+e8pOw==
X-Received: by 2002:a05:600c:22c6:b0:404:7659:ba39 with SMTP id 6-20020a05600c22c600b004047659ba39mr10352242wmg.16.1696687266411;
        Sat, 07 Oct 2023 07:01:06 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:04 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 6/7] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Date: Sat,  7 Oct 2023 15:58:30 +0200
Message-ID: <20231007140053.1731245-7-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable the UFS found on the SM7125 Xiaomi smartphones.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
index e55cd83c19b8..22ad8a25217e 100644
--- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
@@ -398,6 +398,22 @@ sd-cd-pins {
 	};
 };
 
+&ufs_mem_hc {
+	vcc-supply = <&vreg_l19a_3p0>;
+	vcc-max-microamp = <600000>;
+	vccq2-supply = <&vreg_l12a_1p8>;
+	vccq2-max-microamp = <600000>;
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a_0p88>;
+	vdda-pll-supply = <&vreg_l3c_1p23>;
+	vdda-phy-max-microamp = <62900>;
+	vdda-pll-max-microamp = <18300>;
+	status = "okay";
+};
+
 &usb_1 {
 	qcom,select-utmi-as-pipe-clk;
 	status = "okay";
-- 
2.42.0


