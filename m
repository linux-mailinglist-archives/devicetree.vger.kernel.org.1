Return-Path: <devicetree+bounces-243032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A029C92D0F
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 18:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6B0234E1B85
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 17:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71715333424;
	Fri, 28 Nov 2025 17:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BHZPkkfn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0651FC8
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764351611; cv=none; b=YiplCEO97jrqxT+/FAr5wx20fWUjmQIfOMp8qxm6bZrKA87jU87rUNOebJyRRoO2nmA0+Pf9TmZckNv0sfuNB5uwGkZk9VXuluUwOKshr20Aj1Xr8KjMmOTZt+71TniHrj4Oe0ityxzY9A09hYzxBrqObityyNJcgrAtfGrGJbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764351611; c=relaxed/simple;
	bh=O3gwZTCrjFoeqf+4ZZG/d68f+S5hhU8HJwBqekuNMGA=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=IwGKzJKCj9cgik25HmUfh4pSZ2Sf+w8ayBa3byjOLEGxFU9e/Ahy+/KJNY8wXBdAgei8vJVJuXoezjkpp3qVdYclv+zBxd5xd2EOdcGSpkwi7zk2GgyR4S+YOWHlwP5xQD+Z3QhMpK3+9ulk4vBqYM4Tv8VG5kVUVa1WuSEppq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BHZPkkfn; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b155c9ab2so640470e0c.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 09:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764351608; x=1764956408; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ksf9bpHNFLQpJsZYVUeK4l3VWIZV+1TA8e1+Ve8vX3E=;
        b=BHZPkkfna4KayLc1o458l5oA2AVaiqU/d6U4sniNrf3ijQ7XYEi+hIt8mWinIQvjzC
         GMEsYJbSo+PXit5owWSYfZT69Yw8llUO7SaFaR3jGWMZkv6tUESm51lJLobKTlDEoKMG
         H4mJkaSnuXRRxNO1bTYFuQt2Zp0TYazFWus0FoW13O3kQHft5g5+Y+HigwSakOZ8sAV5
         bZsuvLOYFzjsWZy8NZXaQJOrLDlQkHqUNq5ADwxWDX+rjdGUKsEV/9N2JhUgw2wVQlMH
         cZw/rrjeHt4wg5Jptjps+uJnrfck5Z6rQWjrd4EJk8cy/5IbUlpkXUra/7OYsRcbodY0
         Suqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764351608; x=1764956408;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ksf9bpHNFLQpJsZYVUeK4l3VWIZV+1TA8e1+Ve8vX3E=;
        b=BXnRwmYBsRbLH/m90IJbanMvX8kbaG3feVaUJVh+IJY2arw8xJG3P6C6fTmi9AVvPT
         28mTvq/KbaXOJ3c4IFhzmZdB0f4H8/dOzZWq3ndhrFVQDri4gryzWPlbNdGMh7eTnHtA
         HvhcDyTZKGbA4ZHgQ1ATMQX6tgrAoQlj2Zryq6u3RqHBW93fw0u7XWlYQwC5t/BvsuG0
         UFlsphK2iecBi4tbV5pvwdAbZSxepoSDHZuapqVamQzaQWvLkxf2IOl/27YRcolWapvh
         4ECDlczZpwYuCLnlfcmSNpfKSI7BYjEbfaJ4eUUMbcGgodYdo9Y4riakEi4qSeW3ctDF
         5J3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXSnFEcNMy33qpPcFGnJXQ6JD8jLUW9s/2H2P1oVNaMqK6oPNDtOZGXB2C4ouIvYVNwcm3WXW/1V2BD@vger.kernel.org
X-Gm-Message-State: AOJu0YzKRSEPEboLOTr9MHqa7CPd3FgvD41BjDQdI8L1xFX3VxjGXT87
	eV2UQ9R1RXXA8+BTPajriGHfbEbQJXS8dMKvlif6vo+aV5UTGiRLHeYE
X-Gm-Gg: ASbGnct7W3Maj4cWqHXvP+wIUzifpS4bMzcmeaW+Rbbn3atK3uYCBv6fbaob1kr4zZB
	mdIJy4ZFrdGd8MfnWESC/mzhkZY51F1x6yz/1FEnwSXFJbjrWVz+Cw1ZgqowO0ZEwGGDIHU5LX1
	oaPWzB2B1IaC0986F2fm0fwOhmQTIplsH9c1r5VBX3Obu1yLKdEDINO2HFppDcIGuf/JCXqLZfB
	sqjVLLtVC9bj0C9zCvARywXj8W4LRfU4Ms8EZjRq3HGHiYU74bv3sKdTxxaXZZZ3r+bJAwgwyul
	A3+62CeouGzVdMhOvALYzhJgW4RJ/dKz8yCdpQ/Mrr3zWakNIECE99IaccXbhOtCDSztrdBf4pp
	n+RPTB1JDHiLgLREchHGYCjutWCPD9XqE7wYeHr06NrTjX+Nr3E4n71h/heeaw1JlqHTGFACdz6
	WEb4Y6Gw==
X-Google-Smtp-Source: AGHT+IFe8GiAMTa0/l9shgwgJWoUbKMN6FN3Mnu2XXuSPGgXKPKMwILFzaMqyMjJpH018s1tlchfJw==
X-Received: by 2002:a05:6122:6b1b:b0:55b:9bee:ff61 with SMTP id 71dfb90a1353d-55b9bef0f0amr7951568e0c.16.1764351608522;
        Fri, 28 Nov 2025 09:40:08 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf5186d0csm2161858e0c.20.2025.11.28.09.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 09:40:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 28 Nov 2025 12:40:06 -0500
Message-Id: <DEKIG2EXEUS9.28A50WAN06ZMQ@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
Cc: "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
From: "Kurt Borja" <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251127-ads1x18-v2-0-2ebfd780b633@gmail.com>
 <20251127-ads1x18-v2-1-2ebfd780b633@gmail.com>
 <bc76c2c9-ceb6-4ba4-80f0-8a114c5da033@kernel.org>
In-Reply-To: <bc76c2c9-ceb6-4ba4-80f0-8a114c5da033@kernel.org>

On Fri Nov 28, 2025 at 4:43 AM -05, Krzysztof Kozlowski wrote:
> On 28/11/2025 04:37, Kurt Borja wrote:
>> +
>> +  interrupts:
>> +    description: DOUT/DRDY (Data Out/Data Ready) line.
>> +    maxItems: 1
>> +
>> +  drdy-gpios:
>> +    description:
>> +      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). Thi=
s allows
>> +      distinguishing between interrupts triggered by the data-ready sig=
nal and
>> +      interrupts triggered by an SPI transfer.
>> +    maxItems: 1
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>
> These two properties are not correct now - you do not have any children.
>
>> +
>> +  '#io-channel-cells':
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - vdd-supply
>> +  - '#address-cells'
>> +  - '#size-cells'
>
> And they should not be required.

I'll drop these. Thank you, Krzysztof!

>
>
> Best regards,
> Krzysztof


--=20
 ~ Kurt


