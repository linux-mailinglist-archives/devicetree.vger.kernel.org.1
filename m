Return-Path: <devicetree+bounces-65870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2908C070B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 00:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BDF0281521
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 22:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D460D1327E7;
	Wed,  8 May 2024 22:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QJC9xfLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B61DD530
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 22:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715205813; cv=none; b=jElDf9Mlq7sYnTGifp1lvlbaJqOqBYF6VOUFyGGr0IwfZtmLOQjaNSM/g3lzyUHewRBV6HLjOVk1yQYK3D8bfDSJ69YtQvBcXQtO96ZTKOiujwfoIVSbunrl+4LWkvHZMFTSHTP5sAJoSWHwjBSjc3JtIKNqXTw3IxecRX9H5NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715205813; c=relaxed/simple;
	bh=AM46cOLXSet9Rq0F91rGPUCQkmIVfDVSp4kTC9rcI4E=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rmSRpbP0E6R1XYs51EqLkb+/sbrwunUqBcpOYJ8CXZXJ9PwgGWCYBQ9pYGCZhOeNGRvOB5Q4rBu3cvhJ/EPvSOcJYiprY6xjBIHmld9Ux7ciE15K6W4V0Z3Q+CjpNgT9lnufHYe92moggkDiabDYqZzewdxCKjoFTXbHyqXJd80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QJC9xfLf; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-69b514d3cf4so2809776d6.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 15:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715205811; x=1715810611; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AM46cOLXSet9Rq0F91rGPUCQkmIVfDVSp4kTC9rcI4E=;
        b=QJC9xfLfA8UjBtQ176HZUAgTdNPtnY3nY2/FimIC/l+LF1CPd4TLw3l6DKsPBPXhfl
         0EoEb6JPg3jEXgkh75L8xM6S7L+dVVFEgOBuQy7W58eCoaAG690mSJWbdazOw6uH+wWq
         DIkvz7xWq22RXJQKPpQoTiPy86EvjGTftC6z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715205811; x=1715810611;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AM46cOLXSet9Rq0F91rGPUCQkmIVfDVSp4kTC9rcI4E=;
        b=qhyPrDMRQEJSRtFUVgaG6mwx8xMs3jGwzrbbGMRmitprae8z0nGKdMYngrqP+QztSq
         O/pODXX+421iyDg4vXMi8UimIn5eStFXwxtAapJiPNiwXguPZfPVSah4vm6RlerN4D/p
         CNdQmVAX4tpEXiV3E4Ayu8ikFA3cr2vRCygyCYjgFaLP2hh/o5fi6nKf4whrf4CquG+p
         mfHmZst8h88gahkPpHce2r8t9kQ6M0J5xYcd9Cg/zo6ZQLbLVYH+0xmwqn5bA7kFY0ww
         ggZufCqxrHsIHt4gkJnuR5MZwSj0LNQoJUMn2hKNDXhmofCVeg6jlD+Xgxea+BpWbv8v
         1KrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrTnO9zg66p2PnFHcSBYBlNiFesm374eeHHllvYTDx4ka32VClii492ZVdr23dx1XD81VaKqEq/C/4UzrCSqKITVCgZ+ajkHbQFw==
X-Gm-Message-State: AOJu0YzbK6ydMbSkkOr+dU4zgSZ/zMjXZVNODQmX45K0Sc2OKVRQkhSD
	UcaVEE9S09XJLGDB3zEyWdPv5hAwI2kOaBIipnbUz1KWgUbuqfNlWq+ySQyBAUrMhtA2YU0umYD
	L4IezJ8iO3L1c8iD98rmvS2pyDsOt3N7clFsx
X-Google-Smtp-Source: AGHT+IFtdEnnb6GPWGsrQGSqR3mxqnoAoPDmQTaM9KpaMe5nAzfxZdWIF5gQgUS72PNpk2rfQDWe6gtZhnoxeZf4TdQ=
X-Received: by 2002:a05:6214:4111:b0:69b:5576:49e7 with SMTP id
 6a1803df08f44-6a15152804bmr43223496d6.45.1715205811462; Wed, 08 May 2024
 15:03:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 May 2024 18:03:31 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240506150830.23709-5-johan+linaro@kernel.org>
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-5-johan+linaro@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 8 May 2024 18:03:31 -0400
Message-ID: <CAE-0n52P9-jSLmkNcPO9uOWSzogL+QmcpO8AfzeZi558VQvLrQ@mail.gmail.com>
Subject: Re: [PATCH 04/13] mfd: pm8008: mark regmap structures as const
To: Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Mark Brown <broonie@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Johan Hovold (2024-05-06 08:08:21)
> The regmap irq chip structures can be const so mark them as such.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

