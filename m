Return-Path: <devicetree+bounces-15742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F087EB83D
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C93231C20B34
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 21:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223022FC3F;
	Tue, 14 Nov 2023 21:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jGBEHMjc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09DB2FC29
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 21:08:16 +0000 (UTC)
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2022D8
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:13 -0800 (PST)
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-41e58a33ec9so36626071cf.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699996093; x=1700600893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=jGBEHMjcngPDalZgEFu5dhH6ywSlM3QaUFXKpAzLha69wAP07JF+Pl7BBsdKs67cm6
         5H+FN4ZrMMglDLU2wNZzJh/sTa6MRh6p338yl2naww/RhrMuP6s6l97qGT6omah7u+iY
         qD4UMRPP87UR/S9kO47MqAuBOehFqqVROKuuRQMBGghzDKE3YflSwXaycJwEeBwcOKMh
         l4tSmc1o0oPg3UT1t93x0rtI1vRlq0Dc64TPo14l0i57xgqH1dvP+Ie+RkInGbXloq9t
         BLjPqaeehEyhiofL2jvR8lIsSL9upw3+jd8pUQLrZ68NJ1SAzN2lFvkaV1cD3twI1+CX
         0f9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699996093; x=1700600893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=m3836GBSyibjZQzs1PzT1LwhWIxovAiLKrVYftUz6D0JQbVCWtHNOtnSnZRj4cqWHC
         D7tzLPJhX/uFF4/ZqnDe5du4HqRGUpzbTE8dN6fVoDKOalNSgKvhntU7FKrrqbJ0HTjE
         KRvAJiB0ly3r14LTV4iCffW3Ipsy37loRYVsKToXV1ZYNO54qTJlHPYZocfyWpcsLsJI
         icKKCAgdiBq7mNaao0/lIiwOpWntm6UrAhy3ayFunhW5vb40pUHGi9u/i4XyHLqQjsqX
         JBv3BnwYSJoKGY1z9nJaAoRwZtd/D8hA9r1Qjf8PIKH2eLJXGmyxZUOUxtnDs+MK5YQW
         RSDw==
X-Gm-Message-State: AOJu0YyTc36EW1DPJRMdkQS1EjAaS1OSupsNogHaU7ivMx3S19WBYEok
	+iE+O4hyVKp+9pSUrE4E6kftmA==
X-Google-Smtp-Source: AGHT+IFTxwPK9muJ+tyuUM8rO+hMqktPAV/DENOvHNpAKp/MaM98OFUWj8k2GiuHtP77zLWId26eiQ==
X-Received: by 2002:a05:622a:1485:b0:41e:2314:8dde with SMTP id t5-20020a05622a148500b0041e23148ddemr4036430qtx.38.1699996092945;
        Tue, 14 Nov 2023 13:08:12 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id x16-20020ac85390000000b004198d026be6sm3027549qtp.35.2023.11.14.13.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 13:08:12 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 14 Nov 2023 16:08:00 -0500
Subject: [PATCH v6 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-th1520-mmc-v6-6-3273c661a571@baylibre.com>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
In-Reply-To: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Conor Dooley <conor@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699996086; l=1108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=4bgo3aK3cuR26cRWBbMVA6MrvhUqOJ8As8gzvmDCzhs=;
 b=fgvbHypWZrq1O1XBKI1HYkf6KoCvbawChRB0RaWEQlNIV1gRXQoqyG2UpVayFVmHe82+m+chX
 ekzmV1ENmFyAAA/bGCw4bizdqv2LXaX1OLbo+dKRHX56MNf5j6v5YTY
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add mmc0 properties for the eMMC device and add mmc1 properties for
the microSD slot. Set the frequency for the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 70e8042c8304..f91d94f95510 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -48,6 +48,10 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
+&sdhci_clk {
+	clock-frequency = <198000000>;
+};
+
 &uart_sclk {
 	clock-frequency = <100000000>;
 };
@@ -56,6 +60,22 @@ &dmac0 {
 	status = "okay";
 };
 
+&mmc0 {
+	bus-width = <8>;
+	max-frequency = <198000000>;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&mmc1 {
+	max-frequency = <198000000>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };

-- 
2.34.1


