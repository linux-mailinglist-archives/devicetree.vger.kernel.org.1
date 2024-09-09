Return-Path: <devicetree+bounces-101367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 754BC971665
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A05CD1C229EA
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 143621B78F3;
	Mon,  9 Sep 2024 11:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M1psLMmn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9D81B6553
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880678; cv=none; b=iXAopwOcYOfOxriAm7ABLIEX9s3Qj2Raf7yqPc5SLQ3SkpiTlbEBuFxdKIU+WEqGkDO7+9wmPJZY6+0XtavZuDGIUybD/lZDMosLdvDEuFqzjKW0oux1sFvhm8+MmQo2I3ZTaiMhM942UcYeJbwmlRs6GB16ftSwk0bYuY5525I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880678; c=relaxed/simple;
	bh=rwGFuqx0LaG1XXaNmL2ycpGo94t1hv/I3mXlTrCgi1U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=svhauBbinAjMxw+WJ0F8vlXfr3eoiEk3yBlFCofsLQNFYupq4fV8L2CeutUgLJdQCwebOvQKsSotCVxsO6Fgh3GpZU4R2aBhH4+kNQmi0ozQScvsgx2tUbOvs+LHJP0LwXMQL9X1FUL6hKn2RISCgSC1qQCAjRbkwBa6kLYMMlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=M1psLMmn; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-205909af9b5so32495825ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880676; x=1726485476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q1Ttr2z+4sVDsV8+3XUKUGFQBqd5IhKsFwImuWWsKWQ=;
        b=M1psLMmnAxQvcBha0NRDb8vADZBIr2sqH2FB2S8CAxEEVD5yRPRHr08DVln+9iVApe
         9OkF42QEsTqhqs1YL/D1I6HEp9WNl5U03whAIOnmWkJWoisL+BEdnz8NeUBqHkrFJlms
         nPL/xSPY+Di28KcbAKv4BRuzCFqN57Jzi7axs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880676; x=1726485476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q1Ttr2z+4sVDsV8+3XUKUGFQBqd5IhKsFwImuWWsKWQ=;
        b=q4LU4F41JUv1EVbA8QeFy91Gh+eh/IXxLaDdicmNTjhYdFQKPRC/nQHDnVa8Ql7zz9
         qUeDAFhjQ3A+2EF3ruf+Mc7eo88mQeqDRJfMO0l8gwfe64p7FSEjzXT3FDIPDHe89Vlq
         DseQvqoKSjR3umXXpGYX141Y3YznDpdMDB1rOpFuJrBO1l83jGAQhLYnLd1DreHa5i5Z
         alMitsp6M0nngSs/v+PoMrxWqvRmVfzYs6LrSAF3wbUR3OHOLW40++pFflYvSN2G5B7e
         PtxtJhZZTmxgz+YAd3VN7wqFJ8L1+dCuzhtJK1kSjsAoLooPzE5LsxAZa6Tmn02yqjag
         GASQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW9OiHAdmVZ9TcGADL3FJEHv7mdkaePgDBcZONBs/3lIdPFzC9M+qAfcv4YWZ4Z/YwgBgF2IoI+b4Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzSnlKruOn4haGmaP3/2+ZyDo/cfU30DQTfwwDZyhdogiD1+UmH
	D7cx3fYlZ1+Oujgdyc5vv5fhE/qP5/GXJ2K3vecpKLXiS0bu45ShP0XlyH28qQ==
X-Google-Smtp-Source: AGHT+IEjDpYo7XNu9Z1/fDj+e+7JTbEWp4nu6rsFIS8qHBK0NlIS+dKadP5GapUDsdnDfnQtg1bSHQ==
X-Received: by 2002:a17:903:2292:b0:205:5410:5738 with SMTP id d9443c01a7336-206f051ee5bmr125183735ad.27.1725880675836;
        Mon, 09 Sep 2024 04:17:55 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:17:55 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 03/13] arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
Date: Mon,  9 Sep 2024 19:14:16 +0800
Message-ID: <20240909111535.528624-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing dma-ranges property to the soc node, similar to how it
was done for MT8195 and MT8192.

This allows the entire 16GB of iova range to be used and enables
multimedia processing usages, like vcodec and MIPI camera.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 788dfb5484bd..dfbc50c878c4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -888,6 +888,7 @@ soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
 		compatible = "simple-bus";
+		dma-ranges = <0x0 0x0 0x0 0x0 0x4 0x0>;
 		ranges;
 
 		performance: performance-controller@11bc10 {
-- 
2.46.0.469.g59c65b2a67-goog


