Return-Path: <devicetree+bounces-64723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0548BA8E6
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 10:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50825B20BC2
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 08:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C9714A094;
	Fri,  3 May 2024 08:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vWzV3HDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E269879CD
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 08:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714725471; cv=none; b=p43uV7cX2zbSlMO+p6FUfrjMjaLf1OHuSGd4ZpeWc/n1y+Ztggg95XZ7v8Tpu4AUuUO0PvY6chD1066ugKXJixrTMSSDIOwxOrlV7OgNd1Go6v87WOYY/sAR6LSMpk0RVux0QmmSP6cJDEE8mxASLik3T8pT3a5RZYeF52lmXBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714725471; c=relaxed/simple;
	bh=f9s1YSiVD52aHqdBTeuwwIXhnNwvYW/1Dw/i3aVnEgc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Jr0wzFZQGQr15OSTPdWni8zGwldunp1uU9JbaF/xsAdd50Q3/NSoa0jOwgecogJ57RAXkeesuAn22g6xsFreUR9AQOwgomvzpzZmfQh3rvJgSUWi1g0vh4UbXBax/9diL36oGZTyOZGIe7WBFV/ydP4KMA5LNFzgVdNzB8Txv0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vWzV3HDd; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41ba1ba5592so48735635e9.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 01:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714725468; x=1715330268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=djU56EKFkZeLFAmo+/c+p/uGgTnWE8lujhDLkE4pYF8=;
        b=vWzV3HDdfFTw7vgESI+lFQzKbWXgGjlqLrdBOBCpngd+oav3VsFI9ur/mmVdGzjhyf
         roDEDtFdFUQm7mtAMAPpMSKVo9f0PR6wJeXxhVo6VxJaiQW4UOgU8TVuwaIlBvaUoZpo
         1RAcWfGAagD9/3uxW76EO1HfCrSI5hi+zQgBm0s8ghpmHqPtafFP4HNSMqHZtlfZDd2E
         J/eFxI7Xh9+DRw+ZtwxbDqlKZaLfSnVT/Uku5s89qAc1/Xntzv0ALAeCAuTs1/NRZv7f
         VHZ3XHxoLfzTIZdKvOphP1AaXdTbgyGbT3w8w9LwGJOJulOAMb/apld4QyZowt/ZU7ms
         OpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714725468; x=1715330268;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=djU56EKFkZeLFAmo+/c+p/uGgTnWE8lujhDLkE4pYF8=;
        b=si/cy9RcbzXB/YIQQCYZkz4AeHTSpDS3gcNduyOoilB7YxHh/0f2krQpXuGPkTd5EE
         cj0sEvLov79g6vA7EDsnhpCsv65foQZ/OGJJcB+d6CDG/K4jb7gu49V1Jz+7ZWT/ULLM
         WEWZ7eW4j2prBbZNUsYTpiXXrcypcCNKfhHPdqcDZQ2r7sT7OXxiYyI5ZjFyguPpKO+z
         fkCeMcELGD4tjLyD+Sv10bwi6shPvQfBkQqMIoc8mi8yJfPVLMMgR6bheRkuHhtrAiDv
         oxMWWslCVklU4k4VcDe+X8MkTFCfr/QvP/VpF8pC9o5cloX0L50vChoQNsETO/K9TZMK
         EApQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAn6ew85F4Y6l4D2cLVe17cODeYki7PgQMmMb74oIVmPnR0mJ7cevOTdtal25itGd5QDAvSQvCU3PvrZt9D5QKZPeHcOds1dKWdQ==
X-Gm-Message-State: AOJu0YxwQfHNp008mDIh5tSEzSlpePR+H10mOsHIS/QtYe//jv+n8wSW
	iexqK0TYwzx9DLfGlt1Hv58D17MaXf9XjqhW/LP9mxVnotnUSBfLXVRKVkf2Ack=
X-Google-Smtp-Source: AGHT+IF+yo1CSmcm/XfdpTbc5DTYAMLCEwKlh3+OLYAB/T23+ydfBZUwmj5WVek8mohi3cyYFqC/5g==
X-Received: by 2002:a05:600c:3d12:b0:41b:5944:d05c with SMTP id bh18-20020a05600c3d1200b0041b5944d05cmr1941642wmb.15.1714725468315;
        Fri, 03 May 2024 01:37:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id s20-20020a05600c45d400b0041bde8ddce9sm8578461wmo.36.2024.05.03.01.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 01:37:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
Subject: Re: [PATCH v2 0/4] hook up pin controller clocks on Google Tensor
 gs101
Message-Id: <171472546662.18690.14989005186865924429.b4-ty@linaro.org>
Date: Fri, 03 May 2024 10:37:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Tue, 30 Apr 2024 10:49:45 +0100, André Draszik wrote:
> This series hooks up the individual clocks for each pin controller in the
> gs101 DTS.
> 
> On Google Tensor gs101 there are separate bus clocks / gates each for each
> pinctrl instance. To be able to access each pinctrl instance's registers,
> this bus clock needs to be running, otherwise register access will hang.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: exynos: gs101: specify bus clock for pinctrl (far) alive
      https://git.kernel.org/krzk/linux/c/1665b303a00c1acb2fe126486c6256c755f0b7c4
[2/4] arm64: dts: exynos: gs101: specify bus clock for pinctrl_peric[01]
      https://git.kernel.org/krzk/linux/c/42e3f188b238b7fb1c42dee8b4dc4107cbb321e2
[3/4] arm64: dts: exynos: gs101: specify bus clock for pinctrl_hsi2
      https://git.kernel.org/krzk/linux/c/8120dc4656aedf86c24e1b5776f84fdd9f8ece80
[4/4] arm64: dts: exynos: gs101: specify empty clocks for remaining pinctrl
      https://git.kernel.org/krzk/linux/c/4db286b0a29aa3576a401b637ac5910dac22117f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


