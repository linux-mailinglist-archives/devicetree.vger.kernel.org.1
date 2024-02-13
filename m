Return-Path: <devicetree+bounces-41401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F632853706
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 528B81C23AA9
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E4615FBA2;
	Tue, 13 Feb 2024 17:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="abQt/452"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2D45FEF0
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707844608; cv=none; b=FNuDcyECaxAqEsIkYYg2miCdv9dDV5EFO+kWGdGSKTJiikjGsoUKgtwgjRQ3f6Bno1Q9Yl/wIJbr8sM+TdyqejzactlH8CY3gMY1W44mGUJ0hv6hu3vx1VtnDtH9N4DiF6TyrTKLUawD6b61RbA3L2EnOYfYqGi3Hb8aFCAW2Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707844608; c=relaxed/simple;
	bh=WZx6yVZZNiF3OaN4uodUFDPPwakuYb/60vw/hpptRf0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=LbFfAqjwiNh4+FZSCFmfjh02d+CWVE3qlTSCNCSu7S2ZaeoAius43ByanihjFi4mIRMJql40f7CnIfJ63KBHYN8JtswdsGG2RBMllsPY1TwM57ugpdIHZBDkHCwwdDcVQEFZSa2ZO4b1fIyQ7Oh2XKPPVpzcgYDpqNXhWiaZq6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=abQt/452; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d107900457so13312151fa.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707844603; x=1708449403; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WMBjFdFgnlJQ1ghf1GbZeCMaZ4/XGlHN4HMb4tAkLkM=;
        b=abQt/452wiZZXHJNnMlVhCblY2sRdhZEfbaktjrSZvZmsz1MQ23eA0/NmS5xU1SNgH
         noK0U+oTmSwueC7bTdkcL78vYRxZwwYM7U25ggVFZLkkALkB1nCgVZjjOx0qO09ZLCGf
         GM86Ri27lKtGqp/I4OydMzkc5MjIXCfftW9TyP67mQAGIEgNc0N6+26pFp+Y1bx0kRYo
         XOMALrYLIu4mOVrRTmC/2b1GUZ/AAYJIFI2XEKk8Jh9HlpW0xlpjw2cjLtjYv8TvpVzP
         S8Ec3BMm6q7AKEsblskQGiFd+K73X5HgLt6T1uXn7qsLxZjqXdaTKwrV+c34jiIZWqeo
         IvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707844603; x=1708449403;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WMBjFdFgnlJQ1ghf1GbZeCMaZ4/XGlHN4HMb4tAkLkM=;
        b=D/rXBrqWIsgseZivI0/Ow/E8VcQ3mSNOvr6GCH6Z0Uter4c61+r5LsMhRD7oVqB69M
         YJZC8cBg5YXACCQ3oiqiIMmJPBuRf8oeJ98yOOFe5w/9RHkcVyTM870Lh1Zv3YbYiTNw
         /LorpPvdtoXL71KaVubSrno6KdKh2aQJdsUC7pgzk4izOu9/j/f1f6+anDMr1eg7FCCH
         TC1xqONpj0CkNsfSsOFTaiVy0LPFQcnw6DiSqgp+Cfis8xjDwcAE4/G70cdwmfMLHGvr
         OtJKwKKUXGtNfYRhUmcOjFMnn5Ol2/s+6UjBgW4Ah19YOm0DvftJRJTtjWI5N/F7u6p+
         dATA==
X-Forwarded-Encrypted: i=1; AJvYcCXihKRU1HciiC0SwnBbGHKATEGTjXELJlwojQ9nwna6EFWjXKp02rrzHTa+QI0T36GZdVFZKYnqenUHywBxUJCMvq+rjmv17yIGMg==
X-Gm-Message-State: AOJu0YwdHWzrIlb8HcwJ013/q4vn7gSTQvwTR/qEvcLuB5PMqpzUW/Md
	R06GRHhObtVBtkDFNSBbaxkAPAC5uvLfO7otTpChaALkJI332z1ph6yxGvaYY10=
X-Google-Smtp-Source: AGHT+IFwM02zgH2IUGGDJVPP7QzuLp4Eww8vgMjLE182RHBcOm+Ky+YUcKylOOMcSd3py0ir95OVpw==
X-Received: by 2002:a2e:7c06:0:b0:2d0:c101:7a71 with SMTP id x6-20020a2e7c06000000b002d0c1017a71mr184526ljc.35.1707844603254;
        Tue, 13 Feb 2024 09:16:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWyoBr19YLQx3fOo8Z1w5RN4/HmWN4+sU4OAP9gwi9si0X6c05vqJC0dYGWTHTeflvMEoM+TXLBIR5hB1gXY++zW9VuVIilFW/QnDA7v5DNVHI/YNuc16axqcV0ooXm9yH7myLzjnRYGN+SdYuS8EEeEoOOqD0sUj1C362f17sd9ef4vjrKtBN9G3EFTQLo8mLbYHlb0fIkequ+hHLb/foMjONiDdURQCSjRKSXXbNSa3PAkWXkH3RqMJN56MbccVmc9HFHRTN4JexD83Fp5Ds9qVFmRhniB6XsClGpHShUe2+hFPsNe+vNI7ycV2e8hmOZSPX+RKSJ76CTOSg/HMHz/4uVaDTczq/mzBtnEXW70xg=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b00410c2f39833sm7805785wmq.30.2024.02.13.09.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 09:16:42 -0800 (PST)
Message-ID: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
Date: Tue, 13 Feb 2024 18:11:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v3 0/4] Add support for Freebox fbx8am boards
To: AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Add support for Freebox fbx8am boards

v3:
- order board binding alphabetically (Conor D)
- replace underscores with dashes in DT node names (Krzysztof K)
- Merge overlays in the build for coverage (Rob H)

Marc Gonzalez (2):
  dt-bindings: vendor-prefixes: add freebox
  dt-bindings: arm: amlogic: add fbx8am binding

Pierre-Hugues Husson (2):
  arm64: dts: amlogic: add fbx8am board
  arm64: dts: amlogic: add fbx8am DT overlays

 Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
 Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
 arch/arm64/boot/dts/amlogic/Makefile                       |   6 +
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    |  35 +++
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso |  25 ++
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts          | 462 +++++++++++++++++++++++++++++++++
 6 files changed, 531 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts

-- 
2.34.1

