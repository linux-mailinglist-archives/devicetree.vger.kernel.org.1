Return-Path: <devicetree+bounces-65872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F52C8C0715
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 00:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAA12B20E45
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 22:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C737132C37;
	Wed,  8 May 2024 22:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ffkh6TDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8318130E4B
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715205865; cv=none; b=ltZ/1eechDY0A2QnzJc+uZ3vo82iY9tQHgp77dayj1LvUZRoQF08D67zX3+wggMwoXlPqmvw8UcyZ7pIyQ80x5A+Gwg8XedKif1HRToMNFA0COQyHI83kFkqVN7RGbR9cLGvW8hrw54mCw599jvEEsjB2kmCNUsPqBW1mY/Wt1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715205865; c=relaxed/simple;
	bh=qhiu1ZoqjVzMKdpVSz+tH1AGO0ixzx1LZClfO6+1N8k=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KQ8MmMwrBa+Dzsg/8iu4D47BhLWBXRctVQY32iWAaBsEPPN7NA5wPbDjCffMrigaREfLhHOU5LAJBHXhuHnZo3nzM7osDIv5EcMzfFnkr4qvpBy6GOcqlXmHLrVAQK4rkj1zgLlKt2SYDcvDC8Uk3zsraNIyyGUWZeW+E3XUvt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ffkh6TDt; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc236729a2bso294906276.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 15:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715205863; x=1715810663; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhiu1ZoqjVzMKdpVSz+tH1AGO0ixzx1LZClfO6+1N8k=;
        b=Ffkh6TDtNJxRiQzhkKqFgYKMDl8LaG1wF37URp2c9pcjhUftVdYOrwUxlosojIdCnW
         kfIm7Yez4o16DZTSjyObrs94dOfdm8gRKZmCR5xgjm97lH7a6fHKjZHQ0QwiPo+buL7+
         KWMOQwUgYEGXUtsMEUg0sxoveOELRlrxrT0Jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715205863; x=1715810663;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qhiu1ZoqjVzMKdpVSz+tH1AGO0ixzx1LZClfO6+1N8k=;
        b=izfwN1LR27DPQpXh7rM1ouXh5JQa+tk8L236Ovjcv5KKcrEVvU6yCT9DXgbLFBZQ9r
         cK/VO2AUNxxfzyxzpxoDf4MlghgNPIXXDvuHV5ZL584hIiigt9goQWs+PeWTcgGbbFX+
         ZMy5pVBxhZdQhy+2e4c76qPFmQw1EIfXh+lXpwtfxuhBTaPtZWkYMNv61DChZRnYI/Eb
         I8ExJxTIDsaYIuoPMPhoLmVyELiWRRq4+HnPy2YAj5J18S6PLmM4Zp5Hb37BJeNGu8I1
         2ObQKMAvwCB1PUfkSvsaWL9+TKbJqGYmrGWQtyh9BvY3ul+l8MbkQuhWWMlYyG8rt1II
         3RZA==
X-Forwarded-Encrypted: i=1; AJvYcCWRsnL6HdfQoqcNCstKEkiH+OH9+WelV8OhF2cIhR4kou2p0T636VpNLX7NHJGSfMa5G3FvH30SlDVLhYaYhevJqIs5vZ88xlF0dg==
X-Gm-Message-State: AOJu0YxYmG18MXLuU5pMpsoz3C/o2oYqsVHZGEzuJcFJ44H9//lIvR4T
	lV7iuMcTQnalo2mTTpP+3vv3c950oKI6cMuF9ymtG36Jyl+7y63pq+0ekXMqA8hncwxZa67oviz
	oWSScgS04dPUWk3ANLPDKD0OqK2NqsFgNpX3M
X-Google-Smtp-Source: AGHT+IGNx5y2BY9D4mJMH83J8PD0rFPl4R1+a2ILIuqwXXx76mZzGSaEjAzEBuASx0Sxf34guJveW0UaaWBsvsBJ1t0=
X-Received: by 2002:a25:3041:0:b0:dd1:7128:617b with SMTP id
 3f1490d57ef6-debb9dba556mr3866366276.38.1715205863085; Wed, 08 May 2024
 15:04:23 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 May 2024 15:04:22 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240506150830.23709-7-johan+linaro@kernel.org>
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-7-johan+linaro@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 8 May 2024 15:04:22 -0700
Message-ID: <CAE-0n51B+czEMznAqrwzGyUpK0960q-HZDVqTUprvRwwnXuerA@mail.gmail.com>
Subject: Re: [PATCH 06/13] mfd: pm8008: rename irq chip
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

Quoting Johan Hovold (2024-05-06 08:08:23)
> Drop the redundant "irq" suffix from the irq chip name.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

