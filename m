Return-Path: <devicetree+bounces-111136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4564999D5EA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4BE2B2384E
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA84A1CACE9;
	Mon, 14 Oct 2024 17:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="HNnWPJy9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608881CACDD
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928479; cv=none; b=VuWS13sv7YlI6iXFwuO8zeZTLGVzQeVPa/UNpsdxy8ozVGHNH811Ij0nmJAMKFUHCdW85YzNQufR88izRDy+oKSdGBk8tJpiTt6ga4Fkho5VCQuat/TcRVPdS3wJcInLCsEN6HI5LmZmmJte0Vd4puSAIUXAXTKgYqm2pZq4maA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928479; c=relaxed/simple;
	bh=M2EpkvuOMMqOaS/CHwtbywzO1w+1fETFHzbeRzk8Ipg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h02TY+p2R/LNgdVKyajIAM0101oBlKsuOLt8o1oW3Mn/YtD9s1KfLfK/Gwq2rNHaw5hRgnE++E+R2MsY0MakVxqfqHjFF8ebXGiCCRsdLIPA/BqnDGM2acnov6ZYgsXN8iJspXXxubbWxaZjVipu1ncVPqET5zYp5Fn5zE5jGvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=HNnWPJy9; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7e6ed072cdaso2857527a12.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928478; x=1729533278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uos7I1D3jQNEa1jYD68wgLK0dLonPjDnha9WpKrjRLs=;
        b=HNnWPJy9DRRd4tHW8XnUxAcVHLkWErybHcG/CM1TvtXZ8C4sq7dWTY3i4lGIrtNpqs
         iZu7Hao9kx+RFHKZAsYNAmPO+52d1q0tR7H8Jm1xCATKxnDXZi7AOuC1Q76fj5DHIOEB
         xhTa6mW91v5lygvrDnhU7RF33iRIjL0e1SVrhv1HpQnkl7Y22D1YMTH37VXdrC+irVjc
         F24XDOyPp9JftKXaHsfeYL4sCs03hqC+R1PcClveGkxtQUoDz2hrXHR8l24tFB9PH9Lu
         GjTeTv2C7Z9sPvRLFouIzFaKGLoRqgeBaq57bwd/yf0TFQxr+xhgtcSjZDiFk4zL5oI0
         GYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928478; x=1729533278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uos7I1D3jQNEa1jYD68wgLK0dLonPjDnha9WpKrjRLs=;
        b=rq8qRRYj5vX+w66NRfcAbs/bdGEL6+VzZ2O+i4xnmH3KUimvfnVhIsgIIQDERqtfjM
         fhW3k1ZgLvJsRNzj9ZzjwwbIRv9b3r+dcNtw7C3Vp8VMWGDETGnykYQkAXmVK4kDo4q/
         rEQzsLZOq8HASgbgEYhCBBWqHlsU4e7Sa3WlKX8wDIf6XG8/gC1WsIfd51RDPcYdEIm5
         HNkpXREIQz0rcyqGhILOq5Uj5SHCcAxkZ3lNqFsQuOvzTGS9koorNxx2GrLplkRlChPt
         lRftXgQp3A49RKo+R45aNu8Qd0slIn/EUp1eqMVfB2VxC15g2Z8tY98qXtOYhtOahrcs
         r0zQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZzMjpJExC5uIU52zQRtbr1R7CoU8qc5D6QVkepWW68LRPn1XOUIO4laW5eSCRSapUVVLTefx9NZmO@vger.kernel.org
X-Gm-Message-State: AOJu0YyllO2hiNfumc83GDgUta6aL1CAKUrpaHTgaq4w6JBlxG1Z2XP6
	W3g3u5E75lnNOQzneIqY8fyTfEopKxp1evpTcpmHRZ9oLx/ldnUtfZ68gbkZiTQ=
X-Google-Smtp-Source: AGHT+IEf0p5oqGrtyTppCsRYCXH5JSV8D2MTmtTJC5hsQzJwO0qFZtTU9t9TmbxbmQs9qouXaju6Zw==
X-Received: by 2002:a05:6a21:38f:b0:1cf:7123:86a6 with SMTP id adf61e73a8af0-1d8c96ba856mr15379776637.49.1728928477812;
        Mon, 14 Oct 2024 10:54:37 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:37 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 14 Oct 2024 10:54:21 -0700
Subject: [PATCH 4/8] riscv: dts: thead: Add Lichee Pi 4M GPIO line names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-th1520-pinctrl-dts-v1-4-268592ca786e@tenstorrent.com>
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

Add names for the GPIO00-GPIO14 lines of the SO-DIMM module.

Acked-by: Linus Walleij <linus.walleij@linaro.org>
Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 78977bdbbe3d..724d9645471d 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -25,6 +25,12 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
+&aogpio {
+	gpio-line-names = "", "", "",
+			  "GPIO00",
+			  "GPIO04";
+};
+
 &dmac0 {
 	status = "okay";
 };
@@ -39,6 +45,39 @@ &emmc {
 	status = "okay";
 };
 
+&gpio0 {
+	gpio-line-names = "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "",
+			  "GPIO07",
+			  "GPIO08",
+			  "",
+			  "GPIO01",
+			  "GPIO02";
+};
+
+&gpio1 {
+	gpio-line-names = "", "", "",
+			  "GPIO11",
+			  "GPIO12",
+			  "GPIO13",
+			  "GPIO14",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "",
+			  "GPIO06";
+};
+
+&gpio2 {
+	gpio-line-names = "GPIO03",
+			  "GPIO05";
+};
+
+&gpio3 {
+	gpio-line-names = "", "",
+			  "GPIO09",
+			  "GPIO10";
+};
+
 &sdio0 {
 	bus-width = <4>;
 	max-frequency = <198000000>;

-- 
2.34.1


