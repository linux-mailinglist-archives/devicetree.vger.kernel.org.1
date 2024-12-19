Return-Path: <devicetree+bounces-132619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EFA9F79D6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 582627A44D6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B4F2236F4;
	Thu, 19 Dec 2024 10:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFEsRBhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0192236ED
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 10:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734605466; cv=none; b=saqcdqG4o7pmX8qoKTtV0CdqzfH6qV36VCdEcc/1qIM+1nDQvXqp4kZ21jyO08ewB8Ctkwtr96BT3EJHg7s7UD4QGgfwXPP+eywyazKHnx1gXbBFvRRSGzPHpxadRbvI6eZT7K5cwSKQAE2VRZCu/FEsg+xlqMvQKWGwGfbE9yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734605466; c=relaxed/simple;
	bh=emwP4RqztVOrkW2c5/KEohCWdgWL/oxDpV22fyZpUE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L/x3WEsZAIMiuM+VCgQijJYNwSrL3oroWMPuoLcN/xzw8/K3iYPH863UZeQtYlr09ad9gvol5IUydlniT1s3zFJtmKTHJ4jF6vJMghyorPdQkb6ihLQBnIo6pYQfKJwaOwWuIpsOZhtPIUamUUijNF+BNn/c36RFYo7sXmIVTY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LFEsRBhC; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aab6fa3e20eso106137066b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 02:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734605461; x=1735210261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aVaHqJdzzc6/RXsrUMqwYr4L9WjHePTtMi55G/q79tg=;
        b=LFEsRBhCgkyWQ/96yNvWMf8r33A0ZZY3AJV5MuiqVatWniXmNy7MQlthDhNS0LPrA7
         B4hbAW+s5+2xEv8NMwIcKESqSKWxwS/Aui0fqq9GZBQR1NXoQ+KbwvSm38ECfOlMNkht
         HLucs9TlwdKyGVG4LqhKGQeQP5FUpievzqj0y8dMIq1n1aoTIQrHSdEe6ZnDLJCcRIYi
         ausjBqud0ApizXDvwPbdChd8f6fs+MroIqylBSdugy3RevqdhrobqsS8KORbuHoZNP2K
         n8NKQShxjaI7UbuQKY3thZ251KzCTTiAOXoCxx8JP2jdN6m2fB3yKCZZLO1Gn9pSTtkH
         cWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734605461; x=1735210261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aVaHqJdzzc6/RXsrUMqwYr4L9WjHePTtMi55G/q79tg=;
        b=bvXLJhXk+q9Itbw3GExPMiCI18hUotC6m4UxtVo6CLx0yj3PtCFGbmrv7rIG1sWZuD
         a+vPoySC5oLoEFXEHbeZ1NKOdj/m14F470LwhG6uk01fb3kQcOWzZDP/LZrwjYTPTC7b
         6yePgdu81cSvzcMiBpspUua8R60+JTc7pYRSBJH6BPIwsjeVwQinDZDPisW4u9/4CA7t
         WdmeOGOfel5yVWLxYaQOjCk0YXMjsUDfWMinPg7c2nkQOoP2EMF/ZkJHdJyj90UkPLv+
         h8qY2EkMRwWoUGsNeeMc0J9jOyX8MU9Ye9wN6Qq5j0kFlL8+ytW0RMp08KcJIME7hKPM
         UeBw==
X-Forwarded-Encrypted: i=1; AJvYcCUlGV16+gTojl26nBW8P/ChoCWE6i64yEflcdfxMcQgXPBFrn1hsDfTjQf/8uOiYqZrdfeEMidey1Af@vger.kernel.org
X-Gm-Message-State: AOJu0Yzit3Jffss853loNEcIKEX9UeZ/IyPODlOFo9f1Qht6bslJIGbS
	3CNSoT4jULIpOqpdWN/reuSTkzJKFE3Mv+/iiIINuTcHx/vfvznM5sGlQRAPcSw=
X-Gm-Gg: ASbGnctzrp4tdsoimwbuYXjVZBkO3NjWyqNhmZGDsibL5QYBjZMf4IzPKm/aayy8Sxw
	AGomeobYA94aXmJV4lkENAOkJDOXAGNVCNPJpBU67c2+gaN9xJzFnu7iThXZ+j5MGP1wID2sxR5
	Qd1sYqNtgPCu6VUsuIHWOab5/xFHcCnxUbKiwGOsP33Ms+IilGHdgwfv6vp+U33NKRrOv17cf6S
	yaj4G8nh/6oXU1AZWx3cz7N4RovV4d9fPNzMDw66Ewp4WEl0ovLt7EfiqnIDA48
X-Google-Smtp-Source: AGHT+IHBuRkyoQD1EHB9ZmOyTHsx9PCdtAK0b+CCDpTw9RoYQfSOBxBrLbZUs1ESOuaSGAfTefp1Fg==
X-Received: by 2002:a17:906:3145:b0:aa6:b4b3:5923 with SMTP id a640c23a62f3a-aabf47baa14mr514507566b.33.1734605461426;
        Thu, 19 Dec 2024 02:51:01 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06cf19sm51704366b.198.2024.12.19.02.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 02:51:00 -0800 (PST)
Message-ID: <ec3cdfd1-df7a-466c-8581-c9546ca6b089@linaro.org>
Date: Thu, 19 Dec 2024 10:50:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: mailbox: add google,gs101-mbox
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org>
 <20241217-acpm-v4-upstream-mbox-v5-1-cd1d3951fe84@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241217-acpm-v4-upstream-mbox-v5-1-cd1d3951fe84@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Krzysztof, Jassi,

On 12/17/24 9:40 AM, Tudor Ambarus wrote:

> diff --git a/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml b/Documentation/devicetree/bindings/mailbox/google,gs101-mbox.yaml

cut

> +
> +  '#mbox-cells':
> +    description: |
> +      <&phandle type channel>
> +      phandle : label name of controller.
> +      type    : channel type, doorbell or data-transfer.
> +      channel : channel number.
> +
> +      Here is how a client can reference them:
> +      mboxes = <&ap2apm_mailbox DOORBELL 2>;
> +      mboxes = <&ap2apm_mailbox DATA 3>;
> +    const: 2
> +

Revisiting this, I think that for the ACPM interface mailbox client use
case, it would be better to introduce a mbox property where I reference
just the phandle to the controller:
	mbox = <&ap2apm_mailbox>;

The ACPM interface discovers the mailbox channel IDs at runtime by
parsing SRAM. And all ACPM's channels are of type DOORBELL, thus
specifying the type and channel in DT is redundant.

It would require to extend a bit the mailbox core to provide a
mbox_request_channel_by_args() method. I already wrote a draft and
tested it.

Do you find the idea fine?

Thanks,
ta

