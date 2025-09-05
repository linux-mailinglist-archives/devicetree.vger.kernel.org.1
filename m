Return-Path: <devicetree+bounces-213723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ECCB46697
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 00:22:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8464C7B9F06
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 22:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41EB928C5A3;
	Fri,  5 Sep 2025 22:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lZhEdEOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0336288C34
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 22:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110937; cv=none; b=soN24pZCk8L8a34ybL+8Xi/YC6cG2A6LgGDPpTx7D3VUXDLx7PiTX2EYlnSMasa/3k5s0YCfEdGYXb5tPehw27V7eCZ1D/a79b/rSAEPwQ5pO8pdCwTZtRfyPLswojTLF3bTtf0+Kea/mOxhgSx8R3YYXqMApYH3Nbu2FxN2gDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110937; c=relaxed/simple;
	bh=P1j50aF35GnkXQk2lVmzjTni8Ue0o+yg2rhWnEq3iWc=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ju9Inj4XnwzbfcipB0EUsDKxNd6N8dYVC9ib5knQJ09wr2K9JyqNEoWoJQjNTyeaA2wR0mLEX9tulDzDjJ8r1Vjbo47R2QbHPtMhp0bKkLyDNVx3a1RqXccucu4NifHNadCa4Zbqo7CXvSaV//2Wx1ERyUBmaCnsH/2+uh0PdrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lZhEdEOd; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2445806df50so23317035ad.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 15:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757110935; x=1757715735; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3MoENRKP6mYeZPRW/pxLj4qhNh7qVu+dXlOTgSs04Y=;
        b=lZhEdEOdtRkzD2rOLWVSU3Ocgh586guK3HJkZg5DOuvksqR5M3EuVbOEJ07zLx1+Va
         OMuSxEr0wPiiOB2vwzvNEB6l9XJMU2xfvMrKH9OyjwkXbwMNYWt47dqEpbX0weq5kkXj
         mbq/dEzjgDcWiKtXRT9KIPZ/hbyEeFAUXO7Xw07TTTyvESIuU7QGId6tJ5IiL8/7z1qr
         /QKWNBEmXRqOQ8yN/ph9JR2heY8n9c0JhFRF4sUoIErUmSqEo4p/796tjyFviaF+dcB9
         iJQ8xdHBFQO6EyBR2Wof1FiYyNayhW4EWk7K4n8sQfq5tg3KdoqQwwwYB79iIjtcpx2T
         3J4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757110935; x=1757715735;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A3MoENRKP6mYeZPRW/pxLj4qhNh7qVu+dXlOTgSs04Y=;
        b=if6OPNblvZk4Duf+LKiD9e2zXJi8DJonxVEhTxeClHEHaFQKGH56J3/szzPi1DXBj8
         HARC62ZNjy/0RnckF/OacoljvcA3PMlgAg851aU1bdWoOgObenBWxZOSfQqCu7RVGyZx
         3xTjEWsysZBz+YPXZdjwq4csOF/0dG4tGMwlwqmgfPiyS/ovJIu9lSXapn9rVF/G21NZ
         0JMteVAE+YEhnsZd6FtuNDBy6vkEb/1qihG97fTJEue7QnXz/A4EVsn1d9uqgbTBgSip
         CBgOE2d+ru/gq052AbnTbFgT7ZQf1qxXCXNVlwDrjM/0lOvMFYdziiJZDkbJ5spxDJY6
         tR7A==
X-Forwarded-Encrypted: i=1; AJvYcCVJGruNFuOlGt6bLuj3R14W5ptHT/FyNoiduTpzESuzJh1dDA1N+054aQp0LvhwlbWnY6tYqoiqSa6x@vger.kernel.org
X-Gm-Message-State: AOJu0YxU/p2TQayD54Z3KuCud3Gppq27hPQWHaYriP7c/pCqrCfj5Wox
	3N9kcsIgrVQEWEqDyzWPXts+g8bTBhVe5U77SCXpH7enytuInxg0OBW3uzuidUQQUhI=
X-Gm-Gg: ASbGncvnW95dqbyEuXUPc40gyzFemRKv5XE22GN0b4F8Vk02Cie4DLk83xkZJrCECRX
	dPqE0vzgCp6bB44afNdIiO+DsZroibNVwlg8HxoPP2Y1AOg0rYYByikvaZF6CAdMF6c7m8BaNWT
	rbMk86wed82wPWeuwgmyxF6GdxsOSePIpk+lquFIGFJ+xPgywEsl8VFF/K2Cxr7sPnWVO5aLT0C
	U5e84kUCDCGkEzsoVRmns+VXT9czIz4tbTN9WddXNfMZmGJRjIfo4z4tnwYoM1qyCb7F7AAOqsb
	TOCeRCyRBcnLCl2ae5WQhJr1xv5Q5wDKb+hyk80d3AyhxGR7WejUdkY1/xEk1OwFL0s8IORRttB
	Ynd1QscoHwP0CJcWEknS+
X-Google-Smtp-Source: AGHT+IGFh7XSvm1jmSq5I6nF/CZdeopZIBB37Nq6xs75hcHOkaln3WatQDx6FOTZQCdDBErB40YFkw==
X-Received: by 2002:a17:902:dac6:b0:250:de70:cf9c with SMTP id d9443c01a7336-25174ff62d3mr2891525ad.47.1757110935003;
        Fri, 05 Sep 2025 15:22:15 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea628sm33047585ad.6.2025.09.05.15.22.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 15:22:14 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250819131651.86569-5-krzysztof.kozlowski@linaro.org>
References: <20250819131651.86569-5-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/4] ARM: dts: omap: dm814x: Split 'reg' per
 entry
Message-Id: <175711093408.666031.690873725302943205.b4-ty@baylibre.com>
Date: Fri, 05 Sep 2025 15:22:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Tue, 19 Aug 2025 15:16:52 +0200, Krzysztof Kozlowski wrote:
> Multiple entries in 'reg' should be encoded in separate <>.
> 
> 

Applied, thanks!

[1/4] ARM: dts: omap: dm814x: Split 'reg' per entry
      commit: 46179394d4e45d561a2c0185774c2f7b88fa7c14
[2/4] ARM: dts: omap: dm816x: Split 'reg' per entry
      commit: 7d7df1bc644a29e880181579994bd2da9fb1a6ce
[3/4] ARM: dts: omap: Minor whitespace cleanup
      commit: 9df7366a29192f860e9e35a258f0b000b6e4a754

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


