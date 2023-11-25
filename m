Return-Path: <devicetree+bounces-18803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC607F8BAD
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:30:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0672B21192
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9842318041;
	Sat, 25 Nov 2023 14:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="ZTeyRTnk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47575102
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:29:54 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6cbe7386263so1856235b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700922594; x=1701527394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eZys39GJuHTXGZ0WnRs5+Y2IzPwKK9Jhq3iPRZLp05Y=;
        b=ZTeyRTnk/xpkFP9Y2sxee/Tej5Rdpgs8Kufus4CAWUhZSX/7B69xdmLour9hAprHJd
         7PZWJ9yB66fxgBOje4Qxn/0osKPE2CaqJiY797A1YvyJGzW9HE5oegv1+uwFtyZuh1kz
         v6TmORGun2GaYNYN1nQc6Ah11VGD7SYwERhYzcZ6B1ViNowubIQviJpo9ba5/Epl8yqU
         4DrhFPI7ad8j3F3sMFv/TmmkNgixqAqgY0Nd+NGUv3nY51fXln/+MpDArvOFG/UFm7zb
         Xv3yrsak257M9P3jzY8NOkuHYqGRwruZXnwhsAGaZGWTtAIDdMpa3yme18a4MFe1LViK
         xdQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700922594; x=1701527394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZys39GJuHTXGZ0WnRs5+Y2IzPwKK9Jhq3iPRZLp05Y=;
        b=UZHhanmiHObpCYKRBiQbqdGLSR/vvVhXokrPelU3EuvWahYkECRkeNqT3GkwDpzNgp
         KPOypWQCZdDg1GVESyXVTy3xfUlmFYtl+ua5K0Lx4EIMHJov5avHm4/d2RHm6vRLxeWO
         ONpvab63mC5Z2FHdmaa734IoJwdK8IJjbBDysGA3fY90usmqsCXNj0UFCcIjKCWJ7ZQb
         pV6PhW5UbzWNqMl6urW/SI32daPZT5hkAP1/1gjpdvnU53FDJYufxWOyw4shgqIpp2dz
         nJAHiJwGom9Lo1Hnq5Pyz3+1W9eprSG2NFoQ6oDnci7GMix5K9NWz/uCoPtgkcl8fSEF
         nneg==
X-Gm-Message-State: AOJu0YwSraG5840P2teckAxrw3ppQMStkPP1Cmlr1Q3XvvRpP4yiSxRw
	ABCPl9pJKXmHp1EspUsQ74WHlw==
X-Google-Smtp-Source: AGHT+IGzRxMDkBx/+dtM5q70cxNBly8uY7XmXX8qeMlhvysirQHXtDZcWgQbUu1xIM9J5BXoyByS7g==
X-Received: by 2002:a05:6a20:d903:b0:187:6c03:4e01 with SMTP id jd3-20020a056a20d90300b001876c034e01mr7615450pzb.17.1700922593781;
        Sat, 25 Nov 2023 06:29:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709027fcf00b001cc6afede3csm5106311plb.7.2023.11.25.06.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:29:53 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/2] arm64: dts: rockchip: Use NCM6A-IO board for edgeble-neu6b
Date: Sat, 25 Nov 2023 19:59:14 +0530
Message-Id: <20231125142914.57459-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125142914.57459-1-jagan@edgeble.ai>
References: <20231125142914.57459-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble AI 6TOPS board topology is now changed in final revisions
as a compatible IO board, NCM6A-IO, is made available for both
variants of SoM: NCM6A and NCM6B.

With this change, 6b-io is not as available and 6a; 6b SoM's have
the same compatible IO board as 6a-io. This change is due to the
common optimised design of the IO board made available now in
final revisions, which was not the case in initial revisions.

So, use the NCM6A-IO compatible for NCM6B SoM based IO dts.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 9933765e4097..861067b5d707 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "Edgeble Neu6B IO Board";
-	compatible = "edgeble,neural-compute-module-6b-io",
+	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
 
 	aliases {
-- 
2.25.1


