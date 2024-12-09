Return-Path: <devicetree+bounces-128935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 693659E9FA1
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 20:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAD0C28274B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 19:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D255B19CC20;
	Mon,  9 Dec 2024 19:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WGAZv5ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E183719939D
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 19:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733772532; cv=none; b=Bs+gfBXPJBEtNrxuTQr4sRh9hsiGX26Fp7u15euwva6BObMClvtyvhd5aAfEGjA6IDLzPbf099RlO6aDOffZLkpiuMZHh5ZoN9Tw+IB1h9z6GzpIRxnneW+t7VQ1I4oCelchA8TTn8pgeIO/nxw1E5N33lHgw9WxbsEWX5AAAU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733772532; c=relaxed/simple;
	bh=bGhWqBXSz8K0txqXiFCuPd7y7o6C0UeSwmy15KkcIn8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gl2fozLLP+MxoGkNcZR4Q/lvCLFe3mFsSO+pavYkMHoqW5Wrur6kUn9GmD/OnsisqchpZ1I/rvl3BSvOq0+m5wz4zUDhhHVOq/XdGxY4KAiArBAzhS4ZpFJVfJC5UeMYCcgFmnOL5u6ZwCIKO11NPfDFWuQhylE4lRlaNuHBr7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WGAZv5ud; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434f1e5e77dso1326875e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 11:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733772529; x=1734377329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuSpj/HsYjKUq+UsFvNv/TltZ5XFd6qk5tdowlJF1TM=;
        b=WGAZv5udWhX40eLfEKeSavxIbYtBKqzrVcNJVTNyO+w4ydXEKQ+TuPOEj62RHphTCe
         wj20XRC1mshoJ6MRLxTlbINbp3dYlest9osb9vMnHSx63QU4j+10SfGlSHsuiidbt+VO
         bnjoSM2MCN8zjyaGBVwMH0CPu+o4TN8ddn6EE6GbfEQSyM0SX3wHWhePUJswUg6fV7/c
         FkMAvJaW0h8BE1HsRIVXvN3SEYSYD/XO2W/KgXpIKt+I+uPoF9+pAD2XuscvnJNSnahm
         zZTeAsH2Eiz8iHD02pP+TmM5I4RmCa0in2VC3JVjEQ+H+ACPQMFarWaTsz1rH79SLIoL
         7FRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733772529; x=1734377329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IuSpj/HsYjKUq+UsFvNv/TltZ5XFd6qk5tdowlJF1TM=;
        b=ZjoT98JXa1RUDzzbO+pPle+OSYvxFituWD0s4xjotKIoeoCc2tNZLqjMd1q+dCDq3I
         PPfriEwYwEpLglfgbddOVy89ucAqLm0XQZcnJGcEwlu4nyoX+eB8Di7UQb13uhpHk3iS
         TNCziNncr+C+qjNrbhsgj/6ymaTb6YxB6h/TZXuO/qlAg9AI17NSQf72SMdD9qFlod5q
         VWp8uBr6z+ubXSig55JsYA2TZzUS0jvaJdNgmVKjP0oAjE5a47k/BrtwP+r5aMI1eXpC
         MMf7J/3Bf5HraDWNYmq2XjKyLmMuC4nkquy6BZUvD0l7KNVD8ZFTDjxVOaMu2H2SyUsp
         YGOw==
X-Forwarded-Encrypted: i=1; AJvYcCUZhRLzSYhgOUUE+SsPEDkOS+Zw8zQf330QIiAwTYXJkNIBi/UkdfAzrjBFo8Zb2PJ7xSQPKk+oN/mR@vger.kernel.org
X-Gm-Message-State: AOJu0YwmLGNMYUUK9eHgYGPAEGng/TW8OeW4LK+JvH83zTGgCBfz1CoS
	xeZqcV4KY9wCvhZaPQUu3DR4dbgNyd5owr5EigLK1UITH6VyLY2jsj/5qn9WRMQ=
X-Gm-Gg: ASbGncvrRes9j4a22ZysJcjAko1W8D5K8IqoPy23hM0XueDGlfHK8lHbvMvIfesxz8w
	O75i1heIO7ZWL95X6wtwiKoQpRGfIw88DFjwXO69bSzdD3r3EZcCJTXWYFW+FLizjPrDtB4REWl
	cUNd9fyr1hmgi/7+FoSmDL7Chs+ZTJ14kLMQElEbpnafaS5lDnSV4735Fdsw9qKHxJZno64NQig
	k6mdBaEY43qR3KNxbNthRuWhTefjHfPp49VKeJry8RDFpxffiVKeWnQZ2CRZN6y
X-Google-Smtp-Source: AGHT+IHptp/TSN8ArgGPm9cywAb5bVkFu4G3aOR1tLTZhOcuZyzTX0x6rWRDIu6DPFmEx/1jW4oROQ==
X-Received: by 2002:a05:600c:3502:b0:432:dc5a:b301 with SMTP id 5b1f17b1804b1-435019c8db0mr3209025e9.8.1733772529211;
        Mon, 09 Dec 2024 11:28:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f13f735csm80686325e9.16.2024.12.09.11.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 11:28:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>,
	kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/5] Google Pixel 6 (oriole): TCPCI enablement & USB updates
Date: Mon,  9 Dec 2024 20:28:45 +0100
Message-ID: <173377246177.140612.3507892014297013464.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Dec 2024 12:40:23 +0000, André Draszik wrote:
> This series adds and enables the Maxim MAX77759 TCPCI for Google Pixel
> 6 (Oriole).
> 
> It relies on the bindings updates proposed as part of
> https://lore.kernel.org/all/20241203-dtbinding-max77759-v3-1-e1a1d86aca8e@linaro.org/
> and
> https://lore.kernel.org/all/20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org/
> 
> [...]

Applied, thanks!

[1/5] applied (but b4 lost rack)
[2/5] arm64: dts: exynos: gs101: phy region for exynos5-usbdrd is larger
      https://git.kernel.org/krzk/linux/c/527c9640e4f04044afa98f3ce18f8af89ac4a322
[3/5] arm64: dts: exynos: gs101: allow stable USB phy Vbus detection
      https://git.kernel.org/krzk/linux/c/95350c0ec27d906cd95375084ce343bc65421e70

!!! NOT applied - waiting for bindings to be picked up:

[4/5] arm64: dts: exynos: gs101-oriole: enable Maxim max77759 TCPCi
[5/5] arm64: dts: exynos: gs101-oriole: add pd-disable and typec-power-opmode

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

