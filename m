Return-Path: <devicetree+bounces-205699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE300B29D14
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 976067AA53A
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2058F30DD0D;
	Mon, 18 Aug 2025 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f9HnPENG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F1D30C366
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755507894; cv=none; b=bS/DuGH2zpuKhfcLmoxDGfGO3RQRwgQUvT+Lmxgyu7VDu4VxUqYntFFl6vTUK1IB0ZosGF4HDM62eYfzOdWhpmoiltF2lk+KgZLWmiUKIsTs+SVYt0iucf3dz+pWVBUptOkv2z9rURje7Mef1/sEftfqtWyaGC1y9DKBSBAN2uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755507894; c=relaxed/simple;
	bh=tum7sSZZcgm8+tBz1nemvGULPNRMPULQo3/wNINBH4o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rfolEcoJiF1lMU/9PRD9H5ORFIuqdv+mn2/3Ehk0UBmcR6tTed3avOD5RLlQj6blH3K16If3DMqZ8fP4LzP6THPE1gCD7evhIhS+sJrbNWXi1s1WdlQubWAACRX3XnI+Gb2vT4ELv5gxuo25gxfE/tkhcB/1nzhIbN3xN0dv/VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f9HnPENG; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6188b7895e9so570439a12.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755507891; x=1756112691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kup10a0B4002ciw0MPHAfZ8hDEDF45tuWf47ra3TKFg=;
        b=f9HnPENGxx0jI2PGhMTIeEdZ49i+NSQ5RkO3VZfTdInZ3r/J+FJWjSGr2zTm9qItT5
         K4QVv7wjiZGhOHW/c2BmYi1ylQuBJB+UjxZHI1NYL4PINBq9UZnRoLVIO2dZIXC9+fWs
         glHOT37rXMCbZHxeqIJDMb2lKjZsnhzctf+lqbRcWYyXwKTVeA7vwzbuaMzUyLS+j/tn
         a3Q5CwIpsI0GhZ0raj5FodmejEfdXqZkCAGhjmzo6+MgFPQKcuAhye2eLHZhR+hBgf5m
         KNvGaR+S+3FDqmLV9gPxF7b/7luZGRSNoi1Qymy9bfWSeo8E/TNGa2JtHxgBXAgIM0Di
         5F1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507891; x=1756112691;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kup10a0B4002ciw0MPHAfZ8hDEDF45tuWf47ra3TKFg=;
        b=IbODi/0Jfjlh8Cbj+CfnXGfx2czya8fMbW7NG/n5CwRuf7R8EWZb4ZdSbjpNB3EHyb
         xwTcZLaQh+X/ndEZZuvH7VFtSAgIAOqIRrgatpTSKM5yoEltmJfIo5fLT9I3V8NSNgYK
         aO+s1g8sFlyoKPd70MpTst/n/yYLz5RMYLj5/6yJd0a/sRFSzsWIGmUjb7G6J4GMJR5O
         b/sRALImB30AO+a4V35hjw1nEbiLqS5AjkrrCjJysFLLC5UBLxAR9uCxq1Panr4LJuwr
         a98DflbG9MTctJsZsMuirvGqu/kLBYYjU73rzr/xtK1zsKOcX55GNLCMlumcxJpd5zo4
         Dq3g==
X-Forwarded-Encrypted: i=1; AJvYcCXJE13ZC5nspmzLm1ywiU9rBT8yM6e6D7Y5aPzHqS3UlJzPfHk3gtgFEaBzTcuT5U7Qi4vggWZlDj49@vger.kernel.org
X-Gm-Message-State: AOJu0Yzls7wQdrQbzAS1juuM1JXDZcNi8gJ/tnYGkjsw8GauueRs4Hlm
	xkDQAkpZWDXRSo928hfyHJy93AoypH9ogVDowbXDEgCZApDhDrFwJJJO8B7tZ4Ugo5s=
X-Gm-Gg: ASbGncujem8Hwq+IwEec41T0kEywyMJaar58sHlYcfzbwLdtnBAVRHNbJYN0+kaUZEE
	nAUyxi9p5PPQYNe4/uE7mLHXMfizDBMcFpjovjbXgNZX9y31o73msywt9EOqQKPvO+jYhD9XSSP
	nteUUKFAMyPwgxNKXsMik+YeGMOvBoua8K+5CgUXxOdPGhs1PWyHK1ISMYDO63QprDrFY+AYGCy
	C154U6QSp9kZR0O7J7/vNpLtIopAuX01Mf2TW/+pn1ng2WzMVaHAgDG1tKccRjoXFKoOz3OpBLI
	5s+v2LPt3lwrhK2+gkQP1AbvZ6ibPyIjV43p6cChkWpBixk+1Ejp4o9YXeb1xXXnYSCH/C95SFs
	Wn5USu/4M2QWDa23vtSKtdgs4qOWf4jnO5w==
X-Google-Smtp-Source: AGHT+IFtlmbtqJ9P827bEqJH7oW+ZRuoRFw5s2Zc7tNfSX268H1TDEG69wyd3EdhU80P29JLLkcWgA==
X-Received: by 2002:a17:907:3fa7:b0:af8:fc60:5008 with SMTP id a640c23a62f3a-afcdc19d2bfmr422932066b.4.1755507890447;
        Mon, 18 Aug 2025 02:04:50 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce72cbbsm767622966b.35.2025.08.18.02.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 02:04:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Alex Bee <knaerzche@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable+noautosel@kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix wifi interrupts flag on Sakura Pi RK3308B
Date: Mon, 18 Aug 2025 11:04:46 +0200
Message-ID: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1506; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=tum7sSZZcgm8+tBz1nemvGULPNRMPULQo3/wNINBH4o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoouytECvArfR0uDxlZkn/yM+6/pk9krgoVi2Ex
 +KuIWr/tUqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKLsrQAKCRDBN2bmhouD
 14K0D/wPUzRE0762GdIlKZqVCw7QIJwhm6QQ7maC1A1pWP1kbGctVkv2gdC4IrGQzhVdVAcb+0o
 IYw6rpxiobOFJiiE9S41uqR7We+z83ecxPJdkjmNkddMaZF2dpMysBcPOspzBpDV/ItDtRCVCLc
 oUdQ525yCD74OLtL/s5kWlPK1EfxbPdLFhzSOj6CJIh5ct4LJ26xzgacvu6CjBpy2tyErI0AGVA
 Rds7A1uNaiadSEcWxGCogOkANLHvBjW90M3IdrzYjk76faBpiGE8t9jirPcoxyCIu/94HT+PgJQ
 5hGjSAYC1sO2yUNK0HjshaOD4bGx+JzpRF02+UEe/h0Xic6AsmX0tnTEpskZ55v8Hqf7jfTEqGZ
 413KxCeLLXuEiX2OlGMqd4GMA40y77A7Me9UhbXuS2C0cx+7jYRQ6BpPGWSycQrtR5KTon2Y4Zb
 AS4P5LT4QOi+q8sNcIR2npSkeY5Go69g169EvxairWf5ePkspzoW+lAlC3RAI0zRDjdFDykVnNM
 MC6tch80y9G254Kf33rR8CMydlaltyp/fZCC4zIV47YfPkLkquhGRjprPUzDCKnuqN+skTL8hmP
 7NuAZrbBvDCiBGcB4rgeqHsNOE22A8/IHlUCfS5XbHFrZd/LJRO8qt4IEyP6Ym0UsseZUx1jTSE 3P8zVqN+3rRaErQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 79f2a1702441 ("arm64: dts: rockchip: add DTs for Sakura Pi RK3308B")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please kindly test... Not cc-ing stable on purpose, because this might
have impact, so needs actual testing.
---
 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
index f9f633aebb64..aee6643e33ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts
@@ -199,7 +199,7 @@ brcmf: wifi@1 {
 		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wake";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_host_wake>;
-- 
2.48.1


