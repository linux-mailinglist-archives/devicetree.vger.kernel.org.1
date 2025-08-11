Return-Path: <devicetree+bounces-203468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE812B21818
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 00:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18BBF1A223F2
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 22:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04E72E5400;
	Mon, 11 Aug 2025 22:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MoVJWFI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED792D8DD0
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754950637; cv=none; b=CuTAEXxjsvS9I89R6Gtb5feh+4OKxS01RHlAX3kUQwTR+3roNNDiBrxQJ1oW6HfToVipELv0XZmyS8q9ZTPVBaF0Z0tItYdBEdFx2XzpYjyuUHNrgrpbvvpH8rILoS67uTLZHRS+9GCFHk/H6YZCLd6VumhHbeQIf4J8+vjxylc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754950637; c=relaxed/simple;
	bh=6zMbsQeemaLT9qsDKon3L3xPV4wlTm/uDmufkhqLnVY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=SXzP4+Okbe/lmT+cQzNBuJSn/dB8tu0SMi7LShMkuhCwcMp6RNdNjp/wjn6Qh7/y/tOOPf2n+6VRKZ+DvScVeT/lme6scpWSwSWcIz/G3jFeyUJK646J9QyXyRmeJyKIq6aHcdQG7V7VMMrIXWGd5b81ezfVYxpDalvGPxr7Abw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MoVJWFI6; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-30c036641f2so4040908fac.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754950633; x=1755555433; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xNjy4x9oFNeCSMPDvjvsMqdoAFBJssytJuYnj0zLwq8=;
        b=MoVJWFI6IWfPoRMAbLUeAap+YdCPVPWnM5TuFnNwoFCRikUnYS7vzG+g/QpXEOIxtl
         zh2K/ejltXfx4jTYBI06+uoux8EqUN/nuK4SHJBSsElvBEnhwoy+QVtLGIWhVGJZA7H+
         ez+tPtBNhEJpOdXh2YoeRpCP5mfno0Y/XsQCLqRz5QwDBd6hCL3TjIj7XO7PMIZ+9Pqg
         5FWxq+IVhGPhS+Umvnwrs3dNNT0OEqTnbikFecql68nirGl0UeaubFfQQt5LNLw1SM2k
         eCm8+WfHVOHInQd46hGkg+RMAQ2kZPPviFm4PRN0Tj5NWAg2qx6+xC1bceJgCsh6AKP5
         V1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754950633; x=1755555433;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xNjy4x9oFNeCSMPDvjvsMqdoAFBJssytJuYnj0zLwq8=;
        b=LgZwkW6LACc7fb2zUXYZcZsaxCPit+6aCdgEC5ZgXilVFHdNLGyfOGO1C+cISKDEo7
         xJK8QDU7vw2QKOENnHkE7kK/U+mwgSkqS28TmJSxh+jtCO9yzO1XXaSaEqhJk0U1RBoS
         CampKkeXvDPYOD56/9gNACKEdbJGX6iG6W8RluopQr0b0U5AFQsNLJeuAsS1bROTPm+3
         wnUIDC6w0+6XDoPhE3ypZrtJPE2hFLNRZ0TCfhgeYcPl0g7mA6PLXT7jVfTBjrx+paaS
         DqIJHjXWcppViyiL67Mk+3OEAlOdXxse7w+MiBGfbgD5wchGAxzpvwtQlMRDd8Y8FfSK
         K7xQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9FoBojBS8cVCzQqbJ0reIFr5yFc35dYCDPXpj269mjUsMEm+SnMtdwZf4lNrG/fGJCncoG07BKva2@vger.kernel.org
X-Gm-Message-State: AOJu0YydZsOAGRgDWh1F+BW7DOpXgXztyEj5xblY/k/g6yZdT+ZsnfyY
	Y7VSA/0iepVY1jzTvhEV2Y6u04w6OuJMrciek9qzUdDUU4t/+0Zembkx7TnWzSRO2tE=
X-Gm-Gg: ASbGncsA0M/NKWE/rZfy+RohSFH1XWURelaenKPjBIehFAMj+MhSvehJvoSE7qK/c01
	uUjC/UxqFFIW+TMLxcckNlWeM24gIn4B5t1P4DPcoFNSeUQpg9D7vYo0Wt67WIgNaqOnm5JF0//
	Zm1qMtJAsAmwGFiKJuklJTDXfRoERyvAvhqNhdCgrUeMeMLbN/RK2RLNQLi0HiPOM5IRRTAj7Le
	xghIgHV77ug808v3T16jDo0cyUQK+Z278LX13S/K2Y4Zho3MlnWvebzeDZR5h2c8s/xh+2Z8Uhj
	ghl5lvEJ3d6qHPCc2ZMGISkhdxZjaKCxKg4NGYRugbPYJjTv16HRjGfHaYtTq9YCPvDAqSSqFxw
	9QrVHLvbYGQppPvDSAKtzhuOGb6y/
X-Google-Smtp-Source: AGHT+IGfPiRvZKy6rxD4u9Cif9ZJqjUmLXidFEtaaqAJKIjiQ75nNSgQ5MRUryvHD4v6+OcsVx68HA==
X-Received: by 2002:a05:6870:700c:b0:2d4:e8fd:7ffb with SMTP id 586e51a60fabf-30c94e8080fmr798012fac.1.1754950632887;
        Mon, 11 Aug 2025 15:17:12 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4a4f:fe55:51b4:b5ba])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c8cc3b8a9sm475177fac.19.2025.08.11.15.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 15:17:11 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 11 Aug 2025 17:17:01 -0500
Subject: [PATCH] dt-bindings: clock: adi,axi-clkgen: add clock-output-names
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-dt-bindings-clk-axi-clkgen-add-clock-output-names-property-v1-1-f02727736aa7@baylibre.com>
X-B4-Tracking: v=1; b=H4sIANxrmmgC/x2NQQqDMBAAvyJ77oJRC+JXSg8x2aSLdhOSKBbx7
 017mpnTnJApMWWYmhMS7Zw5SA11a8C8tHhCtrWha7t7OyqFtuDMYll8RrMuqA/+0ZOgtrZqMAu
 GrcStoOg3ZYwpRErlg25QvenJjbMboA5iIsfHf/54XtcXikBLnYwAAAA=
X-Change-ID: 20250811-dt-bindings-clk-axi-clkgen-add-clock-output-names-property-f413c3ef8bf4
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1351; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=6zMbsQeemaLT9qsDKon3L3xPV4wlTm/uDmufkhqLnVY=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBommvguy/LPYy0gdbX3Hcqe+qgkhBDoIbu0U6Po
 vM2msDB/EuJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaJpr4AAKCRDCzCAB/wGP
 wD8qB/9Y81s4hgteVENjJBEJVhH0/XRGa4C4OPOfAhy/rC2BXj5E1ae1MH27tHk2L5OrlyGm0FG
 Cyg83PMwCHuE3QmpOZBAw28shznI5C+GGS0SjIGefq+AefIYqjYBD/rUCbCo/sFmTdIoB+L9YnV
 Sy2Rdh7Ti1HdYRQBinkvnykThfWJ2JRqgBfxa8MBk/43iZl9OocMmEgzea1Q9Yny7v13h1AYwxn
 1NhbR7ZJl0Fcw6lbaRH+D3X7uk7ObYYMHSd0VJnie6ceFPZS5DEguqDMqoqqaonHsS0Nn/IwEC/
 kCvW6vuRA8ma6gYJnRZ1Mjo0YVTymyhXHTifS0ocBq+hyYgb
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add an optional `clock-output-names` property to the ADI AXI Clock
Generator binding. This is already being used in the Linux driver and
real-world dtbs, so we should document it to allow for correct binding
validation.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/clock/adi,axi-clkgen.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/adi,axi-clkgen.yaml b/Documentation/devicetree/bindings/clock/adi,axi-clkgen.yaml
index 2b2041818a0a44456ee986fe29d32346f68835f3..6eea1a41150a7c90153cffcfb5b4862c243b4e0f 100644
--- a/Documentation/devicetree/bindings/clock/adi,axi-clkgen.yaml
+++ b/Documentation/devicetree/bindings/clock/adi,axi-clkgen.yaml
@@ -42,6 +42,9 @@ properties:
           - const: clkin2
           - const: s_axi_aclk
 
+  clock-output-names:
+    maxItems: 1
+
   '#clock-cells':
     const: 0
 
@@ -65,4 +68,5 @@ examples:
       reg = <0xff000000 0x1000>;
       clocks = <&osc 1>, <&clkc 15>;
       clock-names = "clkin1", "s_axi_aclk";
+      clock-output-names = "spi_sclk";
     };

---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250811-dt-bindings-clk-axi-clkgen-add-clock-output-names-property-f413c3ef8bf4

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


