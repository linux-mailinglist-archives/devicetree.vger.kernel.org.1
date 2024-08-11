Return-Path: <devicetree+bounces-92692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACA694E12E
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 14:33:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3788A2817CF
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 12:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DB573462;
	Sun, 11 Aug 2024 12:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sAlbUJGi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C95B50A63
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 12:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723379599; cv=none; b=UFnl7n+7IgnRyBYCOlX9ezSxxEntcGnrKmqLco6Pc8HVlNZ7BT1qPCJsllrr36j2qy74IqCRMhk3iyH/OUVOjT67f/bjhb6G3Z9n6tXbzJHUAiloAhmvICWXQPyU0FtSQjOMMWWx3D8nzn0rRluvIe+9DlGRq8ixpGu92rSZsnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723379599; c=relaxed/simple;
	bh=H+R/OmjOZMGBgdB1sUh7zyOJvKewZSh/I07BEcIL2LM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gb1cK6V8GMKrefJV2HyZk+Zt71CgKsX+xPNPcAf04fbt1Eb84RhgRgRfGyobQp8yyjoCQZy4A64/Vbai7WeT93/yfjYJXmT4lpa3T8Si7DfvN2nqmYyyWAc/B+r7IY11co2wUKVSPynJPBlKD1PW2aIAd+/spl8NsaLIsi+UMc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sAlbUJGi; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-428e1915e18so23496855e9.1
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 05:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723379597; x=1723984397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kt1hLgivy8d0ZroiWVINLl4zitCmU47ZCc3ffQBmI38=;
        b=sAlbUJGi22xg3oAbpTKAltoYYnZr7G84jhQieUQBLahAOpUWSFrTg//dLuxO+shALk
         AkTuIOrKbnFjR6tuiZF4M9Q9l3k3uIX37hx0CZ4iNQzFJPXHtFMN6TBSkjSyAyEZ86Sx
         e85o3ch1k6aZbCB65Ko4hScYPhP1CK5iiHQu899bQzucLpMrdrjB+ZuQuaDkRkm4621M
         FKAm27F/slkWCbbDuHu1U4x0ihHfv09s15pJ70NBda2jCYH+Ie/uFzObbaRqlWebPzWH
         n1bVZyNU5pojdDYkQaSXD3XiVz1UxqKCCYVY5hp4/HPesSyaomGbGxwYWiItjvjzu5+W
         bisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723379597; x=1723984397;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kt1hLgivy8d0ZroiWVINLl4zitCmU47ZCc3ffQBmI38=;
        b=E10glX61c4JgexaPf5bfgA7p35hFELcYVlMuqC8c8m6rPAuvQVuC8uvCL90meMjjWr
         fG94lquf5ScEwQBqYy0fDSPQJoTUHZDAH/nUE7jXtydhoB806EdG1twkGdQnr+oCu7UD
         D2sS6XLsh3woC+WSkNKVNxOlsTmj3OVPEMekBf+5fwy0iPIUS06SXAhmAeX+ysUcARiB
         VGavfkAmdjQ9SRvQOQTqrrjiP2EQGG2Xhsx1/b5hcYcWd4JsRMAZeUs3r33LzvPZ8B8I
         ++QwyqvNBo5s6KDEaW5NT1FpLymIY6eb2NbWTixB8aV8OU/xcEZPsAebZ9Er+EtFLMjQ
         tpxw==
X-Forwarded-Encrypted: i=1; AJvYcCVjlxVqaA+M9t/mxLwqYhMlsAKEu/FuMXCpK09rHplNU/PDuplynKgExVLKObyzE+dgD0L+7K2GvBAZEu9fGoTyK8cpRdb1vnoO7w==
X-Gm-Message-State: AOJu0YznZo3itsYtn94VNHtMOsxjoQG//IfmOIh50zAZimS7kJdGya5z
	hPEOqZWrITBYcvKl+xOyBtsuDKfwvSgflhzlvZOUXjmhN7qRMUO+KrllWGBbWGo=
X-Google-Smtp-Source: AGHT+IFq2LPBmSvGRCeZCydCnnAu8AxMgVrN9EiqvYpbrAorrsapRaJIkZ+sMbUiaGxYFDtBvfBkag==
X-Received: by 2002:a05:600c:a0b:b0:426:5416:67d7 with SMTP id 5b1f17b1804b1-429c3a52143mr47763835e9.27.1723379596600;
        Sun, 11 Aug 2024 05:33:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c79f345sm148055605e9.39.2024.08.11.05.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 05:33:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chanho Park <chanho61.park@samsung.com>, 
 Tomasz Figa <tomasz.figa@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kwanghoon Son <k.son@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240809-clk_dpum-v3-2-359decc30fe2@samsung.com>
References: <20240809-clk_dpum-v3-0-359decc30fe2@samsung.com>
 <CGME20240809115500epcas1p34ab112e1a0da7247257b9cb8f7eafbe9@epcas1p3.samsung.com>
 <20240809-clk_dpum-v3-2-359decc30fe2@samsung.com>
Subject: Re: (subset) [PATCH v3 2/3] arm64: dts: exynosautov9: add dpum
 clock DT nodes
Message-Id: <172337959515.7186.17124909105014310373.b4-ty@linaro.org>
Date: Sun, 11 Aug 2024 14:33:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Fri, 09 Aug 2024 20:54:13 +0900, Kwanghoon Son wrote:
> Add dpum clock for sysmmu, dpu.
> 
> 

Applied, thanks!

[2/3] arm64: dts: exynosautov9: add dpum clock DT nodes
      https://git.kernel.org/krzk/linux/c/2cc6b908f800bd6440cc57c1c692449fab49168b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


