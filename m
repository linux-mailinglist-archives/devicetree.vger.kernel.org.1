Return-Path: <devicetree+bounces-231099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF8C0A5FB
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB5571898D72
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 10:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C3019F115;
	Sun, 26 Oct 2025 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PshB2GUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E9C72639
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 10:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761473842; cv=none; b=Z7VJ/Rdyvf3TiaDTJ8EygNkUXm4PSHBsMB6zEpKmAY2UAFxi0qdMb+lFt9KU0qek5BySL9vEwMCpbBvpGHawSdpRemxnLtKu8ClSDUhbLmpJNfC4uvMb8DzwwVgTDEpWMios7BETvsCyHHB+8frtbLEQ7VWqAdJa0ROULgDF+zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761473842; c=relaxed/simple;
	bh=gMD3G4ZxXqskaNyrzUNjhADfrHw5dMqOo55bKaKUfBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=gFw1iucbTpLqzc9pS1WjLWsy/7jp2wpjR5U4hEJuqtVshe/bzX6t2L+lDKHrcQpifMVHkHHzftjiipRUTtzUKfFI0/XHwDUZh/RLVBMh++Vf8exwHU0EzsJ45SK1P6EEDZ7V5wFuc1exHF0cY/3sjDCgc3Mx2E3UfSdhUG/0MBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PshB2GUP; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4271234b49cso572878f8f.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 03:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761473839; x=1762078639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xw8qvM/k9x3QM3FUGccHK4P+EbI4lHRF8d2YmWsJ6mI=;
        b=PshB2GUP6a6uhp0vAUP5OmwjNHX8Yib2Rs4HfUy/CpVoPpa4/0IHbe98Ct0HM29JHM
         WDJG5z/l0CWp8MQzbgFeTK1modSvnmQ0UUkuI0MSm6Ibw+mxzeIcFeP1aESZ+BVF6k/L
         Yi1SedHgGo8OrBYIl5VZyKhaU7yjSxo6k71b9/CqWbT1ew3flMeD1ewRK5SbH/P4ottO
         WPn7icZPA22x1zB2WJ4xzk03giFUXKBa9UZ7sSpg6h5ncWGpZyIwlf3GInDVU17MJiwe
         ebMEdY09mhf+eBe5lG725kOVIJYWBqk87mmISR9hJacrfclBkKgBUtMBdXx6B/BvNDtd
         XR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761473839; x=1762078639;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xw8qvM/k9x3QM3FUGccHK4P+EbI4lHRF8d2YmWsJ6mI=;
        b=r+PSLTa6krZf9Vbfa9A1Y+ddwvsv6/xO372WRoz2PX7fPDzMj9FUj5HwdV52N7itSX
         R9DUuQe/R9zLxudoyNHC9Jp9Cl6NkxO3B4rcIcny2nDKQ49jQj0pEKkNihiLix5uWP4q
         opLbG5FMXpjnc2G8Yk6GEYc6UbEwJ63SB2s12mP8VL2KdX/gFlwDvYaZEtL2+aoIkupW
         hOHbYoEZPuTRlYPDae4nfxD6haWLUj7okKA79Sdg5ertw+PYX0TDrYJytUvE1VAcRFuy
         9j2KV90hbeZ/umqKdyKloRVfeJBsyjrjoAJia6SUdwtY2hdMSTt9RA6DcsyBrANF1Np8
         bx1A==
X-Forwarded-Encrypted: i=1; AJvYcCVRACFaXmxGSvnGSdZDnxw4ogu8pRKK0ZrSTnWWJMmlU5QW9P/ywir42juLBkxkjgSukOcZxWZwYovb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/gMuuBht+wZP3U6IydTOpIxBmZ1GE3tvY+nj/sFbRfIMNxCfb
	iP7kQcKu5rRSQ2VoKbBBtVVm9SUO7y5F5SijXAN9CtJ/k0yV554WJ4jdDc0KpSknsEI=
X-Gm-Gg: ASbGnct1/4/sjakuE3QhwvQj8W5Gkqg5Mq0iXxi+AzXntlQM0SsOb8Zjlm+FtWuVfKq
	Zb4VKW6BYEyLcLxqMesGfdd7yHwYc3ukSd9Pj9ul15wZIzTksY9LMKX59tC7+LeE0TsSG4j/P0Y
	HOOC0fic2QJzMTXyvxPavcLT+nw2xxxc+2hiIUw+IOyvK/HsY+HqlVTzIvvmg98bM28oVEpefrw
	rXm9HKWla4OeL1BP/C2MSOrSdXh/42IPt1iv6ny8criB0XoUt24t/kxwZxIhke/gXCILXg/B+Jx
	sv+eIQcYnt+Dnj3GYnAUuTWUmLwb/7mwxt5hN7ZBk3o1ol5LgzRcO6eZfwSmqdUCAeN1emMt7mj
	R0zzByz6nP+ph1dWSBJW6PNQ6T2SRmloCIWPH5mZkak1SFvbBhaxk/LUCrL8Om2Ii7JGYrwjrk/
	RlT/tr60k2PSJ4Qfxz+Xt/
X-Google-Smtp-Source: AGHT+IFFbfGbMDbsWBBs3RsW/GIAAV6RF9Uol3ZED7FMAKqg7lkgjIlJ6dqknn/N2BG9SMwePdI99Q==
X-Received: by 2002:a05:600c:1d25:b0:471:152a:e574 with SMTP id 5b1f17b1804b1-474942c4fa0mr110129115e9.2.1761473838648;
        Sun, 26 Oct 2025 03:17:18 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd47853csm74937545e9.13.2025.10.26.03.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 03:17:18 -0700 (PDT)
Message-ID: <908748d8-a436-4ed8-abdf-bd228292141a@linaro.org>
Date: Sun, 26 Oct 2025 11:17:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] dt-bindings: net: sparx5: Narrow properly LAN969x
 register space windows
To: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Robert Marko <robert.marko@sartura.hr>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251026101614.20271-2-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20251026101614.20271-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/10/2025 11:16, Krzysztof Kozlowski wrote:
> Commit 267bca002c50 ("dt-bindings: net: sparx5: correct LAN969x register
> space windows") said that LAN969x has exactly two address spaces ("ref"
> property) but implemented it as 2 or more.  Narrow the constraint to


Typo. I will send v2.

Best regards,
Krzysztof

