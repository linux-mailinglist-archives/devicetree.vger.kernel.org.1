Return-Path: <devicetree+bounces-117526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0579B6CD8
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6455F1C2119F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 19:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4DE1CF7C2;
	Wed, 30 Oct 2024 19:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VXR2QXl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA40E1CF5C5
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 19:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730316302; cv=none; b=X/GGuckusjkGRDMov0JMkyMggEUU3kqpaBTGPQ85El7Vpwbxtys32LPmUm3birwdDswaYVT98EKHkr0AeicHC4iJeMnmdcwJSPVTYmhwF3KoifdYt9XRHt2ODa/vT5LLBQ6e8sNJxiLJhP1PNN1AqLZnFEeEStiQ7oSbpfx7d68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730316302; c=relaxed/simple;
	bh=xuMBjUvAKqXolEIXjpNNDoueaCU5WTgEInacqZx0AWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jKKE3CwDsCApSgK4WY7Tb4WHTxSPNR1eXE1W70esC9t3LE2JCMXWhEOmbvzddXlAuBDCvbux1Tt5IoavMCiPSVyCG1k487hEcUwNdGp+hSdcXfQ2CJXdVHWnx81jj+c3YeB6VX6lAYclLrMDTHyrrRfAI4vgoARUWm4bAvt0m5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VXR2QXl9; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3e5fee32e76so133548b6e.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316300; x=1730921100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=VXR2QXl90gHn0K4hke9c2dIgAr+b1qNRsevwvI9lzGBv7mNdAcN0OkG9ZAkgXwEDp5
         3pnJiCW+71IvfVStIJ4dyKuzgV3SQOTenE92bKV0UU1I7QekxYUKMa1LARx1hRWastUi
         QL8dckJ6JUdiGz53SjLF8W2W44H+jVqJPfGH4HfNYTUY+gHepTFQeVT/KGAvmX1OtND5
         18jg9b51n6c9CWbt0Hx+k3Sn7E9rswKrSX2hPZJCjlAnDZ7GDUghxyIFFWWCKZc3JCil
         byV6vqTryrWVgVQn2FdSuE/7qxjHnnrxjD4oquWyWtdmwqXuvsR96LAFGTqCBw+H1fcP
         03Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316300; x=1730921100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=V4pShX9ZtOLqscUakKYKvgBy81iJSMZEUCTnQ3Xx5FbgwMf8QynUD4xDzAH9Fz++/8
         n3pahiAxpfsg81ZfK68stGqxXDzM92uUHiX9BSdfmYf9exAePk6ZuqO6P/kOXyivRw+y
         pDX7yAOzbpRTuvcbg4u5zh2uvSw6AaTA29bDtihoJaZebclk6yw7DNQM2v4ZnJx5tTxf
         6pqT0w1Kv9w4EyeZMg6w2C4agdkjKumQUBvAmqipIKLmN8tz6UsTN22uOls6hjByTJ98
         yjQcriL/TMPyR9ZrtbB1hFcyjEndQIVulUMydZaDdUCNUrvfQE5lFGYdXFVcH7sf17e2
         qClQ==
X-Gm-Message-State: AOJu0YxAJDV3Xcx/Bj4lqL/Xt6HbkTmyjdRLXsKStVk585Ul3VR7gQUk
	dFCDP4JGle94Z8MChh9wsLPk/KvFz8dQYlfdxmcFn77ha4ZZBwOL
X-Google-Smtp-Source: AGHT+IFDQ0CEh2Enk5LTNjaoo6AgUjhho5FDKvpT6sttmjLxwYyclEqm6a/BBrjWCn4uAaX40L0BQg==
X-Received: by 2002:a05:6808:f16:b0:3e6:83:7e38 with SMTP id 5614622812f47-3e6384ce509mr14453893b6e.43.1730316299817;
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:35 -0500
Message-ID: <20241030192236.839105-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..065d44735001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -242,6 +242,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
-- 
2.43.0


