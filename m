Return-Path: <devicetree+bounces-101217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 263A0970FE4
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA1432813E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 07:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2341E1B29B8;
	Mon,  9 Sep 2024 07:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YWjxYXcV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11111B2539
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 07:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866962; cv=none; b=QhKN7y/cSesFn/mYrsRGulsnRBTmA4Ltz1Uylp3QeGbpM+whQEJZQB6Qpw+BRDoLzFHUrj6KVZxgV3FXrCt0KNntgVeIpbgNF7CyTQgoVRSpAqLmJAUmqNQatekFKNz/6F+GHBHCJ2/RQbE/TncoyOZ6/bZyWODlRRFp3A2U4cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866962; c=relaxed/simple;
	bh=YHpKzUFRJUw72aDIYJEwTsqzT95XdHz6W84tySFtxCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VPiKSZosoZ/j3aCsy367ZYGnngLa9SfrHGzCRWnQuKhBP4B3Fqj1Eli/2s9wXvsqyy1HMG0k/vveFYYvImpik+2SQcoQmM5zOvEVE4A6MbjMpCyVAQeKMH8tywPwOyN3RZkI+aL2sL4wcAKE9W+9NKodkXnawLSzYmsPXaA837Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YWjxYXcV; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2d8881850d9so3089677a91.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 00:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725866959; x=1726471759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YAga99RtDUol5nztZ6d/wilK6vSssHP6o4Rh71ltfyY=;
        b=YWjxYXcVAgTVoq0lxsQfKl2lzbOUZhGk2PNMEO6lPUjkRxmw12nL6aTE3Zj/a6dS7b
         Mo0HM9u3hKwrZNpben0gTlqbPpJNk5HeognAoZz1HRyOZQDJtFM5PWI+cQ4vWu60U/MT
         32bucqeSwBlwOIHQP8WyZAzczJ54KIUlYTwm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725866959; x=1726471759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YAga99RtDUol5nztZ6d/wilK6vSssHP6o4Rh71ltfyY=;
        b=R9wYQ+1Y+3NhqUSX1FKPRMhkNuasC+Rjx+FceAiUmPjuVsPI7bcFkuq6LUEkyewJ6L
         DhzpoNdVyDXkkwuXRaPYhnIrpV3zsOeDJFxjq9aJ4GP5V/gGIrHKxiQJSazL6m0ZxFkN
         R9HWQGGeWyuBUBwfDAcUasiQOnr4h3zRYqjcgG8Mie5v/9LyiBtbVk4F5wPTkbKfxFDm
         R5i8ICaT06bb/EGwxKTLSwV/NKcX88w9T0aYqYdkG+wIHaggec0sXP+RYKJiQeg1Yo45
         JXXrnEMOgYQn6o0db960jAxmqZXfenEaMWc5Y1FJqYXSdbVpVHQGjaWUsP0wp+EZQcMH
         1uxw==
X-Gm-Message-State: AOJu0YyyTN4OrImaHppPFJ+4+GXTiCKp3F3FKBLzhPCM9IRw/prIgpJ8
	WtWZGWt4Kw/3OkMmyQPgBLOlWFmZ+u6U1QiZ7l+3rYH8BCr3sO3Sc86iCXAACJQvH25VZNZAk5d
	51g==
X-Google-Smtp-Source: AGHT+IFOFn7KFliMFXZhJS+1DjD3nGceHUQ+MLINIRmfOOKFMkSweXelfVQlmNIhzSyLnEOORZxjhw==
X-Received: by 2002:a17:90b:180e:b0:2c5:10a6:e989 with SMTP id 98e67ed59e1d1-2dad51182a5mr8700853a91.35.1725866959336;
        Mon, 09 Sep 2024 00:29:19 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm3841065a91.21.2024.09.09.00.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 00:29:19 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 09 Sep 2024 07:29:06 +0000
Subject: [PATCH 4/4] arm64: dts: mt8183: Damu: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-i2c-delay-v1-4-4b406617a5f5@chromium.org>
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

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -30,3 +30,6 @@ &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <20000>;
+};

-- 
2.46.0.469.g59c65b2a67-goog


