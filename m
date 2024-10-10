Return-Path: <devicetree+bounces-109819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E9998120
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4ED4B28504C
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D64E1C2304;
	Thu, 10 Oct 2024 08:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yygm5MYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7591C1AAB
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 08:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728550506; cv=none; b=MapaPSa6kmi1s+XhZ5wV0b4w/SdbZ9nJks3ZvIoPHE9BUIniiRRenqZIOyCMK0JIEw+JbFXOqDyHdKo2IxBODIVr1JUQ4jzZk6+kvr0fd+voCrlMf+UCHnUOzA+uruRkfDbC0inHFGiCjKdfiV07ckPGI25gYtqT/xAhrC7+N0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728550506; c=relaxed/simple;
	bh=iY8aopICQoWPiqFUJsbUkB4R9fuhwsODp8QLLjEl8jQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BvykSdUSr8+ULYj1uNKvCSgMCTlIuSMbmIay5nrxZWU2LD2L+J/r0be8fVDo0s4t3kJKhPzSg7CZJ7hzLNkk78kC0HiotTy0MA6mJp9LGh3IqsAE3cKr6pNvLZVP4+tIlZrny0bIiSor+C4DaR3BbDBZSWEWG9eFJWHWuUpESvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yygm5MYp; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43112524af7so1172355e9.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 01:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728550503; x=1729155303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZoeoLyaT4YRoqM2k3JYahsyNXowkzkznux6otl4oRk=;
        b=Yygm5MYpq5tzjRBhlCb72ZZvMNjxMABQEQLR5Cr8Ml04T88QDFlJHKPh9foQd1dmWc
         JYovDgrvR9xIHLcjV/vA9V2fjlTzW/a/X2ezez8c7YGCverAVkpmtyYvC6bU2mreZNy+
         CU/0ZyOEmqIDO+gZ9T4oT0ILFs6J/2wzwi89QT6KvPs3xZ29r5gw1JkNZEsdkzYUD+9h
         36W6UjLYWIEAfPFwO3yNzpKMx4Op60iTxXOq8GTxEDyGbzB93qDrGPWD84wADnCR4szm
         BWReqyctiZ99Xh7S2wbK3aAKivsrAtGgVllxgGbD28UWAwOSDbGtFM6N0NJ9B8WSDI5G
         DLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728550503; x=1729155303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZoeoLyaT4YRoqM2k3JYahsyNXowkzkznux6otl4oRk=;
        b=fs3EvmB6AyWCVaIcxZlivKiuGwVqlCCIu8pw9AqtOl176MQov0regP2GulCk+tg6DC
         pxs+MJ1+lynS8djOaJ1pg3Ze40xCzQwu2ejgyrzHDwdxdKrRKOGetdMqyWsmkU/P9FxF
         avzr91L7+X8pKjtvu+PYkTas1jiTuQlJWcYW/mQ5oHCmjWmnmCDIMj+5+Wa1ywMDc2U6
         1pTdnxAxraX+yhOjgLKd6yOk3o5gyIkKcaX/SjDqFkXxW71zow5pEho3r2y7e3cwIGYv
         D9JSv40EP+zj20zWYxNPA82TecG254sY8QPGlp+ZELJw5rSQQhH4Tmpoi3TJ7vfe5SUg
         8y5w==
X-Forwarded-Encrypted: i=1; AJvYcCXeiqZxlFxnHGVo1Wj05S66nDUrvGuLX2plWetja3NYTqMdeMPCtPbqFBgA5mV8DLLmUlEg549KWhIa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjw9Nll1uyxFmgMaTx60byYF8fcNjoYsbUfwiD4LGkvhFHksfQ
	RE/KW1oVqfuFEelBz9wbjlD7bGALBqSB1xl6Wzing9y/gtQWRXFYZ25i3rlad9I=
X-Google-Smtp-Source: AGHT+IGk1KFi/rYwdfni8WZNqzNSKZ9LyuSxH0t6IsJ9UlgEWGBga9ugCWbAkGF24Zf0OWUkISu91g==
X-Received: by 2002:a05:600c:444c:b0:42c:ba83:3f08 with SMTP id 5b1f17b1804b1-430ccf09175mr22246155e9.2.1728550502737;
        Thu, 10 Oct 2024 01:55:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6bcf5bsm902012f8f.32.2024.10.10.01.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:55:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sunyeal Hong <sunyeal.hong@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 1/3] dt-bindings: clock: exynosautov920: add peric1, misc and hsi0/1 clock definitions
Date: Thu, 10 Oct 2024 10:54:55 +0200
Message-ID: <172855049020.142350.3418121034279449808.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241009042110.2379903-2-sunyeal.hong@samsung.com>
References: <20241009042110.2379903-1-sunyeal.hong@samsung.com> <CGME20241009042117epcas2p3fb2eea9d2618d36f6f9d6e0bb67a09f5@epcas2p3.samsung.com> <20241009042110.2379903-2-sunyeal.hong@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 09 Oct 2024 13:21:08 +0900, Sunyeal Hong wrote:
> Add peric1, misc and hsi0/1 clock definitions.
> 
> - CMU_PERIC1 for USI, IC2 and I3C
> - CMU_MISC for MISC, GIC and OTP
> - HSI0 for PCIE
> - HSI1 for USB and MMC
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: exynosautov920: add peric1, misc and hsi0/1 clock definitions
      https://git.kernel.org/krzk/linux/c/440e3dcd7c739ba5b256196a89e796fb7e59c755

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

