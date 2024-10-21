Return-Path: <devicetree+bounces-113518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F749A5E52
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D9FA1F21C13
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 08:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3221E1C19;
	Mon, 21 Oct 2024 08:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K8A3XPin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6159E1E1A33
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 08:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729498423; cv=none; b=HJ5T0cImgYCsPNFPNOCJMHADzjELePR6xTLiRjgievmVHG4WOOCJ6/QxKhhdYMbSFRHB2HomWbKfRSkZdXJyeUNu1O3uNrDgk1KhO8CqNfvoVHdGDyO3UFOfTKzWfLCunAM93uUtL84Yy4qw+A/xioTU9rm/jfzHJ1MZ9MK4lUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729498423; c=relaxed/simple;
	bh=Au4bEQICCx4ikxrtnMJ+NLrW9YgB5XolPwwuPIaaXdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZNmmd6x6E7bmRbKXEye9WMf7tWq/p3ape5YgS1nXAKBt1Elnr23Fczehlxy01VCiPSuBQiCnIpELJ9kFSoAR7rmPX/AwHD8ZtbUfqn3iFJFfK8Q6KrkIKhoROK0XmwuZ4sHTKyw88ID2WDR9v7hISm7cAjlSw0KEc6wpPTN7EeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K8A3XPin; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-71e61b47c6cso3261165b3a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 01:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729498420; x=1730103220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AnvHyOnj93OGsSuS3Yy5YdOPX+qDA4+kJEwXl0YhTUg=;
        b=K8A3XPinCNIVZLYIMLGW8+r+I7ZBguBm+4mlRebMqDz0IzF5HQX9xITIpAg3Xo+V0/
         RbRR/2cx8cBaJIIZIkLrmxfdEVPBryFc4Hzo5RZZ1Br3Aqp+hvXxPEbt+Ylx9Bs65ZIg
         UP5lDZnvrH3G/cQNwovv14JErKCEYUNshlx+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729498420; x=1730103220;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AnvHyOnj93OGsSuS3Yy5YdOPX+qDA4+kJEwXl0YhTUg=;
        b=JNRL1Qi6CS5Lc/Db32n0xNo7YI39hBptEsGPwQGuu+ADuFBsTYxrWKKnvSaF2xpxHQ
         1joUvf7dQUYIkYEGy2t8E/2octoEGvhoXlA0aEw3CWPZZNRDhl+j6mINvytFH3j8wYPr
         yCIxBJjvUBorzfRApCNtRW5k6T3L7BDXOoDZlA+LPZMavC5WE/9pRmMWNPwKov/CZv99
         46Mk36/YjZAKK+W6adSPO+gFsd6iyEXIqxNXKqk2MwOjwmm3y5Zi8emP/0YeEUdE58bT
         bd90s/FiK970Awej7bdTy33d4Z7oya3MrY8LrO0rUNksafSEhcbX5Ft+R837MSS2rEFx
         wELg==
X-Forwarded-Encrypted: i=1; AJvYcCXMxabDW5+LlFmlH/yFjcRvEF3ZM8dNzm3mvloKnAhFvZbmL36r1hVrStcd7yfRu+R2LuhA8JbewAX6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9pQwyACTvDrxEVwvqs6euHgh6GQjWQ5PcurqsTGDz+EX+b6be
	cN2du5e9nZt2ACc8X2Spifc9ZgZQs7b/f2hlAaWX0gOfSOsc+5j4tio7ZWBDLqzXvhIZm6SC8Z0
	=
X-Google-Smtp-Source: AGHT+IHTst4CzwxlMo6qckbiC0esr8PkpKeIcvOCjqA/wtxgMHgUKyWplxQGBAiUUbJyZZiGDF4Cxw==
X-Received: by 2002:a05:6a00:2e1d:b0:71e:744a:3fbd with SMTP id d2e1a72fcca58-71ea31d3048mr14987728b3a.20.1729498420532;
        Mon, 21 Oct 2024 01:13:40 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:66d2:3298:fcb4:c6c9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec13336f1sm2291945b3a.81.2024.10.21.01.13.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 01:13:40 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8188: Fix USB3 PHY port default status
Date: Mon, 21 Oct 2024 16:10:47 +0800
Message-ID: <20241021081311.543625-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The T-PHY controller at 0x11e40000 controls two underlying USB2 and USB3
PHY ports. The USB3 port works normally just like the others, so there's
no point in disabling it separately. Otherwise, board DTs would have to
enable both the T-PHY controller and one of its sub-nodes in particular,
which is slightly redundant and confusing.

Remove the status line in the u3port1 node, so it's ready to be used
once the T-PHY controller is enabled.

Fixes: 9461e0caac9e ("arm64: dts: Add MediaTek MT8188 dts and evaluation board and Makefile")
Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 2710e18ce696..3d11a989f39f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1961,7 +1961,6 @@ u3port1: usb-phy@700 {
 					 <&clk26m>;
 				clock-names = "ref", "da_ref";
 				#phy-cells = <1>;
-				status = "disabled";
 			};
 		};
 
-- 
2.47.0.rc1.288.g06298d1525-goog


