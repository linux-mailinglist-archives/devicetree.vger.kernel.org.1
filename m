Return-Path: <devicetree+bounces-92323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A64E94CB37
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 09:24:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0C0C1F2210A
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 07:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663061741D9;
	Fri,  9 Aug 2024 07:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VMHjWnl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB5B1B964
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 07:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723188258; cv=none; b=NBtuqS5RNdDJip8MWzuiKDlgZJe+hoi5/6zpneJHl0VQaznUSoX6OzPeAhnOqxxCuQ5x9z/GZD0OCWzpbuctB//C2yZj3qX/WuCm7VLuMJsMIpwGcH++uCERPKwF1IkggLEGRVlD2X8hz7r5AyU0gFUUlhQVtBqvJyby2uIiSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723188258; c=relaxed/simple;
	bh=uzGnaSKlR/R50GQ7A4X84un4jnegurSJZ8rylNS/d2Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ImRZRiFVUZvhdgQ6Kqxq4O38uEHvQYc3G3sgJTMFfyltgFnBc8mdevuyQNsecHxPwrDAwR1BGgbG3kwUiFMWoisUoiivwr1eYXJ2jHBPY9ZXZsY56yHQPzY5TobtTpYbN+grTfXjX1PJzlH4PN3e8ksmPlUOtqsUDKnbfYt43qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VMHjWnl7; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a7a843bef98so193941266b.2
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 00:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1723188255; x=1723793055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mdnmq+Slg6i3Npfhfe9yUOafdUaerhQWvFa4LDjEPFk=;
        b=VMHjWnl7GVELrh8snRtVAS40eKygxzuX5UEb72vEi1bRq75hgrh8a7+XKltULBeENf
         /2lfesG5Rg6uChAjo1TOcR8vzWp8oEv9kFaK7aSpIGunq7BLxZkH+KPIbtRjqiFk82MR
         br1zNlGOT59ONZazkblc49XJiPBWn1Ucv+SyXeqcUBz54epPuy9mFMwYhShhQmjCqBLq
         8IDl86xC1yejZLnyCWu2+bRFd/d/hQmSWTFa2YELWI0hNi0YjjQEipfk8eFXyfxAKK9h
         3LN0QmCvu4OxUWXZlLpCAou6mtFJnpvnFcxWivKizrpAl3kKF6l4VbHSq8y7isAV+YF1
         7gTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723188255; x=1723793055;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mdnmq+Slg6i3Npfhfe9yUOafdUaerhQWvFa4LDjEPFk=;
        b=MjJfeUCbPt06ZIEs2zstjIsJLp1C5/wtokzIu1XrpST0TsRF6YnZ81XMi3gIUbqRhB
         38FxNi8niV05J9xWaFvI7TW1l/kox1JtCDSDUvYMQhUHUPGId+7kzni1OV/GyUhBlZYE
         +7hF6I7xFwidlxEeuSsL8yt9iFBiUPgeOS7ZRWdjfiw+VxPwG9SP3rZNh2+SKS4+3YsB
         qDh9+5AGRqHNWxFUO/WVAoG1Ty/9PE/9F3LtWDUTQI3C5nCwLNsrgQMHI/6Yq5a7EKXl
         Qyhe/hZxiEpm5uEgCN54E+VdPiecs6FXPMnzvi08T3ks/dMifZbOyjiH2m+Z+wwAy5Q/
         jpRg==
X-Forwarded-Encrypted: i=1; AJvYcCVxh2L24QUjSoIE4bra0DEy0QkNUo+Og8UB+m6BZ012co5gssP9g0KHvbNmbgh5HoJSsCaI/9p3Qegww99rF/yGP6kFFe93L87kyA==
X-Gm-Message-State: AOJu0Yzyj0yJtgXMbcKZyYhaE4arB7C4YxQ8BtQlwnZRbcMrlCemUE6j
	3o5/A7hyvRQWf1YWfUCGjIi/bfqnFPjY/lZLlfgkTn5Xue3+32VjKzHD+ieXogo=
X-Google-Smtp-Source: AGHT+IF0hro6QG4NNQgLsufiIvP4PS8yLQbWRBjrVjQgDfQEoADKu7uu1sGInmEV7NS4hQXsd4wclg==
X-Received: by 2002:a17:907:5c9:b0:a7d:a008:abca with SMTP id a640c23a62f3a-a80aa673651mr43072566b.56.1723188255076;
        Fri, 09 Aug 2024 00:24:15 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.180])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9d437b0sm811352166b.114.2024.08.09.00.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Aug 2024 00:24:14 -0700 (PDT)
Message-ID: <349e240b-64cf-43f6-9ebe-2598bff9f6d9@tuxon.dev>
Date: Fri, 9 Aug 2024 10:24:12 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/11] i2c: riic: Add support for fast mode plus
Content-Language: en-US
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 chris.brandt@renesas.com, andi.shyti@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, p.zabel@pengutronix.de,
 linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
 <20240711115207.2843133-9-claudiu.beznea.uj@bp.renesas.com>
 <ZrTjgqBlq0xM5VDq@shikoro>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <ZrTjgqBlq0xM5VDq@shikoro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08.08.2024 18:25, Wolfram Sang wrote:
> 
>> +	if (info->fast_mode_plus && t->bus_freq_hz == I2C_MAX_FAST_MODE_PLUS_FREQ)
>> +		riic_clear_set_bit(riic, 0, ICFER_FMPE, RIIC_ICFER);
> 
> Shouldn't that be something like
> 
> 	t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ

You're right, it should be.

Looking though the HW manual, it specifies this about FPM bit: "Set this
bit to 1 when using the transmission rate within a range up to 1 Mbps".

Thank  you,
Claudiu Beznea

> 
> ? On R-Car, we have to enable the FM+ bit as soon as we exceed plain
> FastMode bus speeds.
> 

