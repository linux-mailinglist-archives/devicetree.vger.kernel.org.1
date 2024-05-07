Return-Path: <devicetree+bounces-65309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6731D8BDA5D
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 06:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4767EB243BE
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438E76D1C7;
	Tue,  7 May 2024 04:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Wq3Zd5i5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7138A6CDA1
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 04:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057857; cv=none; b=uQVwLGy9OLNVJyPcyLEPBWtRYFfiMAiLruGKwoLVt+ZAOj0BftSjuiZa6smIWeV+1ghpSsi5VCWdJVoSuWFdgxpQos70kGtk01dLHiugayztg277DsJVM8zPxTAlkf/gkzp9H+x+udu36tSMAJbxYDC179hEZ7V4uhCcnA+vW0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057857; c=relaxed/simple;
	bh=6PV2bpf3dXOpJag32DfU7y2Gi0ru2guu8y2sRZs5RmA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uyB/qPH83uyrwMmMKkEz/lNklBPU+kBQRik9F0QWIonteVwT429OHYikKg6JgOwa4NL4yOstMfPQShJJUmviWwx+fOXIPKtCpEZw8C03lfLk8u7a/kTHgPpUN0kw7NwKmetwIXLHrAWtVB3EIqDyZxJcDsiyRaymj3uAquykRgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Wq3Zd5i5; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5b2089a8154so879914eaf.0
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 21:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1715057854; x=1715662654; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NlABhhrgRN0kCKTe4nIKDePb7LoVOzv5TW57AJaUw7o=;
        b=Wq3Zd5i5cI2WBMdetZ5dqNdvq0uA/lj2i5XhSOgwGvs2cwM0QcDXgy8KJRyud/PJog
         gJdjsS2NzEu7j4o4hLnLyodazwC11vbzuzGrWQQMxQhv4lbJk9ALHVOqTwoxW7krdluB
         7DTXxClhREH2+NgfWrNUwfd2xfpUrpFwj4DW/fT/AVX/6ta5GxUCFd9Xn8rfBsTgEN0u
         anBGMKn3U/sAKZ55dN7ojTLcw6EO3gMdVuPim+CHOHSgbVzkObMwUQUiNu/FRVTpDiT+
         soy8Fymq5LHWy1KjJIoX42wmPowvW2EqATdji8nNF2BcfJSfbkn83uReHrLcVhNMyazA
         cN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715057854; x=1715662654;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NlABhhrgRN0kCKTe4nIKDePb7LoVOzv5TW57AJaUw7o=;
        b=SM+st4PeP08klz7b5L6V79cfbKBxU+vDOiwKHczwgIZVDYxIfxA1D1iNNRb7D9pqqN
         3bi6gd341ZLIcz6+Av95s0R+VadELf1SeD3b3i1uicVVpa8H6raqeCx7MSx0VTE6fBqF
         5AFMNRtf2tOI45LsjIz6oumiy0FrUSVdnN8L0kyOyQGekYJl0aqsQ7dYQ7HNhlH2nsge
         ANk9Kx/G09XYXW+ykis5LgSmEK5pZwxqfOVxsEOcE70foCWRVkNeWei/lvvGnscFv32f
         r5JUFrG7EAjBQcfltMZIMP7Ozj/UqwMdr9hyjL8MWp5+lTejt4No4uaqsrWYHmtC897M
         tKCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD2Yt716YtYhMtisS4Q9ePA7V0fpzGBiBmpT0KoldggUYmWO5rdKd4W+cGQN9pFCe032XBiSZbWqADkZCfQ8o8+tWV99Slc6hd/Q==
X-Gm-Message-State: AOJu0Yxri2q6k8XFe1gXYJsG+kI+l9w6Q1T9gWFfciJbtunZPVntlo8/
	6TLHhrZJV3CkZ8NWV3th0J+m3YumVGTXNlLTiFyfeinLbq5Q08Z/QfkTjCg+1DE=
X-Google-Smtp-Source: AGHT+IF9aeioa8mJUvS+E77WSKbfTcZO5wmap3E6KVCzEyaI/OIUtILJNYssFJf6gtqk3GzjJKwThA==
X-Received: by 2002:a05:6359:a399:b0:17f:87fb:5326 with SMTP id ky25-20020a056359a39900b0017f87fb5326mr13927155rwc.24.1715057854502;
        Mon, 06 May 2024 21:57:34 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:6870:7119:e255:c3a0])
        by smtp.gmail.com with ESMTPSA id o14-20020a637e4e000000b005f80aced5f3sm8987249pgn.0.2024.05.06.21.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 21:57:34 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 06 May 2024 21:55:17 -0700
Subject: [PATCH RFC v3 4/7] riscv: dts: thead: Add TH1520 AP_SUBSYS clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240506-th1520-clk-v3-4-085a18a23a7f@tenstorrent.com>
References: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
In-Reply-To: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715057849; l=1160;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=6PV2bpf3dXOpJag32DfU7y2Gi0ru2guu8y2sRZs5RmA=;
 b=4exMVJ4xzbDXC65KXMLDO8sJeX/DSsbUp2hf1w0Dv6pU91zrS6Osgwql3mmUi6my0DL13QSh7
 VXf/l+EKB0oDAgK0QRc6WSqWYrnUbsMoyXBAkkUFB+hNy9WFwuZt+Y5
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add node for the AP_SUBSYS clock controller on the T-Head TH1520 SoC.

Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index d2fa25839012..e193f8d9ab8a 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/thead,th1520-clk-ap.h>
 
 / {
 	compatible = "thead,th1520";
@@ -161,6 +162,14 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		clk: clock-controller@ffef010000 {
+			compatible = "thead,th1520-clk-ap";
+			reg = <0xff 0xef010000 0x0 0x1000>;
+			clocks = <&osc>;
+			clock-names = "osc";
+			#clock-cells = <1>;
+		};
+
 		plic: interrupt-controller@ffd8000000 {
 			compatible = "thead,th1520-plic", "thead,c900-plic";
 			reg = <0xff 0xd8000000 0x0 0x01000000>;

-- 
2.34.1


