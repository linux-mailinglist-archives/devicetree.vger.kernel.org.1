Return-Path: <devicetree+bounces-96018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B76195C6DA
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E8341C21962
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 07:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485F01420B0;
	Fri, 23 Aug 2024 07:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S1a7fTeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5992913C80A
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 07:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724398977; cv=none; b=Ypvc01uZufKcqgpjyoDH0sl/zk0CBBF+XfjMgs9t1B14Yu6qIuCnfTiiW6mghp/Of/f3kpjQJwj0AscbjXXDK+pCivo9BXSabfug6UdJ03gSzyws4CDihJ99h/ybzBKFl/yD+eCxTpreKqnThsRKovAhrRIQWwL1ELwE1tdiYO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724398977; c=relaxed/simple;
	bh=++WkiVdL9Z2PtHWazg09gCpk+JB86tmXtiiJMLg3oqo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GWKVG4gqv7NrcCrSJ7keHT2avY8Tra9wTCEpeSsS6fkmnaWLdeFjhK5gypunfSKMvyYTsaTPXSx4TXOALHwTnfv8heJBNB6OUPLyiNl78uicki/1sRo0t2TZokpJqNsGqEJjHvQ0pRZXXr3OIhOP40cMepnQjpubfZVUSI6vEUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S1a7fTeB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4280772333eso3009665e9.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 00:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724398974; x=1725003774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLWiFtCjSL78CQ3UPXlCQZPCZIJyhrFFQBp5jT+5NwY=;
        b=S1a7fTeBBwlwL9Nq33ZjxImrGZD1SYd/QLGShOrejpleWDdkc0pbION7fmGv26FK0a
         /2hbQF7PDhm5oxYP/+C8Tr95q9L88bEgfgZlyYULXBU1Kcy9MtN7ldH4/vmqpHU7wrsy
         7QaFwUo33oHAbM9nwA45w+cXbHGSO/wE5qAJmXG6lnHaVLdOG0BLG4grVcyI9xpl2huk
         eXAxZwlQy8cFCpcaolN6rva1aikIm9ylMjTuWx7iAIFSDJL6qXtPfRxxpwzxNEW25FS0
         e8oHi1lZgFoIZ6HZGMWjZjUrcaBIMICkfQV+WEZN5DW7LRnbBi4uQw3bdamoPp7sKIgL
         8REw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724398974; x=1725003774;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLWiFtCjSL78CQ3UPXlCQZPCZIJyhrFFQBp5jT+5NwY=;
        b=IoLZjzpZeJHuIl12Xo4CpzTBm0uDYE5jooUdFa+5M+4A4OIyM+kkt8Y7KOWvtm6g8A
         ZjmIVixRloiQq41E7bE3C5lHFrwWwsA9DT73rynXrzR1+ZushQfGlS/zkGSsMhBkoD01
         +SlExWeWUh86k92VmSUoiWQcD/mqnYKDUbxg7fx/Vur8L8ZBQi5AworErohL1g0pkmiZ
         fZ9aIBctOVDIV8L0QjXAchJ/PXKybarTo/aF7S8rsaRBTaVhcHt7ziVm+uhJMbLfyQfl
         k6bgDxVFDhNW4DLRKF6FVJfUwtUrWmoHMwNSJKGzubQ9fjIpqvEg/KsaWUvq4ygVWZ1U
         4+PQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjMiw5To+DGkPt1XahD6dlYm+ByjJeQwdOEcCdXpPbM4P+JUySqIK2k9YFT3ffYkqi3mKcY7ICIHmo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9VEwT68P31u0bXivdjIXh0sYfvQu4fv/M5r5RIi8XuwsP11t8
	dElnMP2blUIp0IxWkt2FwPKWUp8wPOCnACTazwcDEELgjiMMb/4udoyO9330l20=
X-Google-Smtp-Source: AGHT+IER5+q0SoK0e092RXOa02/lekajxpcF4iEz1XnizK8El6GyVz/LwKVf0lppoubRCW7lDmvqDQ==
X-Received: by 2002:a05:600c:46d4:b0:424:8b08:26aa with SMTP id 5b1f17b1804b1-42acca01063mr8754545e9.3.1724398973564;
        Fri, 23 Aug 2024 00:42:53 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-373081ff63esm3485541f8f.87.2024.08.23.00.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 00:42:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sunyeal Hong <sunyeal.hong@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240821232652.1077701-4-sunyeal.hong@samsung.com>
References: <20240821232652.1077701-1-sunyeal.hong@samsung.com>
 <CGME20240821232656epcas2p27c080a6d52524b222428931697390aad@epcas2p2.samsung.com>
 <20240821232652.1077701-4-sunyeal.hong@samsung.com>
Subject: Re: (subset) [PATCH v9 3/4] clk: samsung: clk-pll: Add support for
 pll_531x
Message-Id: <172439897209.16898.1400754032970597946.b4-ty@linaro.org>
Date: Fri, 23 Aug 2024 09:42:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Thu, 22 Aug 2024 08:26:51 +0900, Sunyeal Hong wrote:
> pll531x PLL is used in Exynos Auto v920 SoC for shared pll.
> pll531x: Integer/fractional PLL with mid frequency FVCO (800 to 3120 MHz)
> 
> PLL531x
> FOUT = (MDIV x FIN)/(PDIV x 2^SDIV) for integer PLL
> FOUT = (MDIV + F/2^32-F[31]) x FIN/(PDIV x 2^SDIV) for fractional PLL
> 
> [...]

Applied, thanks!

[3/4] clk: samsung: clk-pll: Add support for pll_531x
      https://git.kernel.org/krzk/linux/c/9224e288f2e1f9161cf0c54122ac9168b6b68877

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


