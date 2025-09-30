Return-Path: <devicetree+bounces-222813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1F2BAD314
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:33:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51A8B3C4A19
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60D93064BD;
	Tue, 30 Sep 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="URL3vnWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB783043D9
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242760; cv=none; b=B12NqjcakZZIrrwfXVM0UMy2CMI/G1m9tpNjFGFI2vRSbuxNdCyOZvthLked4lRxjaHuP0Fvu9Znq7hMDQlUmAdXNgkHd2FQgSPJnuqwij8mdP1DJwg6cnfVdak7FK3G7QdLbdwX1Lfsz+Wukm3wITcdq23AJWXltnjwYaB/H/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242760; c=relaxed/simple;
	bh=1Qrepa0d79KDRfqWjvfyl5ebsRzMz7XsX/QwuRAgnRU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GDN2lZ6AdwgUwlVtn4XNEGh6QcBhGXaRE4R9R0Tl2fzMd5j3opElGZayPEMotM0EvoSLG/LvCdbDqgKeYnc1dbwPvZ2FvO9+8axLpOYbRuVTkXjiFEg9pfA7jyP8oKMlenEeqsr6lKZp2mSX95WundE6+2YKLhQ34erixeVCzLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=URL3vnWq; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b2e0513433bso949214266b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242757; x=1759847557; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nc2qQ87H/zk/puiJyILxc2v8deO0t3zigh08i1yQUkI=;
        b=URL3vnWqSJa11KrtLNIsZ4tUD2DC9q+urIQFwwIVj6MZpFCh8rYo3BOIPszjJzvFAP
         PXuUp1M+z3rhYa4vhSuGF9JGbkDuLtYhsFjmtmDHC6ihnxZ/s9SqZvuhEP7yS/hZVZkr
         IMXW9le3GMbKgspekrAB0BASiwLrqFsWmfkEFzirHHvif7S4rVObzVTmlld14vZFITv3
         AcjAniCcjljFr0x34JwJQMvUN3u4Ba5JbWzVXLYZanaZIyDAJudUx4YsyVJrSPbsAarF
         pTpSAJrnRLmhtiYsvDbTBVYgRFhgoI2FSBNGcn26awSSEKzXi+J2Ln+3SA8boulinESK
         ufoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242757; x=1759847557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nc2qQ87H/zk/puiJyILxc2v8deO0t3zigh08i1yQUkI=;
        b=QisGEfKY8ntGpQZqAJdVLyEufwTwx3hRK5R1lbCuGzJxd145rF1jsScEcCVkhyqyL6
         rFhiJNV80E1VqyB7datggKEyVD2XUuzm7kPFeKd/pj0lC2K9yvJJoeRGJ37aA7bzYDZs
         CMw+N6omGlkEtNVXseMNCeUQMUaZyPs+8ATrVc/8yWou2UvrRrw55Yte32kC/Hom02QK
         P3eXjXim05zPi+zWh4mwtIB/i2oItyBU2QCZ2Ul3oUfXySZUuDlrxcT0SINurG5/Hm54
         f/jt6/3OXe6p+tBSC4NZ/7RHRu6ODIusDsdehAfQOfBc6ZoTIyMAPkC5wr2bGz3pHnc7
         +YpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTB9jOOtvmEhz+dGupN4v9xoi10a+Jr5VmoG7IGbd/4sgpt+WA6RLbjOhmAWz4QsWrE+GvH84n9ziy@vger.kernel.org
X-Gm-Message-State: AOJu0YwDm6PtVjv3RFniVoCK+QrC8xYJS5igAeRUePKZsSTlua+QadWs
	U4K1Sd3ZGdJvrZTYeuzGghpxsoJ9osCRvVrpKud0tDUOztjUwyQWK72Fx1Uv/gOwD7A=
X-Gm-Gg: ASbGncsvT9IjulG8SW6ImgkmzVy2zG+4mPBVZuKqZj3N/NGSGYUgdmB9zXbVvqDC4lf
	2XtDQh+LLGRgiW5J4SZ87AG14vZnAe4ffZe5aCQIf96hf4abA1LvfYPj1ZxeAtifto8f3/OFXET
	dyCTb2bPcrOifqmYheWXvzsehH1nyILWeWUXqw6CKAttqkbZ/hclhTMvtnMnHrmuAS6PVkKGNHO
	v/xjw+CQ5bxCHzGys0w1KZ/6WUGkL6cuKIzKr6CbSJ5HC5Dza6JVvJEjvE9C9hCApxFgE5Tis+v
	y/GJMr19Q0bjFL3wzsRx6qv15FKe4cb+4PqKmcfh0cwwZtCc5WC5CHOqGsCii/CEZQniwFiNy4K
	8pOi9NnHpiedWoq1baXZBV4OJBXbIeGoVvTYDnslaYiPjPRr0BUM+ENj+2eNKOOKtDqcOvphlxY
	JubosJBq14GWaqgKkBGg==
X-Google-Smtp-Source: AGHT+IET9ttI4eeiZng5G1T3bEUZDSD1oiLBh/Po11ld0hjBgN7AzeZt12fBgv2zC3YDhmr21o8uSA==
X-Received: by 2002:a17:906:2987:b0:b3f:3efc:35d5 with SMTP id a640c23a62f3a-b3f3efc3dd4mr601458466b.15.1759242757421;
        Tue, 30 Sep 2025 07:32:37 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:36 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 16:32:22 +0200
Subject: [PATCH 4/6] arm64: dts: qcom: qcm6490-shift-otter: Enable flash
 LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-otter-further-bringup-v1-4-7fe66f653900@fairphone.com>
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
In-Reply-To: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=1003;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=RjIAYSDJ30bwj+KTioQR2VwyMimm7reXWwcHGX1gmD8=;
 b=GpnS8IMJcURHkOIJRLK8EmV/KIk7v8nq402RU4bIIbHmyoe5zj7rVpUSCGp4sh0MMyPGPXoUr
 Ee55HLqiVajAlW4j2Iu+pzNkj3Q9dgNuE9iXm35GVrxhwZjFSOp8/tS
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Casey Connolly <casey.connolly@linaro.org>

Describe the flash LED on this phone.

Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index ce794ca724db6deb39f7fae47912c3fefe974573..36cc67469615974c193ea3a9db1b2362869d56bb 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -619,6 +619,19 @@ volume_down_default: volume-down-default-state {
 	};
 };
 
+&pm8350c_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>, <2>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
 &pmk8350_adc_tm {
 	status = "okay";
 

-- 
2.51.0


