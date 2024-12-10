Return-Path: <devicetree+bounces-129370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EBE9EB707
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5814816251C
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 16:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EA792309B9;
	Tue, 10 Dec 2024 16:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P6SpWtgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73A41A76AC
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 16:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733849427; cv=none; b=aAIjV0g2C+ddoGQE+qAW5pSmmDvPLPBbAO8rJoR2Csa1ukeNPOe6eDMU/63OCQFJKjDJvOxASvMo9Y7xiiLagbl+2PTB5GHTMfnQdVTdQsmA6Oe5pdxO0fuU5mHOhlQsc9MMeLICV+3pdmHe29gneqKoz7+YpNX2ZxgIdZr2pRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733849427; c=relaxed/simple;
	bh=HsR6u5GkvXD7ULQKj36Umti20DpL+0zqbiGBiz0zkCI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SutZLSPcj6+d8oipw0HC8lSZVSPYd5/gFTxvlNmT1/w3Pl2rPihrw+Y/3Hh2QJFtoczhh3sEqq20uo5YLD/7oeC7KYyttTaWE1b4my47Dj/tZQ6HgWTb8bLA/LHcXGX7PgslL5DrnfiRfMOpRqALAuj79lpANXbzEYR8HUuleTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P6SpWtgv; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aa692211331so370499766b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 08:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733849424; x=1734454224; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+DqC+MYPAbbx8P8+tjZh10yMabSG3vK45igpyvKpPMU=;
        b=P6SpWtgvXhHKgrUpT+/e4fjpT0O/APs5D5bdJWqnVxZJ6MUrQ/8VvBHtvwwR6ds62t
         JLjImABkpA45cz5Y8mQNsoxanWMXu6xocmp+rX7uYcHi6uryK0tksVWoe5QNBY8lPD2f
         zWuWirUhqHJPBd3FwdAxgOJeTJmstFS0zhN7pgHIzoeZC/p3lPYMKwW1eXS1sXgO8vm7
         j6Ho2Yi20dFXzsI0qxRnQZ2OY3A02eAV1sLImgNy6dWFKEgxAfDFAl63s4ixydIBF5Oj
         cNFkUQK/qTpo6N6FKlMHzmsnXLgefdaS4o+RPQrzAlZ1ChpU9+lI1uFKLEbK/E3z7sEE
         1gjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733849424; x=1734454224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DqC+MYPAbbx8P8+tjZh10yMabSG3vK45igpyvKpPMU=;
        b=E2WY5ISyoEgaxyUQEVyeiK0Dmo59BGTwlHjhqe7xh5HoJ/igv1VqHt6VOYklwXOgIj
         FEv693n5FK1RBunoDwDw2SfvvHhYZXamiSdCj2tgUW91tgbZN18hxzWNeIPuW3Ww6c6M
         M9s19cc+HRfUwldJ7SxAzzu8Tjea/yVAyMgel8cdTqz5Pu7iiAgmwqtxzEGZ9HZtK3Ub
         9nwqLFwKZTaeOnKeTb7rPmG/vzLpzpwRntmimVuf9nS0n2HNItwJXdGvhgTyp3f74w/K
         f8uJJdU9PJ7qibkqlZaKj0RyEgobBY4iAG/K31oLnyZ9PB59wewxU8y3WwggtuVkmVca
         RK1A==
X-Forwarded-Encrypted: i=1; AJvYcCXJdJq3tBjMmIXI7i2lQKO1Y31jrSq6AwT5Nz922MxGiEQjZp/s6+GakbNjakp6yUaYHJaVgug8xm+r@vger.kernel.org
X-Gm-Message-State: AOJu0YywSlWdhowmb3uVgAoIfz9m7VnBRg4HjTeZ8I8FW9IE+URDulLY
	kS6Rhd1TV5FVSp7ktkXwPx5vP9Y+1n4yDg0hgSgyV2qpwK+68m1j48lvFba2e0sLZvy5C0B+WgY
	rtyCLVLq8K5NOgX7ZFAj6NNtpoE4yTNA9ge4dMQ==
X-Gm-Gg: ASbGncvM+np+Hg1MOzzMERdqjNaYtX7RmMaqm+X9/ZwKO0JhUSc6zhpPniKTwLfH7iz
	fzG7VlND+VjMr5H2ycDT6WOY6ItZjPPJVIfw=
X-Google-Smtp-Source: AGHT+IH1qOThi05+FQaxtQVOf1BOtPYsAHF4Eo2G34Soq2l2ruTqO8or8v0sP6hLQ+NYFOkce6I3HslaJ3ZMDDi5J3A=
X-Received: by 2002:a17:906:2182:b0:aa6:54df:6abf with SMTP id
 a640c23a62f3a-aa6a01c0fb4mr427827566b.18.1733849424185; Tue, 10 Dec 2024
 08:50:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210-qcom-video-iris-v8-0-42c5403cb1a3@quicinc.com>
In-Reply-To: <20241210-qcom-video-iris-v8-0-42c5403cb1a3@quicinc.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 10 Dec 2024 17:50:13 +0100
Message-ID: <CAEvtbuviHys9V6Fa7GveUP0mWH4fJf=r_5iLCVh0bbhy8x=H7Q@mail.gmail.com>
Subject: Re: [PATCH v8 00/28] Qualcomm iris video decoder driver
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Jianhua Lu <lujianhua000@gmail.com>, linux-media@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vedang Nagar <quic_vnagar@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hello Dikshita,

On Tue, 10 Dec 2024 at 12:05, Dikshita Agarwal
<quic_dikshita@quicinc.com> wrote:
>
> Note: A harmless onetime error log "Lucid PLL latch failed. Output may
> be unstable!" is seen during bootup.  It doesn't impact any video
> usecase and is currently under discussion.

I also see this coming up on x1e (not surprising, given its basically
SM8550 for this part).
Any chance we can get this fixed? Merging this series and introducing
this error is not very reassuring to use the driver. :-)
Maybe getting the QC clock driver folks involved?

regards
Stefan Schmidt

