Return-Path: <devicetree+bounces-205700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4CEB29D28
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C87EF1886967
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D554D30DD28;
	Mon, 18 Aug 2025 09:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ciOEI2o9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073D730DD0A
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755507895; cv=none; b=PT8xBb33bnyhMpy3DKLvspH9egLEzdj8dOKLvjNFznge9mFJnV9V6OUeV8q452rYtnjfeXAL5XdjTHN+kq5CI2pbN/dH/Q7aelgJPsQMzZ5djc8zqvvbAm/MemKA1aQllYqDheun1+dyibfGEvk6tlAdNoJMgBjqQd++dYUFeKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755507895; c=relaxed/simple;
	bh=pwru74nUBrj/6jwTNjLAYELApPWZA0ydTt/S7KryGzI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pxDc4qhVgutbivR0M7T/NrYIlHZ2p9NQJedRNaKPMRMvCCdkWFhTiXbJRgJkMyTAQSAei5XoxqxUeu0yFkFAH8japf6FqI0u4FtvSnCBIq+aH/5QzophEKwnw4m1Ojmdpzb3non7rNw9Cw0pj8kyNxhFe/hBiRhHn9nYnBPbp1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ciOEI2o9; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb7aecf92so49510666b.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755507892; x=1756112692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDZrxtQNL1cjju+DxpVQbK6Cw/4VhJ9hB52KbgYlXK8=;
        b=ciOEI2o9bGEor27UXeCTZk2VAIFlbTME0jgAjSgV+Zkrhm6lQalKrApvb+aecsPnlG
         KbU5ZGp6lj7+xHldyHjcaHhEe4C+qlRqMYgToBYTCqktghT/uxxNUrWkjALhPB/hXL3+
         T3wSRGZiK7T9j7Zbi/bNzYkSA1MrB6m8QAIjG9FpNAx33Jg+fJ6/2w8JF2tPZ35ZWQW6
         rcRgddTk3IuixvkBqn9Joasgcf6bQJ8XVXTrkUy1f0VNOASO8peOsj3dj6fRN9wNyGD6
         YjJRWJ6bcJL1uYWAWY+TavSBWXb9blshOEQgHcSWWO1SntbEvOmDuOrFp5PXkEh+nZv5
         8LHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507892; x=1756112692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDZrxtQNL1cjju+DxpVQbK6Cw/4VhJ9hB52KbgYlXK8=;
        b=n3T+NuzUpKYZ/yMg4diC/hDoOuIlPjZW3vzTjgoqVpFr0TGPwOT6LvAH+Rj7uIJBuA
         /6US0CnMUcaSy/BKl79gDcDzgQKWjbTNzEz18ZQd1wtqhzoI+jlOkMGoEj/7QccfGc7D
         lEsH2j1czConPCsgcIk0yYiJa/H5Pw+AwtZgc9RWcDjq/xrWKupQNT9xnxf4M3XSdlXP
         w7jYeR3XBKmp339LLTcTD2fl+tox1gYB83fagCSXn503k6KLrB+i5tp3rnQGv12eZsSr
         H/A06VJxemAmE9qt+nevc398TfBtRDRbZQn5CBqqHXqTtajGYc9y7L04R26uSRrFdRpK
         0oDg==
X-Forwarded-Encrypted: i=1; AJvYcCUH4nHyXgvF6y0se8XsDKYTliB4Qh2venUAsYZ9Q7HjtRyxQx4iYCNntIQt8FkP6sc40ToOmvoy3yqG@vger.kernel.org
X-Gm-Message-State: AOJu0YxfsvOvLOYmn4iQJ6sFRxkUKTNzpsFqSEn0ryp+23uVadp7zull
	IJjS1ryq6PvMSQo5nlTxsZbq8kA7CQ4/qYyxTlbwFwQilsuEtP/IX+NycDfiC54G6bI=
X-Gm-Gg: ASbGncudAg8ffxWx02ePOqK2EKwdDm+k8dkPpPvL6/aDmF+Aqxe8PyXEhdES5HP7POy
	xZSWwtyNZgqKe5oBsnldjboAaLB/tOG7Vvwq0mpPhhYo5eYQkhxR/5C3k3bAa2/4MremjXOqdxu
	RkWmB39h5L8675Y6jau7XB2vOWOeiHCtOWIrDQI+YszPVT13PpekFjnv4+ysLH4S5p7oAgfiEWC
	mCo5FhAvJZgk7XlaQBRhJU+R5mt7Tjj45/BmJ2F3lilcV55OX2u/CfA4pi8Nsm3+E2jJwHAHcFX
	ry9lDYwlC6Sf8LIQl4DrRmP3xwJqJ9KKduFyndF3gaAjVTvUG+3/UdfSiwDo15UuqxdlPHS3H8h
	G6cYVFg5pyizaGhBiaMj8yQ/5xoTAF+WWtw==
X-Google-Smtp-Source: AGHT+IGq9lztDokuEp0O51njstSDbd3e4FseAM46gupWoCcNAfFZtIUknBul7pcS812ROxIqHMTIfg==
X-Received: by 2002:a17:906:9f8e:b0:ae3:63fd:c3b4 with SMTP id a640c23a62f3a-afcdc1dbdcamr526558166b.5.1755507892088;
        Mon, 18 Aug 2025 02:04:52 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce72cbbsm767622966b.35.2025.08.18.02.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 02:04:51 -0700 (PDT)
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix Bluetooth interrupts flag on Neardi LBA3368
Date: Mon, 18 Aug 2025 11:04:47 +0200
Message-ID: <20250818090445.28112-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
References: <20250818090445.28112-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1424; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=pwru74nUBrj/6jwTNjLAYELApPWZA0ydTt/S7KryGzI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoouyuJwWXWjg5+9nddxSx+zw45kGmYNImxXL5p
 J1ew0lu3MWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKLsrgAKCRDBN2bmhouD
 10TnEACaEmyQoUlWyEpk/aLUCrVBW+9m7xj5cp+3+QItxmClOSA+H9SVkSbX8zLDVfFtPLcz73q
 DwqHWhEwRIPtnnb9FFQhoUgv8U+Tw9VaBT6W9nDPTDoz/i25OpcPaTO7rC0l5V4d9aCvn8DJWdt
 3x4yTymHn7ecUhHsdyqqa7kcJXk33bSbimkLAyyju2371kQL7PazjayfKZ4D9Wm58wt4Nbt8Pj0
 mYT3bM/Os6gEy8RIgcMKgj/AUeI62mimpDk63gdcTyZvntzmTlJVtDfC+G9Zy7TutOj+uVSHAAj
 wWOfa6eRPxFTWtx/KRVNEceInusTlt8JwLXUCcdxXSQtXApEWc6lBGIG/EELojAODWH7o4c7mYL
 YS7Wz4FhRXxvoEBjNNl4kCYPLsTlgNDaGjfnv+dUzel8/gDcNXXlu8E4jm1Dl8vCI4bZv9ZjCt4
 hFbe3uwnykPX24ZoqRDKl+Do72SQ1Xqt8VKfbm1pcAIpZVp53CKp8gv2C1eX1MgXRoMnqxx+jlg
 4IPTPJc2kun5tDxZRK80u4CJmQ0HtMoA06ewxyMJ+FNTU1fLDEeBzVAeMe97mOap7DeGdbPn/rU
 pQH5d29nYK2bQhpK/ui+nG6FoZL9q7nghi7lc7gRzBZFfi2xf/ELQ08ndvDzr8L+WTYLtHaVqB+ KZvYcCNg7/RJY/w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.

Correct the interrupt flags, assuming the author of the code wanted same
logical behavior behind the name "ACTIVE_xxx", this is:
  ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH

Fixes: 7b4a8097e58b ("arm64: dts: rockchip: Add Neardi LBA3368 board")
Cc: <stable+noautosel@kernel.org> # Needs testing, because actual level is just a guess
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please kindly test... Not cc-ing stable on purpose, because this might
have impact, so needs actual testing.
---
 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
index b99bb0a5f900..b9801a691b48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
@@ -609,7 +609,7 @@ &uart0 {
 
 	bluetooth {
 		compatible = "brcm,bcm4345c5";
-		interrupts-extended = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		interrupts-extended = <&gpio3 RK_PA7 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "host-wakeup";
 		clocks = <&rk808 RK808_CLKOUT1>;
 		clock-names = "lpo";
-- 
2.48.1


