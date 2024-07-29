Return-Path: <devicetree+bounces-88901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC2093F56E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 14:31:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 315021C219F6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 12:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE44148310;
	Mon, 29 Jul 2024 12:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xx2+iyqK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF61255886
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 12:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722256276; cv=none; b=VT0Od50xHhHQuuuPRwxFsf0BuSsfyWDKkz4svWFsF4KI7UN79sa/9vMv54tbaDQCwD0l8ZRE4Pu/WIoug/PJIlbZJ+ozbP6G46P1TTBXOLbTO/woZSpxSq2W50HB6RrrWNunmclSt9R5cy9Ls9XAbBXOWnkxKoFo/bcMY/uOLzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722256276; c=relaxed/simple;
	bh=DNhanqTWJd/OkgCTvbBYdOC5y5bwxHTguZCfFa1RUyo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KeQXYs2oyzEXs7UkinY+XKJOsOrBk//88vtpbqD3ngn4KxcuUhmfRjrIrsI0IiITb7RLh9gwDhzzjiw4Huwcy7fexIZpXyDbyaA9zbs0S5jOT2Y3pUbW0c1cN4m4/JannYdobBEj2n3H7sdKRW/jAGhN5gXBzE+wILMyNuvh/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xx2+iyqK; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52f04b3cb33so7593250e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 05:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722256272; x=1722861072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7hmd3mWm1gQNax1rdnBwm9X3nvRpjYNFyOf3EAYVg8=;
        b=Xx2+iyqK2xILW5rbylj88DdGnDjEPkDH+GfKyPJl4dz359q+EUq4MihYUQQ14EkytO
         hVHNdZk4bPDRfMAeRccC1KWZu70IfX1gTaUDAtAI5/4krI4reRk2R52Eva/2R7hQz7RI
         QbfG9Y5XK0fqiaQu+U5eGXu7WJwBkmh8S1rVvxurWwOl2aWWuAZwVyw5rC3bTGap9hFP
         Q7LWHzxwjd/18vb9++74fFlNqm1swXhp8r7+io8UhyZXOgII3h0O31RNi8Bi8LHnM3YB
         K0yteUmWUUzWqD4zAttuaPkv8NguKKsLPkxQaL1NtQnI/cHhaZtc89T3l6ZK5ZRco/ui
         w00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722256272; x=1722861072;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7hmd3mWm1gQNax1rdnBwm9X3nvRpjYNFyOf3EAYVg8=;
        b=ZFx+zXrlS71FTvD4FSBvdYu1EhXutSpg6108sz45vdG40rPLaIKtI60v+9+jASP4/R
         yXTB4Xe7wTLQkqxJUZO0E3Ei/AAeMOp6OkzalyMm6brKIPwHg2yr+A3IbBADsihhiCRa
         iBZzOphITN0zubbIFlwVleXM2Cam15yIYH3T7G6sghHUTdAA4Lck0665hN8D60Pb9JOB
         Xqvfr+JE5jZFIjp9w6unJLWzQ45zXXeBrPimZarDCVFfIPT3rEbZ8U6rIaJHCp9yyis0
         QeTDxE11suydwzUD7E9cIgSA3dHy5iBwpVwjYGYRFO95k285Xio7qCDmYZ81NHFrSJvZ
         u24g==
X-Forwarded-Encrypted: i=1; AJvYcCWOgpnDo9PYLmp84dD1HvIFk5IOBLIFcBO31pnfs5465kgLdSkZOCv7ZbJrfwhiJF4RGDxNzcqKpsij2mxn0njiSPxPNdJ5T6ZHBA==
X-Gm-Message-State: AOJu0Yxm9ynB6OkcrsJXjE31h9CdMhH2ymnzkH4paoYeztfqEIxtWONc
	sPYQgRNEL4nlMRfvYRIMJr8MFYOUqO9Ju3Z+eNQgN1dZloo0DjhvyI6PRTnvNsI=
X-Google-Smtp-Source: AGHT+IHmZcVRj+OQubC+Y9JLE+mJvdVS0zZVFUn2gdyL1G0hR405kWsdn6atd1FZXPPAZ9g+dW56PA==
X-Received: by 2002:ac2:4f07:0:b0:52c:df55:e110 with SMTP id 2adb3069b0e04-5309b26928bmr7668841e87.12.1722256271901;
        Mon, 29 Jul 2024 05:31:11 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab22ff1sm501973966b.35.2024.07.29.05.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 05:31:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: David Virag <virag.david003@gmail.com>
Cc: phone-devel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240713180607.147942-3-virag.david003@gmail.com>
References: <20240713180607.147942-3-virag.david003@gmail.com>
Subject: Re: [PATCH] arm64: dts: exynos: exynos7885-jackpotlte: Correct RAM
 amount to 4GB
Message-Id: <172225627029.280610.17022654796794760064.b4-ty@linaro.org>
Date: Mon, 29 Jul 2024 14:31:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Sat, 13 Jul 2024 19:58:32 +0200, David Virag wrote:
> All known jackpotlte variants have 4GB of RAM, let's use it all.
> RAM was set to 3GB from a mistake in the vendor provided DTS file.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: exynos7885-jackpotlte: Correct RAM amount to 4GB
      https://git.kernel.org/krzk/linux/c/d281814b8f7a710a75258da883fb0dfe1329c031

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


