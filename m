Return-Path: <devicetree+bounces-210960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AE9B3D39F
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 15:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8BE9189434D
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 13:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5E02673B7;
	Sun, 31 Aug 2025 13:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HaNuscYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15248265629
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 13:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756646896; cv=none; b=hgrUxD+fYCPWS1a5VP0Do6g9E+oBKeomzTVO8pISABAWBk9PHCN5hNRVz8WKv1BeRB81VlQXYZzKgGaKmhpDRtr7zMtXXzgw5cSn8ZijJi0UHg6mGMnprsbpuIzfFUEWaqKTKE1QiWMqPyHi1zkcsz6vMhMf+JQ5qU6TCEOs4qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756646896; c=relaxed/simple;
	bh=4724Qznr91+tj8Y9/XUYmvNyXil/j8ZgBOQhRyA1BqQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=MX9d128yEFDCquFC1L80Id+wylYcVzA4bRKWb/vqJIsdEGJNQrl1hrFfQRTMV3VltxxcN0b+57ybnAeS6QnKCEz8+MYGw6E08nT3Lzn9j99h7BGRrqSnSJ3/FwBc/DrgcBxV6UVxXVXCUk7zWOP+MO2YiSRHqPL4WPgw5agkkMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HaNuscYa; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3cbb5e7f5aaso499390f8f.0
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 06:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756646893; x=1757251693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mD6lZo1DYlhz45rUzy85fH782HipOjBn1uPVn9HDDvM=;
        b=HaNuscYaAfd8V7+N5pjuxFbkoakg48me+ZqYI/Jbe3/5ZX7oCiCYvCL7W0kDbxiI7S
         BIEmpdcmgyCuvrzWTE6tdkJqgS1uK+b5YlfA3sgEPbIZsUOL8TRjPl9Oh3XJL8/SQQEe
         GvgHzDwRw/BbKXj81qoKE6zXn1UH8bG2hlvGUp6wx51WZAjWzm6GfuW+VpZsh/NOQmPa
         tYbSJ085hnPQAdFUn9axpHudtVyalArUx/Mf1EEQKjqsAHTozrhz15H8TgNUOjX26H1j
         KI470sLMfNfHHd4UZg8LdxEYl+HkSgMozlav9qyI4ZS2R0M2Cw1O8Lj6DJl7ZYMioqDz
         HaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756646893; x=1757251693;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mD6lZo1DYlhz45rUzy85fH782HipOjBn1uPVn9HDDvM=;
        b=r1B9AedHiwr1ZVQkedeiqkBw1BUAfIG1J8dPtINovOOWoxPxfrtWyAtmbq4v4oaobS
         ZwTAK+e1Ode5scIjp7xe3vrqS+89ysG6OZW/j3xsN0XqPlvFUFj33HSQ+45jTQ6NPsMo
         rS6e3Lfs3mLXQPF3WvvAGqVJMkAR/LJNLk4zMSwQREWbtyzlltU52wpcXzMRjApZCDtH
         xLsZEkOAb9cy/tcv7AYmA6wTmk2fBYC3UOg8752+b0BWSbJK7Uroxlo8eB5tCC4qFz28
         4M/sr2fR3ZRwNZ18AEH4YcpFlwE7Uv1f0P7vj1Qr5oS0cFUFYtZJVuLwFnODKqGWm+Fo
         E7rw==
X-Forwarded-Encrypted: i=1; AJvYcCU5pghXQa8nwwrj3OupilJoJ8PAk/UNzcCRXD7bnfpcDknFH8WCy5vbzSSEj5ty0+T90QEdOZNh8e7F@vger.kernel.org
X-Gm-Message-State: AOJu0Yyycjt8PHsmMiMVUi+h2KpsHjhgSY+7994zTa3CdHLJUNWKqEMK
	t57fbu8554LdeukdPAOF9mOHmil1gHjSOvyfburEpeFbTRU7Q2MmFuT1cy8XFsiVetQ=
X-Gm-Gg: ASbGncu9TtT/pJrLKz1PZrQiejvHPefor6pZQic387D6PDsAghuU7GsvRZGwjiqXVoO
	84YjsH+8HxOuyZzsozKOa0gTcCuhH9N+U8lnL2cSTbOqE3L33t22KllgIcREuKqQOw22EzRssjD
	8EbWGOMm4uzssOjQ42IU3ZaErwXpQ/rbpGGNLuYy3OEtFfb/dfMJ4ffYahgHHdLmjnK3+5203YG
	Rg0JTBCBAeMGF4bvebunhCBW88kunSZYTtYZDgF0Of0veWGAvLrgYx0GbkUjG89TqnJdOlOdVZL
	Wgp/8o8phOosl5/e4+rsNsvuZ3G/Kk+dqItL3pP7ZPQS8/vqleclyB1WiRJf7/20qKstpPSv8O2
	Y1Cs8JrNt93wPgb4dy/fNohAunX+cC3nWhlbDcJxPs1+qyFPKtA==
X-Google-Smtp-Source: AGHT+IENOgSWDvrR5me5DMoY53wRwsPVCOq3Mq4OdX9AjWmXw0wgs5GSbqe1NiXMSDlX3rSsquKhHQ==
X-Received: by 2002:a05:600c:4e0f:b0:458:b6b9:6df5 with SMTP id 5b1f17b1804b1-45b81eb0a80mr30834275e9.1.1756646893387;
        Sun, 31 Aug 2025 06:28:13 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b87b3900dsm29956925e9.0.2025.08.31.06.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 06:28:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: jesper.nilsson@axis.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
 linus.walleij@linaro.org, tomasz.figa@gmail.com, catalin.marinas@arm.com, 
 will@kernel.org, arnd@arndb.de, Ravi Patel <ravi.patel@samsung.com>
Cc: ksk4725@coasia.com, kenkim@coasia.com, pjsin865@coasia.com, 
 gwk1013@coasia.com, hgkim05@coasia.com, mingyoungbo@coasia.com, 
 smn1196@coasia.com, pankaj.dubey@samsung.com, shradha.t@samsung.com, 
 inbaraj.e@samsung.com, swathi.ks@samsung.com, hrishikesh.d@samsung.com, 
 dj76.yang@samsung.com, hypmean.kim@samsung.com, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@axis.com, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, soc@lists.linux.dev
In-Reply-To: <20250825114436.46882-3-ravi.patel@samsung.com>
References: <20250825114436.46882-1-ravi.patel@samsung.com>
 <CGME20250825120704epcas5p37385c913027d74d221012c4ae1550c73@epcas5p3.samsung.com>
 <20250825114436.46882-3-ravi.patel@samsung.com>
Subject: Re: (subset) [PATCH v3 02/10] clk: samsung: Add clock PLL support
 for ARTPEC-8 SoC
Message-Id: <175664689125.195158.15680456692339310248.b4-ty@linaro.org>
Date: Sun, 31 Aug 2025 15:28:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 25 Aug 2025 17:14:28 +0530, Ravi Patel wrote:
> Add below clock PLL support for Axis ARTPEC-8 SoC platform:
> - pll_1017x: Integer PLL with mid frequency FVCO (950 to 2400 MHz)
>              This is used in ARTPEC-8 SoC for shared PLL
> 
> - pll_1031x: Integer/Fractional PLL with mid frequency FVCO
>              (600 to 1200 MHz)
>              This is used in ARTPEC-8 SoC for Audio PLL
> 
> [...]

Applied, thanks!

[02/10] clk: samsung: Add clock PLL support for ARTPEC-8 SoC
        https://git.kernel.org/krzk/linux/c/80770fccb7f60b0bc795852c154273e511f296a0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


