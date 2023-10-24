Return-Path: <devicetree+bounces-11356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDB97D56CC
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D372AB20FB9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B70437CBB;
	Tue, 24 Oct 2023 15:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J3Lo9DcZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D6A37164
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:44:01 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF2CABA;
	Tue, 24 Oct 2023 08:43:59 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507bd64814fso6732231e87.1;
        Tue, 24 Oct 2023 08:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698162238; x=1698767038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gRQ3eaBzR9jPgqcO4EW2/3ELFHI0veMtRW8DtdUdBQ=;
        b=J3Lo9DcZdVNT/nh4Gd/TBbUKk/uyuH6C1ahcspBwv0g1ho3KVYGNQowIQidSU8POev
         QBxO1Ykq/q4+pqI1GIUGIoLPXZo8Qh0KDBZX7IHGJSmvIKW/3HhCC2r7s69G+wz7qNkE
         Cj8XYyBtsSAu0wHNFAXhl89aRRa27z6j32D5CZWb7Xox4P+0Eu3AGT2q0cK136Ikkxqm
         5I2c7xZKBkI6XHilET+6eIKtFpRO2MWwyq4WgQr6kUn5oIt5lNZx1edbL3ZYrDqeU924
         ow2XxVi2KRbYCgDNlhqwgooMqXJfSzeEwUmiRaZ/TgMZYCuxGe287dm1Oo4JnY4dXLgg
         mfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698162238; x=1698767038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+gRQ3eaBzR9jPgqcO4EW2/3ELFHI0veMtRW8DtdUdBQ=;
        b=Lwueqk4vMGp3yAxczxnNqh3vt1cNvp+1ymckuXr635iuCZ/VtMf+3cWZCqvpzF6dn9
         MrfQJsAaJ+kid7YsuqIcQz2LXXKaj81Zg7Cm/1sBe67rVNgh6eN4Slz5tjwRrmppbcfX
         WBBQ+Vz7VAyTUL2y/UFLpAtu6MSvdQZwTBFTn8QIE05pmchARbcVL68Lh7M97dDPrtPG
         JK9ZCupsnLy/JfU74EWJcSz4aCayOXCxMfUroyK+TW2A42fINOWPYX35n8MqDr9oW2gU
         hDHPLUDT67CY1usAvHgu6X3ljuVjXgImDCiHCJ8PTHkPO5OhnVtnyHd2aL55Jnr/Dzna
         YaJA==
X-Gm-Message-State: AOJu0Ywv3PnKyt6dXckrgRIM0yEHfgYb99vO9If+4DclKLeSQPFBoC6u
	emISnNuDCcFwOUyoSdEVv7s=
X-Google-Smtp-Source: AGHT+IGrHmxLcWj0LzMCjg20n5VMnPSxGVGwB3cP3JHM9EjwwlCi0kFVrF8WgOfs7KbGjB5QBvjwkg==
X-Received: by 2002:a05:6512:ba9:b0:503:19d8:8dc3 with SMTP id b41-20020a0565120ba900b0050319d88dc3mr10212201lfv.31.1698162237800;
        Tue, 24 Oct 2023 08:43:57 -0700 (PDT)
Received: from debian.lan ([37.45.216.172])
        by smtp.googlemail.com with ESMTPSA id m1-20020ac24ac1000000b0050810b02cffsm102420lfp.22.2023.10.24.08.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:43:57 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
To: 
Cc: Dzmitry Sankouski <dsankouski@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: qcom: starqltechn: remove wifi
Date: Tue, 24 Oct 2023 18:43:35 +0300
Message-Id: <20231024154338.407191-4-dsankouski@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231024154338.407191-1-dsankouski@gmail.com>
References: <20231024154338.407191-1-dsankouski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Starqltechn has broadcom chip for wifi, so sdm845 wifi part
can be disabled.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org

---

Changes in v2:
- none

 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index d37a433130b9..6fc30fd1262b 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -418,14 +418,6 @@ &usb_1_qmpphy {
 	status = "okay";
 };
 
-&wifi {
-	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
-	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
-	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
-	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
-	status = "okay";
-};
-
 &tlmm {
 	gpio-reserved-ranges = <0 4>, <27 4>, <81 4>, <85 4>;
 
-- 
2.30.2


