Return-Path: <devicetree+bounces-18805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9EE7F8BC2
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F2941F20EEC
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B8EFBE5;
	Sat, 25 Nov 2023 14:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="sytT7uUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E90D6F3
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:27 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-285abb82925so154981a91.3
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923227; x=1701528027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Juvqd6ZcRYFg/BlkA1E3mVJgKUv6X4BvFTJ0d6+v0s=;
        b=sytT7uUinmMClUEWmlKUFPnyf6rCJ742ja7JSjhw2xCFoNEqsHV4u6Yt8WGYmf+o9A
         o6ltzFm99+8E995fIefa7TSkOpAb5uT38YXIvGMC3gGGEM6je2qla6Jnj8l/TPzaRY9z
         /XvW/2RvW/RlhLQQQRVyoZHV6AjN4P2MKy9OF7SkdENuq0Jj1LraSqjpyCOPEDWscXAZ
         eVJYI3DX0B3YuEVX9UT0iScaBa4K3EGAQEHRHE4M17IsdwopL4fzwC3Do9iJ0f8B5KIN
         E6Crb6SmyUqw9erK4xH8C7UknuyacOOpE8W/Z4Po6gBHUPJYiCofcpmtvvPcpPNHF4Pz
         D3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923227; x=1701528027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Juvqd6ZcRYFg/BlkA1E3mVJgKUv6X4BvFTJ0d6+v0s=;
        b=gsuuxqbGDLnwG2W51/fSc2tM2w50dEWEKYzGZq6f5yY0YaryrVHEJ9RHQCcskvVIGP
         4skgmhtZHqTmalcmREhmUFPrayOLCd3HvVFp9kWHd9pv0QrE2hfdTendya2hcnC2qRmO
         0Kp4a27oTAFIjHnWCe4i50VVwY9CcbGppvc+yQPmRO9foCZuvNN4dqd1D+3FiOY8lTFW
         OwjpsVgT+Jg7DQh93BUhix8tctq3oS21ffzX5oLYSG9hXeiyP5SNivipDbG5eQOKeukQ
         A9fmEIiSS17Ni+p3+9h1h6BhkGhb1AQ+CaOMy/hM80Uhg8U+ybBCitmJ8zJg6MH9GnoZ
         hs+w==
X-Gm-Message-State: AOJu0Yy0ANLM1MxzvJZVpd5lBEodLcTyhJWNRyN/YHiUni5Aq3hOcBey
	RlVJ6xDWbRA0VVyGNRdS23m2yQ==
X-Google-Smtp-Source: AGHT+IGAqnkYBlSwc4PsYmoJPEG6SAYCAY5X+lOhLWcNl/kLojOfYL4epoaH5icpHzHKfAu6fXmPww==
X-Received: by 2002:a17:90a:de8e:b0:27d:dc9:c67d with SMTP id n14-20020a17090ade8e00b0027d0dc9c67dmr5672421pjv.36.1700923227396;
        Sat, 25 Nov 2023 06:40:27 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:27 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
Date: Sat, 25 Nov 2023 20:10:03 +0530
Message-Id: <20231125144012.58668-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'regulator-init-microvolt' property is not currently supported by
any driver, it was simply carried on from downstream kernels.

rk3588-edgeble-neu6b-io.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)

Remove the invalid property.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
index 017559bba37f..4797260a8a78 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -165,7 +165,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.25.1


