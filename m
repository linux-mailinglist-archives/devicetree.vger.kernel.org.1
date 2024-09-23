Return-Path: <devicetree+bounces-104611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7389797F090
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 20:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A70E281C7C
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 18:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E881A0BD0;
	Mon, 23 Sep 2024 18:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UkCUa3GT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A641A08D7
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 18:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727115678; cv=none; b=gxiBcnbYm/l83HARpUKd5/+5FHo9JYTo46TZXleqmXc1FxhI0Wyr3wzK4EeGOPl1Xu93oduzV3vGFSo6Su7u+qVicaf0ZeXv8u39CoybWTyz6uX/jDObTxJuB60+5Hum1j/h9rOcyHsOc5XUsaofqAvDt/yZ4Sr+zPpR1JFMuLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727115678; c=relaxed/simple;
	bh=UqUXgYuqU0kIexUNzZ/9X/LQo5DdxjKVQvVx/S+OXaw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=QncfAb7ZrUa5m30E/QMWjRjG0KVWAZwQeWuQsI74HlWzlJ3mg3N1koLc8u3GzdwMss/S8L69qR3Qna8eWsFmGPdxPsWtC9qc4aLLz5mzG42ieL14woioa5Q3t7/JtKimoHcv9Dw9r1SuO4rKX4nZ8TSEdwElI6FI5so6HQdVW7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UkCUa3GT; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cba6cdf32so42668095e9.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 11:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727115675; x=1727720475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UqUXgYuqU0kIexUNzZ/9X/LQo5DdxjKVQvVx/S+OXaw=;
        b=UkCUa3GTmW8z3qALzt/eXt0STIsU5JHlfmOqLgtinEPsICvvm7Mr2ozVVGt+AFMg7a
         8SciocpmyOTKU5f6pf4o1Fpx1e9jJ6cKwZCEoii3e1m0F1lVZb2GyIiUpsi/nRA/+3Ze
         xqWPFx8FIzQab1eyMTjssdnNGTMG510RQuHyIBCuUEj0NoEUjZIaiJCykNSXK2EbryyZ
         0azYRoF+C3gk01zLZgw7nsg7yr5usz2Xr8WN6iPOP/fiVTXd2Efg5ac3Wd6j5MCbOAXp
         A8f/KvTk5hxHu5kYLqwCDmTaeFHd2q8vt3O5JYaVAZtBGIENGZOmOx0eSKyuFkmCMQXA
         7mdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727115675; x=1727720475;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UqUXgYuqU0kIexUNzZ/9X/LQo5DdxjKVQvVx/S+OXaw=;
        b=XHN3RCsLF9/aRTtleouP2JO4XfvrqrkoZSOV3F+07P1fdobjb5HaTHnupkmD/A2H9J
         Ha1j8ygNey5G7Jx3e9uxQdM2kggbMh799C57vS3n+z6SsLyNp5SW+LnBeyD0fAU9g+r4
         DS4D1w2Q59qCHne+LvCE+snQ4OhP+k6lEK3b8rr78VAiDSvMcxKmHmO9MRY7t9au9Sxi
         LGqYhot65NqAR+CI3u5f15X4MAiAbqAM+uuxLm4vrtwihsModzpCUV9WDBHavbMOm7WH
         FprZS4GgkwPMrIo26dWI3PPBS/6W5RcobFVuPkBrVY/vG3vS/RksbMg77RqngBz06z81
         4lWA==
X-Forwarded-Encrypted: i=1; AJvYcCWUi3NYN+7p3lxRHAN9ikmkd2XrbHpSFu6E8y10jsIxx/kA6d3BS/CmZno0FfWnqWj0qGyd+YiMrw5X@vger.kernel.org
X-Gm-Message-State: AOJu0YxcVvRXmkrvE4hJM0eAEkpy81qNwPiGANwsOfOGTh2/fiHcgrW/
	R5AmX+kgKT5BwhZhJ0dzfmsFa9NjImFd2y2c0O25KrNgQKAtq+jWy6jQPdLf9DE=
X-Google-Smtp-Source: AGHT+IEyW5r2mR9KpKQXU3vq9s6UmBL0KAMEAFIWLjveUAe8Jbyp8SjbxG2qsaBNBpw2RKlYUrjsag==
X-Received: by 2002:adf:f183:0:b0:374:c4e2:3cad with SMTP id ffacd0b85a97d-37a42379f47mr7987215f8f.52.1727115674731;
        Mon, 23 Sep 2024 11:21:14 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.20])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e6c71c72fsm145269025e9.1.2024.09.23.11.21.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 11:21:14 -0700 (PDT)
Message-ID: <502f1855-09df-4167-a7ab-8cbae0da9348@linaro.org>
Date: Mon, 23 Sep 2024 19:21:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] mtd: spi-nor: core: add manufacturer flags
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Erez <erezgeva2@gmail.com>, Michael Walle <mwalle@kernel.org>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Esben Haabendal <esben@geanix.com>
References: <20240920181231.20542-1-erezgeva@nwtime.org>
 <20240920181231.20542-2-erezgeva@nwtime.org>
 <4e0cf43c-4843-451c-ac6f-86775dbccb2b@linaro.org>
 <CANeKEMOmhAPM1j1_ihzcC2wL6jKsWXPCGfZs+euS8mRvtqgE5A@mail.gmail.com>
 <D4DLQGLJSKPB.3OOW4RU9Q3K5O@kernel.org>
 <CANeKEMPSoUu7GW5bL8nuyC5xCKG7Tt0=SvWTL_CcX5oebqN_YA@mail.gmail.com>
 <D4DSTDA3HE2B.20ACE70SQAL7A@kernel.org>
 <CANeKEMO1nyzEKGCt8N8_UCmAcQ3L53=H8U07AdJzcnFaVuwjGQ@mail.gmail.com>
 <906df2b1-2827-444f-9de2-9b59f4d49b5c@linaro.org>
Content-Language: en-US
In-Reply-To: <906df2b1-2827-444f-9de2-9b59f4d49b5c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/23/24 7:04 PM, Tudor Ambarus wrote:
>> * Always read Macronix chips SFDP, as Macronix replaced all old chips
>> in the Manufacture table.
> I'll NACK it unless you prove that the old flavors of flashes are not
> used anymore in the kernel.

Even if you can prove that the older flashes are not used in the kernel
anymore, we can't just switch to parsing SFDP, because we have seen in
the past flashes with wrong SFDP data that made the flashes misbehave.
The recommended way is to update just the flashes that you can test.

