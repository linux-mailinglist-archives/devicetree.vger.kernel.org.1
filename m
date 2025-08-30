Return-Path: <devicetree+bounces-210705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 746D5B3C9C5
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:20:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45D62177915
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 09:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF6B264630;
	Sat, 30 Aug 2025 09:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="afKd3yoc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1656A260590
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545603; cv=none; b=igHgAM6EldymcLUrM8yTDMSy0gqNhW/keQuCD2acB6DtLvm8flGxNFWfPP19SxJvr9qc5hlz95CZKtPO1oYxduEbUqT6gi3MiW8Fb/Dw8/c9+wTSNIFOidNZTP49CyjabjZ1uPCckWd+I0Xch62WEczLXOOXwFcbjEO9kfI5onA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545603; c=relaxed/simple;
	bh=eoKplZm+kkBtEjqGIAHB/J7TjTlViSlS7wYncCljPF8=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Uhzfxly8stkovJrgg514RV5VX2Z1pRTi/hffyFWIz0bN02Fn1zd49YigVbZ8DgFrpBEN3Ey0i3vyZib8TMUU+/tAYo4npnjtDBisNJ1Jrf64Ryr6UrJ2TfbxprDv/eX7x8HXxAZMAdIi0l3IDLg/+ANrmUCuDhu8T6oD0nlFaCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=afKd3yoc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b86a6cdcaso41885e9.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 02:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756545599; x=1757150399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4RvDvjixk5xDNrFQLv4PeECHMMHurHSG9SqBUI6Nr4E=;
        b=afKd3yoczRgI/i04d3VF+OZlyTmGrsWYfQREfG/gtAJZGWmGd1d2T1UpRY6+F5Ufpb
         mEKhjE3wEom3UWnDAidK5moesAPXBuQaOos6i3wdnGsm305xlXp7OsNXD55Fv7UYvGu5
         bPXBw4QVdxRmcyoC+lFfyU+lQGIcdnrsd9fJgfYEzvdOiyeIPlwjUil43LiHBworJ0NY
         UCjdwWwCQzDVx/26DBG/f2LKY7/xjlaT/cB7W44IYc9dSUCFg6sEJe8kvp8lUMlS5/XU
         edO3izGEdFKLGyCHGNqkMr1zMrgpZwFxr/lmE9CsN6fIF0ujW+Z82jHTZWNEZGUujJVN
         wPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756545599; x=1757150399;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RvDvjixk5xDNrFQLv4PeECHMMHurHSG9SqBUI6Nr4E=;
        b=rLPd9cC8QO/btC2rxLFUsXV42/WzbpYq4y9H+Vgs/dGtp0sI9HoiFghxySXBm7N9qy
         8CPvHXnQGasVoIN53LqA8PqYvYUk0uyugy3iXDNz3E1y61RPXJxgRzPsPn53sgIfyRat
         NPhtNNQI9qewrpkvo2/tPIEf+k+rJO47lg789QwgcUyy0bItyFtkXs3WCPf0pULQvh4d
         zsOBIoMkK/DL/xkrkuGfRRgOQgX+8HxF+M2KDBD1szG9sOZmQOoBoDNRXbvlECmR4FYP
         Aeoga0or+nsgPTX11yrm87I5qXLw6y3tIzx8YwYbOvue49P+eldwi8x5yGFx/WInjcmi
         7ZIA==
X-Forwarded-Encrypted: i=1; AJvYcCX9YsRQMUDSZED6T+o0435v6/FNpi/pzrKmdhR/MuwZ0Bu8joGlB0hCeXI+wmmiXC+3ivDohpRcMoHB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6aDu94igsKqFc1XwHErVNhMm7YgJJ8xyCgWcIOL3lVvKJlqpX
	N1Zl9GD19LI5Gl8xOIPHCxTz8QC+83vF4P5VcAXqdbnHvkGioSgkoS38dv8VIaReu6E=
X-Gm-Gg: ASbGncuoJoh/rHVJCzMZozCSzWeOoJ+0wqaYsLdsSSc6l3bXSc0BLCDZUM8sh2a651+
	Y81+8xx7yHA1+l8DwG2NpDeXF3nP1Vn2JJU1AIG5GYQSK0trKGdStuOZfzFMH1Dk7o290JOHg82
	6I+PWHDQdhl59m/Ri3tCYU9CLGr+0GCuVzUGw0CAmwUHK0XHvJd510zPRNY8Hi5vN9Vz+M+pfDe
	a7DrNN44lcZ4toR09K2mSaW9mb0vkBKDno64fx8CT6T7peXI5mSkLNPMGquh8dG72+GmpeEkSFI
	GRhwqdGHwrBTmoJpRENcz3A0WhnM5LtOF9EtGdzPqJqACHcDgXtLIRI0UAgd+jry2+I81B3+O6h
	N7ISXxZ49QiJvHVE6+P9gvR3cHl7LuLa6jizLeQ8=
X-Google-Smtp-Source: AGHT+IFR+X0EgGj5F+ZAPuNA44QJat2dgEsfyiD1C0mZqTk+bdaBYGDrDIoBDhP+GQBrz8+tvaUhmA==
X-Received: by 2002:a05:600c:5287:b0:456:2137:5662 with SMTP id 5b1f17b1804b1-45b81f120bamr19089785e9.7.1756545599375;
        Sat, 30 Aug 2025 02:19:59 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b8525a94bsm21186815e9.15.2025.08.30.02.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 02:19:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, linux-fsd@tesla.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250822121423.228500-6-krzysztof.kozlowski@linaro.org>
References: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
 <20250822121423.228500-6-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/4] arm64: dts: google: gs101: Add default
 GIC address cells
Message-Id: <175654559768.10738.10874618252730969524.b4-ty@linaro.org>
Date: Sat, 30 Aug 2025 11:19:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 22 Aug 2025 14:14:25 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node.  Value '0' is correct
> because GIC interrupt controller does not have children.
> 
> 

Applied, thanks!

[2/4] arm64: dts: google: gs101: Add default GIC address cells
      https://git.kernel.org/krzk/linux/c/a75d45adb261cbced86701d2512098044a6d310f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


