Return-Path: <devicetree+bounces-212848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BE4B43DC7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01FEDA0571A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EA8D3081AE;
	Thu,  4 Sep 2025 13:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X8msqeS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E63B307487
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993964; cv=none; b=HMiT9dhKxoXrZkr+WrecpPuGgwGbFx3cben3s69dTw2j/LJVJMfn810byEYPUOJ/6stBPBB91kdvWNL5nahNKgZTfBerbDc5/mIW1y0eVMR05KctMLJh9+pgjDueMixmZLB4HHv6Q4VuRVc8lzHHp9CbCNq580A8wpvdu8Wkeoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993964; c=relaxed/simple;
	bh=azzF6D1Hdr2J15DBAunoU08XP5o/DuQKJToDYFBh5ow=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=plcwIwoyP/Vn2OKymJDC1I3MS0/8a94Dr2nmvyNohMaduW8A8gxgLT618UL5L7gjV8zCC3FUf1aGUAJb5Og2Abpe/bKSImM8cYzGtEMoA6HiPM0z5nQAAlgWpDIUbCE5fG27LoyvW7UvhtUjtGOCOBKeZBnQc0fylT5OnFt2/cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X8msqeS+; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-61ea08e565bso147932a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993960; x=1757598760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cgeGgsFM+rQArXvxzAToJZRLnYQpJqlxlgbUcOeTf/U=;
        b=X8msqeS+dg2LWZq7e35Yr/gne8Q0jp7vNVBFqfrqxvlYEc5O4UhFiPQSst4IhTB8EF
         7dG+4tnSwaTiQMomcB0q8gmVhw3FDEzJD0zOq04sw9V/VUAim77L218cLqslUlUQZcXO
         99IQvgYV4QkjcjQmZ/GUuBsNCc5mDsIIwdtt2kgS2lkItBXu+qSbDxfErkyxsMWLfEyK
         0J8oORbzKlOOyHFg+vEvrN6CeTxkULfr49PPdTpPqufj6UzWnPG8WcfN/L8JUaw2IzJd
         qIkdWpZ1ZvL3yUviEIQpnH7YzbaUuuodyOnMxQt3ZE2HHM3AXax+Ig6XLG77/rc+fV6y
         +tnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993960; x=1757598760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cgeGgsFM+rQArXvxzAToJZRLnYQpJqlxlgbUcOeTf/U=;
        b=p1+JjLge7bacAXXKOSW08hT1MozzEjFYXAM9tBP6X6npqYqeXpnO0yzAIV88GFgeXm
         7WgBjSZ7yH1hhy9v04mvuwd9W5sFEGalBnL1FcATf3879YV4q6gHen8twTz/Kg/Rgr66
         3pflb5MnQD/SkKh93JeRNFyAZYnU2Iuejh+NZd4Ex9UhmItGj9mwaD0xACXv8pwBtVtt
         b2Q9OFADR2QRDb2DWlXlM07Wx6ZrSzn7kgcm8PePuUeqMXolqH7bxHMpHHRuaiSzlV13
         bq2pKwK0LqCYhC/8JylzSY/7C38UrU0mCHuKRBHNhju4HWghRyC5kM72pjeBRDTdkOAm
         ztyg==
X-Forwarded-Encrypted: i=1; AJvYcCWAnQ3cxO2USoufuO4ta5b1X7kZC8/EEupSZ32LMGyq457KxSmAd5iuiBxR3mNXmpean70g7OsZrJzS@vger.kernel.org
X-Gm-Message-State: AOJu0YwaI+c9mZkHKwpvnZ1nUAlAWRBLjUnnfmJAjRhyJreFgQ3k5JLe
	17fzcXYFbt7SVWHANQxhWIAw7ABAb6Ex3nePqgbKk/ie2gsMWcGMQRVM5GnVLghFb0w=
X-Gm-Gg: ASbGnctQMTbQWovd59fmYmcI3CF4I+Iv+dSZ65I79SslH3STLbAm2lND8BRWqM/zUkO
	5ikjW3g0sDhLQEkUjIRGh+DfH0XR9luBXJyECcKy3LLmyg+p8J7DZ9hWbVrZb38CVMx1PaHLA6Y
	nUh8GTi0tmepCJxQ7SIPGBHrtguAqhsXtwYiFESrkR+qHQz8QM2sFtg97iydCHgucOvtZn9ayJJ
	3DOeBWfEr+EG61fChGBZE2//Rwo8yvJ8ntIdGGZM7lL14qtujwaR84Q7ScG70pXqorKs3Eud16r
	PH24oKXWdnnupPqGBAovabb4T+ejDC/kylTuDyWEKCzexjA41HrRY3W5FQc17Ah4HNtEfEjDZwU
	K1sUMeIa9tsiDwZYdd8iVvBFBGIJ/Sikj+Q==
X-Google-Smtp-Source: AGHT+IENiGowH65uqsGasImJfhU5ju4Jy1wXyVGZWUIgsAvpgpMXFrjAosxNPFmKdbC/U5NW3+rMwg==
X-Received: by 2002:a17:906:ef05:b0:afe:872a:aa5d with SMTP id a640c23a62f3a-aff0f022fa9mr1200463066b.8.1756993959596;
        Thu, 04 Sep 2025 06:52:39 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0a591819sm1510983766b.41.2025.09.04.06.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:52:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: toshiba: tmpv7708: Add default GIC address cells
Date: Thu,  4 Sep 2025 15:52:31 +0200
Message-ID: <175699390854.173213.7488244114872177547.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133340.312380-2-krzysztof.kozlowski@linaro.org>
References: <20250822133340.312380-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1057; i=krzysztof.kozlowski@linaro.org;
 h=from:subject:message-id; bh=JAwT2iPNt0TjVzVINIBUXGLhXR1IIpvFzujMO5pZKB4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBouZmfDWRJhl6b8w/8lg/0UJorn6ZScQfnQoFSS
 VWnfGSa3qKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLmZnwAKCRDBN2bmhouD
 19qHEACHjaZQXOJurWs1+uc09ch7Ro25A/y9Bw7jFLvs2B+A3naqZxaF0gxgKyx/cMCr/T9u61z
 HY/rzoIoXsmYL/Sqs6mX35jtP6tktdeTB7H3db5EinZo4t8DoUTomfVTMtS58dGp04zT/tJQ9w6
 Iw1B5u4x5BlxEXcoumOakBjn5X7TmVm4LkqB/wEneETqCqGQlbHOPy4s5Z0DlgKYfTrbQy6XQ6M
 wsTP7BEQ/EomzGk9NHtWsfkVCdYfrugM5NRgxBjxIcC8bXzpqjDOO1rrU+HNBrv4PyEejQmhGKv
 UbpGUVFjEFZBFUnQjjLeWErR/YnJM6WgsXXl8v0GHuUYHPsBj2hRA7O2ZJ0awPdt28c69dGJSKS
 2PTvO8L+KUYX4bJFJC12BNIn5IsyLtbtVrkj/1IsepHQwjd0RcSAYXLsE+Ho8CuO+B3YUjHNj/R
 keyRvrG/6gJv1g+givKQbePm2rW11cBf2/yrwYtO13swEjRizbuABQZnEkyr/l4s+Zxdn0DpmCl
 /Vbt5vLYw+uQsCEHjiy+V6VOaF2xhCMdDhur/avNDDwoPOQgvMMKHlXKn1FY7l2ZdlF1qef88Qb
 rs9kR5ZY2v3lGUjp4EnRD2ezJ+R77Gdlq/jG5kWSlKgzxebKx0SqqTSOWKr20bbZP50nxc2chNF 53z2xcvrrvHjXTg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit


On Fri, 22 Aug 2025 15:33:41 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node to silence W=1
> warning:
> 
>   tmpv7708.dtsi:503.4-507.28: Warning (interrupt_map): /soc/pcie@28400000:interrupt-map:
>     Missing property '#address-cells' in node /soc/interrupt-controller@24001000, using 0 as fallback
> 
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=0)
> 
> [...]

Applied, thanks!

No one picked these up, so I grabbed them. Please let me know if someone else
wants to take it.

[1/1] arm64: dts: toshiba: tmpv7708: Add default GIC address cells
      https://git.kernel.org/krzk/linux-dt/c/7ee0f223cabe9b9384250024fec577c731cbcf72

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

