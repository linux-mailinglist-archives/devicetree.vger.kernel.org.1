Return-Path: <devicetree+bounces-42503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0200857A05
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EAAE1C22C7E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D1B200C1;
	Fri, 16 Feb 2024 10:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="gbiXuLJc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8218E1C2BC
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708078258; cv=none; b=MrGVs5vm+KjU6yculdxp+xaeSg1KPEP5n4DsdhbiYu2MPNCFDzvE8DZCzVSw5ZMC2NfY1YOP8w47yVrRMrRXfAIn2Gq4CgWT+R9+imZtA6xAJS+Yr2elV+8HNOpMiqwfEEgbnlIUdNnE1AFqgr9UZU8kj9JegoYin8P9iU2N1Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708078258; c=relaxed/simple;
	bh=xpMb11dxg64nZ8TeWmw4wTspdBi2WW1ycVxNAeNDxxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ngvKfPNkdTNeqQpYwXIwa/qtz0krlbxBz0DqxKkb7tuSToiNsTgnvQXWFAf5iHF8Xc/LcoINPlEIAIYZuIC2BrR30H2iCPvbFCWlKaCPTZFqSQYNP58lxOgjs3JZyXRpfsg9OS6rk+ZYA2fqBHYYm2rAGjMnBDs/FxvCX9p9JJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=gbiXuLJc; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a3de5884d68so31665466b.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 02:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708078254; x=1708683054; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=revdL7g1oAcERXcWT0jDr3geYXgL8Ugw/vEWapN0s+4=;
        b=gbiXuLJc3zpa100ANalakbCCHNufMPUpc6u668nXSfDTS9opCW24GtWw3DnhjW6/r2
         L9v2ue3nDChaQxrKKCtJxWNqZwLIKyFKjlved4YYPEdaaBrRnEtM5yAnCE9v720S96/p
         7z8kZx9iyxHp1/YBsEJfW4yoAkOUL7uDTi2ml4g3cBrLxE0lnvpOQp8NCRl0X/L/Pqgd
         bNUJJfuNuEMa4Wpd8SKKgCAGN20uHD+p2hOj5cmoxKunby1vYpxB5/SKHSmNsh0ClMWy
         yLFf+I6eLxqgIT4/l5ka5kk8AnWdKcvLUpllNwtX7wOoRV4pgs/AdVeVeEuewOTy5IUo
         d6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708078254; x=1708683054;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=revdL7g1oAcERXcWT0jDr3geYXgL8Ugw/vEWapN0s+4=;
        b=gVBnVntj0l7KckrMxUwfpc9jFcbI+Cr5blKmac2g2EFyiuodKTDTb4KwgTjhdinybh
         dR87mXUqYcAgIy5aBfjnVdTF62FoixSK7RZXxUHRmZL7EXGBPp8sMb++/iKu9D+AUsAE
         MAuegjOfcV1/fDSg1f18EI556qTXrLkQoMAB41ujnumwoEaxBskhZwk6g9BRWz0QL05U
         PgllWEMFIbICLYktPzTQLMfbKqj/zSyzpgJu6EcmAO/YO3EvhOmLr2wwL+7X/NvVtDWW
         9NiflxemLacNbSBvBgoftp//u3Dg93fgiCffZgftxJo5JFbqh8EowMjSF4drPEbJtEFg
         0jog==
X-Forwarded-Encrypted: i=1; AJvYcCUwKqJN7Gh/8o6kUTdKly8dhR1NzE42m/io36bAYWXYiDKLtbbZtYqIA9jNOxmtTbhTbxLy5J4wni5vH+gl/6ux+QJgB66zpjPoEA==
X-Gm-Message-State: AOJu0YxJFw7kHdRhQjqAWPCGQxlns36Gp9TgHnk/ESmTewHF+3QyXNAw
	MUF6P8h/hwOoFnCiRk8Ly09EQBU3c0+KxQyHeiPRffexCG5OqBh6tUUysQ1qwZ0=
X-Google-Smtp-Source: AGHT+IHvVyi01m5WRubx/2LzMcgOYA+L1JCpSnOZwUbC6zufjujFQB6IyuxF+9dIEw7v0O3P2l7c/w==
X-Received: by 2002:a17:906:719b:b0:a3d:a773:b9be with SMTP id h27-20020a170906719b00b00a3da773b9bemr2526010ejk.76.1708078254638;
        Fri, 16 Feb 2024 02:10:54 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s18-20020a170906169200b00a3d1897ab68sm1398019ejd.113.2024.02.16.02.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 02:10:53 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Feb 2024 11:10:50 +0100
Subject: [PATCH v3 3/4] arm64: dts: qcom: sm6350: Remove "disabled" state
 of GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-fp4-panel-v3-3-a556e4b79640@fairphone.com>
References: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
In-Reply-To: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The GMU won't probe without GPU being enabled, so we can remove the
disabled status so we don't have to explicitly enable the GMU in all the
devices that enable GPU.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 43cffe8e1247..5a05f14669be 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1439,8 +1439,6 @@ gmu: gmu@3d6a000 {
 
 			operating-points-v2 = <&gmu_opp_table>;
 
-			status = "disabled";
-
 			gmu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.43.2


