Return-Path: <devicetree+bounces-63261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C5B8B4314
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 02:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51FCE1C22A27
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 00:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F1D125D6;
	Sat, 27 Apr 2024 00:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="P+O2NaEv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386CC79EA
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 00:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714176661; cv=none; b=hjdnl8NUv3SnWiM0zwTN2JSBdcbigfjdjFDca+VBeAwk2o0f7WJBghdI5Y9JNmI0Fv/7mxbiupCS56XdeQBmSN1pmnzAhuJ+yaDprSDH4ah6xnuITdI35v6j7yy5BBX3Lmzz6qQsec0BEleHRkmX0hfocasqDTQblgBpLdFY2v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714176661; c=relaxed/simple;
	bh=WiDmXN+gE+Oj1XaVtmKA94ORr86HXlbvJPY4osUU3RM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EXXKOhU/DAzU3Hi/zzrka38bTyLff73ignqIhGlYmPILmKXG5h0Pc79rsvmUp64HmqcP0SOXPZJ85MFbydCNABRZ4P46x6xb/xP0/Bl86JfS8nkci6vJtl4pbr+LfUvHXBedNgUQiBDbQf9cGOzlg2ZjhVV/WLJZ14G/ZRaabf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=P+O2NaEv; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6ed691fb83eso2358921b3a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 17:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1714176658; x=1714781458; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5ki95UEfr2z0VC3x180o/+jUI7myGNjHePyoD0A2y8=;
        b=P+O2NaEvucAdautkgsxIo6Jo5RBzeU4JcwmPAuYK1x5NrqZSbeoFzTxSKEn4/DkVws
         EJ95cwKtO/dMlSkZvpeQLhb71Wne+r5MA7fcTQ/4QnClEBxYfKkE6wRA7JHtFwu7nqlX
         qgLJoRY4emxSwOe2J8M3WuaKD1+RT7XLE+7TGupMUUqVbmBOHtBvpPKn5AZCQ5eC9QIS
         85TKCygJX76qtxw689rMZn+q2O3yQPmBJ7ZI/uvChqlxz2gPy5V1jt4aAnIarBaxKuOp
         568vvZ1TlWmSdtpxH/twA//afvRlg6kg0N69cRCXMOMZjFU/RDmatlH++G5EL9ce46E3
         71fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714176658; x=1714781458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F5ki95UEfr2z0VC3x180o/+jUI7myGNjHePyoD0A2y8=;
        b=mvVP+ad3l/Brs4e5G/FximrS1vfO1KOB90TO5e3q0wmt6dfASA9SJlLqAsCEC25yqm
         bGUXcXuBDR16sqyT6rmCC/4jVqtD8M5sD57ofzUwlEDgXhhapYu7L4gZxYltwVcB7v0T
         H1zUBc4Mi/xnzvNDkF2iviTlazRVe6yCdhWDwlxQ5DSp1aHsYlXFxBZPw+DvV1DRQiaH
         99XuaBIVW9V1aMt+O/uQwAArytYtFfpZck6zy+u9Y7g11/ODdUvVs2SWRU2dEzcQoWwT
         LX86YNVP35aS097t8GowyH96YggGztUyOq4ona4L7u2pXxRnM1fSC4Helv2YZeQY6jed
         pHlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjp5GJHE4Rl+i38tP3UusG50l18BnmwCEp9goVdNoDfA4LPfbuOizsJX83XL75qfRqmLZ9/m+SJM7C6eb7z5AoIoYuKKNzLWNr1g==
X-Gm-Message-State: AOJu0YwJhp/sT3Jhjoyawgw+9kX1w2LdjxyjKBJepfwthyatm6uKvTQu
	db5rqEPXnOPbWzutJbqIJaLgDlMw+Fxde2ulfrFQXnTxUyOuetP6n6U2LfZzsiM=
X-Google-Smtp-Source: AGHT+IFAgfIAI3/KuUTKpVzyvA9o5IQ/hm2YlS9fAPFKU/vAHWC7oo96mJ9J807N5OowZHBwaZ13Dw==
X-Received: by 2002:a05:6a20:918e:b0:1ac:6762:e62e with SMTP id v14-20020a056a20918e00b001ac6762e62emr5665000pzd.30.1714176658577;
        Fri, 26 Apr 2024 17:10:58 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:3569:7ce4:94b8:1691])
        by smtp.gmail.com with ESMTPSA id w1-20020a6556c1000000b005f3d54c0a57sm6061883pgs.49.2024.04.26.17.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 17:10:58 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Fri, 26 Apr 2024 17:10:36 -0700
Subject: [PATCH RFC v2 3/4] riscv: dts: thead: Add TH1520 AP_SUBSYS clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240426-th1520-clk-v2-v2-3-96b829e6fcee@tenstorrent.com>
References: <20240426-th1520-clk-v2-v2-0-96b829e6fcee@tenstorrent.com>
In-Reply-To: <20240426-th1520-clk-v2-v2-0-96b829e6fcee@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Drew Fustini <dfustini@tenstorrent.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714176654; l=1160;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=WiDmXN+gE+Oj1XaVtmKA94ORr86HXlbvJPY4osUU3RM=;
 b=z+fbT5Gr7t67Rr88wnhdlVKhPZX1zS0AMbe6NxbQ9g3D2bhGOs+5SSpgPoUawGn7P+ESJzWYz
 lpFXBf7p6AYCVdX2h0+d+CLQ+0v9Pzv0a2iF2lJ15sroJqydTVVDZ+6
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add node for the AP_SUBSYS clock controller on the T-Head TH1520 SoC.

Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 8b915e206f3a..6285cdf91bd6 100644
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


