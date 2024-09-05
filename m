Return-Path: <devicetree+bounces-100618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8B496E4A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 23:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92AA32833F9
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4071A1A4F13;
	Thu,  5 Sep 2024 21:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XF2XeRGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3AB1A4E6F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 21:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725570508; cv=none; b=JaDLe2LM0DRRqMC7eS3+gKSJRpGw8DbDZaYlql4a0jWtqnfqntRwtdantCd/P4Ri7vVStFqe4LvwQ7cVmgY4xrPwfBgJnLyp1Z6lWndfoNPKYEk7LAhUjVXgzQ3hq6DT1m9JMH3mS8wyEYxBCC5SQkFd7gGfy0q+XskFzfMiueI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725570508; c=relaxed/simple;
	bh=wpb8DxW+hJmtiCSJgNbW4Sdqzkl+nYgI/PNGRVeXpow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=da3IaR1OePHPi+cJXSy6KD5GMzYuasKTnW9mzHtevnYF4cmUlOwv6C+3Db5VX6JM2yvosZZTkAl3bZQ4EypgpF+ZzODnDTZQdlBz0XRHXA26ugRb4iCD3/lCwkgeI8uJVLrQqH1QPXIBfSANaKA8MZqbnmFeEXgPjDrrS6Whb5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XF2XeRGA; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-70f782d6ba8so676489a34.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 14:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725570504; x=1726175304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m6GNe3xBrOr3LoM9ELz/Obj2T7F9ShEUEMbETP31FHo=;
        b=XF2XeRGArXBirK5x3AeLMceV0XNhcCcMOfYZONoDTkQ3mnIVre1k1y3zzJ8+txNQPJ
         UB4sR8Q8mImL3c2HEfxSOlt7dNnyVOwlI2qCXprtsY4hkUzo/Ltvg1J52Aq46KB1kn4T
         Hcu0tIqf4RFVA6h3oNA+VptfIBwblplRXE3DGSZe/qCcgiS2Ftdw+HMseecl8cshrQcX
         gfPc2PHhB9eKDf94vmu6K2kXMs33odJn+pxnfwriGC2BYOu6rrk0352a9CBFeaevqJJn
         Wnrr0xWxvSSyumvFUN8p8y05mRJE1dw+wwNrlbst/MpdBc/R2tRcBOX7l4AAGKVTa+t4
         ffnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725570504; x=1726175304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m6GNe3xBrOr3LoM9ELz/Obj2T7F9ShEUEMbETP31FHo=;
        b=BmTH/xEjXCRXujSr4qhEE3TYubf6zarrbkIZ6NuWlRqd64c0dNXOZyY0Jt910RaFT2
         d519V73NrTD1nBg08vpKRxh/hsmtHS+ZWyJMqEUo1Gyhonjf3D7tqS3vBFg43ghnfIwx
         oHeQvxwCNAB4Pza/2aBsk0QF+ud1f7bwnGOs8/A1SmpfuvQKLIWJA9oel+vGAlSsg3ky
         z4NY7oEZm6mYF1l3ss6M+5ygRQnL+F/KY/pT6+SxS+n3itCrd2h9zIZL5OweA3PQtTRq
         XXvtMzTMLYydGqx5QWYU5clUhbGwlBwrpu6rFcghVwu7nIkbMrlYx0QDk65e40wcWMlG
         417Q==
X-Forwarded-Encrypted: i=1; AJvYcCX5AnSZJ23+/qv9mW3THXhD9ZVKsWRi9wT7csfvrSy+35OubjcpB5sZgzEbfwFS4saN6W7Lra/D99Pu@vger.kernel.org
X-Gm-Message-State: AOJu0YxqUOVCXTsHbLPMxBlzA4yXIoGboCwgoBuNlPzY29Uq61OePsJs
	1G5M6K612pozwyixTbV+1Kl8Fokrx6ityvFSr5kz2exuPjaC2qh30E/4O7+DaKM=
X-Google-Smtp-Source: AGHT+IGQmYOTmQwmJjJJEnrdvZQo9B/4avsrkb7ySIzy4kK18kK6CB4KbDRpi3mJIMZH62isrmxU5A==
X-Received: by 2002:a05:6830:7190:b0:70b:2999:2d7e with SMTP id 46e09a7af769-70f5c3a239bmr26141362a34.1.1725570504192;
        Thu, 05 Sep 2024 14:08:24 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f671a8938sm3388221a34.53.2024.09.05.14.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 14:08:23 -0700 (PDT)
Message-ID: <0f33d3be-ad3a-412e-9314-2c71692d6d1d@baylibre.com>
Date: Thu, 5 Sep 2024 16:08:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] dt-bindings: iio: dac: add ad3552r axi-dac
 compatible
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-5-87d669674c00@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-5-87d669674c00@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 10:17 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add a new compatible for the ad3552r variant of the generic DAC IP.
> 
> The ad3552r DAC IP variant is very similar to the generic DAC IP,
> register map is the same, but some register fields are specific to
> this IP, and also, a DDR QSPI bus has been included in the IP.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> index a55e9bfc66d7..c0cccb7a99a4 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> @@ -24,6 +24,7 @@ properties:
>    compatible:
>      enum:
>        - adi,axi-dac-9.1.b
> +      - adi,axi-dac-ad3552r
>  
>    reg:
>      maxItems: 1
> 

I think we will also need more for child nodes:

patternProperties:
  "^dac@[0-9a-f]+$":
    type: object
    additionalProperties: true

    reg:
      # add more rules for reg here

    required:
      - compatible
      - reg

allOf:
  - if:
      not:
        properties:
          compatible:
            contains:
              - adi,axi-dac-ad3552r
    then:
      patternProperties:
        "^dac@[0-9a-f]+$": false

---

Or use existing SPI bindings.

