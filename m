Return-Path: <devicetree+bounces-163603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A41A7D6ED
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:56:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71513188893A
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86D5225761;
	Mon,  7 Apr 2025 07:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="BwPSTjes"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDCD4642D
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744012590; cv=none; b=S+4ajPVggVxX7EVCya84JahtEp+k0R7JvmdOjfjzrAIcXkUOAG0k0xDFAyczamjBLbZAaTix4AupYBQnjAcWrS8WHq6e7lwQuw191Pitlb3S+S3/SLI10TBarZ3H/njHrjXiPJqR2O5tHpF5/GujBKj6pgzrchBDmZd08Ii9DPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744012590; c=relaxed/simple;
	bh=PbY2iBAdM5uxUm/Yc7ACLFge/aGVZH5yA6UNUuaJAC4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NHG9tsAE0AoQIwtUXtNuM0C4AaTImAUC0VXTwzlQA5z1ZcjYG49VKD5qRbeCYB3lmGDc/2WQOnmpx7xxjOD1idAN96vtX5vQ7HujplJjQZmYuo/TMAlMpe7HMrepJWNvhR7GeA8dIiA81F8yRwGyHiBjLD4MzRxvZvJz0kXBnXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=BwPSTjes; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf848528aso33180345e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744012587; x=1744617387; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gk3PDXrCi4i7kOY1hv+ABXdA6tfPrmWwO1BXasAm+5Q=;
        b=BwPSTjesCiFJDV/QiCsU2xVJhnireEBjb7MLV2nnQBCYgyH1xy9NjwwuuaFDa0eEWL
         9TZ/D8mSpqAF5kdTRlKjL9vZZVTHKZqOYUYRDkYIKNn1h8phKDKcviFjH3fkJwLwqZeD
         wMHAGUmrK1Q81hhEitmUWrbRZKoSU3ZAOM8adPkm8PxJAwQBtHY6fySfn+rZKF11yxnM
         kTOd4lv16tL2dTtNYW33qK6wQWl/pmxajs0cK6LM0fksVwc9GHNS2t5Rf9gBATV8Futm
         ruUHSZbTwu2fx8Zk8fWWnDfxlompsXzFBdS/uT6cxTmcSK47yCA/Bo9uZ6zQuHSxYLEN
         BfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744012587; x=1744617387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gk3PDXrCi4i7kOY1hv+ABXdA6tfPrmWwO1BXasAm+5Q=;
        b=qVp9B8aon4Kfbg4mi53qqY1Ojwd6Fn6nhmyhxjxaWhEC81pZPlIiJxswlYsBwVyYIL
         QO7yw4lwD7HOAJz2SEn880HSXuv1t5o1wPdan5V0c7D9oGqZ1wybYFPWmX0ntrgDPOEa
         YTJmXkhcT2oIYZt6B1nIFUW4F9IifNKbgQk+RGnR3uDVazZBPiGsAIxBh7s+AjLTcpJn
         p9NjTKhpp+IUmwYRw4zYl5RzkviT96WmVd0VichnS4s6wTNiOSAzBmuFDYJeq8rYWlAL
         g3zVZyFCzh2ee0vJ6kwAKPEVfJER1M1T5w5MXMleumSvSF4Ju+LZBUQCeu9Csxxke6z5
         tscg==
X-Forwarded-Encrypted: i=1; AJvYcCUoSZemHap5xmupj8Kb3xLt8CFJUCwNUqJgBk73CreDXC9Pe2eWmDcpW9MqgjgDiDklz0GBkchf1BuD@vger.kernel.org
X-Gm-Message-State: AOJu0Yye2cBYMt+Bw5rXpCbUp9vdtEtc5IhGExblbuMQsWI1Ml/XD5RB
	sqcDrpItB4u7vkAVIr/VJKirX7mZv53EngxIOD5HNU8wBhLsBssDJKy0eqiE/DU=
X-Gm-Gg: ASbGncv2RBA6uLTv63oe4rZPrIzMzA75e2ICx6Gkbn4pbtXYKVfwscjwyKADNVDZ05B
	hHIHT9VqmzFU0CLji08eDIH6m+UHZBwdfb+iUzdawK/uvbjo7AsN8u3FwCHZniHZI7zAkUgSOxg
	LPLxSDeVQGAcDs8gued4cpZ3zGxnKQyQ7Kw6CC9Y5hsWTIQs4396Xu6A+2+TAtinB+cQ3AdIbKl
	tJ9rP1/a2kkSduQCyjCdTObPVNitwKMTxOtVQxkyAE6T8roPFuUe2YDVn9JzSrBLg/0w8iPafEh
	OOyS5XEfKjLE5TUwEw50FAjQBBeT3ANcH5VGqKqpL8qqITRPjOpmcck=
X-Google-Smtp-Source: AGHT+IFuGAUYDVlIZ8EonvKfI1JZejqOAN2FYZFOVuldP7Sk6j7fmFby9VeiU0OPy9L4I7Jcqwq13g==
X-Received: by 2002:a05:600c:2157:b0:43c:f87c:24d3 with SMTP id 5b1f17b1804b1-43ee0878e6emr46890815e9.20.1744012587467;
        Mon, 07 Apr 2025 00:56:27 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:8c64:734d:705a:39a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec342a3dfsm123483685e9.4.2025.04.07.00.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 00:56:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco@dolcini.it>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v2] dt-bindings: gpio: pca95xx: add Toradex ecgpiol16
Date: Mon,  7 Apr 2025 09:56:20 +0200
Message-ID: <174401255666.28656.10157337361652941194.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250331072644.17921-1-francesco@dolcini.it>
References: <20250331072644.17921-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 31 Mar 2025 09:26:44 +0200, Francesco Dolcini wrote:
> The Toradex ecgpiol16 is a 16-bit I2C I/O expander implemented using a
> small MCU.
> Its register interface and behavior are compatible with the PCAL6416.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: pca95xx: add Toradex ecgpiol16
      commit: ac7d33f3899762b5d0c90a51a96ea11b6d7660ba

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

