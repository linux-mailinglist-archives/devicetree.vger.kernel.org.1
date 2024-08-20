Return-Path: <devicetree+bounces-95155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 052949583E2
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:15:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A370F1F211CC
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5CC18CBE9;
	Tue, 20 Aug 2024 10:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fCC8nAg3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB21586F2
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724148927; cv=none; b=E+SOz/9xn8rXGTLSqkBx5wh+pKoqVb0fvw9cXxj+OYkFKRndpdmmWMIvrWDuQFYEM3Fk3h7FXrMbsfNHFz+6CSZPYLMLKRncRDwJqtdOk3TKqJOH/hXMzJqTKZkDJPIexZp3+AItNOn2/WtbDkNuUkAxNWr/qrgUi2iQYhemm3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724148927; c=relaxed/simple;
	bh=MRYIGSOSbqWcGCpS7eeweY5sPDyQjSsVn9evAIxkLXE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=keicJK2+2frtjNw8CNTeY0NOsU4Xt8BpYRP5CSgpteb1CAA823k4MFfcdvUIYOr5cG0hJLD9WRojOj4/2Mk1g1mT1E5fZH4JaYShRBpOy/v9iG8wJH/CDzDGpjSqmggPfkcPbLFfeP6PhA/yeZUSQxMHUO8bq5SfU+smUwjvY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fCC8nAg3; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724148924;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AOG9ybdUE74HfT0xY/KZ29V4lJHlpnppytRZwc0Rs94=;
	b=fCC8nAg3i9q4ZnlVwRgYc9nSiDCetpSeRyrPa2OhnOXaFHSJsN2NG9QH90iLPHYYsvlr6Q
	16vWcuSN+OCWWU8Ax+aH/jFXHA4uEfqcCoGQCiDeMXZ7qw9keSALoT0/4UfOGMYU/bOYyi
	eOAK/exXQdCshtbMQpCDA+/4p6ZlZy8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-602-66VfVY7GNiyymepl4RJlhw-1; Tue, 20 Aug 2024 06:15:22 -0400
X-MC-Unique: 66VfVY7GNiyymepl4RJlhw-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-428fb085cc3so10014695e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724148922; x=1724753722;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AOG9ybdUE74HfT0xY/KZ29V4lJHlpnppytRZwc0Rs94=;
        b=js77UBchFI/EVNFHzvDyD6njRUvFpIlNhbeP5HShfAdtsPMswUBovXdUvyKVIgqlIS
         TaFA17odoiIv0BDAzgUSdMm0y+vu+DF74BDbSw5YptAtOzaZbqe9Y+kO1gWYaWZcGzg4
         auoAfsejP0Ye9jmbDg/1NHKcsZ9qRstiQHLqoIhDM7Kxsb1d2PGzhdE944K8f+PY8C79
         yTETKpbdsD8cEKTUUwZg/+tFTy+Wv5MmUbiLD4Rcj1kgC7Cs+KaljhfkAKDsw0662cj0
         hDKGXI1A4Em8lEdGKsF5WWZ4wnb8uDfpuIoKY8NcFDHY87yMn//kgoxOrdEm7Dvs2hPW
         Lkag==
X-Forwarded-Encrypted: i=1; AJvYcCUitVravUsNZ3If5hNK+hU6NcGjDCDUq6DQ2VXtp5pS9JKJci4wt8vg8UTYRAg0yN3+g4bLwG4lUK+aEbTjfzbnutOO4hQRYPHmnQ==
X-Gm-Message-State: AOJu0YxJXYVuCJfr/JpeTOrRtHClWcjIHQJg1ubvK/87mHN0FYYzACmh
	k10GACA+t1MlSGVI8B2nglXwRDr5zT4L5XY3Zv9BLq0+zc9/IxU+UzLM5HAGCmcz4JX7OXf8U3F
	mGGG9hptFZiKFePihxj9ZSs7GdLwPsiRKXJuK/6FbIzT64RVj7LnJLpn/OHY=
X-Received: by 2002:a05:6000:400f:b0:36d:1d66:554f with SMTP id ffacd0b85a97d-371943282f6mr5858755f8f.3.1724148921615;
        Tue, 20 Aug 2024 03:15:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEYIGr0mleZL/s18kcq9OFPn2+MExIhTUkOVRIv8PYk+G6iWCJWI1P+1g+0WfYxZmzwoWWIw==
X-Received: by 2002:a05:6000:400f:b0:36d:1d66:554f with SMTP id ffacd0b85a97d-371943282f6mr5858737f8f.3.1724148921161;
        Tue, 20 Aug 2024 03:15:21 -0700 (PDT)
Received: from [192.168.1.25] ([145.224.103.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a2e2sm12752383f8f.16.2024.08.20.03.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 03:15:20 -0700 (PDT)
Message-ID: <584ce622-2acf-4b6f-94e0-17ed38a491b6@redhat.com>
Date: Tue, 20 Aug 2024 12:15:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v4 2/2] net: dsa: microchip: Add KSZ8895/KSZ8864
 switch support
From: Paolo Abeni <pabeni@redhat.com>
To: Tristram.Ha@microchip.com, Woojung Huh <woojung.huh@microchip.com>,
 UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240815022014.55275-1-Tristram.Ha@microchip.com>
 <20240815022014.55275-3-Tristram.Ha@microchip.com>
 <9bd573ff-af83-4f93-a591-aab541d9faac@redhat.com>
Content-Language: en-US
In-Reply-To: <9bd573ff-af83-4f93-a591-aab541d9faac@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/20/24 12:08, Paolo Abeni wrote:
> On 8/15/24 04:20, Tristram.Ha@microchip.com wrote:
>> From: Tristram Ha <tristram.ha@microchip.com>
>>
>> KSZ8895/KSZ8864 is a switch family between KSZ8863/73 and KSZ8795, so it
>> shares some registers and functions in those switches already
>> implemented in the KSZ DSA driver.
>>
>> Signed-off-by: Tristram Ha <tristram.ha@microchip.com>
> 
> I usually wait for an explicit ack from the DSA crew on this kind of
> patches, but this one and it really looks really unlikely to indroduce
> any regression for the already supported chips and it's lingering since
> a bit, so I'm applying it now.

Unfortunatelly does not apply cleanly anymore since commit
fd250fed1f8856c37caa7b9a5e6015ad6f5011e5.

Please rebase and re-send.

Thanks,

Paolo


