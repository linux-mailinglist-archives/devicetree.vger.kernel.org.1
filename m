Return-Path: <devicetree+bounces-125944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C5C9DFBBC
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 706B1163395
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B621F9AB9;
	Mon,  2 Dec 2024 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A3UmPTew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8321D89FA
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733127392; cv=none; b=ugHuY91Ezn1GZyot8drZbYG3f+TxcOST4v6CW7QtHRpHdkeMltJiDSWvhehx/wvnTUgcgIHRj5MvGm64+Fk8r7tTjljIjvtv39mW/JYOrQKltLc3GkASIiY7DZcpJsvvBY99nPgeh9Df7S7q/V1q+R36pZ/Hgl3IZKVCemK6OSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733127392; c=relaxed/simple;
	bh=z6lWNIu1GGYkQCaqJ/kxgszC+2/1aMZsx7ZC0zPdLBw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ckLfNR09a1AKmltI7+dnT+QMeX9wftC1So8zFnFaZYZQ8t1ZqP6h6dtS+lQKXUly86yrg99DCnrclaIqHvPf6Jrg0hYKu1scqkv/DwUatwmePGSJeEhb0bTO8sFtUvZPYjDGbSMk9j12m0Eif2mW+RFYJyEqbN7O2q7va9Br3Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A3UmPTew; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ee6c2d6db0so1906309a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733127391; x=1733732191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pg3Yz4At6rILnrTbhiFAD+QZrbg9FZ7kQ3hH3sJqcUI=;
        b=A3UmPTewMQoHi53IeBVTU1qXWEDG+XKJCvWwK838Rlcga3cLWPUihpOBqB1o4/vwPy
         0Y15MD+egSxg0LQY3BISVR0FhvdzSYQ8YxuJ/+T82ik/mgp+qn0/gXbWF5XvDo/gu9eI
         LfiCjCltsO5Z8zMQemwWGaiVTXsx8MtfeYC90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733127391; x=1733732191;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pg3Yz4At6rILnrTbhiFAD+QZrbg9FZ7kQ3hH3sJqcUI=;
        b=OlAipjAXa7ILvB1+NV2dHPLejPaqa1TuguDw8nhllNuXydY+0GAXdoHnhGgnKbxKuI
         426lBnxHJl7NAAL5/VwRSwPTiwqqMVZo4SorbqDyqmz3oz+BBVNu8cByMRieXgXmkzsN
         LKOW9VG8EW2qfzdoGLIHAWibHMIKNanfFbKA3sTt1WgV2AMJl8Bp5SUZlXj3blK/jdvE
         EquV2nHA6jKmZDBIK89D6NOhIaaP00/UzxmtQ2CipViBZll6h9ySDCOkxkHp1HEEmgXq
         U8VNDUyz/i1Wa5ZwSxGehqrNzIvd6e2c7g1+xzxfKn29jCsvMQU+iulZ8fEQhfM94Ed3
         w2TQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5r2B98DiE2UVpoC2ltqECLkyp5HXW8/TMqEj6OEs35+sbZOj0E29h0QGXTrAq2kkK1VCJ5acoOqqm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Iz/CQi92BiYFOKOBFpIYQiPJtD6pEszHQi7s+PfiG+7RzDDE
	1egoSFebs1xJUQEav6bLY26/eV1JfS3ph+nmP2PtyD17PLbmNQDl5j2pYzVMJA==
X-Gm-Gg: ASbGnctiNAFWxgHgZ1D3diHhTQ0FQJThdG5JZ3SCDAaZqbbqGbuRDKZovl56tXKdeDh
	qYoZCTFGXd8m/nwwKjRuW1CtQdRV8heHVG2gDQA/9ChIxya2S4ZJqFMxvfSN2vKs4w3Dmu78Akl
	FGGSzzf6gb5Rde8O4TvFKsXpplflEPJD/MHqNxapCOGDwGVCCYI0F9eAhclvdgisZuysdgiw8de
	DtJVwE206TVqP0zUcc4fl8Xb9/rAfeG0Vbg3h5BdsLR5g+W+Gr/ZF+6Rm5nJOnFyNX/
X-Google-Smtp-Source: AGHT+IEyKQIaeusGCCWVxa+Pk5NLnro9d/aITgSeBa7Kg6kcWmmYAuoWP7vfPPAfBDvpL5S8TRfv5Q==
X-Received: by 2002:a17:90b:1805:b0:2ee:b0f1:ba17 with SMTP id 98e67ed59e1d1-2eeb0f1bc4dmr6645889a91.37.1733127390703;
        Mon, 02 Dec 2024 00:16:30 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:94c8:21f5:4a03:8964])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ee488af41dsm6312844a91.28.2024.12.02.00.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 00:16:30 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Koichiro Den <koichiro.den@canonical.com>
Subject: [PATCH 6.1 1/2] Revert "arm64: dts: mediatek: mt8195-cherry: Mark USB 3.0 on xhci1 as disabled"
Date: Mon,  2 Dec 2024 16:16:21 +0800
Message-ID: <20241202081624.156285-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This reverts commit edca00ad79aa1dfd1b88ace1df1e9dfa21a3026f.

The hunk was applied to the wrong device node when the commit was
backported to the 6.1 stable branch.

Revert it to re-do the backport correctly.

Reported-by: Koichiro Den <koichiro.den@canonical.com>
Closes: https://lore.kernel.org/stable/6itvivhxbjlpky5hn6x2hmc3kzz4regcvmsk226t6ippjad7yk@26xug5lrdqdw/
Fixes: edca00ad79aa ("arm64: dts: mediatek: mt8195-cherry: Mark USB 3.0 on xhci1 as disabled")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 39e4f6a560f9..9180a73db066 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -922,7 +922,6 @@ &xhci3 {
 	usb2-lpm-disable;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	vbus-supply = <&usb_vbus>;
-	mediatek,u3p-dis-msk = <1>;
 };
 
 #include <arm/cros-ec-keyboard.dtsi>
-- 
2.47.0.338.g60cca15819-goog


