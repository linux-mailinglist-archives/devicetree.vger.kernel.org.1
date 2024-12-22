Return-Path: <devicetree+bounces-133355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 710179FA61B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08D751886FF7
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76FB319006B;
	Sun, 22 Dec 2024 14:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nx1wkOkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C0218F2C1
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 14:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734877573; cv=none; b=uHYmOppW2hZFwja4gVkr9tkm7Vd0hMC5CyYp1Yf7jefOHB0S4cgyJCU794DxKKfZioncVXgpeIGutgJf2e33LdYreF+L/wVNeJwl946NaSNgwNHtLKxU8zrkOz4RICK4QJ1Yeb17OZUfEYsKtzLBmWKsQ4/l01XjG2x1J3tbJVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734877573; c=relaxed/simple;
	bh=gJpG7eEPpKdqn7YHrV8VUJX7uJhho/nnN60DqmsLQbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=T2jFLMyBbgZG2Fhwxc1RhjaLT5WLdb7KSalSY7AD10SAL/t17B+QK+k7/C46u9j4/NxX1SCasV93YoJd45J+k7WoS5vq0jeE+rnBomCgJcyTC9x9X0rLqwF9NZ9jCXzpILKpfuY+KdaU4X1fT9AuV+ZUu46+hzaseosLo9u/7uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nx1wkOkR; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa69599b4b0so61141666b.3
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 06:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734877569; x=1735482369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qtqb2q9SZdIxrsGX5zFz/zmOaa7ahdn4J/z+KWdZJM=;
        b=Nx1wkOkR5SFb9w+z6J79jtAfHY5PkZT9OfbIjbugd79OxxjuGREy6trK1YM6rMrjJ7
         QgvZPOTLs22NbC75uyC/AVZbLLIRHu9j6bh2QiZ2lo1Z75BNN2cqyosuBOnf1gJCmFsl
         42LboMNUwGywphUURjCG/KJM5Bvufpp5y397NmKIFqYb1mrXYHynXnnnxIYXP2OdBPsx
         zxEnFbUwC95XxieMAcbEoRUL11s2oJh/NUmQmpR3LHNdapC3H71ZsBh/D6nEj+PNwVCa
         NAdg2kMR4Gd3MqXea3t/4plMWm1buAmWwIYPEJKl3mgDRU1Jy/MJPSG8KOZ/+p5jHGYt
         GqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734877569; x=1735482369;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8qtqb2q9SZdIxrsGX5zFz/zmOaa7ahdn4J/z+KWdZJM=;
        b=jPr17w5S+KzYEH4I84FN2mCtAjyGnvVCeT9uPOg8TGwHOotvLP9kynAMv7Uf/VUZRt
         BT2l3SngmMERMz/cfaz+AYJfzSQcXnBi59zmhT6vRuMpP5SXHwAkae1vcYm6c1+5Pl+E
         7/nqMjwU/97mX/0/ksMP4MAFsi8rV1PAeKeyCaOYpF+Iw8Wxl9tNVrFJNcboZgQR0BTN
         9u8dTt73vBNjyv0qIUUBa1iFT09TQzzA2FeaAA8mqV75r/m444ejrIt8qnUv9SMyi39Z
         gkfX1wPYWD4pCleWUzhogQN7DsxmAvmSuGSas7sAuqTU2+vy8NM3nUe4k5xurKoTyGEN
         PQ5A==
X-Forwarded-Encrypted: i=1; AJvYcCU2LPVKHVKHPLKSCXWABkDDPCRHNcdRtLkvEPnKL3sYZtzJ9ZaV/FrBOqNFJgFDTZ6C0vxI+tChOqnD@vger.kernel.org
X-Gm-Message-State: AOJu0YxTb4o+6+ggmKcNtV1CwpObg/G0uy9UDKmEOg8x9owMwOGIy4iC
	CgAqO/euQ8zfTbpXvp97Tgg3c1j+26V8MoLuK4AjSNm4hhzrh1V6FR4BDvsauy8=
X-Gm-Gg: ASbGncsu+V6lwjazBLNVKNklK6VaN3ZSE90P7QCvYLK6WZRHOCDpFf1+y1DpiAOI6Gh
	0fIdIeonZT4T/4Sa5HEAQG5iJm1SG3pV95SbS/R4JypkFKKqZ8GyigU63ZI1nFuKT1znwMVviym
	/nMSmkao89oeVoG5CBPSUVaFB2QjQqXfUeWfF3ITZ9wBZffMu6QqzZr7e2MxOnAObOqHCji71+Y
	tU7R4CLMwCCftjvi9g6xPpE0/HNWtlSyyM1YbFmAF25O7ckaZuaFpRiOVu90EhqsRcgbVFCn0hD
	Et69C9UNly5rDy0vBnGfx4peq13c2MY=
X-Google-Smtp-Source: AGHT+IGJEflLR7LUL0jWhIG8if351byh4oOU18ryBTE4nHXQMghZCSJJMazHqwq4sLeRDspVGmm4qg==
X-Received: by 2002:a17:907:3faa:b0:aac:619:6411 with SMTP id a640c23a62f3a-aac3352c94amr296886666b.11.1734877569000;
        Sun, 22 Dec 2024 06:26:09 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f577sm392716066b.18.2024.12.22.06.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 06:26:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241211033027.12985-1-semen.protsenko@linaro.org>
References: <20241211033027.12985-1-semen.protsenko@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: Specify reserved secure memory
 explicitly
Message-Id: <173487756773.3738.7711760267747537170.b4-ty@linaro.org>
Date: Sun, 22 Dec 2024 15:26:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Tue, 10 Dec 2024 21:30:27 -0600, Sam Protsenko wrote:
> Instead of carving out the secure area in 'memory' node, let's describe
> it in 'reserved-memory'. That makes it easier to understand both RAM
> regions and particular secure world memory region. Originally the device
> tree was created in a way to make sure it was well aligned with the way
> LittleKernel bootloader modified it. But later it was found the
> LittleKernel works fine with properly described reserved regions, so
> it's possible now to define those in a cleaner way.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: Specify reserved secure memory explicitly
      https://git.kernel.org/krzk/linux/c/11fd6c9b047c30c72dcea3f79c0acb7deb69c822

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


