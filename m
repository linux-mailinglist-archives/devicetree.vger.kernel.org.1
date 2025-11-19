Return-Path: <devicetree+bounces-240062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2652DC6D068
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55CC54F50FB
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9BC31ED8E;
	Wed, 19 Nov 2025 07:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="T+jmWFEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8DC239567
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763535769; cv=none; b=rghp+3tSe8iDd3aYLeuzRf5DXQDZwk4uEhTLYs+Q9cbf+TIBGB8cf2az/YQ8INe1hPMFuNsc//MjYJyoCkJ36cYoCCImRFcZOpRb4JxqATzgtzAB2/PNJvDdQMgzfnFIgD0vawxF3EmqjlCGMarkwaeDWhr14FOo7S+1pXczl3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763535769; c=relaxed/simple;
	bh=zsmBDBxcKG/lfI3BU25Jf/OzXkj6AnwUlA642heVFhA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bg1HomPsgEOFmLHmy6wJDSPfMoPDEXSxen217PIlgOw6h2CIhzEUr42lHkrqtIFn7o1i/654UBFuwO5l6FqEfdBjlIwEogWkV91S7f0Ff6ve2VAh5gQRTCbMftt1Yhck4cPCUthS28t0tFgyZNJioGAR7BcN9IXNu5m7i1igwXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=T+jmWFEt; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-298250d7769so43794515ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763535767; x=1764140567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cHO3B1sEJLSasU2B2qHUUhTLyILqynKrs3iWjmaWkgc=;
        b=T+jmWFEtyrBDI+1DTYxDI1kBnoHJgdcBrqIqt3mJ+nMHBssZNi3Luf+92Ob2o31Dpx
         n9ROEz9kvsL321sE4I5LXdGUod+0kcAWnEKhlP6TrZJEnk5Jeic4m4sdQRfTgjoCQhvW
         g/qoQSPSkm5fh/pGO3RsCZoWk5rt81D843c/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763535767; x=1764140567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cHO3B1sEJLSasU2B2qHUUhTLyILqynKrs3iWjmaWkgc=;
        b=qvOXly4qgbuzohK7N+6vFTYP/3u31bn8aFYrQrCjew/3RqDhATt2I8AvO7NHcag0gk
         eIt9vxedE8VkypK1vDZQYX9wqcAOz6I+aVLTihXiN8dPbxpbIkdoFygwFrbSKWvV7+Nj
         EAQ9HSzy2MUsmpgxpjTmKxj8sk1bXnrgN0BPZSPtBcEh9gcNkKdx7V85QghyylHUOPqJ
         Svlpctn/DMym+qNbECgEzm5q3zucEmmMXYay7+YXDh1/RIIeIbgGg1svqkSgA3wtDq8F
         0pCwAwujExOjasjFX/0e0BIwzhyfGWpmMXCjBLWJr/BiLSn4BmuXVw1K1w9/XI1h3jBk
         biEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqXEVdSCzORuJBdqSHxcaOSVfEpJssud21UaYQlBJXiwH7tA1swMEiGa6jiBFsxNlozw+JHuI8U+jz@vger.kernel.org
X-Gm-Message-State: AOJu0YwLzQmLzm4Euc/nGSSvL1FIDX2OHhrpgSvddoYfUumSozbF97yj
	0l2Y4b1a1BdmFSNFzbCf9eKfmow5qFGXBI744gb7ybK6t1UyQ0vj98U12AZvPvAkUw==
X-Gm-Gg: ASbGnctelw+rG+cAmbiY786VQVGdiDEl79/xwiXyfaMcZp+JKiJfq/qcQ6Hw2ld/BRH
	2J08UMLO0jnWLc3faimmGvNYsTuIa5yLc9oWceeiPwzYGettR2yhypweJ7xjGsnwI6gScIV29IB
	ttPALDeHD29RuRyBziMmnF6bbCg2foVE+SR+0TPueu3/MxgmDs/DlIRTWtENHv9n9DqS2BnKUH3
	xqRj2T7g9RmJacWq3NLRyuLLio4AbiOPxH8r0SpESHz0Ji3HcNFvj+rCskqHnbgg4Z6BeWQxXpL
	+OQSmxLgk1qoESKJgIgIcPnPRjJyhvSoLCzmZ1U8dmzasC7NKtWal2rQ/ILlzDhSIgL4jlmj9qQ
	vc+Qvo/oqlPh5raqyB0W5ltIFUeHAjc94SALihmjQHm1vxb7en8Z42SpZ/VNp6e1+IrETi2P7i0
	ibVksKjrrYHj5F4/3OPD3zu5WAbjA96ndFBT//s3nhziMJy14EVOZndTiXdeVMoHsAtoTo
X-Google-Smtp-Source: AGHT+IEHSsONT3fw6JCDF1q8w06ko0cndsjR25Hy6eqz8yH+NAuJ24UBek6Rk04rDVhhz02rEcFHkw==
X-Received: by 2002:a17:903:3503:b0:295:54cb:16ac with SMTP id d9443c01a7336-2986a6be3dbmr253974785ad.18.1763535767083;
        Tue, 18 Nov 2025 23:02:47 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d42c:6a2b:5251:a121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345bc250312sm1529456a91.12.2025.11.18.23.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:02:43 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8188-geralt: drop firmware-name from first SCP core
Date: Wed, 19 Nov 2025 15:02:29 +0800
Message-ID: <20251119070230.1716418-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.rc1.455.g30608eb744-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Arnd pointed out that having firmware-name in the device tree is wrong.
Drop it.

Fixes: e36be19823f0 ("arm64: dts: mediatek: mt8188-geralt: Enable first SCP core")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index 7fedbacdac44..8e423504ec05 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -1166,7 +1166,6 @@ &scp_cluster {
 &scp_c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&scp_pins>;
-	firmware-name = "mediatek/mt8188/scp.img";
 	memory-region = <&scp_mem_reserved>;
 	status = "okay";
 };
-- 
2.52.0.rc1.455.g30608eb744-goog


