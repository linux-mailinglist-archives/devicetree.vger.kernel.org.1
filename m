Return-Path: <devicetree+bounces-39668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 361FE84DEBE
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A67241F21E2A
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3834C6EB4F;
	Thu,  8 Feb 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m6N97i8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727906F07C
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389497; cv=none; b=h3ARxN9SxXRDtd+EgbI2CQ2JKqzvoJZYLFtUmmf+wr/ugfgUZQcADXCnAuMh/cWdyuNruvDOYSmbuzQdDowFP0lm/8imV71e1931fhnfWK4MGBenNvOK13nh057C6lvjDHRIsmzFgK4XE/OlKo8d3isLb8RMmjZmzlsNh5wgquQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389497; c=relaxed/simple;
	bh=9ZGZAniVojBPAzZnK7VRxQ6KyiPK4LjtRgqlXHoCmlk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BiYoP2eo8821Bqey6Yy3LS33AvL6tsOzan6bsAltv9AqOY3K4HIKYroPmQkBvVODZI4RfLDK3rmf6+xf59YEhb+YJLCBfIdW7bLz17VzX6riQLxjgGyY4tHhGoDEaahfHkLQWQXzLbI2KFQtXoyhwbENiKfrVgYWBK4mGB9AFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m6N97i8q; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40fc6343bd2so14478305e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389493; x=1707994293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QRtcBLpg2UJfwrDcTIbV2QdDaYWh1k1w6J6l7NGdAhQ=;
        b=m6N97i8qyDpPjlH11HegArK+bnHhGDB/ASRyaxDCAbf/AgdJ9zgoJc4nOIbKs2JKn4
         ZHwyOkw0YquGrrq9vEvtz6I+qkt91lY0pWZFnxuVROaFsc8gQV0NPfz0Zaxd35Ghlb/N
         1vDr8QnHKCjoe07gZYY2+rPrX7Ug+b3Sm7WEjKKi2cvgkX8yQCvgynB67seBQqNf49Kk
         kTx6UsCg1X7QWx11dk98HpN+iaG1/Vd1QEMU4BcKCgrWsRMIvF5XuNfpVCO06CZf3qbP
         nj7YDXYo7Ew57qxYujAICos4AanpC6H/2aA8snLOVj45XBC1uVmy3KwU0NywYQ1ELqk9
         vtuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389493; x=1707994293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QRtcBLpg2UJfwrDcTIbV2QdDaYWh1k1w6J6l7NGdAhQ=;
        b=TsVU60FCS44xWUC5M41lyDFb+NLjdR4putiYo8QYXbs6bAqc0ffdpoQVUJ6GfNs0Cq
         T9yU0eiDitpI1pssUZwq5q8mg+IickPdghSxAtcLsfrkci7DCJ1liVOk3Pn4ukQuwbzd
         if4p3En9AYkOMpqyL8b3gdG1TnQ0caEZ/Kd7HdQP963oZmcZDyUJzC9r7iPYKS7iBpog
         Si/u71lSSley0rNQ+udR/VFuBwpKoPENpsmFFTzaIr13yQ2qJqHVcJ+CKMcFBdtfSkEF
         yPn1/tB8Ow8kOA1Ubr4Cs6uhq2Fl5WvTLI4xfkdLiA+pGtIvHW9zRDvdudl5OzwggATQ
         mGQQ==
X-Gm-Message-State: AOJu0YwtKUw1nlZMHOPFpUSbdwYZl/35KnqReJNoF0N7flY81McBZn2y
	2HN4WkhYVqLoJSC6k1Ieaul0c8iM6QrPz5i6Q/MyacUwIAXoKVnZ83lc0W8e0tk=
X-Google-Smtp-Source: AGHT+IEtk56T9/G7HFmIhKoOQe4FP+rsV9tK+gzIAjo/IBHXLpz2jJSe8DMq+PkYA15lBnbprZ9bDg==
X-Received: by 2002:adf:ce92:0:b0:33b:136b:557a with SMTP id r18-20020adfce92000000b0033b136b557amr5602663wrn.70.1707389493618;
        Thu, 08 Feb 2024 02:51:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWBOKH+RkujrQ0JyPkA08iduNE7ajI11rqzMjvPGYZTYJnh6LqlrbAvDIDMtq2qKT5YWuD912t05UCIqoDs2E5U4G1+VHA9kCq1m90hpODt/9T64d3t7W6iWmxCcoK4UwqeWuuFgyDmqxZQ/lmGAbrI7G6sHnToD+woifi3wYSXgpvbirjOzFPB213qWVBifJaOy0XuT8VpZ0B149UpZ98T3Dbdbbk+sHKwR6bCus2sF4VChK4GeOwdT23f99diptXQM6VFpL8YF421xy33OVQzfSUjNhuqBlg=
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d484a000000b0033b43d7394bsm3340824wrs.55.2024.02.08.02.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:51:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rk3588: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:51:29 +0100
Message-Id: <20240208105129.128561-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 3d0ea9e34049..ad8e36a339dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -212,19 +212,19 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
-&cpu_b0{
+&cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
 
-&cpu_b1{
+&cpu_b1 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
 
-&cpu_b2{
+&cpu_b2 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
-&cpu_b3{
+&cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
-- 
2.34.1


