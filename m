Return-Path: <devicetree+bounces-66640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 229A58C405D
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 14:04:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45DE61C20D56
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 12:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F3114F106;
	Mon, 13 May 2024 12:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s/3OmJeS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D5F14B097
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715601875; cv=none; b=D8qiRoQjdNfScBfSY53mybjqvc0UTkk3UPVy6NBKfzreT/T5Kn+t6aNfOOwOFqEnzAsG+KBVl8gn0CoZQf7eL3vBkrRhP6bTlRlGQD1iJ6AN2PHCGzq/NJRVjRe4muJCNTQruZPVazCnaww1gsNd9DhlCRL+4Xls/qOgTcuVh2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715601875; c=relaxed/simple;
	bh=5j40C07Qf/yIsZFYFIIXmoDKx9psThMJypiQuPwNDBE=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=lyVVsWGWtoQqoNEIKLF6zVBKkCf6cbo9W7SeodeG3N7A2Q/UHYQ9xU5pJ0UDZigop6nqlDLwgqlAaZs+3wEH2MFmQqzv40uwBlMEEbPgIYewjuZs+lC1OUBArG6lGEc7le/ylGvXySqn/2AUmVdYRpYNpjcKOjlSBg44iHOLXsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s/3OmJeS; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-420180b59b7so4786675e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 05:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715601871; x=1716206671; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=evr7Nj7xKQ7Cd3Ztm3Cf+ORmYJrKhwgikDv0J0g06qQ=;
        b=s/3OmJeSjthWytt2VGdU4HwVXqvAer28UXexihlo9/1d6uQ8G2VAsyuU26vcXY4vnS
         thy+3Poe2eV9a9dwjbgy2envd2BBNK+5J12cKqbwrUOwpEghk54Y5cyZXIOtNryeGTBv
         h0xwPmMYttaJ9On7a+9yFPVRh86W7cUPai2oHQl6iyFRAgYD0KpAAUOxF1k08r2F5y/e
         VFi7J6H5A7Fy1YRMmNi8qdGy8kDbxVSLFqZ/1Kuag1QipW0ShYYAh/S6CV+iPrLOROBJ
         KI7Iz5g6yFmO+SkGA0YMAOoY1T0912qKzxowT8tHMmKIrRClBS97P8J9HaER73FnXEMY
         mRyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715601872; x=1716206672;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=evr7Nj7xKQ7Cd3Ztm3Cf+ORmYJrKhwgikDv0J0g06qQ=;
        b=LGmR4LYlc8II1QYNJd9PE5w9aPsXmQ/XBjYJl2bHSPdMKnjl9ehxkz4suuThkGpJj5
         Ki7SK0x8LqmT/qiMp3YuZmRWDt+Z9ybL6JylXQfth0U4YY8FJcKkjOAzNZ4RYGPZVOJV
         J80R9Lctae0gIdHa11732MVnTruWH1N2dOhQoeJj1FVDpgvALBtu614xlJodxluA7hqi
         KzMl9UCsj7cYuRedHZO9Y2DIbqLTpa8HFnmVVyLvj2htxNTvEqptHOz3mqvaGeWvVa2t
         Ii7KzD5GJ6F8bNrmVK5EqyumhnzdNHE/Vn2Oo+kSzYPnxziaZ3VffVLSwRUao2DsQyUA
         22Kw==
X-Forwarded-Encrypted: i=1; AJvYcCWjie6BzUdOtOkO00ILusMlzyu3Ta/u0VgHHHk5aOC0Dn/EzgRG6kHdmtbUEXBYmxVzLdt6MLi7mpk8XAX/b9ZCtti6Y26Xfkyu7w==
X-Gm-Message-State: AOJu0YwBpRnSF9sTchN615ikChKxas/u53Ei4B9co+0Moxw8VkJONBAL
	/e3QpDYbgzNi6kPuIj/XHw+gmQpq0TJ9GXlz3zt8DPiryrVKPoFb8/oPEFvqZFM=
X-Google-Smtp-Source: AGHT+IGnkiii1p31wpEBxYvlhM/aMqmsmiEtQ3NQ+1Qn6f87Nt4y/G9/2KcL8KQaX8/8bf+QvAuVbg==
X-Received: by 2002:a05:600c:4fcf:b0:420:1585:7a99 with SMTP id 5b1f17b1804b1-42015857b80mr27774355e9.38.1715601871464;
        Mon, 13 May 2024 05:04:31 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:5b77:3e5a:a808:339a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42013c5fa61sm49472435e9.40.2024.05.13.05.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 May 2024 05:04:31 -0700 (PDT)
References: <20240510090933.19464-1-ddrokosov@salutedevices.com>
 <20240510090933.19464-5-ddrokosov@salutedevices.com>
 <20240511-courier-afflicted-e351af5cded2@spud>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Dmitry Rokosov <ddrokosov@salutedevices.com>, neil.armstrong@linaro.org,
 jbrunet@baylibre.com, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 jian.hu@amlogic.com, kernel@sberdevices.ru, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/7] dt-bindings: clock: meson: a1: peripherals:
 support sys_pll_div16 input
Date: Mon, 13 May 2024 14:02:21 +0200
In-reply-to: <20240511-courier-afflicted-e351af5cded2@spud>
Message-ID: <1jo799zzn5.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Sat 11 May 2024 at 14:03, Conor Dooley <conor@kernel.org> wrote:

> [[PGP Signed Part:Undecided]]
> On Fri, May 10, 2024 at 12:08:56PM +0300, Dmitry Rokosov wrote:
>> The 'sys_pll_div16' input clock is used as one of the sources for the
>> GEN clock.
>> 
>> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>
> Provided that this new clock is optional in the driver,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

The way CCF works, it is not going to crash if DT does not have this.
It will be viewed as non-connected input, in a way

>
> Cheers,
> Conor.
>
>> ---
>>  .../bindings/clock/amlogic,a1-peripherals-clkc.yaml        | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-peripherals-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-peripherals-clkc.yaml
>> index 6d84cee1bd75..11862746ba44 100644
>> --- a/Documentation/devicetree/bindings/clock/amlogic,a1-peripherals-clkc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-peripherals-clkc.yaml
>> @@ -30,6 +30,7 @@ properties:
>>        - description: input fixed pll div7
>>        - description: input hifi pll
>>        - description: input oscillator (usually at 24MHz)
>> +      - description: input sys pll div16
>>  
>>    clock-names:
>>      items:
>> @@ -39,6 +40,7 @@ properties:
>>        - const: fclk_div7
>>        - const: hifi_pll
>>        - const: xtal
>> +      - const: sys_pll_div16
>>  
>>  required:
>>    - compatible
>> @@ -65,9 +67,10 @@ examples:
>>                       <&clkc_pll CLKID_FCLK_DIV5>,
>>                       <&clkc_pll CLKID_FCLK_DIV7>,
>>                       <&clkc_pll CLKID_HIFI_PLL>,
>> -                     <&xtal>;
>> +                     <&xtal>,
>> +                     <&clkc_pll CLKID_SYS_PLL_DIV16>;
>>              clock-names = "fclk_div2", "fclk_div3",
>>                            "fclk_div5", "fclk_div7",
>> -                          "hifi_pll", "xtal";
>> +                          "hifi_pll", "xtal", "sys_pll_div16";
>>          };
>>      };
>> -- 
>> 2.43.0
>> 
>> 
>
> [[End of PGP Signed Part]]


-- 
Jerome

