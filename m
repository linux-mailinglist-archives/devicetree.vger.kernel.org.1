Return-Path: <devicetree+bounces-101215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2443970FDA
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7E951F2144B
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 07:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144841B1D7F;
	Mon,  9 Sep 2024 07:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cnVV2TUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B7C1B1D40
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 07:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866957; cv=none; b=hmADuTtrjxf+fhJGAeFXRCVy0Zc5imY+RKhrnvp81R+PbQiR0eS75spI4KQ7ms4kj55Guyd9pJglnNrxUmzdX12NvUgDCSsAO4zTQ+3guRQtI3StdUTtSVTEURaC99j+pr3hZflOiuO/F4Fjg36t8vAgtABDi6llxI5u5dvSOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866957; c=relaxed/simple;
	bh=OCv2tbQ5uWR4HBuQxss51m8LOMkRw5UOdnztcLZ7t10=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UbXxgpVOxLR6k+O0WM/jqRfuX2BMWA9eu6Z/vW8TpuC8nZj7VDIWWGU4+W9WFl+7I4ITiaQ2rsRA5Y9Yh9ZIDMEGuRW8oU+KgD1AtoIp1kkJcttoBHPY+8HHjQDYTBQay+R+CkUlawMFXiy8jk+MocFNKrW08rclMMaRlBVd2hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cnVV2TUF; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2054e22ce3fso34321745ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 00:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725866954; x=1726471754; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pM8txHWCWm2GJm5rpiUSna+befFEZvb0Ph4a1zYyG00=;
        b=cnVV2TUFKFQgde8wuKGBRrmoMbgBo2d1W6iyL4lIcaHI0Uo+/cVbkcg0x5foUl6H9H
         65LKFAMMYOLt8gcp7NgXl0Jn3AyuGlYIaZQUAtCICCvxByEtAqtknl8NNle5G69mG0rG
         5pBgXDQalSakTRKrkmq85O6liyxVFWhmyU7s4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725866954; x=1726471754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pM8txHWCWm2GJm5rpiUSna+befFEZvb0Ph4a1zYyG00=;
        b=SYjf9y45HnVzJdW/t5N5CshZv8+PZ2Z7Bm/vZzBFFNBsrxEWRM6PIYBTT+tenSJARw
         6s4kET1iq893Ib6l4xJE+ONJLtvNbzIBaaV2khVor3Z3Pln2WlgU5E/pajCKkze2kdor
         Y3Od6YyhrFP4oNcpEnddEAu4Eeo8kPwf8SmimeNTWAxYEcYXivoU8QS/kAx/cT1shixd
         MTz+1cKJrW1dHjbYbxYQX+LfIiHdBvy81uC/4F3cEWM7ezajxlpirSJJYFZ4D3rh+99U
         MNsxaudrg4Amr+uaBfhX3atice4Mmw6iNx5acc09zo2x1ILd8A36bUYCgw7JR32zLKaC
         Wf2w==
X-Gm-Message-State: AOJu0Yz0RpbxhBHNtjK+kHraKKTVujgKCZ/aRJe1Cfvfp4FjPLcdZI9b
	WrnBPaJp4dOBTKJcnUudXrxmwOq8yIr6ydtTdVPLoYVylnTaYS0sylz2SkBY7xdYc8q4QX0bt7K
	wBw==
X-Google-Smtp-Source: AGHT+IEbTOHDb3hQFJmEAFiA5/NZjRgBdCrO8hmFdHehHIQt4lO8vgj12wqm+tEvF2kI0aM1EP9upQ==
X-Received: by 2002:a17:90a:983:b0:2d8:ea11:1c68 with SMTP id 98e67ed59e1d1-2dad50e8827mr8779270a91.31.1725866953932;
        Mon, 09 Sep 2024 00:29:13 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm3841065a91.21.2024.09.09.00.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 00:29:13 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 09 Sep 2024 07:29:04 +0000
Subject: [PATCH 2/4] arm64: dts: mt8183: burnet: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-i2c-delay-v1-2-4b406617a5f5@chromium.org>
References: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
In-Reply-To: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-7be4f

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: dd6e3b06214f ("arm64: dts: mt8183: Add kukui-jacuzzi-burnet board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
index 19c1e2bee494c98c0db87308494713a26e304cd2..20b71f2e7159ade7e7d2135aabe6587c8f8d64de 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
@@ -30,3 +30,6 @@ touchscreen@2c {
 	};
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <4100>;
+};

-- 
2.46.0.469.g59c65b2a67-goog


