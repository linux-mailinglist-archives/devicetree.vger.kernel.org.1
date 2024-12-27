Return-Path: <devicetree+bounces-134396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 497639FD5DB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E90E83A24F3
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B211F75AA;
	Fri, 27 Dec 2024 16:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xDGXbqEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9208B1F7580
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735315967; cv=none; b=AwG0SiW5yDP9xX7yHSHPIrbX0YyXYPwJDww9P99i7pHKkWC5tE3JNYejH2AIVNnj3sXqE40/XnJzG7J5NQeq3upHS8sfpp33TdtKumBEgn1KD1WUNknDeB//fkZ1Q4jMqJo+hNB6NofyXzdjryUNeJY85WsM2K7IR+H92X20q4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735315967; c=relaxed/simple;
	bh=AzQXlCMvZYlcQ30sew66mc3WfiRkkiYzr+TVO3BNZ2g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XSwKsv8gbBZku2GqNPF2WC303WhqVooIOLllVyQpyJeFu3N99hgie6G+Y6SGB25nj5Ecd/9mgI52TU1kMusi72rn0Dqgl37Oa/FLVTwK9ROM+Re0LJ0l+n/nZFrreyV/zyDmfKIJjS32rDDvElJfNSzQRgFZEqCecAQAVKZyx8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xDGXbqEk; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53e3a90336eso8175821e87.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735315964; x=1735920764; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AzQXlCMvZYlcQ30sew66mc3WfiRkkiYzr+TVO3BNZ2g=;
        b=xDGXbqEklAmj34eGq/NH9xhe/emljlOtIp0X3NzCGgYRE+aUMXJ5bFsPCoYKk4NwnV
         UW9Zeamsfir1QyXEH08dsJkhYbfrtkUNVb/F2AgQ+TLB01M/LofdFUGVTvbMZ9WLaYzx
         EwMv/IEoelIvrozyYbQktW8U0NhAUVraQ3x8kiqIWJoL1Mzcun7rq6u9gxWctgjDZly7
         wloiElmqW9/BY6+Rh2Iet5ckONSS7Eu6dlpL7mHN+eQKIMmpDNPVXG5SH1ZvuwMCv+Vn
         5qmHjGHBN/pp7KeXqEcWukSoeGhagjY/Ig+tXvQah7E8wYurcrV/g2c98LKw64CidSH8
         REGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735315964; x=1735920764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AzQXlCMvZYlcQ30sew66mc3WfiRkkiYzr+TVO3BNZ2g=;
        b=hB/fO4802gfKEzWrpAR0lb9nLR0AT0Mtd3QqRMcND1jB7yB5l/u1NBI7QuMAtGVk4s
         jP1aFek3cmyaOnMcUy0rlM7L1B9iESjGxruv+husuApCBrq8MpsHx2VMfQJU0anj/Z8t
         /1R/0vljvR9ErNH6cL9+dJBIuNzX9j3pSPruVXabef0zMWJvVE+A9TvVCYDaBqFGZSod
         RAaddCqZCcRVX/29XfOthuRbaLVsuxyDipoS0E/zPJWACtw2RXzXMsLUR9yIM+9WmUGs
         AtGPx+8F2NmCLLHL43mPbacmPQv5dxs+SS1rz9MYooix3eVQ9OzwvzgM3Nr5mUe0euEb
         6SZg==
X-Forwarded-Encrypted: i=1; AJvYcCWnpPjgoVrbrzAJrzODY0P2sz3FVzhlhtFFRfaE3yvLZ2CR+hPQUiOSfrflSsphj4eVXVFP683SXpR9@vger.kernel.org
X-Gm-Message-State: AOJu0YwrSvjYbgyiWQ4nIf0ZY4LZJAKrfGOgKF/Os8zZAYooFc3bEXRN
	DsAyjMgN0Udd6RtZZ+pXY160bRluMVNeVv8wPp8wgUaC3evjzIjINpWpZnmHP0AqzaiLHoTWeUA
	DLOo6gzT9zC3dvtIC4hRbwTX7L12nmBVNQYOccg==
X-Gm-Gg: ASbGncvbD2RE4iNBOswPl+3aqMJuHTaXZLr5LlBCc31gcBA4zNrxl4m+45/uXhDbwnV
	bOj1KrJwpmmakzlJjAi+nZsybCuEzzXILcufS
X-Google-Smtp-Source: AGHT+IGgqvSjw8IZLAtptQ+kYNS2mbGIGCLpPSBtwwKp1RNQR/Kv68IFbhALSIDwerif7lmhhOtRxJcClxaw78xFeNU=
X-Received: by 2002:a05:6512:1592:b0:540:75d3:959e with SMTP id
 2adb3069b0e04-54229524793mr7805320e87.5.1735315963490; Fri, 27 Dec 2024
 08:12:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093620.3815705-1-kever.yang@rock-chips.com>
In-Reply-To: <20241224093620.3815705-1-kever.yang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:12:32 +0100
Message-ID: <CACRpkdYnV_M0EyQXpohMdGrxXq6aupppbPsMaq8cZDFhONCgVw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: rockchip: add rk3562 support
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 10:36=E2=80=AFAM Kever Yang <kever.yang@rock-chips.=
com> wrote:

> From: Steven Liu <steven.liu@rock-chips.com>
>
> Add support for the 5 GPIO banks in the rk3562.
>
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Patch applied.

Yours,
Linus Walleij

