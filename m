Return-Path: <devicetree+bounces-63707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3468B6017
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 19:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFA7F1C21C91
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38E4127B66;
	Mon, 29 Apr 2024 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qU0w7UQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5841272AF
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 17:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714411810; cv=none; b=ph+BZVFTWNMSlu5Pu9oGeh1DDCpieN7vSl8ScXB2/kzW7JdDXlYRfzq2NG4NqK3J80RTnXfhGR1C4y4VdP3zvpYvkVtADeJhdNYt+uqsnsAwrsIe08+0PdEb5pQvqlEb9vmbcLS/PfRdd1seBxA6gMiqfKwQ747vNeXmOIu9Y3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714411810; c=relaxed/simple;
	bh=NAYUwQk3+viNKWYj0Ci8K+1OFeyRtiPWNJCpAFbxutE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=q9VHgZRUzznv4XiZPh7wxDYZGZpaNaQW3ZhOPFNi5dOnpFGTzdRadpG26DHd0DGEfbw8d75KUnLqae7veBJ9A6C1KzzNgpGNDRFG7YEyD4Ia/i4/yFEemHhtMf1wCJYdnyr3iVzXC0N6fCaUwRuRwlfmBlclNBuZly4PaWkpnlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qU0w7UQI; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a559b919303so622601866b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714411807; x=1715016607; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ApsAmNtF7WojJxJovU3iPiwCDNKhiq4dAAzkVUAsKYM=;
        b=qU0w7UQIvkuDG6eBbYmcmPjuRY7wXyXLMbO0RsF9XzsK17Bb4EqTCV5bTVLfXWnX6s
         sPnNlZuKHP9rn3eF5FU0kiI7j5FDlvI8MnDllgl6SwqaVbRdwSLlxBLplOp0QBmK6wNN
         jTfEm/afsMabJP1NG14sfjFCu6b6v8r0m2gYBa29WyvjbFKmMq9+GUN+jECFTH2C8muR
         6gUr5fSgXdIIupNI/iXpThcYOJ5zUa2GMp4AWiJIQuXUA1/9j5gJlm+d+KAT4Odlyq4H
         4czTYlsWGDZ69TaBse6NkTuJGh0iw68kPGWvMG1K0xd9bX9VQWPIByjg92u2R5oDa/xv
         DIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714411807; x=1715016607;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ApsAmNtF7WojJxJovU3iPiwCDNKhiq4dAAzkVUAsKYM=;
        b=tdBdXq9UOsTyXTXYlBzsxG/0S1Pv7QFoxL8uKpR2G+4T8bUX7H4Eu3iIPoUDgIr9NC
         g/NxjnAI1ecP0r3eKxZCccbvAadibIesoj9DyRDTSSk8/oUx4WbX6jxz4Dq06UGCcoc7
         0fgqeBbaQopJG1FCmEN53FbKpH9X2AYQA+qHapD97mhH1bJ0VsPTjxNHajgZTUOOsOEh
         bxTGacuqh5oz+Gig/a5c4X+pT7bDDUP9NDdzJbdp8bLHogYDZcd3mzwZi3zj1BGwJUba
         WoGpB1kUaHgL3POmxFAEL2OzazfUWQOXNZ5ilQovPK4OwZg6xtRNainA4QZ90Lf/n16u
         Mukg==
X-Forwarded-Encrypted: i=1; AJvYcCVjNlsDvsn9VvhwLLHswBeAcq88Te30ANWCjcsycM1ESo/H5uy6NgNEAKl6BwFU68ZPzqX4v6wFaFIEH+CtDRFTtjsOvv3NMAnxIw==
X-Gm-Message-State: AOJu0YxZporEdhuT/1J/aNzflbpBlXDneqKfygtegJErxtz/rYba5a6H
	hCXFwurZ4jFlhhCHH+vlXjorb8E+KBuLuIqwhL3lLwwU6KZW14oPyv7Y0+GlWFA=
X-Google-Smtp-Source: AGHT+IF6Jf+FDVXZFYTzzEsiJyYjXEo46zQqXDIGe//XlnoIxz3tHXt5cCHfbrryZRIviq2Dbj2hgA==
X-Received: by 2002:a17:906:f18d:b0:a58:7298:fdfe with SMTP id gs13-20020a170906f18d00b00a587298fdfemr9105221ejb.53.1714411807391;
        Mon, 29 Apr 2024 10:30:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id x10-20020a170906298a00b00a58ed644d6dsm2770173eje.127.2024.04.29.10.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 10:30:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240429-usb-dts-gs101-v2-0-7c1797c9db80@linaro.org>
References: <20240429-usb-dts-gs101-v2-0-7c1797c9db80@linaro.org>
Subject: Re: [PATCH v2 0/2] enable USB on Pixel 6 (Oriole)
Message-Id: <171441180540.306855.2701742264944278377.b4-ty@linaro.org>
Date: Mon, 29 Apr 2024 19:30:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Mon, 29 Apr 2024 11:35:48 +0100, André Draszik wrote:
> These patches enable USB in peripheral mode on Pixel 6.
> 
> We can only support peripheral mode at this stage, as the MAX77759 TCPCI
> controller used on Pixel 6 to do the role selection doesn't have a(n
> upstream) Linux driver. Therefore the role is defaulted to peripheral
> without any endpoints / ports.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: exynos: gs101: add USB & USB-phy nodes
      https://git.kernel.org/krzk/linux/c/14d15fcbe0f1fac5979a0b01160f3651340e38b4
[2/2] arm64: dts: exynos: gs101-oriole: enable USB on this board
      https://git.kernel.org/krzk/linux/c/b93b3140e82a0e48442087c38346eabfb92c63af

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


