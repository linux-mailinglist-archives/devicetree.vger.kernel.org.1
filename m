Return-Path: <devicetree+bounces-241386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F67C7D3DF
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 17:17:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1E17934EBE1
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 16:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D760228642D;
	Sat, 22 Nov 2025 16:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XA/BJ3xn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5E818DB35
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 16:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763828269; cv=none; b=qa4r5ohg+GL/rM25icCALOAHUANuZ7loTnK4wcfvsTz4C1wT1Pve+HQAFZaaTCYvqwdPx+3FccbzGetNeZvFhVjh10NQNbIHTZ57lGWW58LMQcs/eTHzV/x1Y6w1B3QT/bYISUvU+yjEP5px/gNQkeXmYjzB1auuVhJqKJ3z8eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763828269; c=relaxed/simple;
	bh=lD9qw3+1a2fCxGBU3gwPJvHWcZKfYC2qwL6ybCaX3Fc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=eMUErhUhIzI9cSKCOiTdXmhFy/L4I2R1f4o17Fi3BkKE1xZuRtovf1KpSYYracvjGl0m+9wN3tT0EHaNRGCaf0PIc7vkTVB4mX9dfyKBF0ufXDhixq6BocOpgJXygg/vN0XS2GO1edBhxdM2efr4Ul8hNalTXKFPYEoB2SZpV5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XA/BJ3xn; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7c75a5cb752so1766982a34.2
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 08:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763828266; x=1764433066; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dW4WI4aGenKIk+vJ5jzi4PBdSmIWJZ8GDl4yIS/elNc=;
        b=XA/BJ3xnl/myhIa2tEWRSWxwMOEpXYMDu1LOw6G8uMJuU8eWNDs2N3kHMmpfCd1bMZ
         ZInj8mMr9cyi9q9SMAkcqjKTwxyMIizncnA04Ti+dVF7SNjrIKqrNpHjIM9OGSPHXRhL
         IVoiRu7ZvIMFfELdaHDNTw0OTeRArnuEerpx8ics1QDE5cBJUE9FMMB/jlpQnxJBpZBt
         3tnqX9JUybWffUXSMdu7FrArtUc4GEE/apeCuM+IcQwLhTqyBuoUvIt5V1A7AxnezdVZ
         maf5zwjc6D35zYIrTjV8r4wdUWXziif500v2SYv1bsAvmi2pTtKC8hgaVsqQ3UOvMzT6
         vZ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763828266; x=1764433066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dW4WI4aGenKIk+vJ5jzi4PBdSmIWJZ8GDl4yIS/elNc=;
        b=Jjyq8Tverb/NFOSs9U7V97kQEtMuLMY4BLyluKnoWqOpoSVOnVPq+gYwMUYpTHR8bl
         +VbHnQ4AB6SAc0f26ISLrCkW8E+aD88/KMNTok85EY8NharoOAyy7NQ0ZRl90ARAlSSG
         IMadlFGZWy7uXpJY9d/59biYw5UjnbnVC2y0aKNtwCqjR0P5wha5bNwLHbQN2zCliT3x
         Ub5yELSUy25F4m06PibD7Sj1x6e3pvvWd2HUe7QJozhSazztrnmD1g2lw2FjOqxWHh1P
         t+Ax7dY5lGbWt6VVIaNejE6Hl7/xTNpmhwA0Ldy7Ws0qOZbX0pvV6IdD4Nugjkud14rz
         IZaA==
X-Forwarded-Encrypted: i=1; AJvYcCU+07o8dDz8VRyhq/BRV+KFeZX4hb1j8MZeOUJAGZKYTt5xMJFzHmV3i3Qmx/IGHUmzhCtH2e7EjADc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo15tTDGtmZffJA8m+CCazHaGujJRXxhJv+VSgUZqK0zX3KzsR
	nvBcrVRHml6uZlWqdOSdIsnd1fkAsG9NBuamPg8xaaXqpacB958V3M2oFfiDGbjLVEE=
X-Gm-Gg: ASbGncs8y5q9tgfhGXB/kTJoqhgxVOy05Phd0JAStl0ZRkV48vaqojtHfJ6sOQyZfOp
	lfVcSukQq9PomOu6BGJK0n+cG4oU2gT5hmurvWBm9KF3tsayURZ5E3F2735NZDiWR1/rZPRP/DA
	l5WZMi/l9Sid2meWH6QEal2tzbv62Q+772jdDy6OzfNySs46q1TMXJ6/MDOcUVgJ9O7C74ZtF/o
	x0XxKzIDg7B4VUbDzKErQEq5NlJlc+mGlhHmtPZ8A56oUgFSAADbUz5bcDYSNHb35WPTRNiGXyN
	54NmvBPkSnPMI+RaUoQ13WQo5h3v10DuZEUEWl17guZ3fdlcPkWHNJabRFi+4vZljFwuCzqhDhb
	gW5DP33spOuPvKB4XqmM+t9zIkmdWmBMASzyuarBkRSewFqctwn3bxvxu5LURGw7Q3ZlfOb7oob
	FuOJs3yVF/NNyr8ioVN4OXNbxqzUB0mKd9SwnHfRghDyc95K8JlHdxupg3BUkOXQV5opDVknE=
X-Google-Smtp-Source: AGHT+IFti6Ssxoxl9NGiyka2llGTdisHj8XfjS9EhnJKtMTFuf2G5Pwk4x+RwXnK9OMFRROfrbn9pg==
X-Received: by 2002:a05:6830:4107:b0:7c7:6558:277a with SMTP id 46e09a7af769-7c798bff0d0mr2805281a34.15.1763828265880;
        Sat, 22 Nov 2025 08:17:45 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d428edfsm3562699a34.31.2025.11.22.08.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 08:17:45 -0800 (PST)
Message-ID: <7db1158c-c29c-4788-a3d2-b9e7b1042708@baylibre.com>
Date: Sat, 22 Nov 2025 10:17:44 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: amplifiers: add adl8113
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251121095204.18574-1-antoniu.miclaus@analog.com>
 <20251121095204.18574-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251121095204.18574-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 3:52 AM, Antoniu Miclaus wrote:
> Add devicetree bindings for adl8113.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> 

...

> +  adi,external-bypass-a-gain-db:

Hmm... are we sure we will never need a non-integer value? Maybe we should add
"-microdb$" to dtschema?

https://github.com/devicetree-org/dt-schema/blob/7033eb7cec1abe55f496309f0f6f271524f5d612/dtschema/schemas/property-units.yaml#L52

> +    description:
> +      Gain in dB of external amplifier connected to bypass path A (OUT_A/IN_A).
> +      When specified, this gain value becomes selectable via the hardwaregain
> +      attribute and automatically routes through the external A path.

The dt-bindings should not specify how the driver should operate. We can
leave out the last sentence. We could say though that when omitted it
means nothing is connected.


