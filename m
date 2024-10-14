Return-Path: <devicetree+bounces-111134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4889899D5E6
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:54:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9FC11F2297A
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FFE21C830B;
	Mon, 14 Oct 2024 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="EPAeG+FT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886571C75F3
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928473; cv=none; b=G/zBMp/9oeceLboZaQEgEKdXrrMD9BBOvRMAnP90JWgURXzZh0ouNpWMFeNggnsKPGwMj+66lYQKwxr59XN+ySOrAf9LXCB9l1xxVMVDJpE+rWkcJYUfGBo0tMjkHDFLi+Q143GtZmcLD579CauJ/Y8T5VJ3+2Ybah9G/0GTCBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928473; c=relaxed/simple;
	bh=tX9i8bUVFpU221q6qYn+PKknA1u6++PMT+8EeGnRmx0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DZ6IDaxkLik0hyTI3r/pcK1qChWb7ozqIwln18HZBiqqF/F63qRxxsBXxSGpnLD8apn9yiVyHLTnNqy/gLIumltk9pCCTADFUxR/JvodPBRza81Bkq/9DADAucp+LOEtNprcYChuM6HHQRGXD98gP5aqsQQRabaWhryzd6E1EeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=EPAeG+FT; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7ae3d7222d4so3744831a12.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928471; x=1729533271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R+7+aI2goYVETl1ESrIWHcJXGhurCjTtQoKSWjYidEU=;
        b=EPAeG+FTGIZ/vC31Jnu6U/fC+JwrK5OBsSOCrRrJhp+qSe6nXdykTHAJDOyFk450KV
         fRPjvXspnDI3xq59Bw2BHOeDNZrfn3KQj4DYzaZdzE65MPZPpRzpeMGoaXnYdqfXDTcP
         GosgOJQTfp61cuxtxMgZl1cUR9PGqoFyrRYZ4MLzos6zHwL8EwNXpYZ87HUjaf+64PLm
         EDdMVaBTUWK77gBvzkJmn3nRFpjoOA9SlRBuPROyVYLOCYHy2Zh87hqhfhbbblH21MHG
         nRmF2tcSEnZry+bRpXDAOqIRgbcbOAvzBvxm3bgffOrXHzWz7cQhru4glV8rbXhR4XXe
         S0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928471; x=1729533271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+7+aI2goYVETl1ESrIWHcJXGhurCjTtQoKSWjYidEU=;
        b=rYQANh31cIWqXLPTSFIkAVSmoQJ0aqnRZQaqnw+Vi55buN9Md8W/QCs7g4Pfi3U/jp
         HJqP6vjTTTi1KKBs5A/2fq+SXi2b8XkzKT0S/7VgaXGTEX/yUrNOpbtf1B/G78xDXNmn
         SHv8mgntnWzojXVCSoz6je99ob5NjkLKVtlr6R3fWPFMmgF2623En0HHPYqRnjBQuPtj
         y8S+28LoBgzPev8Pqrx1ksd5h1nl9W1GGYPe1uHEH7psBwDCDwett2196cUUzc3ecmYa
         g+cV5j5TdXkz43Ix+bHlxKOVS2xqvxy0Oiz4L+7q1l/GEiQeIrVP3LtYBbhR8KhpguBI
         Cncg==
X-Forwarded-Encrypted: i=1; AJvYcCX62HlX+0JNAKyJ6MPyEtFLn6XRlKIIlov1zLhzVsZV7BK4A7srWrfNM21iFXRMJ6tklQu8Oa31odJb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdj8ag7ijdK39Iaogj3gweT9+B1tSYdu5Xyev73W+X6JFdadEx
	PgEmcTx39sgHwK9YLEB9MGrXLeXwqhrH7YpuxcXQqj/R9bQ+LNmzL3Vh1Go7Bzc=
X-Google-Smtp-Source: AGHT+IEDEyLAWAXRtlVu5TZl1MBkJtvx2nNHhq3aaLbB9MKtoZHJDovyGpjRpi0gWo50xwyIzVYcQA==
X-Received: by 2002:a05:6a21:a34c:b0:1d2:ea37:95f5 with SMTP id adf61e73a8af0-1d8bcf13272mr17676827637.11.1728928470948;
        Mon, 14 Oct 2024 10:54:30 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:30 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 14 Oct 2024 10:54:19 -0700
Subject: [PATCH 2/8] riscv: dts: thead: Add TH1520 GPIO ranges
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-th1520-pinctrl-dts-v1-2-268592ca786e@tenstorrent.com>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
In-Reply-To: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add gpio-ranges properties to the TH1520 device tree, so user space can
change basic pinconf settings for GPIOs and are not allowed to use pads
already used by other functions.

Adjust number of GPIOs available for the different controllers.

Acked-by: Linus Walleij <linus.walleij@linaro.org>
Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 93c17f52fbe9..9c6cbb4fc3d7 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -335,6 +335,7 @@ portc: gpio-controller@0 {
 				gpio-controller;
 				#gpio-cells = <2>;
 				ngpios = <32>;
+				gpio-ranges = <&padctrl0_apsys 0 0 32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -353,7 +354,8 @@ portd: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <23>;
+				gpio-ranges = <&padctrl0_apsys 0 32 23>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -380,6 +382,7 @@ porta: gpio-controller@0 {
 				gpio-controller;
 				#gpio-cells = <2>;
 				ngpios = <32>;
+				gpio-ranges = <&padctrl1_apsys 0 0 32>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -398,7 +401,8 @@ portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <31>;
+				gpio-ranges = <&padctrl1_apsys 0 32 31>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -551,7 +555,8 @@ porte: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <16>;
+				gpio-ranges = <&padctrl_aosys 0 9 16>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -576,7 +581,8 @@ portf: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				ngpios = <32>;
+				ngpios = <23>;
+				gpio-ranges = <&padctrl_aosys 0 25 22>, <&padctrl_aosys 22 7 1>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;

-- 
2.34.1


