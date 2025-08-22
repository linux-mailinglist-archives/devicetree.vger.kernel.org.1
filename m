Return-Path: <devicetree+bounces-208144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB103B319E8
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D8AB179132
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5605B3126D2;
	Fri, 22 Aug 2025 13:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q6KlWkiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6283126A1
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869645; cv=none; b=Qgz0eUte8iKDE4XBPF+IbttiDvz2GZVTDU23dDZX4lj+Xail0PKvOiJ6BEG6wmJXm7WpMTFC3/4rdfqQrDtuZUSEP06VCsgEagPa1n5IKQN3hTKGX4oPGzi7VwALtVtpUcLj2LOFkYvoBG8h1ZOrrg9ms5CtKzlbQEondXoHTl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869645; c=relaxed/simple;
	bh=ns8imbJBx4C3VrvaBGidv4ZtmC/h7m9iRb2qgAqrZBY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kY3qiTihOXb1rRkJbbx5tMCMvSj5aC/2cSAiiYPdiduVh8B2xR/XrNj6m1S3IIU6yZYrZynwpHvFhEWK9/5yC+xbXklg6Mj9E/R55iR0HkTdDWVfZsPU++su4DLOSnvvVpp4dxpHYpPczXRqdLqzo3RGSFfSsI6Oom2rJl7ZLY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q6KlWkiK; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb74bef86so32734566b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869642; x=1756474442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ne28tbpC8VIGZbl82F5AMsqB6uZwJ1NTU53GkFSodNM=;
        b=q6KlWkiKxh46AWy9ol745eVAfnyw7S5qmF3qxbi9fRPZIEcH+EDj0SjwXGGSlbUX5T
         vhFGU2GhEjalP3qXw5ekN4vUNSZdveQmfyTDVkVVF5WBxXiUxp2yktlLebJPJLGxkU7g
         N8+whff8FKWgroFxHU0kLYQATbXZVsdcEsolYMy2DRsJZhXUSIJY21p0gSxG6GT42ltm
         yFiFtaBxzoBNJE0vwtVSpgGm83PUaSdpnngQsCbbC56Rnz3Kd6lrOLqw3gSeLtpblJup
         EgouHzoGyEQy489Prtw+81BJhJ12J+35Jm5pCbg7vj7+mAYofXPqYFEaQO6Uibs9r8n4
         MDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869642; x=1756474442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ne28tbpC8VIGZbl82F5AMsqB6uZwJ1NTU53GkFSodNM=;
        b=ldQUtEhDnfCroknQdvKHPQ5k9K5KBvLirb9DZQbyiEGLjQrQN9kUWy79JlcSIDr02H
         lxsDkMzKrLe+TGYjI42jh1HqfnBUZrEXxInS69BsXlFgjyn+KOnLKUwmTWF4s9Stlq6L
         pYIdVVFVbHYA2pX8kpgB5vf8sdKLPMy51Tob8S69tc4hDSEV1xAaVu+J0Jyx/sH7tM+4
         CEADH/rneo8bxJsTkiWEKR7L2GMt3rPbe80YYgB7jgK9ysB9SVsaFAyXTpIn66G7GKjI
         i8fBLAmL2Uf19D3B79mMdwV1HqIrI1O0RKt1gUmUh/vze0iXQCmGs7tE0b6p4vuUKja2
         +h6g==
X-Forwarded-Encrypted: i=1; AJvYcCU2iHVQhR6vJmo1hoH1LjdAe3jwAcyOH7s4fDaRkAbrGtEEpwgWVStzDpJ1bk3itE8/SNyl0cVW6hkK@vger.kernel.org
X-Gm-Message-State: AOJu0YzoEtO7I54Y14JYidgjCZrs4IVXy6SrFzaRCYeWMbVYw09BcErq
	Seip+XDpfLxvuCqi+zgvMp/onnjlUQwFVJuDXyDJ6kPMCeYzJdLTMO4+ezZ2HJT6ai4=
X-Gm-Gg: ASbGnct6dtjvtmVRsGI4XvQhsSZZVStCqrzeAzcrwHOwODM2HCPJld76aeR6NDhM8Wy
	WND+LkjF21Xob1WapQYXB6oJtl+gwj22QR6PQ6qdHtOQX7YsXGLofqqIEzZF93mFvgN9aq320ey
	ZbDKRRSvfXipHTjkiaZ3eWVn1jvUUY1d0MlEY5kvkIbmOAkArfpaFgrCvRMlurGqfOdLRysqPYi
	qYLPMa8SzeAwAjMf9OiSXb+Irl3tjgHuyu50wI0dD95EVZ9brUCDzmJq9lEEVvMVa7lFPtEgN33
	EKmuQDgiWizvTr0e/xnc84of/i3WZAeilTUUmnet3QWPrEVPne9DoxKakp1koKfb/Wh8W/7pn+Z
	/hiVFP3L4mKyL51A0JJP31VMndOIDa9x9bQ==
X-Google-Smtp-Source: AGHT+IE/RgUMhyr0PNdCI7Qukrbmep8ud6mpyF55q9Xq7Ba9E12fIy31kNibIcLkWDsgRPakkS/j0w==
X-Received: by 2002:a17:906:2449:b0:af9:a9ea:f42f with SMTP id a640c23a62f3a-afe294b4624mr125018866b.9.1755869641532;
        Fri, 22 Aug 2025 06:34:01 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded537f98sm606493066b.104.2025.08.22.06.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:34:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] arm64: tegra: Add default GIC address cells on Tegra210
Date: Fri, 22 Aug 2025 15:33:55 +0200
Message-ID: <20250822133351.312424-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
References: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1227; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=ns8imbJBx4C3VrvaBGidv4ZtmC/h7m9iRb2qgAqrZBY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHCzlRNg1LWEmhCPkSvmsoKK5EFWL5YhUIc8
 T0F13v6WVKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxwgAKCRDBN2bmhouD
 12AOD/9kkxIAM9sdeRIOlxJGbkWTVEvSZKks+owj1bO6CEcAyE7nG/b+RpdarbUKdwEevGew3va
 pk4cK4k9oSMrawV9iw6KN2GSOWPCuJ+Exrkk9ipiwt9z9SADA6M9Y5LWIOgZrEJg+7ReeVf1TqG
 yANqxcVqxWl/D44sVcwyHMtGrf/d49hfAz8W3BQ7dcIQjh8a+i+1X8yQq/L34LGgpz2cimd4YyC
 xy2NmsO03gFMAGttStffuXHEwNtvvpcxrCdUiSeNTXLBOSFtTcRzyj6eF4jR0JkdsfYnV9dKuFS
 FtrK1HB16GOYZmffagOmi318yN6SCRlw22UZN5sriaedk1exqevB7RPyB26ZmtNSArgjzM0OWu9
 UTBngM+aAse1tOvmILQLOY3obyAohxrNkMtMl9taTJdQUhmT2hxhFP1y+Y23HeNIp2e01ZRpiFE
 SSl7cvd4buL/wca108cAnm8YWdD7hG+8+r+xoZS14LM1ITv1rCaARHiU2cArxTlOs2yGC51Xx7N
 rptFLQTwV1t+boUTPjp8Wr2G0Awpk9ljRjd+pwFZEVp3xRCR0/VbacQWyPv5SocGwCZ2Bqzw17c
 UbVCGGNVW0bTCYctp0ymt13N/C8w+CcIZPrcXmiM7xk89+xeV6eGVSGdhF4hmV5hdOGZ/wgbyx0 EdXBZzdh3feqdYw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  tegra210.dtsi:31.3-41: Warning (interrupt_map): /pcie@1003000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@50041000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 402b0ede1472..c39c2b9ec3a2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -409,6 +409,7 @@ i2c@546c0000 {
 
 	gic: interrupt-controller@50041000 {
 		compatible = "arm,gic-400";
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		reg = <0x0 0x50041000 0x0 0x1000>,
-- 
2.48.1


