Return-Path: <devicetree+bounces-222588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D06C3BAB242
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B819176CD8
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8AA231A32;
	Tue, 30 Sep 2025 03:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LsJWMUon"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AA7212556
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759202145; cv=none; b=paWw7MwFyHEGFAN411LGeH3H3yrO4y2j0QaF+lLVvwZsD23JywwPFOF6L1iqqIp3QDCg8E7AnykQmSCnn5V6+X8VfVCHcrAZFYxI30EXTQBPGMuNW2sXAiLUPHjFNqI6nyn16BlwujOHs6+dTIlSKDvDDyTYqLr74YLe4hlZ/TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759202145; c=relaxed/simple;
	bh=f1mcXd8+Wda58Pe4UjO10xfHJyJf2Mdi7u1iGWV2Tdo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ga/ptsTCI9gvhz8N3o5SSaKZyhPV8RuplsZUw1LjNFQCxY6T73u3ZEVAITbqyYdmqjc9AsZvKmShRkDDSMwLcjMRDrBybSKssUcQYG/PhDap6YPxiqQ2qUSPubApnXtnCE7a42DX+5iZCH4Os5kFxNAAC5gRv7XyqQfAvgM4/2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LsJWMUon; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so5564345b3a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759202142; x=1759806942; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9VNt+2mjTk7M/315hb/0C625yS1/uUIWUcK/eJkk2E=;
        b=LsJWMUonFdrlY5DXY4qhIRAXN3+hhIqRJa+pqPdbaakrbiAqGyC7XndjU0V8HzqQIw
         VqX1Gj2Z7SXpQfkVTetSjIN9dg3wLPDaF8ZepCYl/0ikXm56Lg+6jG4Ki+HopVV+nlk1
         ms7qu9KF6Ztn16jCyyiVC52mgGs7kz4r5obJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759202142; x=1759806942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9VNt+2mjTk7M/315hb/0C625yS1/uUIWUcK/eJkk2E=;
        b=DWgpipv/LpK0xjX9Og/2HqkZneI9r3Vco/qpae2p4EW0GrPaL9FJjP09T0MNK//oeB
         aLZTZ7AkXtfBYFJh6sWBuhvM7HR9hZyYHCA8UI5KjmpcDjO55paoBVAqx4amJgM3mROV
         jUIrmSjLypgjCqwcihbhEoQ4nMD3CBvo5gc6PKVx2LE4ibloqhD+nCC23rz4dgNcTF/S
         qLq5wprjkJC4M2aoUtaygOh37ZY2zrMJHIoRM69kbdRHbmbMEkbwMV8BqFdy2vgpqJtR
         uLkHocJEwtfn4J6kaprUXEsWFALw1ccTKuLhBWVER8c/9CGz95NOthIzLWevLNZD/i8F
         cEUg==
X-Forwarded-Encrypted: i=1; AJvYcCXM1gKrCcV6P44HsW/YkUoQjMZcxjzWxGElJVHbEfeTnf5Jywjk/MuefJ+Db0FjHdMD4FTqfraoXfzd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5qig4QiWaJ7JyKGzzdF6A3ffK+GVErW1y82oJOMx6Ui7P8Ifk
	QqtW/s76UNUF3oh2bi1gLHqR4d/CrNkXOtUg57uN3pwWpL4cWB+23roP1XPSGmSahESets/KXKx
	K1r8=
X-Gm-Gg: ASbGnctQCdjEvfmvu5+3wcuTrOZfyaqkdyduvPkSHKToLz41YRQhntWx2IWal1XgMeL
	G0JTs/BCNVgO0n7pQYSCC6ubOyKHaoHN8w9DrceOKL1heheE92qHN7DdOMlnjRnSgmR9sG7vNHR
	2r6u9eP+tt2eYpIwM950IgOa9yl9J6uvKIbhGoZyvIbnrLlGVZhNp5ZQ/xdAvGDxY4XAe0aKY5C
	iGFbdh3KTrwMcnbxOe4hga643HLL7Z4I6jR7dmNFjZ9p9TP7bFTvb8x/GkIM5bGK5bTk2qDHOWh
	LmYSsp62FDHpMssaewehqjvii7Yl0UCCLlmvQaeTLd9rtNQ2+yj9ltM8w+OpJmWRMe7sH3mlrnb
	WcdPePZg353aq36zT4UOUSbt0vMU+Vgf+4gSp7Tt1zj8kJzSlTSpobHj7DdIydFoKks5nEUflNK
	Kj7K72+DUKao4mlQ==
X-Google-Smtp-Source: AGHT+IFZpvvlbUZ6BzzxDohFvdqQQzryDxxcyZ14ppoxz8DXrCYfvE9SUeukk2/TaQiW2FKAhKGUKQ==
X-Received: by 2002:a05:6a00:c91:b0:781:899:a9 with SMTP id d2e1a72fcca58-7810899027dmr15431317b3a.11.1759202142028;
        Mon, 29 Sep 2025 20:15:42 -0700 (PDT)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm12548721b3a.15.2025.09.29.20.15.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 20:15:41 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27eceb38eb1so65716565ad.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:15:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULQ7GNanuC0aWwePB10ihnLo02zA54dmiPmexl0eZHvPlRgNmNCkRLSwnGAhcT13SIMXTwvaYlH6ib@vger.kernel.org
X-Received: by 2002:a17:903:278e:b0:269:b2a5:8827 with SMTP id
 d9443c01a7336-27ed4a3ebf5mr154705285ad.16.1759202140267; Mon, 29 Sep 2025
 20:15:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-9-clamor95@gmail.com>
In-Reply-To: <20250929142455.24883-9-clamor95@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Sep 2025 20:15:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VO2sXssuhZyz+aKvN22xH5eButHOQgKK+qEkPT3Ug2XQ@mail.gmail.com>
X-Gm-Features: AS18NWC8gI3JaOT7-DFuGJwv3EdaIz2pXOb_FdBFJQHicmbnwrHDBbTXVpKcO4I
Message-ID: <CAD=FV=VO2sXssuhZyz+aKvN22xH5eButHOQgKK+qEkPT3Ug2XQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/8] gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 29, 2025 at 7:25=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:
>
> Add an eDP panel entry for AUO B116XAN02.0 used in Lenovo IdeaPad Yoga 11
> with Tegra 3 SoC.
>
> The raw edid of the panel is:
>
> 00 ff ff ff ff ff ff 00 06 af 5c 20 00 00 00 00
> 00 16 01 04 90 1a 0e 78 02 99 85 95 55 56 92 28
> 22 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 12 1b 56 5a 50 00 19 30 30 20
> 46 00 00 90 10 00 00 18 00 00 00 0f 00 00 00 00
> 00 00 00 00 00 00 00 00 00 20 00 00 00 fe 00 41
> 55 4f 0a 20 20 20 20 20 20 20 20 20 00 00 00 fe
> 00 42 31 31 36 58 41 4e 30 32 2e 30 20 0a 00 f1
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

