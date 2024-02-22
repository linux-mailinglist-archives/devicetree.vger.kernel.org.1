Return-Path: <devicetree+bounces-44907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A217860067
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 19:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 159C11F26FD3
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 18:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDED158D6F;
	Thu, 22 Feb 2024 18:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQ5YAM7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775A51586F9
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 18:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708625224; cv=none; b=mUqCefpvqd4G+FKuQbDZpZR5M7RhvqPiZdYLZjeqPtnveRWyeo2sswdb9z1DHyszWP1c+zhT0CEvzKKRoRIN3x7KhXpQsyKfv9XCnsSV3cqp7D8hJDIwEiUfARvZEBo+Gipt+PhWKLWa3nj0dNpPYyRFaw5aUwASfvklAQpypgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708625224; c=relaxed/simple;
	bh=mVONycJc5PpTK8Bq86d/+2PZp5FR1VeL5UFB0+tQC/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u3LADD9amZ5Jrj+cTVY61OJhwXB1r1vto0o4WBMqZZawS9CftfgDHLPsGuOH3q4BNypoiBi0/os6zeSJj3aHrAPjW2Ff5ifA/2kVgSgHCaL+AoUqYdxiqhN1wsbXC3Z9OgPfzEUmTlhI/w/WBjPsf7HWLzSVUucdc0SmCZmrZkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQ5YAM7X; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so3026366b.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 10:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708625221; x=1709230021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=H7MEkFfomwndTH0+wr7dalSjoavVgLoT8CmyCpVBmUk=;
        b=zQ5YAM7X+QyHPGXqn+KoP2c40jijD++gHPQvZfXtD7zJ818nUI7aBG41lohaVsv8nd
         Ng5XvZXZcoFanjwDZUYR73/Zadc7n8VPnSmCNfx6HhayXfOdXh3ipJKTXXRMps2Ye7ug
         bIcrN7qCINFeNHTrNP2cBYnGxbXSLkJg2o2pU+stDxx99AW6w7k2gjI2RghzjCd4JJEj
         lX1vkoi4JE23/3mrqo9l3ZDI6rZyNuTcxcSCKSagk73FoopYKL8n/t3/ia1ACj+INQh/
         +fZoXY2EyNCbocAlQvo23bDAUkvc7VIas6iAfEzQhk1xmuyg5PNuR7SP+REWlhvt4u89
         IRDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708625221; x=1709230021;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7MEkFfomwndTH0+wr7dalSjoavVgLoT8CmyCpVBmUk=;
        b=u1T+p6WZ6APt69NUVZW4MV4NknEY2kjuHWfNh9WBgvWR/DFk/WN2pgCl+7OwWwDmQH
         mXVdn6FAc3mDGBGl7PQxv+FOxHxTH+Kt+rlubmYb4+8Qhx5rwfFY47PnAtan3YppHUUH
         LPWa+trxPFFJQ7qrD66zjwmSwAPmX+EM7oE+swKpC2FVET2Yv/OsbRdQG5N4y7AqLN1b
         5m2hIUQmlUCjrTq1noYDMu2kytqpCEHATEad67hipYouhcgNggngXIlIV4JwiAu/VQ0z
         k6urzTpGZmlhdhqBYl3wvp4xA8K/IZl21N/PX0UnIS8lIa64FySKjViR7RaqBVVq3oLm
         z71g==
X-Forwarded-Encrypted: i=1; AJvYcCUto9LBVJez6/ueK8F3KvQptkncxAWwIO/PToW3IurNiX1olHYdd4mQ6YAw5ga5JspzcUZyzoCvBb9PukwmuKuzOHpzv9MrL25O+Q==
X-Gm-Message-State: AOJu0YzKsitF9Vwmv9j0j9xlGslTBdsFgBL3pQIXFz9t/CSQ0DqMYgko
	xRDJ6q9AQ4U2vYQKx7SOb7EI1EZZ22TTenE7Th5VcD4RHCfZ4kAur33AyY/Zl9SWQ6V3N+wz7hr
	UMAc=
X-Google-Smtp-Source: AGHT+IEjmD4ALMlUxrdfxmnPt+2Fm9owb8fToDuSi1t6SPBQPsQdIdt5D367lHZDyFAxfOEJoWi4lQ==
X-Received: by 2002:a17:906:16da:b0:a3e:7dbe:298b with SMTP id t26-20020a17090616da00b00a3e7dbe298bmr9139446ejd.24.1708625220771;
        Thu, 22 Feb 2024 10:07:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id r8-20020a170906364800b00a3e4e7ad9dbsm5220799ejb.68.2024.02.22.10.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 10:07:00 -0800 (PST)
Message-ID: <f6dd8194-979a-4409-a300-f1eccba7fce7@linaro.org>
Date: Thu, 22 Feb 2024 19:06:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/8] dt-bindings: clock: convert hisi-crg.txt to YAML
To: forbidden405@outlook.com, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: David Yang <mmyangfl@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240222-clk-mv200-v3-0-f30795b50318@outlook.com>
 <20240222-clk-mv200-v3-1-f30795b50318@outlook.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240222-clk-mv200-v3-1-f30795b50318@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 17:41, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Also rename to hisilicon,hisi-crg.yaml. While at it, add "syscon" and
> "simple-mfd" compatibles to match the existing dts.
> 
> Add reset-controller subnode for hisilicon,hi3798cv200-crg to match the
> existing hi3798cv200.dtsi.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/clock/hisilicon,hisi-crg.yaml         | 69 ++++++++++++++++++++++

I don't see any conversion here.

Best regards,
Krzysztof


