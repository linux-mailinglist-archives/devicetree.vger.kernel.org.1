Return-Path: <devicetree+bounces-129593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F89EC43D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9ACD188B4FC
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FBA61C5798;
	Wed, 11 Dec 2024 05:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sty0aD9s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292451C1F27
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894689; cv=none; b=M+m8YAD/0OK1/S5WRH1NaIuoUwcvNK4A2vljWfq+V8gWjxHu8M5T7x4R7rycLYrpNRv1690naN+qek4ydqPLlhypM4LWZV6ZhX0McDIIcbgtrMJ6UF0Vq4uJwy3Buv/phIXFHES2xwwEwRd5RDGuvi/aMQlZJQzOcSHdDFcmhVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894689; c=relaxed/simple;
	bh=bzA0tsgUBJTNJPvzbR8N6/Oiyp4w69Y5EsNtOEj+tV4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iqWxlg6wZ7hCRcz7YG/xZk8fKE+JMyQgCUJIg0q/rjxYOXcTieNqLmsGrCf/hIk3U3R7oXhFBzp/nl1Pt1bLSEcsEoe9y1TssDx7LLgnYVzXHmaHCfcv/201dkvSIv525FIlD+8yNqxnij5ggwInl0wXgMcbQQHpp4SkJKmJ2Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sty0aD9s; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7fbbe0fb0b8so4588871a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894687; x=1734499487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+37Ej0Mm9yXagdLEw7xP+d3kLglfqR3xptBmnje5WIo=;
        b=Sty0aD9sISMsEJSH/fhTn3AeEIrjCyJdNq4LJhoIfsSQndkISeKXHqH0Ui4T7QCg0p
         9Wb54FS6r6n5Gl+lieMwNvhXhkr6o7vN5OJzMf3c2Fu1Gl0sqw+cERF0iRWZ+9BrlYzM
         Dl/kZMFFkQaNDOXkBRVdn5lrmMxOyocAU/GNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894687; x=1734499487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+37Ej0Mm9yXagdLEw7xP+d3kLglfqR3xptBmnje5WIo=;
        b=UPAAbcpNLADrw0jyAByNZWnVS+j4U/DjO705jTs+v0Fk4c2ebN5LZG5Qb8hp/oj95J
         On3IkN8dhAIX3PvSJ9NLzcADRc1SjjYI3jg3/tnG3fkUIZ2tjcDLRCKnEXSu06RO5vRm
         EKa3Al9Pj0Uv7wQIJ00qWMa46+X+JMBlSE0lOqHJWpDFt3Cdq/zrxt8B2Lr/F6W+/sjp
         btwsaYrcDnqP7q0tU8AjMOAQ4wfJ2ws0ahytP/27wAbFCqaSZuaQKCbc4BKLnfnNCutp
         +oBRXrtjwnMYuxsrR2dDq8R6lbYVMcan2HL6buOIso5ZI1DGqFamxt+TfBuOiFvoBxjT
         wbmw==
X-Forwarded-Encrypted: i=1; AJvYcCU1guv1djkMVw1AqfIpPdRba+28YGckEKfb/0TvMRgxwoLrlqMHsekUJC/wrUtgsTnVJrwm2WvqgzWm@vger.kernel.org
X-Gm-Message-State: AOJu0YynKh5KoTbT7MORNCNZZdecuj4X9LlxkO3M02fMJAhwUWrPy+f9
	M6zsfq2vQBA5aWK97LP4auC4qYuDQL3EKbe5PN4ACtuwgQ2UHFf7fAY0JMOnVw==
X-Gm-Gg: ASbGncsqen+l/FROu6rH1TPB/paheRsmMproSEe4Yfd3TxotkEhowCY7pW8+Z0t/JNt
	IQspyb2VaFgC8HHhNy+BulxO1ZCN/jY/tRyBbTPuEeLha+4pQ4DbcmhDcnzvDZS5WGqY7zPRYjw
	3C2+eTNMg8+M+6qRKqCjxuAeqDj9CMC7RZLzNwFzr3OLigOi0iVONXLe+svZCxq0m0a364qLYql
	8xY2EpVG5+9SLIww3w4G9D6HFOFaVkTq1XGES03fU9ckDYCyOCQ88NWRMxFlHXTY8Ac4oCm
X-Google-Smtp-Source: AGHT+IEnDOL+LPNNcjtycQIWGHlAJTgKm/mNrg0sjuKMLfoIK4R2jRd0ukkjYLye/s1Gfn5Kr4iv/A==
X-Received: by 2002:a05:6a20:3d96:b0:1e1:b062:f403 with SMTP id adf61e73a8af0-1e1c1337146mr3393676637.34.1733894687682;
        Tue, 10 Dec 2024 21:24:47 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:47 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] arm64: dts: mediatek: mt8195-cherry: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:23 +0800
Message-ID: <20241211052427.4178367-6-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241211052427.4178367-1-wenst@chromium.org>
References: <20241211052427.4178367-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "regulator-compatible" property has been deprecated since 2012 in
commit 13511def87b9 ("regulator: deprecate regulator-compatible DT
property"), which is so old it's not even mentioned in the converted
regulator bindings YAML file. It should not have been used for new
submissions such as the MT6315.

Drop the "regulator-compatible" property from the board dts. The
property values are the same as the node name, so everything should
continue to work.

Fixes: 260c04d425eb ("arm64: dts: mediatek: cherry: Enable MT6315 regulators on SPMI bus")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 2c7b2223ee76..5056e07399e2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1285,7 +1285,6 @@ mt6315@6 {
 
 		regulators {
 			mt6315_6_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vbcpu";
 				regulator-min-microvolt = <400000>;
 				regulator-max-microvolt = <1193750>;
@@ -1303,7 +1302,6 @@ mt6315@7 {
 
 		regulators {
 			mt6315_7_vbuck1: vbuck1 {
-				regulator-compatible = "vbuck1";
 				regulator-name = "Vgpu";
 				regulator-min-microvolt = <400000>;
 				regulator-max-microvolt = <1193750>;
-- 
2.47.0.338.g60cca15819-goog


