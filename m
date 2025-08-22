Return-Path: <devicetree+bounces-208356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D13B321D7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 19:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BDFC607C89
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F6E298CA7;
	Fri, 22 Aug 2025 17:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w7+Da7VY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEA8296BDA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 17:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755885382; cv=none; b=EsG/3iMiVnV3fY9PU1mOmKI0wVgecGCpEhH/QjCbuytfXTShSSRpe+GHmd835Ks4oUUm3nF3FzQTe0hVB0igdyNIWEsrwh76W49SP3FT96F3VqQlqAlGz1OvsGOssOcIC4XrL/Rp9XJ3g4zj/8Tg/VhTfqWlXm3UjlGUogHsqvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755885382; c=relaxed/simple;
	bh=ODjIwwwmc9uvFqNGNj3BhYMVZ1GL5WZexPpxi2Hvi/Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=raXQ0ifF7xefnTWzfjd68CTyydnb8t+ZZKRv6wDw7+t+bS6qQXsWVqzxSR+1maxMtR2r/S97bv8YhAGs/AgAH7RFkTCzNdQR4JmEpDPzDLcgX0t1BqAJgSFPZo5PKPvbzTjlC1b5Feg/L152y2zBU9Dlflg4duyS1zmfippQz1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w7+Da7VY; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-333f92d682bso19479441fa.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755885379; x=1756490179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vlRiptSGIO3mJNWjLIm1o29aFKtLuhg7l2Spu3OAj8w=;
        b=w7+Da7VYWDOZK6uBeGLLODzFW2H/LvrxTfjVjU/jeegNFQvdAsHk1Uur20VILGusaz
         edhMwWSpSACRg/yK8vkiuzNsoxywZj6kLfyrgz+SbcqBGbsteG8EDG82o7gqM/yR+Vpd
         Lwh16YXhlDgQerh7QJTubPVzjuVD4VszgUX3AS7Nzjw1avzKfXRS3QFbr96yTyCMrd4X
         htGKqrHq7jHIzLk3Qadz5uMVURJ8tEeSMvYKUk3VKibTrOj642cQ5a5C1ydqIOxgkvjL
         hVSoEtDI8f0+98nvf2oPnwkeKYwX3G0SOGQXR6Chy08aEUdr4YqSj/2cR1cAWPGQ//lU
         L8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755885379; x=1756490179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlRiptSGIO3mJNWjLIm1o29aFKtLuhg7l2Spu3OAj8w=;
        b=hOjEt140iz9vJATG1mYki2jA+s2rgzDwHnWj/IVrNjmZbNqepKba1dYzJLyXMH/ihP
         D5qjCAu+ZFsnq8VoHxu8NMyRoUptLXeiwqUF+a887xnHpfk50mXIKZf+ShTWruuURHU2
         BvPZmIRrTsJQoIJuWv0Fs6P0TfdKIyGL2fAEz9PlOpui1wV8ThgQWSCJaJO7jYgCVSxD
         CkI3oIGpU8clyMaFfwsQaHtnh+dgDoONLJqvs3mYmcPdffQnpJ4A2Ro477L6o2DU2NrE
         UxFoeQNE6jwfasuTPqonZDjurTkFfEhihZLGlPdKBrvcm3SJumDiXyc+zKXdu/BvtGbB
         dYcg==
X-Gm-Message-State: AOJu0YyoUYntCDKQDRFm6ITIMObz29TP2gXaLFtKAwXUFa8Z9pDb2Nmz
	CIu0dq20yHmKVybvAWDRmV/PxFOYgzhD6v02d/GlZtRJgbvPc3QvqgNT0jf0f4E+X6Q=
X-Gm-Gg: ASbGncvO+9dsYznow96BUCI2UhblDUJbgtPND8FxjESEVx98ns0RLgooEU2+LUrQg2B
	WC3hDam3glJUhghuxmTkF5BueTCC923lB/lyKPwIyKjl7s7A/uYiKa7MPrptXvXVfptemlnRxsk
	GM7vOl+721zG2Odqm3nYqdIAszgayH9s4PTTAtoe44UbnRKvQYWKA2JdJQGg3I7WaH1l8orgxeQ
	OdPu1ZkIiYLkMiOkx+sxpRIv4EIh/Wl12gKnuPbbmwv7u0rBwGJMoLCvXnIyqN/wAGeEFdo2LC9
	nz1BGqqXOMu/KFX7VQRelV2Jbg4OBZJ8TJHIjCK7EJJPWGM2l4xMRGMJqWqafmhg/piasRqNNau
	Hzl0ACuviS5IuUYTledmSrjLWWPuZTXkQ
X-Google-Smtp-Source: AGHT+IF23/lpqJbGHNLzIUgwPgFNvepSu6KZFTzrnSD3HZe3Zc8pRdkZ7o9Yobc+4AZCHG6bu2rUbQ==
X-Received: by 2002:a05:651c:3042:b0:335:2b7a:4791 with SMTP id 38308e7fff4ca-33650e9ab5cmr9702371fa.18.1755885378566;
        Fri, 22 Aug 2025 10:56:18 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e20d2e1sm605121fa.1.2025.08.22.10.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 10:56:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 19:56:15 +0200
Subject: [PATCH v2 2/3] dt-bindings: arm: ixp4xx: List actiontec devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-mi424wr-dts-v2-2-cc804884474d@linaro.org>
References: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
In-Reply-To: <20250822-ixp4xx-mi424wr-dts-v2-0-cc804884474d@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

Add two IXP4xx device families from OpenWrts backlog:
Actiontec MI424WR revision A/C and revision D, both
of these are IXP4xx devices.

Revisions E and later use different chipsets.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index d60792b1d995f909f621b3326e62d19223f6683c..b7b430896596aacb792983d8538b84f389cc5bd1 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -16,6 +16,8 @@ properties:
     oneOf:
       - items:
           - enum:
+              - actiontec,mi424wr-ac
+              - actiontec,mi424wr-d
               - adieng,coyote
               - arcom,vulcan
               - dlink,dsm-g600-a

-- 
2.50.1


