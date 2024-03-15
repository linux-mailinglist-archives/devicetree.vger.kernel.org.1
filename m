Return-Path: <devicetree+bounces-50698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E0987CC24
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 12:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A87CB22262
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0CD1BF28;
	Fri, 15 Mar 2024 11:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DScsIYeo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57ED1BC26
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710501395; cv=none; b=V+JQMN9o2h6aiyccUO0p9Qd1ueXi1D412drpCVj+IvJALaaUQWSfp3oDuPfBagosErfife1dPTvH2J69ri/zTbEDJtr0c4xqDuuU/9CFFrGdLzkvG0hZ8sVK5E0mdzxMRjMT2N8WWpy1hZaiJP5+3QNhnOk9cKnYoUgkMdGyBLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710501395; c=relaxed/simple;
	bh=YH8dbDI3OZ1o1z6GCny5WOP2Q5wm9ernb0/aRfrQE9Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PVhwvXvHm71tjxc9xfVB7N+CcyDwcl+clFbu8Rdx4xltGz0cKtWj/3bA1ibwgtGlA/pEKyPghkeNsjQxNSX3h64CZ+1+cb3VA1nksr0IIrRAUg/aqDnFvg3Ipo5YAmlARTe4Gh7aVhvUot9cgV+ngwpglI/35BquONlkX8cCA/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DScsIYeo; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6e6a9fafacdso1703216b3a.2
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 04:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710501393; x=1711106193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ViN1BNw9ywWRFA76/0dzsoN+2iKy9AGYS37opt3AHyU=;
        b=DScsIYeo5loJ88K1IgrGOyJn7dsQOOJaUej6nLB3xpE10yeljRzfxqkD7Cd2C3jx7e
         UWsPgHULFT2riGKjcza6p37egN2N76cn3SKe+0YkuFfg8koKZVYIc8rSu4t2MK2T7eCG
         oGfP82OHM2+Qgt67oePtTYKiS+y/NkfT8kkWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710501393; x=1711106193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ViN1BNw9ywWRFA76/0dzsoN+2iKy9AGYS37opt3AHyU=;
        b=EWEPetBqcqyGHUsGEHloWv1uD3dq7eGL0CO4DxsjavXDbRp2dKfD8seVj53zJ7KkEg
         YBcFI5X9MlDlRGArrslFZRp2BZEJZATpEi9ErfUg2mcX7ni7fehT4nGubdZaAcrk0rBD
         J7zBzb7lKa+hT4VD1b7o3o2t2mRVem5HpYRcFJVl+TJLRko+M+CiqX/vFts/cX8k5GUu
         2HJR506UaaFnf5y4oEHaXJv7DcqeFRysg3B1u9qHp3wKK4Fh/lHsKyg0TbdheSuhJ8eU
         ecICU7Nba/mDhXzUby2h23YCCsPvVDiS/snDX8echrtQQF4VSw3f9bb7nrdrFsE0ULK+
         mZ3g==
X-Forwarded-Encrypted: i=1; AJvYcCXC5v9EcM7E2NmYNbN3bu16eSUVHaccSxECY/NzMyZsRZmUOETVPRKCDhlgAwHZSBZOA9+J1bUnFPTl+bMQU9q/x0TQLmISWSfHDQ==
X-Gm-Message-State: AOJu0YxMu7HJ/K3iMJuatX5gAhhaOm+zvVOpJ9qMqwLeIZ9HmnYLJKC9
	9wBCI9oDU7hV1/Ld6c5Ml+/VKB+nzRu2dAKHhA/6P3Jtku0e2NxaXqSzvLKMYQ==
X-Google-Smtp-Source: AGHT+IE8Jnmp6iXr1KlhSQhcrwZ95AW4suNiCVQyzgxcTB5US5FAQdRs628m8tj5JI5n2G9MZ0ieiQ==
X-Received: by 2002:aa7:88c5:0:b0:6e6:af7e:ccf8 with SMTP id k5-20020aa788c5000000b006e6af7eccf8mr3240803pff.6.1710501393278;
        Fri, 15 Mar 2024 04:16:33 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:2f9c:c00a:bf1f:e53c])
        by smtp.gmail.com with ESMTPSA id c11-20020a62e80b000000b006e6aee6807dsm3122683pfi.22.2024.03.15.04.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 04:16:33 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	linux-mediatek@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 3/4] arm64: dts: mediatek: mt8183-kukui: Use default min voltage for MT6358
Date: Fri, 15 Mar 2024 19:16:04 +0800
Message-ID: <20240315111621.2263159-4-treapking@chromium.org>
X-Mailer: git-send-email 2.44.0.291.gc1ea87d7ee-goog
In-Reply-To: <20240315111621.2263159-1-treapking@chromium.org>
References: <20240315111621.2263159-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The requested voltage could be lower than the minimum voltage on the
GPU OPP table when the MTK Smart Voltage Scaling (SVS) driver is
enabled, so removing the definition in mt8183-kukui to use the default
minimum voltage (500000 uV) defined in mt6358.dtsi.

Fixes: 31c6732da9d5 ("arm64: dts: mediatek: mt8183-kukui: Override vgpu/vsram_gpu constraints")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

Changes in v2:
- New in v2

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 3830daf7ea85..a64d06adf796 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -433,7 +433,6 @@ &mt6358regulator {
 };
 
 &mt6358_vgpu_reg {
-	regulator-min-microvolt = <625000>;
 	regulator-max-microvolt = <900000>;
 
 	regulator-coupled-with = <&mt6358_vsram_gpu_reg>;
-- 
2.44.0.291.gc1ea87d7ee-goog


