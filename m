Return-Path: <devicetree+bounces-106569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8A098AD52
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00C28B245B0
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 19:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 693F219F41D;
	Mon, 30 Sep 2024 19:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="AIdfytEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CBD19E83C
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 19:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727725875; cv=none; b=JX2zWTepl8UvyxwPLtf80as6xunH0drZlrC0ch9VnN4G5yR6WGQdoRYK1xgaBUj/ZSQ9QHrpV3zmj+yqe9ksL1LeUX8O7HYDX4VoBEd6HRpmCa2A8Y4LFhpbmeMXXPP0CNE8Z7cruinQSLtRAt9GjkOpnMMn88QQfKI/OmOwzFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727725875; c=relaxed/simple;
	bh=B76aV4Em8a3xmayW/RJImnNKEvIAkhYk10NpylsHCDU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HpDD+p/QA2T8b4rVTp30zV5e6furwpggSRwEXSB3NodTIJW0UyzgqWBNRRkuqk/Cd5lGktAWlfzDXVy4N1r/173bAbTkB8jWvtAtqSDFRgH49sWoYPL4CkWK0Jh9lLtUjWeipch88z/+Fhc2HQnS8pMxzlcp7yTtFXKGqaCjsMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=AIdfytEN; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-718e6299191so2507132b3a.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 12:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727725873; x=1728330673; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1NRnxFx/6PuIcATbIYTaNby2KfWgKmyVkRGZl/5vDNM=;
        b=AIdfytEN5gdt7nIY4v4dozbUworNAQQhkTuh5oD0PweuIZOvvrJPT0jzdlcIwkfZ6j
         D+ByHkChIgq9Gp+gr37TTeQUVkTSgK+OGRRM3zdn9nISeCYco93kfYm/vnqSnsb96PrL
         WQpMWs5y0el2I5x4nycIm9BwYRNRjzMOEgARzRiTmkBTvqUmJOR0pWnn5QCnJeMEitT6
         Gb7fT8Is/z8Eugy54XxCmcINM+2hFsmHUc3oCM9Z5/whUrF6ZP+le8JQJgUNzYs6BOrL
         64k3GftXttArFQGAwSUQ0otuJBSj3uEZWoz2YR0T9RBctrlcwHbIUD2SgiaFM9Mn0AZe
         a3Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727725873; x=1728330673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NRnxFx/6PuIcATbIYTaNby2KfWgKmyVkRGZl/5vDNM=;
        b=UjUn/f990Po/ygiT6hyXPnpKZV0GIymkqjRPmQxKUos/4Qo1eYPbylPo38RoAGHIyQ
         KYhFA3+nXKJUgRFTW6y+RVZXJeLYmCF28BTxVhfH7B5VohNonwmjmQW8r+Yrm+v7JYK2
         ByUgc8ZsZVKVrRHH+nKQ8kRopBALEe+i2IreOfmYs7WP3Py30S23OFPO2frPoPO4nwsY
         cgNYWnUKWNV+cSg1tc8QRsZRM85HpHp2r+du1UUCw+HWiClGxseuZU41wLElXAOAKSrW
         r/Esyyhe+elQ3yWvG8SXOwMb/O5O6RzvCqVpYHQ4/GfoBUoSxtVWqmyyi3GfDZ2LZMHT
         6vcA==
X-Forwarded-Encrypted: i=1; AJvYcCVI68bBmVMe0dqIJIRrIMmsFzyNTfDSwErsNTabP360IyqGWZqJSHxGP5OVHPLhpC4VxoSVR0urC1we@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3mLiQ2JT4ILh+UvHD35hqYCYVxrePMic/teMBAKZxMLoh8Ogo
	57xz0vNsaXAbI159596XcnCyY+QylsAQYSCi6kBaxxFW+TIr75cYGfxjiDDFSSA=
X-Google-Smtp-Source: AGHT+IGuWHV6QY4y662SIjG7e1FawYnwe5bYeFQsWhe3H7kSD2DKfvEjruI/eO2d633gVfYkMVb69Q==
X-Received: by 2002:a05:6a21:2d8c:b0:1cf:4da0:d95c with SMTP id adf61e73a8af0-1d4fa6f9a33mr20585388637.23.1727725873211;
        Mon, 30 Sep 2024 12:51:13 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26529d4bsm6630213b3a.158.2024.09.30.12.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 12:51:12 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 30 Sep 2024 12:50:56 -0700
Subject: [PATCH v3 6/8] riscv: dts: thead: Add Lichee Pi 4M GPIO line names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240930-th1520-pinctrl-v3-6-32cea2bdbecb@tenstorrent.com>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
In-Reply-To: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add names for the GPIO00-GPIO14 lines of the SO-DIMM module.

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index bf1c639072b8..ca84bc2039ef 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -29,6 +29,12 @@ &aonsys_clk {
 	clock-frequency = <73728000>;
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
@@ -48,3 +54,36 @@ &sdio0 {
 	max-frequency = <198000000>;
 	status = "okay";
 };
+
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

-- 
2.34.1


