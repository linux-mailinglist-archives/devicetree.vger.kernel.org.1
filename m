Return-Path: <devicetree+bounces-226611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA74BDA2AC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 16:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E4AA14E367D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FB42FF65E;
	Tue, 14 Oct 2025 14:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bgt9EIQQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201332FD7BC
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 14:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760453766; cv=none; b=Gj4XfGTFFE+APBuj61D64oRNxW3TgwnhCBMFLo4339gK9FJDVj3HsOcNoTv7XK+snBmv/4gpZxLbaGTWniq5dYM/LD8EgAhsy1fYSZO+vUQX9Ka4g/KVz1IUAsB6+wqZx9FizBajXcu5fiVsu3P0Jsa4MXdI4ILGP/nx+cPHzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760453766; c=relaxed/simple;
	bh=t0eECElMdZi3rnWW3mPDtAjVKIQVB4ZInnz89Xn9HVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hHW52zxZJNAz3B7UliS82ABJhrdUma2vCXP+AONZAjvSMsVQ8kOEgjGXWRcQaD3HTEkOmcjcOtobDU6Sb+2zBEofZBUEASPfgBuQUi++CWSklWGclP8u5V06Wq91Vpo5xZLxtU/tUIkiFxz4pNdpmnSwncBbw0f9jZFSsZnjTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bgt9EIQQ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2680cf68265so42732595ad.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 07:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760453764; x=1761058564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=TCeJh+2MAsHiwUgHhTjgOc+5NEn5HUcdm8yoLhNeLn8=;
        b=bgt9EIQQZWioFzMmHehR7/BVgARyVnhDbfOrS+dyYuQ5qH8fn6npzBdkCqk9IXG38j
         tqTSg7y1Y8v/CjAmtHkW33UcJsBrVlk/isa3PsyNQ5PY+Mb9gFq5dCHTf7hgDHFv/mEo
         yvPlZ9Y/FZxJDKe7JSjirUNN9gOeRoZ8g2eya7xr/PX7QWyt7v3dCQJ0V/XNlBIjkj3Z
         bjZU/qYAGqDuraaN0evKGKDGDVe+Quz0WG7rQanEoBhuNsOk64Po+1I5U6YWu1e98bCw
         ILlwmW4RJLd8ze66xwYX9ov9bWfiN0/c5AhC1uYy3sGqgP3dU2NX7vYkSbW14EQbh6nt
         APlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760453764; x=1761058564;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TCeJh+2MAsHiwUgHhTjgOc+5NEn5HUcdm8yoLhNeLn8=;
        b=UbM2Lb+CtE8LoHvSEEas5U2SLMg+jWZwTZ0YE6fJLT/JwkTBxgBTdcjGr4uHxR8NJM
         5ySEf8K2un2Z3qbrMFq74WT1DJFMj0/CxPg23C98oxg7ULUDS+3JayZe4LGdkwSwDicI
         TrKgGW6+S0ffnCOwYCP6wh7twiJNVDU+f9yaIF65xh88X61MrACouSgc0MQceex5SSV5
         2ABDPtRe1FOsbgJP7EN320mbTilXicMpxLp/5T9qHYt8uMTeLh1dc4nxhXn/osgqNS/N
         T+kkVJNRRXZQeKxN4eFLzQC/aztFYRDk6ELU/dlwVvJy7uMs2zmiIUJKTgjo9NqbHIcZ
         SV7A==
X-Forwarded-Encrypted: i=1; AJvYcCUnUIaw7xbehbQbKfeIZEDOuiU8pKBlP0n7ZVE6PljNUqUFjrXMboNLYnVJYwhPzIg4kUCbMmcCcs+f@vger.kernel.org
X-Gm-Message-State: AOJu0YwMMitL/6QdJobxBpQbX8cuv12vjcAss/dxj8K3Hb8cTmJPiOfi
	oIZuS+N0l5X2PHiOsulx0tTOEd3Wc+6Jb3jiTVCZmzj0z1V1FU8iJwi4
X-Gm-Gg: ASbGncsrAsUGmx6T18fMq19EqXYgLvAUHHG3QElhStu5/osTw3IuUz7575Ui1n+k4pT
	P0P+NbLpqmsetH+ktmF9ln8pDT7p1wpVuZMpXIVXB0yW4NtsiXrrTwaS9pZJ1k75GxL3/Q9F/ju
	/q/Y1C7/lUYVkQmdDI1THuL2rPeet+/zjKebGYgghve9BHig3wbXpPVT9WM4SQPH358UyL4nur2
	dyhkJcfco3StEIdv7IN5/lUJDcHUOx91WREOcCsboKVVlA1zMlMeAJKPa0PMk1wNFuGdMzN64O0
	gNXhiLia3lW6zLLPlEPZqlAf/Orm3auf8tX9nyvqJxuW0lQ3r3EJg8Y8LqIYlSzwgoYFrO6shFb
	qFV70cA5GGN6O5+Qobr4L4DzqHLpAucLi8oRQooFnHVhjPTSBcp1BI8xej4KiVhMe+tiifuxBqd
	qg6iFPrF4RtBq9+rrwkdp/i1vH
X-Google-Smtp-Source: AGHT+IE1OUFOl6jhgKK1/TPdVLq11c7/IYvBqnfdZ5u0TuC+oW7V0h6o5BV4kWd62d3sektGSqNaKw==
X-Received: by 2002:a17:903:f85:b0:264:befb:829c with SMTP id d9443c01a7336-2902721634bmr256845555ad.9.1760453764329;
        Tue, 14 Oct 2025 07:56:04 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e179cesm166256325ad.34.2025.10.14.07.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 07:56:03 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <255ddd95-3b22-4f34-b8b6-f32ce79ca13b@roeck-us.net>
Date: Tue, 14 Oct 2025 07:56:02 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: watchdog: Convert TI OMAP to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251013213136.693752-1-robh@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20251013213136.693752-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/13/25 14:31, Rob Herring (Arm) wrote:
> Convert the TI OMAP watchdog binding to DT schema format. The compatible
> string list was incomplete. The "reg" and "interrupts" properties were
> missing. "ti,hwmods" is also deprecated and not required.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>


