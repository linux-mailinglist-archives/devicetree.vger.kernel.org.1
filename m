Return-Path: <devicetree+bounces-114145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3191F9A9E9D
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:36:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C2821C23450
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEF6198A2C;
	Tue, 22 Oct 2024 09:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RI1jebYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DCC175D26
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729589781; cv=none; b=VAMe+wN3b5qdKRYFWpD/lS0qfx8/G398fNLAi+UhX3eHFLVKuofmtiNZxX25nOpjLLVEtR/m7tbwgnUd+sqRkVRVgne7fis9+jD3fSW1IXKvKhK6zoIYz0cwasOOJ869WIVfD+kFWL8HuIdncbAYvYKL4O0u1GVFH6wZTnRYVy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729589781; c=relaxed/simple;
	bh=JUOkRks2mm1sbrP2WS4gm3Ys9rxBtJEc0sENLr4gzhI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AK5rRvzz53YQWVEebwllcvz9OOJBqf0KBPvikrQsS6crliJxNcSgOAqg7D8B8OVXco1xgr6QFIc6KPsWigY12hDpG+olCKF7RKkx7V5o/mH7mreRiOE5Aapq3De77zTLWJTSx5OE58cDyfzezHvIEmmDuhzH7YCmfh2YoZh2iWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RI1jebYl; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d4b0943c7so3929361f8f.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729589775; x=1730194575; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=4fsVQUcARuIWhOcGodmkDQEe+tag8Qx5PkTwvtAzDek=;
        b=RI1jebYlmAC0GLK6VhLPfuTn43nTawY+GS1HBE/oE8V8z8OA587kWEqM3MNA3pxrTd
         og788sRvzxXTa6DnwRpi37QsiIJO330f92AcA46e5sLAa8cYXQYvEVfJVWTvrNvYOBaJ
         b/ghQYEhVFCMh8lIUxqxWKJy28QR+1hL2tgnrsynb9u8dfpLxNYTOv5D7dsZ1ZQnUgeG
         Uk4M9t1FAyO4f6IkBqD8pUNjJ+5favqUmKn7tyU5d6h5VyqFlUMpHjLr09IrUGAwIw2X
         NInb1NtQol8CvoPwbo6WbdE95hDfcV8H2CicOJo2+LiChb8x1mtP3S2opfS6LELEZZbU
         Misw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729589775; x=1730194575;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4fsVQUcARuIWhOcGodmkDQEe+tag8Qx5PkTwvtAzDek=;
        b=WiJjtDPnYRXs3W24G0fLTbvdCQizHpBXWFIeu3etb0Lwwv1+aJVrGhQyJSvBjyG1op
         c/Nzp5i6QuN8517xHxwjcvBrqEkQEWNncOkPmBARWKguNlith6tPmE4fxhrhKSRfYY/2
         RPRKyWeAHefPj+LvtvM1AqPn9j6LVW/nu0HynQH2UDUHEvaSw1IDU3ImSsDmVojIZBim
         K9+ZvKo2r6Sxlb0vLCQKGvIGQd95E1++o0mIh0AaO7sEQ4La6krG5fTsLOSxqtup8tJ3
         yYF4GE9qNbTlOHZV8Re/mZgM3S0avaW+/CvmEBtl3puU3pVF5dYChsPe7yYEgrE3gmOh
         8E8w==
X-Forwarded-Encrypted: i=1; AJvYcCWXpS5XkvZMGFmrGtGhaSdTpwddqu3SN1wD6bRE74pa3iqMwmk5/YqF+LZfFoZHKll3+ufTE7ZC1DYv@vger.kernel.org
X-Gm-Message-State: AOJu0YxZjMSlqAC2ib68APx9zhvpGe1DEgAih+bMGP4QNzYgHAUO1udB
	Q+0q05iPkp01NgzAOzl7JVIi14ToTJjpbAc4DmgVcfeGvBvfc9+g1HpDQiciVHk=
X-Google-Smtp-Source: AGHT+IFMNwrhj0pJZPkzl5FYhTMDlK96/nSoyfy8b25ehdKKWw+4jVdDPhgV4SZ5tiGqcKSkTMexjA==
X-Received: by 2002:a5d:6b90:0:b0:37d:4e74:687 with SMTP id ffacd0b85a97d-37ebaa7a72dmr8620512f8f.41.1729589775370;
        Tue, 22 Oct 2024 02:36:15 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:ef1c:ae40:1300:20c6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a37b35sm6249649f8f.2.2024.10.22.02.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:36:15 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Conor Dooley <conor+dt@kernel.org>,  <devicetree@vger.kernel.org>,
  Kevin Hilman <khilman@baylibre.com>,  "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>,  <linux-amlogic@lists.infradead.org>,
  <linux-arm-kernel@lists.infradead.org>,  <linux-clk@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Philipp Zabel <p.zabel@pengutronix.de>,  Rob Herring <robh@kernel.org>,
  Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC PATCH v4 3/5] dt-bindings: clock: axg-audio: document A1
 SoC audio clock controller driver
In-Reply-To: <1jzfmwjxbp.fsf@starbuckisacylon.baylibre.com> (Jerome Brunet's
	message of "Tue, 22 Oct 2024 11:34:02 +0200")
References: <20240913121152.817575-1-jan.dakinevich@salutedevices.com>
	<20240913121152.817575-4-jan.dakinevich@salutedevices.com>
	<1jzfmwjxbp.fsf@starbuckisacylon.baylibre.com>
Date: Tue, 22 Oct 2024 11:36:14 +0200
Message-ID: <1jv7xkjx81.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Tue 22 Oct 2024 at 11:34, Jerome Brunet <jbrunet@baylibre.com> wrote:

> On Fri 13 Sep 2024 at 15:11, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:
>
>> Add device tree bindings for A1 SoC audio clock and reset controllers.
>>
>> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
>> ---
>>  .../clock/amlogic,axg-audio-clkc.yaml         |   3 +
>>  .../dt-bindings/clock/amlogic,a1-audio-clkc.h | 122 ++++++++++++++++++
>>  .../reset/amlogic,meson-a1-audio-reset.h      |  29 +++++
>>  3 files changed, 154 insertions(+)
>>  create mode 100644 include/dt-bindings/clock/amlogic,a1-audio-clkc.h
>>  create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-audio-reset.h
>>
>> diff --git a/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
>> index fd7982dd4cea..df9eb8ce28dc 100644
>> --- a/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/amlogic,axg-audio-clkc.yaml
>> @@ -18,6 +18,8 @@ description:
>>  properties:
>>    compatible:
>>      enum:
>> +      - amlogic,a1-audio-clkc
>
> This controller is missing aud_top clock input coming from the vad
> controller, AFAICT.
>

You are passing it thourgh pclk so it is fine

