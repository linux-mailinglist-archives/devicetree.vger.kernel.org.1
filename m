Return-Path: <devicetree+bounces-167624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C22AA8B26E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:41:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B16ED3BC79B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A813022CBF9;
	Wed, 16 Apr 2025 07:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RkfTl8FG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D902122D4D1
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789294; cv=none; b=PBNvBRzEpp8KI5LZ9DE3KcBhpTQevoOy9qcaI5W186gsJGzHM6vSJCKCpEVDCNGjN42g/suYXMp/BIJaccpZYwClOfdSIy8OM8QkaIpj9WCLt9hUgLViqSbZj1CcpsZVtWukIyyaWIyTAUHASVJPQBHM87VmszEaDSqgqJdTaO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789294; c=relaxed/simple;
	bh=FXtIJf0VHYw5Og+37dvA9weCL9gFDfnQ5yTgw7UYdcg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Z0lqxGbGeqzWSTIBEXnIxePoFP6nwuraximuoKsk+mI2Eqlhy75YzR9g09veM9Db0Q3IyQLZSM+2AEQFY3dluBgvuTJ6PVa80CfaNdqfTgEPHCNluHZGDD+/wGLgMQrhlBj+7GTJHwTHUnjnlEiMRFePOjIwpJ2PA5bcZP0zZTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RkfTl8FG; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ab7098af6fdso118171766b.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744789291; x=1745394091; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQwgh/eFhQFNa1zpdZ5wpvXrOLPvfDa3MWFOdnbZAIM=;
        b=RkfTl8FGDxvmNI5G9ignIcHsJUwv4utgkFswUj07hc02Fnr8RsqALSvpQ6Tq2krOGz
         wdQjd0A0wOM2XETlZuxM4qOVxdWXEX0FyRKOHL1WBIQHTvBZwlvm98HIiZK7OG7oKd/E
         zALlY7lR0rkZfiihqIZ24Vr2mpsFsM6BBDfTMLnV5CJRBQ7TWzYP6OwZvCmQUzYQWag2
         xtFJ06cdjzGidz4VPutqqIjKFhoEpGQjVj0NuhmJ95H28va5kbXLl4iKe6rNbNeLKhqq
         znnKYTtXeOe87qArbjRMrX8+6IIlREYqU4zLtvumFHEfB2acpBr9fFULszkScyB326f5
         w5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744789291; x=1745394091;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQwgh/eFhQFNa1zpdZ5wpvXrOLPvfDa3MWFOdnbZAIM=;
        b=jMgASwTNUvwXS1vdBupE5PMZPaGcCETYd0OlhzNMN8YLjojiU2n9W3v666hNdVk2B0
         91Xp41eFy0BXr99kX1pcL/NTIXYAxvppfnJhLRWh8Bd1Q6yf8fxWkPoYK/X87PGEOy21
         G3rXJsDj+LzV32AOFh33AR+ySMYDFOpqAXAf1yePE6CNxG2FFZ3BqM7JYkN7cS9BbHSW
         Hu/TAngjjTuxkuPPCNVhki544MXkT4BN04+vDvngddnTd2RPpskGxZGOJYBsWqkuOK1s
         n2K8HvIs6FJ6SvBrUyNaJEemVGbPebGh5kRIKG4OulH+KnkurfEYk58lSs45q/Aztzey
         HMPw==
X-Forwarded-Encrypted: i=1; AJvYcCWLhveuK5xSv+4vvMzBvMnC5P68Y5RF/AanoUHEatNIY8jA4MlahUsgjPROhUiMPab8XHFMNvSP6AQo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo+btMkTJOGwaoNAdr0sJnHngjFTKW1d2wfFi0DqDgYMV4oyrj
	rzInUKslnxniHLgz6kp0Oc3YHcpaRbWlQveLT0+y6/IFgmWILjVQMAv6NK15+Zg=
X-Gm-Gg: ASbGncu37s1r/XkIie12D1cx6ZOMJSgF8Z0Et9MiaNwWsUI8u/1iHyFUd96WcVveRXs
	c8w6jEvpoepFPylQQaohU9SCJSofs5sb/NK8rhrfgTskyou4NFoBoO1f66zoYk7ulTTRGCrIdWH
	TP2Y7fNRTd2oLFYyfurGidJqq05l7KEMzDogDLhv1Pmyilvx4aToXY0rzj3oNIY5XhbOf3Q835C
	UInL48VlnPvzqZ+3tAh17HxDUoo3G8+yvkfcLtPOFQJ1mnzJXvWpnhVmPqLShGefVBcGTgUm1E9
	4nCVa0bZSnC1XFd6eMt5cuwUQk6t3qKfJCHfRtYHe5dm9B/TRGJ+UA6BsZznDFd+3VHERQiC/EC
	14o1Bz2NkqUXgiIh5TljoMCg17w==
X-Google-Smtp-Source: AGHT+IHTknhlFG+z4J8gZnOeey2sdavxFU9JrO/1GpceNf5BqfVMq/pp1GAkF9RLLxRC0Q/Rb3MhbQ==
X-Received: by 2002:a17:907:928e:b0:ac7:4324:f56a with SMTP id a640c23a62f3a-acb42b73ca3mr23355466b.13.1744789290805;
        Wed, 16 Apr 2025 00:41:30 -0700 (PDT)
Received: from [192.168.1.26] (46.150.74.144.lvv.nat.volia.net. [46.150.74.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3d1cce01sm74205266b.160.2025.04.16.00.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 00:41:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-arm-kernel@lists.infradead.org, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Alexey Charkov <alchark@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20250330193833.21970-12-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
 <20250330193833.21970-12-wsa+renesas@sang-engineering.com>
Subject: Re: (subset) [PATCH v2 5/5] ARM: dts: vt8500: use correct
 ohci/ehci node names
Message-Id: <174478928969.20468.13803674314386256291.b4-ty@linaro.org>
Date: Wed, 16 Apr 2025 09:41:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 30 Mar 2025 21:38:36 +0200, Wolfram Sang wrote:
> They should be named "usb@".
> 
> 

Applied, thanks!

[5/5] ARM: dts: vt8500: use correct ohci/ehci node names
      https://git.kernel.org/krzk/linux-dt/c/b112d9ffaa65635ec38dfa18661f6d8a358c275c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


