Return-Path: <devicetree+bounces-112363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E82CB9A1E4B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E4D7B25D4E
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEEC61D9598;
	Thu, 17 Oct 2024 09:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OXo+6YsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01F1D90D1
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729157208; cv=none; b=HVd4gS4Xclt7mzNUB/7KU1vqyajRt9QNXn3M5UJ19Nw4cvY7mweJUA3phmKb4K7NOjYAq4zEiGrXsH1QLvQYmkEtgM1Ci5qGcawwdBqWTz+KqxKcVPBuhILRKE7+B4EOEoav4kxt4pzLFeplPjqjO1EPkkXTCIRVLrfz1miv/yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729157208; c=relaxed/simple;
	bh=eZBm3Bmz++hihfRtzii17zgBOodk66D4801Oz6yo8z4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dA1WEOpSvapNyLpM0IpI/9NxnQC7zfqr1Dow6TUO7HFazjjM745Sul3vfYUSqEtql2XHE+k86qitRte6EpB+xNgf3HL3fuCaJ094GJ/MdZ/t+NEm18GKTdd2f8sHdd9rrue+zZBicex23bZCvOo1LHIW1Fj2ZIlMW4J9Oe7r8HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OXo+6YsN; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43159555f29so771395e9.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 02:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729157202; x=1729762002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/oSOyG8g8KayNyF7yKwR1IFSwarhWkC0f5N43ovDss8=;
        b=OXo+6YsNzm5VMYgCFvIND7Yt+OeUKDO8xJ3dQLWqtkfBSkcSVjlH7It1JkdJOllAh9
         ZuiPG1B+qUA+GtCUaRWqowAJxoJLHp9/Mc5N7FftgoGfACPdusO/Qvfi7iTQcFUNQg4g
         JMWy5+hLnxgiF0zV66yPpQz3lHnJgebgyqHAhYjNXzS6fvOo/7AEWBMQwGTCyStcs7W7
         AUu3/anK+3mYSNNhHZgun3ztLZ3fVipmjJerNwcLn5jHjSmyLRFXj/YRccU+Xvsv8zCC
         mC7XONPlBaVuNNt4HrqPr7FBfGP8PsYFQw874LdkMt2fdZxvhYTF2QwaVo0gZbpYa75m
         1yOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729157202; x=1729762002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/oSOyG8g8KayNyF7yKwR1IFSwarhWkC0f5N43ovDss8=;
        b=SWUkzFKU/OaXQRFmAoITX11Gadb6t+akHQDRawEcUdDnuXqTzoBqNNhEw4COB9k0MZ
         m3kZVuBf9O7SEbLElezpQiRJXAJmtoyeLGl6r6OLeW/fEvTkOkchYimoEYDeUCDcIqbe
         mBatJSpvehjzbtkw2z36qss/lYI7CdHE1NI3JyscbxqALhm4CB1j2EN29d8Usr5stTob
         2WAol/6fpp5jov3niA2btCxNL29gwernKYzNL+soW7DxqUM//dVNxkR0vColIX2y7f9n
         Zb3RcZ/ak2MZlfu/94XFrrFKOcrP+hxl6wPKug+BVZiVfOSm8esH2egYBj92C0m5THEd
         PD+w==
X-Forwarded-Encrypted: i=1; AJvYcCUuo/RKxllP1Dk0aEAsie1quiKUEOSC/c5THBaH+wX2Ptjp/7as/fFPKwdThK3B+axfy+lAB5otU76R@vger.kernel.org
X-Gm-Message-State: AOJu0YwXXBhNyF8ymV72xc61XFv2cCmFfACmqD8G8nJ1sxREA4aIE2H6
	4GjvX8ckNYWK+6dWgqnvFiiSrbXHqdHq4C1tav9vz7osDKdoQlDS8+UtvX+G0II=
X-Google-Smtp-Source: AGHT+IFXs/h7xW57eOUZ/W1Yg/aH+/KUT7TvMC5vfnv02CZTX7VM1dT/0OuOkE9HtNp8A2hz/c5wEw==
X-Received: by 2002:a05:600c:4508:b0:42c:b55f:f4f with SMTP id 5b1f17b1804b1-431507e9753mr20178565e9.6.1729157202411;
        Thu, 17 Oct 2024 02:26:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43158c620c5sm19769465e9.48.2024.10.17.02.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 02:26:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v3 3/6] dt-bindings: arm: samsung: samsung-boards: Add bindings for Exynos 990 boards
Date: Thu, 17 Oct 2024 11:26:39 +0200
Message-ID: <172915711503.42287.18322892549440683443.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241016154747.64343-4-igor.belwon@mentallysanemainliners.org>
References: <20241016154747.64343-1-igor.belwon@mentallysanemainliners.org> <20241016154747.64343-4-igor.belwon@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 16 Oct 2024 17:47:44 +0200, Igor Belwon wrote:
> Add devicetree bindings for Exynos 990 boards. Currently the Galaxy
> Note20 5G (c1s).
> 
> 

Applied, thanks!

[3/6] dt-bindings: arm: samsung: samsung-boards: Add bindings for Exynos 990 boards
      https://git.kernel.org/krzk/linux/c/f7aeff28f2768443a49600625b6f3d0aad1fdd52

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

