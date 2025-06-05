Return-Path: <devicetree+bounces-183045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C22D9ACF004
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 15:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90F94171743
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217DD227B83;
	Thu,  5 Jun 2025 13:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tnXXfc6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70352226CE5
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 13:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749129053; cv=none; b=nUnqa5c9RTqL99otdM/nX8aZ2b5qI0/EwE7NjpGOY7jaOGjb6biRO23OAVmpxz2bzcISW5MvJ0DNKKeve36ycTISHtuMUL0WiIzASdcvaU4pdiuN5OYryhXpS5eLceJfC6MLeAIJYvQEtOfrhxUWov+Ofevn/fNts4hZ6Tup7AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749129053; c=relaxed/simple;
	bh=lNhfQTAqbTsru8r+Bj0ZAPYYt9rhG4GCErgMWfLnbw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=syrEnri/QjVL1COv7qGgqbwQEho4WMVlYN97h1JHoo2HWruJw4nn4HwsAWS5GeFiSsKoGlk+VW+2vZHFLPmUpw5RYzh4bnWCMyI012JzKgfX0TE/o/SMtYugtrmcHoUpeXk0tqxNei8HBalyJmq8r3nMkSxA4CW+B47lILS45oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tnXXfc6W; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-401e77e5443so596840b6e.3
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 06:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749129050; x=1749733850; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lNhfQTAqbTsru8r+Bj0ZAPYYt9rhG4GCErgMWfLnbw0=;
        b=tnXXfc6WHX25aRQ/3/Im2CpCyx9Sv3BhxkTLY0xQSl+ZnPHbpkIXeBA1AoZurvjoeg
         r7ZoYd/typs0TcrycejMQI3NaY8JIfjVKN+tZ6Jxc+oOURrHLocAMAmY/setSyLoKgRf
         bkwj4MXvlFtmgqZsZHPEZO0HZP2wrvEoyXEXOzfQ+bmrsEsYQeasNaZVK8BayPE5Rzlv
         jUtBLx4d5h1RRGr80K1d8gCqZqnJKfaiP6RgiTUzz6nTJqxmEYONZCctakbt6+0PhX82
         7GeLSuVSw70qa8AcyrrQ9nirCg6XOkNmxtOqrEv5bSMZi+bLQbsM4rX1ds+iOwdrrpI2
         Y4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749129050; x=1749733850;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNhfQTAqbTsru8r+Bj0ZAPYYt9rhG4GCErgMWfLnbw0=;
        b=bdGSu8LMMHsIwycwQuK8A3D4pibiUc4D9J+eTCWLje8caFj713N/ULrDa0fxVUM2yU
         snUHuPdy8QKdWE8sLqgKoKfVCpU1461NeoVsci1pA5DgIrD/yVdHFoAVSTEKBBesO+la
         b7FxTjgpqFb7Xre39TO1XexdWz7SOHAHacbvCJjUueTZQs64rtf5ASm+EHff5PZ26QEB
         Xxh4Vfohxz32mMzUBL9sFixByxfW4wxiwKFNfB88E6qlJ0M9R3qtm7EV5eemlcTv+0K6
         XhI6z+8biN/jIPDO48ayWrCzq7BzDGaZD8uTOXYFr04clvub7MAe8ii2EdWRMOhJe8Dw
         tNrQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9NzwbgjUSVAw1MVY5kYs1iaspqo1BqHEQC93FKbU1h31xq3Vgv5kKGldkd6S3LOrXKG7pB5o9v/r5@vger.kernel.org
X-Gm-Message-State: AOJu0YxoVvsw3bhbQcGAAm5Dw7lCX7FXF24l4hiRzq0LqO+7s2kRJxsM
	cctAD4VkujiVc6VRqEkoV2EIRev6i053XrCf7pgVKI0VCN3kNhv5aExxq5cRjmFQFGm431Q5wsF
	OyoOfpzXA3Wi0r5yCBM7yowEWAC8jXyWx86X8UsdWfQ==
X-Gm-Gg: ASbGncsZvdh1ScEDVgTJqi/v5gT6HOOZOUmxK014P8snQHnEo7d4uuXJUtxNbQ5K+Tj
	h2+xGGjk2jsOuZvTFRawT1Wi8xXKjAw/QgcOWPL/qypOHbuJvMKj2HYLB+yLKEmf7b2B3jGRQ7+
	k82jKm1TBJZ9jqj+SEEgVTBX5WcK7Em/W2bzPgPW1qjAOXZw==
X-Google-Smtp-Source: AGHT+IGvvIIAi7Jeo7wCUNfCk7jSkX+GkLuOK4ORo6xtJdT9aBnzQchoGj+e4GjQ+z6dMP38d8jOt2O6RhX124Z/rG0=
X-Received: by 2002:a05:6808:80b4:b0:406:d4d2:ac06 with SMTP id
 5614622812f47-408f0ebf570mr5092773b6e.9.1749129050369; Thu, 05 Jun 2025
 06:10:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-b4-gs101_max77759_fg-v4-0-b49904e35a34@uclouvain.be> <20250523-b4-gs101_max77759_fg-v4-4-b49904e35a34@uclouvain.be>
In-Reply-To: <20250523-b4-gs101_max77759_fg-v4-4-b49904e35a34@uclouvain.be>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 5 Jun 2025 14:10:38 +0100
X-Gm-Features: AX0GCFudWa3xhzs7XGXYYVHqIxskkw2POUeo_WNLoTByWb5TUaRlQJJrMo-9pQw
Message-ID: <CADrjBPq67xtfWNY7GZAa3uJeGs4Svt940hW_X2Xxx3Pb7ZY6uw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] arm64: defconfig: enable Maxim max1720x driver
To: t.antoine@uclouvain.be
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Thomas,

On Fri, 23 May 2025 at 13:52, Thomas Antoine via B4 Relay
<devnull+t.antoine.uclouvain.be@kernel.org> wrote:
>
> From: Thomas Antoine <t.antoine@uclouvain.be>
>
> Enable the Maxim MAX1720x as it is used by the gs101-oriole
> (Google Pixel 6) board.
>
> Signed-off-by: Thomas Antoine <t.antoine@uclouvain.be>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

