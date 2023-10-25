Return-Path: <devicetree+bounces-11805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F507D6A9D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:58:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1D171C20C3D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCB82771F;
	Wed, 25 Oct 2023 11:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LEl6/AS0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF211732
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:58:10 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A57B212A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:58:08 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-32d9b507b00so4023307f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698235087; x=1698839887; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vlx3leb/fOf20/ZSnP3M1ZG19ZufnWTKKnKwmqMVlX8=;
        b=LEl6/AS0JmSlxo0OHTSaBJsqTJZtqVBAFWFfYnDU07bsqt8j7/qybqKmkCuCWJ6aZO
         s3ZAfbGig3PJhpGAhCqn7lO3es/AH335E6ZUXdnqhD6owprSni32IqSb6/4iL6xW8k9T
         c3q3WtG7EYgRBCqcIGdxZbp076iwwDTSLhTsUg/oKrsYcdZpq0K3lUB5qSPQYkNIAK+P
         EPuFJDg4eQY3+jHOLkQr4SLdRpYPDxQFPvzbEkEK9/0ec/U/0HRq4NonO+hvtH+A+q+l
         mOlDqt/eWZPleiT/H7V15r4R13AXZBdQEg98jxVadzap6pxb60J7bMdZqMqrvYPM6ABg
         CDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698235087; x=1698839887;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vlx3leb/fOf20/ZSnP3M1ZG19ZufnWTKKnKwmqMVlX8=;
        b=lQUSQH6dVx/VyOafU+8uEguueCiQXC3RoLWZudvf9Ny1E3J62hZeFJ5/7WEefSRrdY
         fyvhU1Hroe6pqrbQp2Cbd9FfXIfpKvc94hwqoKxQ0ZVWXt0x8TpfSUcixmF6ARa15Fav
         rboXSv9ofw7U5RNpwWw3hs0mjqRnyjxNGP22D06YSTxJkxtfBpuJoHBrfV8U5+phlz3X
         eQFTo6oQkW8xYY31QTgx9QE3lcSJKaRPXHjIAH7s3soW1r+TXfH8oVhko1ViwRrxpgdX
         NBwvndk6MitUnkPYhlXngoOjQb+BtTX3XiiMez9znTB4iTT6C04keKyWDHT790gaA9bx
         bNag==
X-Gm-Message-State: AOJu0YxnVrI4SwaCSxV/BTUinT28XMFjyPK3KJQ+nUkFUNNb9kS18sPj
	GKM8md6lS961F9CUuMNLgmLwog==
X-Google-Smtp-Source: AGHT+IG7RVzaj46OeaDK9gTP9047Bg8RMN0rUXMPc1LISeImHQ/gzRuxX3o/OgsmlbtdMindsmeqrg==
X-Received: by 2002:adf:cd0e:0:b0:32d:87df:6dea with SMTP id w14-20020adfcd0e000000b0032d87df6deamr11891398wrm.45.1698235087143;
        Wed, 25 Oct 2023 04:58:07 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id o6-20020a5d62c6000000b0032196c508e3sm11871721wrv.53.2023.10.25.04.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 04:58:06 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Wed, 25 Oct 2023 12:58:00 +0100
Subject: [PATCH] arm64: dts: qcom: qrb2210-rb1: use USB host mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMcCOWUC/x2NSQrDMAwAvxJ0rsB2un+l9GC5Si0ITpGaEgj5e
 0SPMzDMCsYqbHDvVlD+icnUHOKhg1JzezPKyxlSSH0M6YR0RKWIsxHWyb54vRTuOQ35Fs7gFWV
 jJM2tVO/aPI4uP8qDLP/N47ltOy0drnx2AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=1061;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=zoiKtVHzLvhnPvwaM89PsmhcLzPbNHQwQeEPbjW6REA=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlRLprOFHvlrMkuzj2fuX7BFr1MlO0p+jVd19/zbRq0vS
 suMV+7tKGVhEORgkBVTZBE/scyyae1le43tCy7AzGFlAhnCwMUpABOZ2MHI0NrtYRp04OKlg1vn
 tZjNffnye4fshxuTdrae8HGU36au1cPwT4U9X9dX2D7opMFKu40z9O9e6993S9i6T6SmzdDed4J
 5MwA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

The default for the QCM2290 platform that this board is based on is OTG
mode, however the role detection logic is not hooked up for this board
and the dwc3 driver is configured to not allow role switching from
userspace.

Force this board to host mode as this is the preferred usecase until we
get role switching hooked up.

Fixes: e18771961336 ("arm64: dts: qcom: Add initial QTI RB1 device tree")
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
base-commit: 05d3ef8bba77c1b5f98d941d8b2d4aeab8118ef1

// Caleb (they/them)
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index eadba066972e..f1961a07c9a3 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -366,6 +366,10 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3 {
+	dr_mode = "host";
+};
+
 &usb_hsphy {
 	vdd-supply = <&pm2250_l12>;
 	vdda-pll-supply = <&pm2250_l13>;


