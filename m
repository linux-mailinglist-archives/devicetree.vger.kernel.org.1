Return-Path: <devicetree+bounces-203641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3261EB22247
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8DA43BD23F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A982E62BF;
	Tue, 12 Aug 2025 08:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RQUDCRLz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8972E62BB
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754989155; cv=none; b=nb8wpW2fMR+EcKstJZbZEa1KCr9MutvD2FBJwlJJEHBc7sSK50h53gyQBXwiuEM0xcvM+90g/9MCJxkT2yz9VhBC7CWZ+GlIablG9K5id49kCPQkkRDsJz+m6DbGbVpFIUbHkXRxKD2CC9kbarRDiknqNk1eYgEueYhuNZiDaRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754989155; c=relaxed/simple;
	bh=aVo0vySJdU/GbU+4akaorxhBe4ts7YUD++0ENml4rvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OgXn8HZhiq/oa0J/up5s8ahwcEHR37lIzeh1HNhNVAYziCOqh8+6wu4LM+OXONiLHOrU/LKgZs8fljD4f7MpC4fsVA0uIbW+/oZ5ndp9EsPOhb3WdVorXQp+bo8hAJnm+UuX2F5BkI3SaUL9AzehzHCtcU7XWnqmOwOy0nETqzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RQUDCRLz; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-76bc5e68e26so4821271b3a.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754989153; x=1755593953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jZ4gc/Zl5lzZDEjUwdPD/JiqefAjh6ZunVQqiM20mjs=;
        b=RQUDCRLzku3v80lBPqOA4XgMvmYfU+l4kOEeyRfl1CvpPSKC4v9zvcHdw9X3/oID6n
         K59j8F14La5OFn2ZzNLU3kibzJ3HxZZo+vGQv6zDjj7O3WAb9DPvXSAyK92TCgf5TFX3
         8OpaQsu1sWitSBhg0IMx8c76R+AoCZBfZekJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754989153; x=1755593953;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jZ4gc/Zl5lzZDEjUwdPD/JiqefAjh6ZunVQqiM20mjs=;
        b=nynfzI9BjUklLcrmpJUEhod8ITVkgrEm5n95HCN9Swbeja53NkNslr8/VRS0QkXX2P
         /B/EuOrLBxpFbiuC13uk2vglcpt93ylBDX7XsllCQuSgBesyFt2b4Z/JtUbEPP8tOLxS
         +Ev/RclXL5mS7G2RJGpA21YBLNXO3J7pETYcofgbCh+WqENlnN9YD2WUZxlhMBP+cDEm
         v+ap2hlCAg/L3Y1/1GuAa1KVNCQikb0ygNV6MhXz51BXdg68/pKnlJDPIzOBGkMeRQRn
         HL45kv87UAFhyVrlaRg5y9kSBYJFc7U8+wLZ4gusArcE2YZ72tGwhnexio15jhiIRdkK
         6gwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXS0TtzwkAGmabzK3RiTO+8IWnKx4kHL1CP5feyCcdUhkncEVhjeH2WPAdhm8D0npKV4e9AJlTDR7lG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Z367YIfpImRhMVWxFbZhVqZf0kAvu74NgQ2dnQeODhg2RD0y
	og+JQAARQIzlprdqBkn4YftKRWy/6r4FKzNFVLno0nAzs2fAu8aV4sk/LQrFZzLvhg==
X-Gm-Gg: ASbGnctFPolHoUqaf0TCYdOHBAl4CjLnPkbrfj3qp/RubHeNzRGc7E8pvvQQ8uoIiDr
	5ByLUOSZp2z97n9m8oA4gq3miw9BWuUOid9WQJxMBfi4d2ctZKJnpmFYwfp9/uT4rKwga3s0djR
	+1h3coV4GCQzs9drL9TICIzfgWxg3I03vXMvtahAmshuIdueIJwvTjb3kgfjRxpabIwlAhUtWAm
	keQmhEtGsHRQayGhOm4gWgPzy7YhqYv8NiSUXbJmaR21mdkw3ALYItQh1h6dVri8caYvHdqizRq
	pY5cITh5bBFc2ailtlF2nYILnT3EQvC6F6xHmFPuhwZHD6yf9MKDYoTEE/0OFe/0TjtE/h+Ru5Q
	h454fhYcg80or+xxHuTw1JNd7OLob8tw3s54W8zpf
X-Google-Smtp-Source: AGHT+IGXDOk02fIlA5qGSfKYGJ9s90O7hcZRHRwO1X5CkCWLtg4wt+uUNkT/Lzp453pl+RrYTnvzDw==
X-Received: by 2002:a05:6a00:3c94:b0:76b:8b13:e06a with SMTP id d2e1a72fcca58-76e0df53209mr4119372b3a.14.1754989152945;
        Tue, 12 Aug 2025 01:59:12 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:f81e:7c91:8fbf:672a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bfcb26905sm21989442b3a.123.2025.08.12.01.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:59:12 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8188-geralt: Enable first SCP core
Date: Tue, 12 Aug 2025 16:59:00 +0800
Message-ID: <20250812085902.3309160-1-wenst@chromium.org>
X-Mailer: git-send-email 2.51.0.rc0.215.g125493bb4a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first SCP core is used to drive the video decoder and encoders.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index c5254ae0bb99..10764786bc21 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -164,6 +164,12 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
+		scp_mem_reserved: memory@50000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x800000>;
+			no-map;
+		};
+
 		apu_mem: memory@55000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0x55000000 0 0x1400000>;
@@ -1146,6 +1152,16 @@ &postmask0_out {
 	remote-endpoint = <&dither0_in>;
 };
 
+&scp_cluster {
+	status = "okay";
+};
+
+&scp_c0 {
+	firmware-name = "mediatek/mt8188/scp.img";
+	memory-region = <&scp_mem_reserved>;
+	status = "okay";
+};
+
 &sound {
 	pinctrl-names = "aud_etdm_hp_on", "aud_etdm_hp_off",
 			"aud_etdm_spk_on", "aud_etdm_spk_off",
-- 
2.51.0.rc0.215.g125493bb4a-goog


