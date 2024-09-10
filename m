Return-Path: <devicetree+bounces-101641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A68972C77
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 10:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3E4F1C24525
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 08:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B1E187FE5;
	Tue, 10 Sep 2024 08:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fVHXZSPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9E5339AC
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 08:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725958072; cv=none; b=AAYabNK+tYdTDwAcwL3b0kMm7ZlIeufBmJmbILVkKENSHihEtdGyXtEMILsudK2Wa/dnIp1DoSgd2hKCrFM2ZtJdcia7Dm5IwNjGzI3i31w3zyMdq38HwyOjtoMkfB6sB11p1OG9QusFU1Gip7JV13KE47ZE2EH8MkoUQqNYt5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725958072; c=relaxed/simple;
	bh=jHA0jeu39KXliSARGIHnAxhwXIadsXhXT0Q+hrmmgng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=VugVHMxH1LkJlCrKz2pUkfBGwiyXUen5X9YJsFBHgGA3JzbUrAfYNaTCN7NS918nLcRB9yOgY7x1x5Nb+foHz1aWe+f+dq5ZGm26PGzZq6DBX6f/9KPPNEYAqveWJoAGB6bR+x4x1HUpLWtnLE5o2+z8t6qo90VhJ+mK5we3t10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fVHXZSPS; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-39f51371baeso2013245ab.3
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 01:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725958069; x=1726562869; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cBBzknlK+lLnrfwKbcqJfsrQ3C2pRWbeBhTXiYHvZyE=;
        b=fVHXZSPSFhKYYe3gtyoThElvELUXlaX1nQkqHGOVXkACrwR4sguPB8nX7bkFrZ1bwI
         a0/2NTx+8zHAwiKS4IPzWLrXklKTSn1f4ShhXq6kLnULbimH5X+ms8tUOWiCBTt/t1W5
         BPlXCDgN6ppwi0z2R/jaPC/9MgUEBmE+I6TyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725958069; x=1726562869;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cBBzknlK+lLnrfwKbcqJfsrQ3C2pRWbeBhTXiYHvZyE=;
        b=scbaiFoNwOI64/MIAl0C/4FDPwJ4uzQVT/5PRYW4i4tjlLpsx+SW9bXIpidO1tZJHr
         IjoHtf7wT33PdlSgXomIetHw8H797u8YZkxMw+Ka7LU/x/ErqQ/NxszLizJTpmJuSrby
         z2A6zWQFZZonDclvla9FfPxr9YKJt7Et2k+/gbKRho5IplTB44rBONpRlnTwXjg3o2nT
         dE3AbrqosDw383Mh7J8YpCCaSG/McjAT+hEPDrHKi6ysAOqpdgUIPvNggBTpti8AE4e2
         e6TTFWPmeRC7D+WM1vFzAHI1noaLLfP6PqsDNOjmqfB8xtqnY7AVOkq3N2cvy5fkKn+n
         P+NA==
X-Gm-Message-State: AOJu0YySL8RE3QHQ+wxUG8nKHpYguyu3qR4ndd7ZRk8dAjcUfK+f/03u
	XneaMGHNVYAcw9Sz4lHotIfMKcNrGV1M0jpS1zN+Pi75tF6Q9LRSk6skblUrEZZQbsFXjZnoWpg
	=
X-Google-Smtp-Source: AGHT+IFOVFWWzyNSgsRLILhNfgn8ya/XNChSnkapjK3BwdkIfk05bwfwygl28fTApbbAe6jPdsd0hQ==
X-Received: by 2002:a05:6e02:1d82:b0:3a0:4603:70df with SMTP id e9e14a558f8ab-3a04f07e7d9mr156667075ab.7.1725958068990;
        Tue, 10 Sep 2024 01:47:48 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8b0fbffa0sm3931470a12.1.2024.09.10.01.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 01:47:48 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 10 Sep 2024 08:47:44 +0000
Subject: [PATCH v2] arm64: dts: mt8183: set DMIC one-wire mode on Damu
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240910-one-wire-v2-1-2bb40d5a3cf8@chromium.org>
X-B4-Tracking: v=1; b=H4sIAK8H4GYC/23MQQ7CIBCF4as0sxYDWLG68h6mCwrTMosWMyhqG
 u4udu3yf3n5VkjIhAkuzQqMmRLFpYbeNeCCXSYU5GuDlrqVZyVFXFC8iFFoL8eTUgfvugHq/c4
 40nujbn3tQOkR+bPJWf3WP0hWQgmvj21nrBms8VcXOM70nPeRJ+hLKV+4ODgSowAAAA==
X-Change-ID: 20240910-one-wire-2d0f7113dc8b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

From: Hsin-Yi Wang <hsinyi@chromium.org>

Sets DMIC one-wire mode on Damu.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Add fixes tag 
- Link to v1: https://lore.kernel.org/r/20240910-one-wire-v1-1-d25486a6ba6d@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..06a689feff52945d141d196d439cba034f25fdf6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -26,6 +26,10 @@ &touchscreen {
 	hid-descr-addr = <0x0001>;
 };
 
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };

---
base-commit: da3ea35007d0af457a0afc87e84fddaebc4e0b63
change-id: 20240910-one-wire-2d0f7113dc8b

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


