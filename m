Return-Path: <devicetree+bounces-76170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D06909DAC
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:21:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19592B216A7
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252B418FDD1;
	Sun, 16 Jun 2024 13:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BO1oF+91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D697A18FDA6
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543990; cv=none; b=VZauNdGneguIlrRZs8MnVKUUi9l6Ng3fPu/LfNyAO/lR1jYMWYT44+/U0ne/JaFyLNeM2zG8QEwUClkh2C7iYihHkDMnzAMrojdcvjR3DG+InjwuHtehs1BoH+/SNaoku8T6PlMMXbZhsjgsfrYApL3jNrQyEWnEGKwDRDyVAtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543990; c=relaxed/simple;
	bh=lJ28Y3M24JoUrkT0kfRU9mVaVheUptQt841EFO3wEWg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cq9cFy+tmjO+5j7xRBFBSjBZtgH9XLWdcyrylo8SBhadGasyIIcIiAE657aa4V32Jlh1RX9Vs9zP98Gv+yjuiranB7WY46ToJA1bhppbEBZ/oe+b/oXw3B7aQs0AXyrZx7XtFWWkZtdSGMx+4zR7Vney0j1+yWlKt2DX8hFSsxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BO1oF+91; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-57cc7e85b4bso2586634a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543986; x=1719148786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59XlO8N85CHKMZTE14dutfLqTOocIO6QaYNJIqLDR0E=;
        b=BO1oF+91m4i3SMXF6AyXIKAg5V0mFiKoUN3YTRhADPSRDrWJTGz4FMdxc5i81auPzu
         pI1YDf99MQQsuOVIShzsdeNiX1TFO/GDXWGCsPvg/Yn4mokXLWC6a9QvtU/iAG6Jds7e
         Voms180tLscw9Vw31gokM9MusJL26Yn8TfkX8LXQUAOOvJ0AuJYyxlV5ACO76YGUBNUb
         /I2vtDn/fYZkG7Ct7UFzCLv+yGCZIKoEmBA2Am2mBSYCm6QWkepv9uIyY0anTm3em8ld
         k9u3s3nxnV4SZY0aiO5EYNwLYfGU1Fd/ZxYenqdv9UIDNZGa+ozox2p6Hjdxv0QYuoEn
         ahDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543986; x=1719148786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59XlO8N85CHKMZTE14dutfLqTOocIO6QaYNJIqLDR0E=;
        b=MvOu+jLo6qaHVZeNFcDK7W+khMThbcksTqamCboL0YRxJOo0j45SiSWCr1HMrdlnD1
         m9BvvuS1M7iti5kpWK92OkW+I5Mu+zle6HTc42ejekRUTPHHF4VUwYe8UdVe/k63nU4p
         twSQBz+005j1fcD8LSnv/o7Jnt7GkM2XEJQIiRuRqFJWfTOgGhKs5Q0LQJApqbyVjz3x
         hjuEZR98umvsPECOkqQjwpoNhhmxfurP7iU3CU3Nj1irlJG/xPc4P3IY33ZuaxfoWvza
         vG9XXEwz8qx8HeRuY9Ra5ddY6yIc+UsG+w0V2tyXNhimcgF/SYmWp7r+2cH2uz77SB+f
         4iCA==
X-Forwarded-Encrypted: i=1; AJvYcCXogyoEjle1S7/UEvB5oq0vCr4gLv8fLsQMIc+AmifPB4GD+DeslakMMOvwQl8ZwW/RmAwVhA31UVWGeTBFJfgVQIgUnIZm6Wx5Lw==
X-Gm-Message-State: AOJu0Yye5SWX4AdtGWHocf3hu9bTd4V9EFRWehcDYP0V3yxa1WvAZxMU
	YBugEtzCtdRq209DqFsEhEEAgClmd3TP8PvetXnvzngvEkn5OU6DPlklzfB68A4=
X-Google-Smtp-Source: AGHT+IH9u76WeDG3eOiV7luLeppMMIooUwFkUFTuoY0slKOmXnYuhfgrO3dbY2fhWktwljJZ7lGNaw==
X-Received: by 2002:a50:bac2:0:b0:57c:70b4:7ac with SMTP id 4fb4d7f45d1cf-57cbd8f1751mr5555044a12.15.1718543986242;
        Sun, 16 Jun 2024 06:19:46 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 16 Jun 2024 15:19:27 +0200
Subject: [PATCH v2 7/7] dt-bindings: mfd: syscon: Add APM poweroff mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-7-571b5850174a@linaro.org>
References: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
In-Reply-To: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=lJ28Y3M24JoUrkT0kfRU9mVaVheUptQt841EFO3wEWg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZj4ZbHwKVi5k4X3fOKFTh6iG71Wc9FEkgu9
 BVwcMkc0GWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mYwAKCRDBN2bmhouD
 16UkD/9aWHedSRSAu/MQBnkJNIZDzJAn/m8m53L7ouUBr4rLJafFHjvUX5yVm6vLUVtB5GQLg3d
 dn71OMvDG03cQU+3OFAY62l9RxNsWeerDto6k9CPN8HkMubrdZDM8VTWHFuF7Let01WJxUSoLJa
 YZxW2eIYh8K95Ob00fUJ5OpEz+aEsQOvgGggWETwYKVGiS/8gisoKurr/6UyGj8JxfNVeN3BB3s
 z/hS3cRlZSlFaL9srRvkDpJyuiOH2WDXmnTNFwUJrdcMFntXSRk74KAJIN3ag1kgrHFBh3mSp1e
 kKDyacV24jcCEl6Fxu5Ew+75NayxeLtu1z1fmpoa/AogjP/WmB0QhoqTc7K+LLtn5bxJDovSIxa
 sUMmZXE0ZRchoUchtVnQR0m+qDgb165ljTWq/CrMTTRCjmEbzOrEYpDuMPylPwom226N7HHfCog
 KWXYnGSEqF3URWvWDI+gL4y0Kki/AT0oKfMII4g+29hiupI18/gGVAKRv9vGUEuYFhFxP9Y/aYs
 YCqUvaSABgbpvS3y3d3t25Yq74uLftYhdSPJghBkoyyG9Oa2pSGhfNsNhTHlx/A5Q2KjGPykuP8
 B3Avj9TwacD7hDPnW2z1nJLTa+d12BpX1iVPlLVw6DJPPTrawfDID9A2UgYlcsGRQnE4yyAGmyb
 jZdxnLBn7yOaevA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add compatible for an already used syscon poweroff/mailbox block in APM.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index d4e9533cf3fe..70e3a4465b4f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -41,6 +41,8 @@ select:
           - amlogic,meson8b-analog-top
           - amlogic,meson8-pmu
           - amlogic,meson8b-pmu
+          - apm,merlin-poweroff-mailbox
+          - apm,mustang-poweroff-mailbox
           - apm,xgene-csw
           - apm,xgene-efuse
           - apm,xgene-mcb
@@ -133,6 +135,8 @@ properties:
           - amlogic,meson8b-analog-top
           - amlogic,meson8-pmu
           - amlogic,meson8b-pmu
+          - apm,merlin-poweroff-mailbox
+          - apm,mustang-poweroff-mailbox
           - apm,xgene-csw
           - apm,xgene-efuse
           - apm,xgene-mcb

-- 
2.43.0


