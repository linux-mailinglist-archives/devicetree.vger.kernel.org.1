Return-Path: <devicetree+bounces-207488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 934DFB2FB20
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21C8C601D8C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FB0350845;
	Thu, 21 Aug 2025 13:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mh0wcPur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26D63469E1
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783464; cv=none; b=t8yaXL8yrx+pa0YEnbTfLB3f4y3u0u+9qUPPgwOCvDLJuBUuHfinJpSnjHuBTY/Aay9+ooljebxAbJ/cKv96LuGATP/m7IkOKzc9aXdQ77zdrzkH5NppVFYRbvrF+9Fx8kbLrvEi+5pFSNBVdpJ/1xm23teOTPc8JAXNwsnPUlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783464; c=relaxed/simple;
	bh=XnG8D8Z88eQIU49PG/7dMe7xnqvu5KLqqFXsnUqNrnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HXOGD9X0j6oXIG2podKW3Mr0Ga10T5xItDy7j6kQSsAt4AS4tHqjFg/SbelcdziyasDW2y0kgsFGbCgLNkAmDunjuWFdHL9A6WydA7uh0AuD1rR0aEqiJ/5GRY4pawHGnQgzCaJRqzIYXHueZ5TKzCAfetY4eZUDLYZvquAIdZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mh0wcPur; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45a1b00f187so5667335e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783460; x=1756388260; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0n5vgZCuc6Zp7e2AYbn/NQMbYtFdI2JHkj77/HaE12s=;
        b=mh0wcPur8/+iyNbWORGm1GxrNbqtWvnYpTLjnThfSu2mo7k6hyBdh/7lat4D+jflSP
         M9Mdzs+ivCJ5CJYImdlw2mTN+eCATT3qu+7tBxXaUNwbNF3qojLAsVvu4yoVu2/tctwb
         zQw2CTJI+P9FyMajr+ZRE/azcVr/vISICOvESlxxF1on/mRtdl9f0TNrmVyZW3I//dVH
         rljC+OburUFe9zO1mXNmnqB4Cnowm/7iLvC8M+/Ldp7CNKqQh00aC2BFb+nd6m4HAnGN
         pieZCaTpc7pernCGwzL6hvcCrnOqGT9sK4NKlzt3qLTgW9gVMhtIOU3NtgUdhEYOeS4+
         cXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783460; x=1756388260;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0n5vgZCuc6Zp7e2AYbn/NQMbYtFdI2JHkj77/HaE12s=;
        b=H2S65+XoRxi09L64p1R+uA5e7FOb8e+Hfv8adATxe2HqDoIE0/1Z8ZhyUz4mdRldHx
         lcwnXrD6VK1MeEiRFlstswZ+BvCr2OTszOVmmlJchaywoqH7kPU2l31WGMn2a8NFJDS1
         tiXTsNGKAXN6CKJlPPIswsyX0uEjfMWkMvMyUPtcBilvOd62HJFB0hfpdndZCtkOx3AK
         Cx1gQL87fXGnAMmQHD0IaPRbXOja4DAB4EQFs/6a/3I1NCkA57DQBPCNSc38v8j3tFxd
         lOcpfP4PtYogmR0X25laDfbFVE8b98GSpm9ImtLzeTERVIjGX/xOQSuRx/UY+bBn1l64
         5UaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPI+/t882x4xKu+2soCDV4no4Ef27X8jL+2a6UuoeieKsbPwQ3JJf+DM5ees05dlFK/3MjAHNVkIdI@vger.kernel.org
X-Gm-Message-State: AOJu0YzBNrgyjD70/CVSm4RhVNfzVFGTH+feV8SX9QZRGPGqHmjYMkCX
	5K4s0aH8C5NqcPLsTBJh9/Tss9nOK8l8lNm/OuItgXLdeAMdu+lGq/MU6020UNcbDhuTYyqsFZ2
	fg4vravs=
X-Gm-Gg: ASbGncu58+d3fE2CIuvGYPjDi6VtpPrIweYYQqsk7I3qRHGgp8ZV8UfabZBwnVQlsvx
	cbY5TnckFKbN2gVT98rWoOAS68k1etZfexeWuxCJzjkW1n3mIQ4uvMlOjw3FiSc+aMo9l+m/3oi
	xT7xQ7hQSKoKq8wuMYHLZLUcyd0ulapS6QTXQ7PXoCbUgdci2bBPujkztJ2Xr4Upy3gsSS7c2OQ
	Ls1t18+Md0i2EuIYuVe9gnkE+PMTXpYAYMKHdXJe5uGabk25rszT7VtARBb8uJ21M0q5KsXsKVq
	/JqFu6vK8PVveZ6wxqyFVI3H1RwxgLBhBc62F2z/E3519Sl0JBD81YkQpM+AIImXqyeO3Bp/Hnt
	iiTMwjKb7x8pBpXjyh1nBQ/jUhN3e+1WYKuM/jJaNb1w=
X-Google-Smtp-Source: AGHT+IFqD7llHhzk+1jAUW8V0U8p8rCikNUfq/3J1Rv2WNpcmCukNyxfV/L5ski5EeoSS60HiNtf6g==
X-Received: by 2002:a05:600c:3b19:b0:456:496:2100 with SMTP id 5b1f17b1804b1-45b4d84e6f0mr27751175e9.31.1755783460167;
        Thu, 21 Aug 2025 06:37:40 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4db2ab4asm28937605e9.8.2025.08.21.06.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:37:39 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:37:30 +0200
Subject: [PATCH 11/14] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Set up
 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-4lanes-v1-11-0b1a0d093cd5@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1074;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=XnG8D8Z88eQIU49PG/7dMe7xnqvu5KLqqFXsnUqNrnY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyEawqv+WwSoP0xut2l5TXogzMXYZ/3IM278vlrs
 g9a+n6aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKchGgAKCRB33NvayMhJ0e0fD/
 0Q15UKMxvBB0mOvrpgf8mgROi2tOgO8LutI66Vejcjh1nKsM+dv8EJkB6V2qJ+xrPSnuLLw66FzaKR
 V9jN0nU8JxAgnD/eQFhzDwejBJHHJww/viIViUWXaYGYX3Etit7NBjKSPUalBt/5s+RqWPTSBB10SB
 CPm22HhHu7dj4TTq2RRabt4Mj3UI/vqjXbTpeHoEOo8cVIH//T1HHmFmsX4EFH+0RmKgsTFslE4XO+
 6vSAJUeaR47rpe0qXO5CysoDhP6tvNL/sZj2xFU85AtUnecF7onY+YjJth9WqJRTC3BUG18mgeQwNm
 wzXy3pCHuOsG50qPx2OJyw7Nc2IDA+82FI9Om0btyiI4gZ665Pq2u7GuPPQB6jhP6j2KHNm6LhBele
 jPCX9OltPPL1OQtYr+Y2p/XhJdPZgmjqsYU76MZIIBbxN3zPwt26QDJT20FnjUGsxR9qdlKoT+Aigo
 0VZRIvuWDIoh2YxlqPTxpreuvafscwFGi1kdPQkQE/eSsBdoU/kzDUbVz+nIcwBRA5MfI3sbL0Klxt
 MfGh6t0dRw4Kw9A6Pmpv+z+qj8II6tt+OAZzjz6q881cvmqrJxvUqvuH0MmsAW3ctQ19WulLyI/NjJ
 eaN+5cv/uS+uHj88k+U/VEByts9XVr78o5lRLNSsZe6F0bIYjC8dbDLIah6Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index f9ce2a63767c151192b0618ee2154e8d97316c1b..e1116ca9c0ada2431d36805e20535e2edca62b31 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1028,7 +1028,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -1037,7 +1037,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


