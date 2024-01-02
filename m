Return-Path: <devicetree+bounces-29276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 716EA822318
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7688B2275B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4F318632;
	Tue,  2 Jan 2024 21:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FRVfJom6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989CD18E1B
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7ba9c26e14aso223807739f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229739; x=1704834539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRoMMnuwwy1ybNYQkYoJT5CIAhjtnaw7FKUhRhlzX2I=;
        b=FRVfJom6hMAFayRvvyslNUklQnuLd0ysUghLiqfhR6iLGS1kGoXbYm6H9qGTU8wu6P
         XfpobjuNTGE9PZlaiRo72OJoWH8vPqtqoTDC69Ld3yX3qpIlH2h/CZ2SfvcrfIrrQ08E
         L/fRdPj+tw6Xlqa4PVQvC5kDXGmfh66BqgmGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229739; x=1704834539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRoMMnuwwy1ybNYQkYoJT5CIAhjtnaw7FKUhRhlzX2I=;
        b=XeCSKCqk6TdEPxT8dCXZlDj+OShiigCyryoLBUmMrTyNQ3RYpfpQKqV9PvzSK/0+BO
         ygKGja4qrcibj1a/ZfmZc/YDhOgJoaG3SKzW7tBD5U75CGOfIotlHlJvjBD22pGlmu0H
         T+VLPRfJeh2JiPOPe2N+5GphPG8AYh5GZnBi2bOY0o6DweJn1YdTGgCsdeEbq2ewFOMk
         olraO9YVV3s+YJK6nBqIg2LR9BCfOVUlKu90tGwcb2JjOxr6vAT/EKCKkh7uTNmNuSos
         XDnsOjsDBJBC4Kmgz6kiIdvi8RxxvFldTcZUIjTla7yRLyc7/rEj8PNQsKn1UMbOEtsi
         nmig==
X-Gm-Message-State: AOJu0YyRRpJJqnPPrhggJMWHa2MBV9otUAveaEo7H/edixNz1UO0aSr8
	FR8uJvsL5+cvMzNLVsu7zrlQcD6QHSxE
X-Google-Smtp-Source: AGHT+IFgjON8QaOIIt26i2gGQ8LaLRzi4hK2OMzadsvli0BLJTN6UjupAQhSNUzvjDASC8Dg4A9IRQ==
X-Received: by 2002:a5d:83c2:0:b0:7bb:b722:63c1 with SMTP id u2-20020a5d83c2000000b007bbb72263c1mr34165ior.16.1704229738882;
        Tue, 02 Jan 2024 13:08:58 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:58 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 17/24] arm64: dts: rockchip: rk3399: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:41 -0700
Message-ID: <20240102140734.v4.17.Ice617703aded22ad4c806459129e1ae693eb57af@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Some Chromebooks use a separate wake pin, while others overload the
interrupt for wake and IO. With the current assumption, spurious wakes
can occur on systems that use a separate wake pin. It is planned to
update the driver to no longer assume that the EC interrupt pin should
be enabled for wake.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to signify to the driver that they should still be a valid wakeup
source.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v3)

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88ba..b5734e056aef1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -603,6 +603,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_l>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


