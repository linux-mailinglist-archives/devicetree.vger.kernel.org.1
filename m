Return-Path: <devicetree+bounces-206273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAC2B2BE7B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:07:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 464281889A80
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3FF22615;
	Tue, 19 Aug 2025 10:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UnwBBt36"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875FC2135DD
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597956; cv=none; b=uluBCs6oIWgCtPbxCiIQ7Qgdh2R+CJpSod14RckR4Udbx9vF0wl0r6NuGEWoU7FZJCjGsfuQeChDNnYGEcBqGFVlVExJKszEXleD83Y24U3hKfmGOTCAPQ6imaCq86wApq1YHpYlwqqfoGsMavWy1kC/v5AgweBsbPg65zZoj/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597956; c=relaxed/simple;
	bh=fmevPJuzAQEfh9Vfoz9jvKbY+uv3U7ML4Z/zdPtsuCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MvPy3xFmNkTrmu1K6/lvgFkz58AxmxyTIVyScpOltCc9WVCXd+5EXZXcO1o67bWLqCOfXKFcDGKJ8yFLfIEhF8M0Sh46q/QNwJQHY9oFMMaGnWX+2McN0pfBvF/rpW2cakvclJA6pYGFEWhwqjXvx/En577gi7GipTcMgNSD71Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UnwBBt36; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-333f92cb94eso39610201fa.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755597952; x=1756202752; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmevPJuzAQEfh9Vfoz9jvKbY+uv3U7ML4Z/zdPtsuCY=;
        b=UnwBBt36ZzYScRp7e11N7SKT83v5R5mUD7hOSLOBVbvLxWN7OioYvLYez+AHjFqtC+
         VhvcIBVEdx/aafuZgwcyYmYeFqkZNOzAOL+l1zG28L2+JGX48+hbgzEVFklOkrsVFSFA
         7kGPkV2pPjMqlwGnLcdCB3xhWacKezgHz0TESJ150LBRFLB0iWPgXHoXI7YZHRA76mRa
         lsZx6cqxq1NmfBGDgN4D9EEVN/sCP4CSVn2XV7HB4/OcbWLSGX8OIX9di3mHeYsAIaue
         nL9wDl37scbVCsDzfo7Lvr6hX6qNNereNRQEb0BxvQZPFlW7a8TT+v4vzSQ1Y8B/dOOL
         PE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597952; x=1756202752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fmevPJuzAQEfh9Vfoz9jvKbY+uv3U7ML4Z/zdPtsuCY=;
        b=HHBIT2MeQw602Y8Tc8TGeBGQPTE7dNoD0VZwC/MDisukpBf1ZA7CjZRAyzXpM7ihyF
         6GA5InA06EXZhKg8xq449vSDKLLxJ+/NMjcXPpWwobtxNc1eI7Fupdwh75577tnonP6Q
         BuxkkFytvK0Q5rPnaxywrF0Vana9GEJXVmQpYXD+xPZR40LfEMdZa03i9aG9vrXKOvf4
         YeU2hMm28ZwDGfR0wdnNz0V+O2QPdYAL0xO3hsnmX/0SJJyku3ePVQYTqNgT4YhxcYF9
         bivp6fT5pabnd7/E/LyqEBY7QL4B9QG61k4ZR7rR1k41p8BTFmbKLAOl36S/bbvqfOrp
         E8Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUvVrmjBJybRjqwGkWAuaR8r9xdNwaBQjvDdqh48MA7NJ+PxnLl7ACgbY+kJNTAI2xIepQa9G3ljoL3@vger.kernel.org
X-Gm-Message-State: AOJu0YzcVWq9bs5z13A5uB9KuVKJWS9k1LuLeTQ5lz8SzAF0E92HqjJw
	Sg3j7mmOrXIRQ71KouKnGzlIoCUGEocPN0M2BWy0B0hrTye1evz4lXDUAUUnMpN8/f/dmfb8bcX
	ajAFAauk2u94DqclsznYoc6RDg4TZGeIF6hizcfJNep1AviL7lTBBcW4=
X-Gm-Gg: ASbGncvE0zQj3JnshkWDyZ8FPAV6E4CvmrZhp2hLlfkmpYt3l+dzL+hC9aZ5cvqXeom
	zobMeH0LP4KWTqDa3nXY13qEWSlk7ZkDJkomh25ljsu4koLJ0w12JEJA/720PA5eI4AazN2zsLv
	EGE8PydVM6zr0DqBkvVa3WZh6TJRdMW8hDhz0ojZdONwc4A3yQ7xVFEeJZk3f3mNqtIpj8QM4TT
	CV0zbefzQBh
X-Google-Smtp-Source: AGHT+IH8Ywy6QSFNQrvMFIhOqJl9NzQkU24rJxBfbjgtO+LyNYl+wrL8ALdkmABTyTYg+Fzy2PCJ15fLq6pB7xmbNNk=
X-Received: by 2002:a05:651c:1107:20b0:32a:7d76:262e with SMTP id
 38308e7fff4ca-335305348c2mr3828141fa.3.1755597952457; Tue, 19 Aug 2025
 03:05:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250811183711.8980-1-wsa+renesas@sang-engineering.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 12:05:40 +0200
X-Gm-Features: Ac12FXzYVYJtSbcKCZlu97zMX-yVdkps4sEMp4LqhVyztQAdSGb-Vpac3W8oRbM
Message-ID: <CACRpkdbbHY=yXFtD7T=K=kn0MAdy7c2xqL6=ZJWy10EMuuCL6Q@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/2] ARM: dts: use recent scl/sda gpio bindings
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2025 at 8:37=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:

> Some ARM boards still use the deprecated 'gpios' property to describe a
> GPIO based I2C bus. Let them use the proper '{scl|sda}-gpios' property.
>
> Based on 6.17-rc1. No dependencies. These patches are the leftovers from
> the series for the 6.16 cycle. Please apply.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I think you need to send a PR to linux-soc to get this merged but
maybe the DT people want to queue it?

Yours,
Linus Walleij

