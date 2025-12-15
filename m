Return-Path: <devicetree+bounces-246518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7916ACBD689
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 706B93001970
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADE3313526;
	Mon, 15 Dec 2025 10:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MtoWYf3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A04271468
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765795870; cv=none; b=AVeCuyAPu2sgDSfgHVL1SkK0bT3diQPNQdnf5HiLTLkCl89ZiMzXoD2vkHw0ABr7iys/xNfs1LwYubt4h4nvf2Gw3yJ7w6lZ5YSwmwxhWcUFGMO0+WDPiPQ3BQN59jzgkGjFxky1SAc+eNz21O0eKHiWtT+j+uVF93V2Ojj+GhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765795870; c=relaxed/simple;
	bh=yvmAk8rBkFBQKuxJYkj+f74MCns4mWaW8k5uuvRnc04=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HL1BYdiZOduJ01jp9HxxkDVxdsU0HuzEwjUUfapgWB7VohJN1OpJDT1m9LFs9+YSPEVQNbfTdmSz3FJspOGM5i0H+SjxH13y4DO1rkj8I7gGDWAJE61H6gme8Dvv2Jl/yV8DOB5mRx63dBl3Iun4CfC7Bkqs5MR4oQi464ICIyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MtoWYf3D; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so1616583f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 02:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765795866; x=1766400666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OiAf1pob1P9A2hs+uuZimsbQclhxUB5vv2ZHT7m9wRk=;
        b=MtoWYf3DaosfDZd0tWLIg3613awh6P82XfBlTh5POSa3V4BM4OFnndHmjC6RKhPwm/
         hYFLjUtFfrd/P6AHZ80XIyE1OswDVjMND0hxzs+FqEywUWXKMKVbHppZuNMBBBCWhYnJ
         UJGD8Ufa03pqb0aPhQ45SJyRR1yazim1/xztfueiMDJdh5HE4/Yxg1dnK97uRnhmRuis
         NH+VO8g95acreBC0mu+fiobehHVAP/Y9aDDx5P2dbDJAcqKb1TJYb0vPR0zko3YF6QAS
         qCEmnUW97zrqK3zsl+wxt3ClUV0gKR9FIpasyd6NwfIPaqqz1k8iSA/4jnYrtcxXkPUf
         Bk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765795866; x=1766400666;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OiAf1pob1P9A2hs+uuZimsbQclhxUB5vv2ZHT7m9wRk=;
        b=T9zzbNl6bEMSmE/gMfoDQz6cmA57TVR2lJ8xg+ZIw3jJ4YN49aw4GY4+7s4lhXJRWv
         TOwWhhMFKkufqhoMBor6Aup4m3TRJdiYraFjoY/0Gp8Fdy1H/3GMDbdSedpj1NG/bIIh
         wp7bgrw7TOCRGlbXQpFnMxtPg+a58Dw4F3TmxwgV6co+FiHKb9fsYO5FBVvOAfVEOx5h
         5ONaGrrdB7sRQPdZdondT7PJkF/paN0K7dH2UiRJrO2Fq/UONcCj+bGX1F24pFIG/GiT
         ZW6147nCf0EZqsfSR9O4jewUnRm5XpkSDbOwT0noCPMYOl1SDVEBd8n3WyJjLZ2MOCy6
         Bs8w==
X-Gm-Message-State: AOJu0YzdFzK+lY9m1KUvD8BIDO+8s5so68ymBqTRJKxgc54dmbriKQaF
	CGHLebRfgzrFRbWSeDuMyRSP4oLdZuPcmlku+35XL6QynAxhj7WcqCV3hupu5k5ScBc=
X-Gm-Gg: AY/fxX5yn7vSv9u3uTAgZ+FfeuYjs2L7OYNuHFeRgo3FK1DWz1VVEAS1oQu7mU+vLAx
	TvvwonhA6mMIhwheATg6YkFKr5Qt1SY8niAzDG71xf3ERXqrCkD0hLeiE8Z1B0obwkHby0yz03V
	dRm4JGYvTN9hK2DSqodSVUf7gZxUIOD7ztsi9vXU30FGAo+9TewK0sxmKsqYoVKmTtdvTVT2y+r
	/qzdlx+sMs2znCet7fHkXVck4OFfeSrkwZevS/gQCSXdIxZ37nkNb1vlwMoqTzBg8MmZo+XhjMd
	1krFIW+ZTvvXICFP7+bMAwtgbwLSg7wzvdisknWT3BHpjqudlNQlcj+9yTpmSHdwsfRKJW0rs66
	Qc0m/mk+idrbZu21h0A2TLsmmwuMVC2NhuKX831D4+3NReBIBxCBBba5bjiGCHq99KLitCSB0vW
	UBxWXZkGMa+MM7+je1TogbKWZs
X-Google-Smtp-Source: AGHT+IEUCXZDYdW1Yaezuo8T8dArAq/O2/s2YiIYeQnjgQdgpxFuf1BEC+kk0V2dJ19iC+eLEyxuDQ==
X-Received: by 2002:a05:6000:26cf:b0:425:82b4:a099 with SMTP id ffacd0b85a97d-42fab1f9f67mr16105347f8f.0.1765795866090;
        Mon, 15 Dec 2025 02:51:06 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:3f77:1837:bfee:f255])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-430fb078e56sm7695439f8f.21.2025.12.15.02.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 02:51:05 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu <chuan.liu@amlogic.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, robh+dt <robh+dt@kernel.org>, 
 Rob Herring <robh@kernel.org>, Jian Hu <jian.hu@amlogic.com>
Cc: devicetree <devicetree@vger.kernel.org>, 
 linux-clk <linux-clk@vger.kernel.org>, 
 linux-amlogic <linux-amlogic@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20251212022619.3072132-1-jian.hu@amlogic.com>
References: <20251212022619.3072132-1-jian.hu@amlogic.com>
Subject: Re: [PATCH v7 0/5] add support for T7 family clock controller
Message-Id: <176579586493.1510096.5256519771615298068.b4-ty@baylibre.com>
Date: Mon, 15 Dec 2025 11:51:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Applied to clk-meson (clk-meson-next), thanks!

[1/5] dt-bindings: clock: add Amlogic T7 PLL clock controller
      https://github.com/BayLibre/clk-meson/commit/5437753728ac
[2/5] dt-bindings: clock: add Amlogic T7 SCMI clock controller
      https://github.com/BayLibre/clk-meson/commit/f5d473e96fe0
[3/5] dt-bindings: clock: add Amlogic T7 peripherals clock controller
      https://github.com/BayLibre/clk-meson/commit/b4156204e0f5
[4/5] clk: meson: t7: add support for the T7 SoC PLL clock
      https://github.com/BayLibre/clk-meson/commit/140f074c3127
[5/5] clk: meson: t7: add t7 clock peripherals controller driver
      https://github.com/BayLibre/clk-meson/commit/fab4d651b592

Best regards,
--
Jerome


