Return-Path: <devicetree+bounces-59542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2408A5CF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 23:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5AE51F2297F
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 21:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0489156F4B;
	Mon, 15 Apr 2024 21:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KMk5uch0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DC156C72
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 21:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713216522; cv=none; b=kKV9jjbzxzWGgtYpZVQ8hFiSr/qd8HaqBvYXhWimNKVzTYmLW1RSsJuYChB/GF+VQ22f6XCct0lOetSwCgxp0BPQAgh8SmwsKWV60QTVi3kMg9I3tLO0+5BBV/COYhTM3ZDkzDjD1mEams3hWjEFZ9qxolGYvxjhYxphTdOuFTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713216522; c=relaxed/simple;
	bh=6o2RNpAOIIImMwHc2nDc4z9HtThbUA8rtQ+95VzL2dU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FYsf+DZ1ahzaM96aCvDXBj7keuoJYYFxQSuJbLz0WA7eK2RHQlOvMtMYf6rDGq0ivwYflzbhrP1EzifwWhHNyQH/53DMze8t58CQRurjavdDRdixUqGu5QDh3/NY/ecDMkKqBkzVPPfON5lfhUHsEfUi81F5C9kQrmZUJFJoxak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KMk5uch0; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3455ff1339dso2517526f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 14:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713216519; x=1713821319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M389Tk4mAmP3K0cjNFAlzwXHEn7CaYIwFlCUxuAdzkw=;
        b=KMk5uch0Azrscl/7apQd1KsfjisL1jOGMmksNmpnL8G21yfSRQ4SO+d2MC4AsWVp3Q
         rfr2VF7+6d1SmiyqLmUJ0csX8wHaaonWBTu3jiFWKM2R6O0MUqeEQS4Tb2m2wDEdUu8P
         Ne8wIVvxsHUbR3FzHdPOH0RMfioSBLLK4VVr7pz7jFDz2orT32B9iP3KwjE5cwkA4JlU
         d1lRr+qBLH/HTENvGtWSL8QLE78+ecNGDLDsPhBEeWKhZyafuOe+c26VEAVCbwuBIRob
         JoQUyHCfpPMkBwG0JYqNWr/ZVA63n2tcRv/sIZtrlA5ZPbUwfqM24X/8WAfMKg9rUxEP
         5yOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713216519; x=1713821319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M389Tk4mAmP3K0cjNFAlzwXHEn7CaYIwFlCUxuAdzkw=;
        b=QhlFRbASFQ7Hxm9qD8eCp6E1uhBYXkluuf+vjmKxD4ZKb2A429cgTpbtAn5SazPv8d
         6FTOLa/4tpIdJdTKIwLlSUmt2ZEP/aur7T/nEho9GLfNiUWojmThsrXE7+xSup5lITVX
         5R2SrLJfv/VIR77LUOpp+AcM/daX9OBe90EkSvlEDmzCJ5erG8alS9LitiuUQwlLBU+t
         JCxcUkBbRqDhQP4/PkweKS5fsKWe5aRGTosheKXqy/vcinuCCzufrLhqfHQjqAmAzphF
         z6RA1IpIcsIPYg9NSkaLh2sg60XUXCnOZDjZaKYZ1QRzd1CKfv4K9H6na5c2z0URiMot
         8bYg==
X-Gm-Message-State: AOJu0Ywz6IrWI3NTcyGLJ3PDEXNr6BH6dJLvI2jtXKHW+a+zF9wad0os
	o3IoVSDIozDuICgZK2DhQFPUuawdYF+LUa7WaE/DwwZqSIQtZ1q0
X-Google-Smtp-Source: AGHT+IFEfrCMJfFLq0sZcwQtrD3siw+Wnm6zImHGHNwxQSkjweWfxHE2BRfiQXHiDokuHXDITmhXzA==
X-Received: by 2002:adf:e607:0:b0:349:40dd:8d7b with SMTP id p7-20020adfe607000000b0034940dd8d7bmr5502wrm.67.1713216519489;
        Mon, 15 Apr 2024 14:28:39 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id r26-20020adfb1da000000b0033e745b8bcfsm13214006wra.88.2024.04.15.14.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 14:28:39 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: allwinner: h616: Fix I2C0 pins
Date: Mon, 15 Apr 2024 23:28:38 +0200
Message-ID: <9261892.CDJkKcVGEf@jernej-laptop>
In-Reply-To: <20240329103825.25463-1-andre.przywara@arm.com>
References: <20240329103825.25463-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 29. marec 2024 ob 11:38:25 GMT +2 je Andre Przywara napisal(a):
> Currently we specify the pins for the I2C0 function as PI6 and PI7, even
> though they are actually PI5 and PI6. Linux' pinctrl driver and the H616
> user manual confirm this.
> 
> Fix the pin names in the pins property. None of the existing DTs in the
> tree seems to use I2C0, which explains why this went unnoticed.
> 
> Fixes: 0d17c8651188 ("arm64: dts: allwinner: Add Allwinner H616 .dtsi file")
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Queued for 6.10 as it doesn't affect any current DT.

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> index f756a396ea3da..95f09204337f0 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -227,7 +227,7 @@ ext_rgmii_pins: rgmii-pins {
>  			};
>  
>  			i2c0_pins: i2c0-pins {
> -				pins = "PI6", "PI7";
> +				pins = "PI5", "PI6";
>  				function = "i2c0";
>  			};
>  
> 





