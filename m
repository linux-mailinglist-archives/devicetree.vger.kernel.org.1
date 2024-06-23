Return-Path: <devicetree+bounces-78917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C4A913A77
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:22:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C52281472
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3158181333;
	Sun, 23 Jun 2024 12:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dwj3cyPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F803149E1A
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145322; cv=none; b=N+O0VoSyfdkB4bCD3SVYPeC6uQsj3JYB7GQEg0Si7/TFQeqNH0+TJ6Wz79k2uQsTYOzRePMmkb3TINNwJ2oUzO8sLA6bctah8CtF9cdccdqjRjgXKGghXUd9X9SdPD6ZfgkppapT7fFXukkQbEKDNZA1nz5OxSqP1JRUWt/oob4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145322; c=relaxed/simple;
	bh=+YGQG0spIEY6BX8fp8IB2Zt8B3O2zosJkofUl/9HmX8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j5rQUAOG0FYv66GIkRy6lDgA32C6bSFrB6QXjUPkxb0l1h+Ez7Dqaj2mA2MAVpkzMlHqOoC4lMVnw3c5Dhq/3ehJ/vLQ+n9fZ3rfGOpwvsz2rJR7TL0kqfRvncnYPXDibBOy5UHvifBw4NDMccO4nf/d1Oo+TK3xWXrYh0aByLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dwj3cyPh; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42138eadf64so29277095e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145319; x=1719750119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/xJyUiMAg6Wu8/Ka0Q7n5MWSVJTNOLPxK+8fKjiZSBI=;
        b=Dwj3cyPhtiudiLIBNIyCRgT286bYDcEHmurqfVPwMBdaI0EvP7NOJZegIniH5QtY3L
         SpL7/3FiFtLzKGg+tqAHFDxtLEMAWjWMIkKYytFg/mIzK5tUECMOGiRRLnCGDNM6yK8K
         Rkx9Cef8PWz4mNzroGnBlrtkEn2ghbaf4TBLot1HQhlb1yGS/BALN5PBQ3eNkcmb1GBp
         hYLvvwCvTf85YKRdD+xPs1quml8xm8+OpLsPO2Q6KepYfi1a5khTtv4yZc6wcy0M5s8k
         Y4l5U6Z1duUi7Bfs+eeji/5M6+jdnSSsXbpa//3V5bUN7GBLVi3pIvPRpPqeoWakVnSQ
         1ahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145319; x=1719750119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/xJyUiMAg6Wu8/Ka0Q7n5MWSVJTNOLPxK+8fKjiZSBI=;
        b=JhQmsgVYFlySr0i6D+Rg9VmbXTIG7PBmMqWUVQTR9+udTM3jkcU8uIi6gc+TLFZe7L
         QsKU9TFYNsTwZO94c01niQGY1Dj+mvLjE4SWW1pNzNX79fYorxJnFesijB+TpLj18Qgb
         QkTCSwR0adWbR44KwKtc7n8v+ekoRjZgU4UoZkZUwbBq84nAzEhq2g14RCoJskQu49Ps
         W+USbAGRC71M8/1wn6YeIuXjOH+5F6AQNrA0ko2x3ZAfpGp1kUnFZusk+Gdr8J6NnTLY
         yLmdORKDKuMWZu8b9P7JmGnQVgH5hcyzyPLvnXKdXdjwE/xtNs8QbPkec5QsvC6pvRHj
         GFgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIjVvQ95w/VZZiXwBoaoI5qTMiP+vI8WJWUqMNtiNDDUCMSMDJJtAve1XZX47ppybGxL/1HyQgCCyNW9SScqt49T8TAaNKBH0UQg==
X-Gm-Message-State: AOJu0YyYxV/Q8znHtj7nwfodVDUWoDXTVsw6xv5okzqX1a3qTojTiI5d
	sWRcFpRawjgQaKBL7W5kDk9OtLQAOulSOrnYOo688Xhx1SN1pGXHiQCb+SkFL7yjkzMtPDmvFMn
	E
X-Google-Smtp-Source: AGHT+IFPLL8eCdHVFuOLDW1xXL1QPUIz6sBz0E+klp2OdhebFWnLznYwiSHr8z6KUgEdq8oiR6S9kA==
X-Received: by 2002:a05:600c:5686:b0:424:798a:f7f6 with SMTP id 5b1f17b1804b1-4248cc1838dmr15911535e9.8.1719145319639;
        Sun, 23 Jun 2024 05:21:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f693fsm7197553f8f.69.2024.06.23.05.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:21:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: dts: nuvoton: Use standard 'i2c' bus node name
Date: Sun, 23 Jun 2024 14:21:52 +0200
Message-ID: <171914524817.46635.6976704270027238495.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240531193104.3814663-1-robh@kernel.org>
References: <20240531193104.3814663-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 31 May 2024 14:31:04 -0500, Rob Herring (Arm) wrote:
> The standard node name for I2C buses is 'i2c'.
> 
> 

This one is waiting for 3 weeks and I think it wasn't applied. Let me know if
someone else should take it instead.

Applied, thanks!

[1/1] arm: dts: nuvoton: Use standard 'i2c' bus node name
      https://git.kernel.org/krzk/linux-dt/c/f873f24375c6d46bea92a2ed8ffe55b2f9d5509c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

