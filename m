Return-Path: <devicetree+bounces-187106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F55CADEBC0
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28281406155
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE85E2E8E18;
	Wed, 18 Jun 2025 12:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bi5SETsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81D52E889D
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750248940; cv=none; b=B35Etu0o7Qv4/wBn7i+0aFpf48l5kafHLGWWQZuuU0hJhgApVcwHkXsZzcNT5ugGUkOiegxxmbLNk2nMqhvGI5kai0SrTvkskd0+zpk14m68x0yNksNTbBV6KL5XkKGQr96gxJedCBEnaZrVWHumN5Nsuh5gY9oPKWYnKOOL/r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750248940; c=relaxed/simple;
	bh=lbSUV7iMOG8RNQJT3FC35YbqTkiHR5cFo6h4VEVJFKM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jVV5Gq6lAgwFTg5bvw+xNObrfh2IpYxvtUIkHd5n4TlleHW+ZmGvYAzxCB47Q43yLNAUIwwW2fI4cp4ns9OVQoVGRGaidDQkGWv89ssKmFt6yjmHzE0203S8Fsf75Zz7WA+hzdSxKj4o+R9QEa3MqUvPaQ+kH6Qf/nP08RJdqdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bi5SETsX; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-553b5165cf5so5795691e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750248935; x=1750853735; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7jZQ+YS+lWYeVwEC8VFaNnmqDYcJYXkLsLKJpyV1y0=;
        b=Bi5SETsXaZyYbDmid0EWLlL3xktYeHJlZSMiHdCtPPNPtebLdK1+42xog67UGixoC0
         +I/LtbApMJ36ENhn69yR7jNiKKPIt3AtorDwu7wvj/8ral4ZZcXx88LDQ5Nk5TDy5ZfT
         J0Tv4J20P92OhVyD7B6TZB3DkBkbZa4P0MVyRyFs9D0SLPDV5rlteylJhvxTHOGQOWnD
         I/8EFHi+sVhlFkZ2WwEYDwEhKXV2tvzHZEyZmTqla4ALbrvgGEnl4pF9jUFFI7OpoihX
         2N/l2mnFpIdIhp4+kiWcPU9oWSW2IPPQOkRggoVITHWVswIHF4xKgO7wiKIaxFH7ytHB
         kkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750248935; x=1750853735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7jZQ+YS+lWYeVwEC8VFaNnmqDYcJYXkLsLKJpyV1y0=;
        b=jCtnebNRWY39cCfcCRnM9be+x/UBkLWtuQxqv/KaKyP9dAGgsdoDIRfNqDK2UlDVKu
         a6TPCNpUC0xRpeUoq7U96WRxf9mq/S3nYxI9dsGj6kSFPKitG19wXajAgkYPtt2q09V+
         YdRVuLoXtAmr+w9GgwokyB5ZAATbc70y4BNPoNwsOAAEeQ32Iyl4AevRQzf3mMZ2982N
         DBvlObE5arS0exU9qFnhMepj8C52OhOa0ZI7txl9+vIohxjBrTDYlMpp7QcrJbBOZPRi
         zyi+XFYCy61NJe79oMozTbk19TdN8zl+QigF2x372QoAn3gYjrYLNAiY9JvZDxHYmq5a
         hgWg==
X-Forwarded-Encrypted: i=1; AJvYcCXVKDNepTZFd0t0i7oPUk+bFDCbgBvIwBlIaqiYvjYzgzB8MRweHAr/rjv3IgDKtvrP5nQFw7drJNwN@vger.kernel.org
X-Gm-Message-State: AOJu0YzCz3+15wxs2ZnOeFVH2Q+6llK08n8UiZqga44SHpJnvfW4pl9P
	Os/uIFSnyhjRugBPRdeLTuHyGIIZ3MRkqeEZaS5KxwcY8GTYY5h908zgZYIYpxNncPRPnRxsdpz
	yk1VpdEwR6C5htEqByYX4Hu8dXlecAFcwP88MrMEFrQ==
X-Gm-Gg: ASbGncvhbZO6So2PEXGiEobc3F9t1DJcGF+fLaCIvaXgh5okj1c1jQR9MddQkDGHXk/
	/TVpN6ZAwyxMfPp/vBj2YpxpBT2qd9FDoKAQQrmIGQX9UJjQXrozICTid3i9EkSvytaDkyaDc9G
	yDUoKokIV4BE2pFbLtSL4pzyHVd0Cx68+pKtGyrhRl6QU=
X-Google-Smtp-Source: AGHT+IGBMbnQS8CZK59QUADw6V+D/mLT8w6YMYDnxWivA5Amu6Cgv0XDSbL6jWX7zdVZfzp8QG5Ih8L/ToZVwFJNik0=
X-Received: by 2002:a05:6512:1285:b0:545:6fa:bf5f with SMTP id
 2adb3069b0e04-553b6e732b1mr4223465e87.2.1750248934811; Wed, 18 Jun 2025
 05:15:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com> <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
In-Reply-To: <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 14:15:23 +0200
X-Gm-Features: AX0GCFscY4ky5ebft20JokFvuO1y3hVcQ04FGalsWAeschf7cTa_SUmnKoC4ETU
Message-ID: <CACRpkdaX24z5YsfcrB2oqbZpdexZJNREGkWiYgq1ar0c8O0QBA@mail.gmail.com>
Subject: Re: [PATCH 6/7] pinctrl: aspeed-g6: Add PCIe RC PERST pin group
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, andrew@codeconstruct.com.au, vkoul@kernel.org, 
	kishon@kernel.org, p.zabel@pengutronix.de, linux-aspeed@lists.ozlabs.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, elbadrym@google.com, romlem@google.com, 
	anhphan@google.com, wak@google.com, yuxiaozhang@google.com, 
	BMC-SW@aspeedtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 5:30=E2=80=AFAM Jacky Chou <jacky_chou@aspeedtech.c=
om> wrote:

> The PCIe RC PERST uses SSPRST# as PERST#  and enable this pin
> to output.
>
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Can I just apply this patch 6/7 in isolation from the others, to
the pin control tree?

Yours,
Linus Walleij

