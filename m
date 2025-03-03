Return-Path: <devicetree+bounces-153228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4972DA4BA55
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 10:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F3373AE085
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45AC1F03C8;
	Mon,  3 Mar 2025 09:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HHNc38pM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45551EA7E3
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740992935; cv=none; b=qX0reOVVm+evfnD8Ixt6zqs7/sZLdYYzqt62cWJ4B1ox9sTfe41QdpJiBfCKaHdqQZ4WLwmH9UgGhTOCKrULOOxzaCkL8et6C3UBClMt7IYOvEFoQtkoT6/lEKr0RF6rgXl3kMj3uBMHTUfsTNtT2/RVTA1a3KdNZKuVAqoyUVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740992935; c=relaxed/simple;
	bh=KwdK1hh0pwYXDznk8CbHQleQFb+lcYppkzN3ytWbS68=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nny9EBIkEucaJmopVlbBDT555Sry8k/ij+q7mJ9srgZ8dMWJqGSaKnXvIqT+oq3OCPIL/fn5AWzUtvVcI3zaGm526yikGOt83okhY5pPKgrM0onvgbZB8xUVVfFCCuvbMZjbyIUYZ3Gfu6eVu9EjFoQ1mQRcqKHbaNv7dbaylbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HHNc38pM; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-390e87139d0so283949f8f.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 01:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740992932; x=1741597732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3NArLzMGeHWTWmPFGPl0UFGh/ozAvnT/Ug9Z5Z8/7zE=;
        b=HHNc38pMimubHaZpr+UKZS3T0okpzMFBJmnCIQ2bmWOS69L+TMJ9xt8WLw1gmzvQaI
         kXuEhoZFN4kX9728RUxJ5b0ycwNDWYvayEvCKqenQJzBTXpka+1lk6/Njlc3r3Svvb/h
         ayVJ+XbPC9T9OBg8yXa0tQtLCntt5scikVg+xwrVENXGEzshooBRhCCeJ7KNYNozrRre
         9AOzvlgYLL1p8SJ7eZkNlXVHnb3jQ7joY0KDhIfhoXWz9v7FTebmEDPzkCjuIAzS1DmF
         8Gk9Dd7MwgPMKSJZOFwT0DwCyIycwtmV8S2MLi+rU/mF/UCJu1wy/KDW2ArVcBVKj2xw
         vUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740992932; x=1741597732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NArLzMGeHWTWmPFGPl0UFGh/ozAvnT/Ug9Z5Z8/7zE=;
        b=g2QraonkE9faxt7gfpAMAlB2ehZPJocLxjI5F8sqFKDS/UhGBGEeIe9aqwtcqgbCEx
         jBfYHiBG2zGhqVQucoRDT5bcUt/bXv/ZLqeN9FHydiDustHJz2yh2SX3G+lxFihxsgic
         986fchc/vf1OA+HCSzxAwOiaBERFBa1xuDY9Q7h4yGOMgmmbtU0LfpWmxhI+jgMZNgvg
         UVQuIdBmT5bn5s5alAngAy70M2WkD3G1EZi85oOcUqRw5Is3YzBXCmajDhRvwUK6gXC2
         GgXF6klCA1LWWBeKaUG6bMxZ33oam1ZJ4Jb4VnnIV/7xrZy2dRBGkjjBh9kDnv9mPoc3
         2FgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcJpiuZTZrsyxwFpksLL3Gu2cmznhvDV0cfTiLajG1EbhYpcBMmt9Pv3I54tJxEM2W1+Fggj/1pDcQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtgqw8T1G1Tr9ZN23UYZElv34VnICdY8pWyCVw9eL3IyRUmi1r
	/FRCx2QSA0Zd+LlwGgdbsNL/R1UhBYASnnXiAK+FSe8GDZ+G7QlkP4O8MXCZicM=
X-Gm-Gg: ASbGnctOtjFfDQtQRIEvykj4v9KdjGeCXnlphhsziOK5OOZSwpYBVePohxsUKHtqlBH
	acIQLxm7bzymvZ9QqotnH5//Z91E3Q0Mc2amOZ061Zm1DWtkInjdjOvhQ5uZB6AxSbWLEKhsLDL
	NpEpSCtzAzvkfxE2laT1vKN9GDZjPjn9hh/g8GjrmLx8NXr28Gm6T0TqWOtBntNF1EUhp4HMOeA
	f38uCW52AU49szTn7xCblvswUtPurO544/jJxDOpXtVKn+cm7IMOSNRyBa+BabWE2YORBlbdHKm
	212/azjXD366/HQeakq+X5zeqypFoWUs4TFoEzD7Czo3Mv+GLlYiYLL+ee4=
X-Google-Smtp-Source: AGHT+IEFwQNruNu5mTaT+/YMJCqOub6ua/xucOR8SE1iPMFTevfv7HuPeLZAAmqrMseXFFEcLiiaaQ==
X-Received: by 2002:a05:6000:1f82:b0:38a:8784:9137 with SMTP id ffacd0b85a97d-390eca88f78mr4072087f8f.9.1740992932006;
        Mon, 03 Mar 2025 01:08:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4796051sm14058418f8f.12.2025.03.03.01.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 01:08:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Introduce pin controller support for Exynos7870
Date: Mon,  3 Mar 2025 10:08:47 +0100
Message-ID: <174099291728.28792.4499836839323841404.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250301-exynos7870-pinctrl-v3-0-ba1da9d3cd2f@disroot.org>
References: <20250301-exynos7870-pinctrl-v3-0-ba1da9d3cd2f@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 01 Mar 2025 01:05:16 +0530, Kaustabh Chakraborty wrote:
> Add support for exynos7870 in the pinctrl driver. Also, document the
> ALIVE pin controller's wakeup interrupt compatible.
> 
> This patch series is a part of Exynos7870 upstreaming.
> 
> 

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: add exynos7870-pinctrl compatible
      https://git.kernel.org/pinctrl/samsung/c/129bdbd05650f4c11fb8995f8b6e63589ce4cb33
[2/3] dt-bindings: pinctrl: samsung: add exynos7870-wakeup-eint compatible
      https://git.kernel.org/pinctrl/samsung/c/c1ab2297bc746b07b96205dddc45979feac22f4d
[3/3] pinctrl: samsung: add support for exynos7870 pinctrl
      https://git.kernel.org/pinctrl/samsung/c/eb76dc973cef741f74ce17d3bba8a7c9f2cc6113

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

