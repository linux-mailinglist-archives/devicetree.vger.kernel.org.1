Return-Path: <devicetree+bounces-170844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04378A9C838
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:55:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A5AA9C1F06
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25122550BC;
	Fri, 25 Apr 2025 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SLpjf20K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0112522B4
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582041; cv=none; b=VlYi+Jdf4plm3+pim8Df5jSsDMkTdvXpfoElwcnExEVY30m3h8rg07yUhEV5sGSV+XIgLSYyyP1QPN57MOW2LyDx/oKyeBjCR8SR8C49iI7Hx0TtroIi3g60a5PXbIvvHBCJjm7zZVzw4TeMO/OuQtzXKeFOUbkxNhr0q/6PE4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582041; c=relaxed/simple;
	bh=mdt+FfQLOXW5H8VB916VcVsQAh5jD9AsKl8jhZ67g9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JAiOvSGaMKufkJlCeh9FqYGg4dZnuZa2yVgg5cE/tzPj4CsoAWDTvoORNGh1+8kR30xHtwgwbacL29EFbB/qm1yRUEfz53e/CUw/Sq2uxLcnl4/bAGt8lAThCy/z72i4vN/x440ZOdiUMJx2KKSagjt/diyrUIp+8BeBEo493pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SLpjf20K; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso338512866b.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582038; x=1746186838; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUVOyxfmwmjXh6E7hIxSYPGnlbPlmO8pnH9O68ZQFjk=;
        b=SLpjf20KVRAeuz2m/cmuNCX17cNJcXGYYzGRDSIy3OkCx1uZ1RdJjCNHcnSl+1USjT
         82KlBEfyIk+9o9lEbRKt3jJZESRhNVcSlol20+/SiGuuMPJjJY+yL+SecRU0xeGmE1wB
         xQuaf5SNPi82+DchFOBT5xbyFIsSgjrbwn835t/d8LAX5I1c5FTRHm2clDjPe0TAaTHP
         sMeVG+DRMmsOaFgQXsPw1N4NXP0PjtOnSZGASn7r30BHNQeEAguy9+0xyR2+HDfylmgn
         zQmVLGd6t7+l6GfrjUdPPmvxj5KYoDTuGmg2X7jj6AY7HWFmGQZNSUTd5nWrhAX3foz8
         vZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582038; x=1746186838;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUVOyxfmwmjXh6E7hIxSYPGnlbPlmO8pnH9O68ZQFjk=;
        b=aiT+LSfaz4zbIRSWyCVXnNSmb3FAL8beIYW1hQOy/YEwnOgGMLnY3BxaeT4yiG2Oe8
         cCavQLcSsakm8S6Vvtg5JRKr6WPbHWk3Ifij6Iy3reXRStnDAbkyGttzV7uoBJJmHZgn
         EW+v+dPuVNmiYO4WB2x2wYxKItkilyW9MvXs7OgImmqDMsjTwnBkmWS3BdZh0jJW+rXa
         OWoVSjWJryJkcmfb26uJ+9rNlhpQCXae8jNdtASaKqyEf+DayYrE9lnEawRvt9vgwT2h
         rHJg1Sta+mDbfTe0AjKJBtu5waRU0qB4vC+f2Pf3cspNqh3mgxyxs4X01CC8P8QXusxr
         7lIw==
X-Forwarded-Encrypted: i=1; AJvYcCX4xrtAnork9kTTj1Yg+wI6j/NSO1Cw5P+WxEzZj6zS/4fSX8iJqrR7invciKahtjHzOiCQS3oM5M9u@vger.kernel.org
X-Gm-Message-State: AOJu0YyZJo++OCe1mz6Pl5TmirqLL66tSgHVAudZnz33gaBJuAFBFQqW
	vqpar+8doK45vyELgzYAX+4Z9Wbp7ismSaHVre+O7XPh7+p8nFE3NJ4tHRuFk4o=
X-Gm-Gg: ASbGncuaGyK4tNzgWsrXZxXyzrI5pBP0PmXeApdKi7ryhZVWNsGI8p10YXAGHxitM13
	2P9zMvx4SdX9wrBV+k6oI3m9f7Ew+Tnw52z0paBCYlLQ1+n55yBTxK+lHon7U2RZ7D+Jz19OcxO
	4IjNq95gieUu51Hzt/dZU5uJ8EtBudoZThpuUdWkhVSt/kjH0PKLLunq941Bc+LgH1lc5cxoOya
	24vkdA4crvpilJzBUCetuR8Af4hvQ7MylHNa1LYYSjKHIA8GV5HO5v7U7O6CAXoyYdyBW2hv4Ir
	XMyEzVx2t0P+YWMte2zM6Rrer24JAo+gUL9g/HRYTfoJFPaVrea2cYLV2wKBJ/3rSMOag2K1TIA
	PcK7fLp5Ll0MQL/4oo5fKO/zM9FzwDrmxiJFz/spzlL4j24kEo2h54+hH
X-Google-Smtp-Source: AGHT+IEIFzywz/urPBQhdVyC9b0OBvVea74eItKR2Wff2NqW4gNd3rRUW/MHApmdlOSrb3j2cNq4hQ==
X-Received: by 2002:a17:907:74c:b0:ac8:196d:2262 with SMTP id a640c23a62f3a-ace71133fb9mr169852466b.35.1745582038208;
        Fri, 25 Apr 2025 04:53:58 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:53:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:45 +0200
Subject: [PATCH 06/11] arm64: dts: qcom: sc7180-acer-aspire1: Use q6asm
 defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-6-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
index 3f0d3e33894a0730bd0b14738ac95847bd92ee65..672ac4c3afa34011eba6a309148978a777e2fbfa 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
@@ -530,19 +530,19 @@ dai@104 {
 
 &q6asmdai {
 	dai@0 {
-		reg = <0>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 	};
 
 	dai@1 {
-		reg = <1>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 	};
 
 	dai@2 {
-		reg = <2>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 	};
 
 	dai@3 {
-		reg = <3>;
+		reg = <MSM_FRONTEND_DAI_MULTIMEDIA4>;
 	};
 };
 

-- 
2.49.0


