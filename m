Return-Path: <devicetree+bounces-23599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E3680BB62
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 14:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B158280EB0
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 13:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C29F125B2;
	Sun, 10 Dec 2023 13:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gjf5THU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED75CF3
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 05:57:46 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a1ef2f5ed02so378174166b.1
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 05:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702216665; x=1702821465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kW/HPfKMhok3sdax4/7yRdGspuPrVo40wKyVBvTDbfY=;
        b=Gjf5THU4+bCzUfxOKT4Z0AQ5tn8vUKINgBR7WyCDKCTX/f3+xGP+JNu7QLeMgwtzYZ
         YhPEMcq8dEgJ9DJrPlss9tEICLxgRO+6YAaCUVzL1XM4gfAgZmOwgfXGcQq7Vlnv/h0b
         NJsQgS5wlCMQHJX8lXd24JsBnI1Vaf/zRN03YrSJ6STpwsKVf1MM9xpSqAILgHlAwvEv
         m9I4FDCWquzbEoQWMEE+6t3liT7P9C67A3c2G1c6JYnnw29vdHkiB0f4DCUZIKS/Zmi2
         jiQ9OeuM78EmTQaDRvJZkmh7eKNF5L69OnsiVNVOgY5zCo9XpLo1DvzUVik9iCvyuCyP
         cK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702216665; x=1702821465;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kW/HPfKMhok3sdax4/7yRdGspuPrVo40wKyVBvTDbfY=;
        b=dNtRdk90nem20gXanvnXfnnCSfrI5rNHtkVz0rUeNOF4+CRAsBMUhRP1TcE5QM/WMx
         K/EwGVYE/FD65EljaSNs1QAf59obRLOEIcsu3ooDx5rVLH5YXOVCL7g8xPgiMQhOObC5
         YD05AK6+8o66hbp2NjrLrbeWuJoibZstaAqmObI4ICX9iGxkrsytIw4xAf+rOnPi10Y5
         qZA3g3OruZAuosCLOD4UWTO5Po3S4A1i6lBryWdCMEHOO8lTtHFaBCRILGPrkvjUvbXY
         qN7VG8mOpiEK2F2a8uqH7sMUAqHWt/PZ/8HDLFDESdJGquGBf49VToAPmCBrswZiVhm8
         md/w==
X-Gm-Message-State: AOJu0YxQiI9kysPwpy5xfqASNhY8F00hQ60Wj0NpoaQdapFi10570sP7
	rhvIVQIs3966Ii4Yo2IdI4hCow==
X-Google-Smtp-Source: AGHT+IEiX0Ga0iSCeXy/H7DeCARzWj52tQUW0/WK6+nGTq3Be9t4FyM4BtE4El+v2+woOUipXyOwaQ==
X-Received: by 2002:a17:906:1787:b0:a19:a1ba:8cd6 with SMTP id t7-20020a170906178700b00a19a1ba8cd6mr1495305eje.116.1702216665431;
        Sun, 10 Dec 2023 05:57:45 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vv8-20020a170907a68800b00a1d2b0d4500sm3442809ejc.168.2023.12.10.05.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Dec 2023 05:57:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
 tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
 wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
 jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
 semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
 soc@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, kernel-team@android.com, 
 linux-serial@vger.kernel.org
In-Reply-To: <20231209233106.147416-7-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
 <20231209233106.147416-7-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v6 06/20] dt-bindings: pinctrl: samsung: add
 google,gs101-pinctrl compatible
Message-Id: <170221666275.44902.3863677775174337941.b4-ty@linaro.org>
Date: Sun, 10 Dec 2023 14:57:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Sat, 09 Dec 2023 23:30:52 +0000, Peter Griffin wrote:
> Add the "google,gs101-pinctrl" compatible to the dt-schema bindings
> documentation.
> 
> 

Applied, thanks!

[06/20] dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
        https://git.kernel.org/pinctrl/samsung/c/4a2006d0c338c95352bf9f06e5b3cb8afa0bc885

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


