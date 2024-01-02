Return-Path: <devicetree+bounces-29267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2884D822302
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29E5D1C217F1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B544618032;
	Tue,  2 Jan 2024 21:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NxKC8Bg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B4517994
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7bb0af58134so310693339f.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229730; x=1704834530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iih8S9CbSKYXK6Eu1V5z5fk9f7rCImQ6DnJQzgwRsXQ=;
        b=NxKC8Bg1E9loB28npLQy86G1Uk0jberzz0pipqr7NQKvJ55wAfFyIo/RUlTOuhxG8u
         jQOtXZm8zekL6yMFVXzNdqAqdEDBIxF65VbIf9DGIXLYs5Dz0n1Qr4cPnF3jb3NqdZ55
         Sb4E+K1G9ILQM6kDWcB0LKl5Ru1vymvI/M29o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229730; x=1704834530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iih8S9CbSKYXK6Eu1V5z5fk9f7rCImQ6DnJQzgwRsXQ=;
        b=ARFJ+W2fr2EawVTPfh55z9whr4b/4nQDAaScciQqxUlQUmrHMtwTx0kPSYvMkeNspQ
         rH9eNQSPDcU4JULVwfGhsXFbGKGCcK/XGXnHJhi/R5cmO9wk2xusVrsjZeTNumylwn9G
         feGHj1OhmApCTkZMLILjTQkZQiVgSdksJMHRaqh9YddEQ6g8SvOJ67+Iieddxxrs4UO5
         L8E0fOO+AnxE+eY/87HJZCH8SU7ZjrVRnBEZJt71EV/mtSG7CS4PsUHqaDZqhLkjqLT7
         bWLrOVBIAp26JyL+hxFzJErvcZ36ORUglCgGauGkxDdA6F6T2wgDf0v40ZNsSyMTiBfb
         pK6Q==
X-Gm-Message-State: AOJu0Yy91nqUewJ9ffvXKcUibfjkxJDA/gRTU8n1eUJjyf5mei2WmQSw
	iLfP6EF21vnk9c9wVGyOp5wGyRn7C3lD
X-Google-Smtp-Source: AGHT+IEGMyFoc4xM4Z76PcN9nzKX4GmQlxsOK5XWY9+A3y0Tt67mNC5lPz5MkPwv5iXKSvpSPmJo2g==
X-Received: by 2002:a5e:a50b:0:b0:7b7:55fc:7d4 with SMTP id 11-20020a5ea50b000000b007b755fc07d4mr24457360iog.18.1704229730619;
        Tue, 02 Jan 2024 13:08:50 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:50 -0800 (PST)
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
	Alim Akhtar <alim.akhtar@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH v4 08/24] ARM: dts: samsung: exynos5800: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:32 -0700
Message-ID: <20240102140734.v4.8.Idc995ce08a52ba4c5fde0685118ddf2873fc8acd@changeid>
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

 arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
index f91bc4ae008e4..9bbbdce9103a6 100644
--- a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
@@ -949,6 +949,7 @@ cros_ec: cros-ec@0 {
 		reg = <0>;
 		spi-max-frequency = <3125000>;
 		google,has-vbc-nvram;
+		wakeup-source;
 
 		controller-data {
 			samsung,spi-feedback-delay = <1>;
-- 
2.43.0.472.g3155946c3a-goog


