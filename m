Return-Path: <devicetree+bounces-39411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FA484C903
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:54:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2435C1F26A02
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6504171B4;
	Wed,  7 Feb 2024 10:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDO9i16d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47A117BC5
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 10:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707303294; cv=none; b=cK2VulwMnoX5TTsDv8QHv10Rjjio6cCX2QbyVOq6ptlNmpe4tMKl0ELtzXA1AYa3lBpQPRgQUARWY3dX1OcO+saMUugTyrP+5U51o1TqKsJKxaAZNAEyiRH9shklIV7OVwW5aGCjrveN/EbNJqZZFNIlhRploSP8cnS5Hy+MMvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707303294; c=relaxed/simple;
	bh=AqRyfre6hpYKrbdFfgct1DMOhUQC1J51jmJyfuq2n8I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r4TdH1+C7aYHeFOnlVKVa3MhU3y3hVpl8VWKzILovm4o8WROGElvpscKqfiars+cd1Z9zDXmvdIgwZSqwldxpY3LatNV7bgBLboZ0jMo6CKbYTeQrSy4y9rIHc740EENxwc8QqG70Lc29UaZeM8DRDo4ypr5yz0yjxz/ynUBiwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDO9i16d; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc6d8f19ab3so462990276.3
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 02:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707303292; x=1707908092; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqRyfre6hpYKrbdFfgct1DMOhUQC1J51jmJyfuq2n8I=;
        b=HDO9i16dkADSVvq6bn0Sbo+lrGoZqVgEmDyNnddeI8nc1hnZq+Ja3AMz9KQ3uYYhLz
         /dccogs4m04hXV8h8p3iFRjmnsa5oOrDLB7agajpybVu09VFCRMSyGM5GEzQAz4jkTEa
         X3Xn8Wu7VTXOR+alvwQIax07jdzy/X8V3P/4U9aoIQtQafuPuqtviS2tHCs8dTP4MCaD
         0BlbgxAiNQYneX9QIZqfqVoVNV1aVZYGWgO1zIV8s5aoXVjGqJrhrzaXYnRgKY2xIN8/
         fOrvWwnvq9iDaWDiPfqqjPR6e/CWaSymQpokA6dJcZqFEjHkdip85CsKVqK/BVgO10nX
         2GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707303292; x=1707908092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqRyfre6hpYKrbdFfgct1DMOhUQC1J51jmJyfuq2n8I=;
        b=lVyl0rVrWNdb0mgxrmere2lwZ5HttzorqwglErGRwM4W1msA73iZKHNBJNpevHc2mT
         s4PUz+qXNt4UF8u9fNcLNijYZDbw8pEK1Xd4sDFjgLGnYrgNKD3xv0Z9vVNMYpy+LWWj
         hwcCl9SYYrzMEblvaO8luwUww+VAS8AOvPoGsCU1WhlGqNPAIzBFNy1PseIA60OAy6Qj
         yC2hQIXQrvDqFf1/7wmxg56hzMVEtTDNaa4d2k9WpiNA1jYNV4kz49BC4DJ3q7RNjgMB
         Y7rNTjy/fD0B+t8r8V8pjW+gsaRcYmfwxyy/bvFSaykgG2RicnZzfbAVT9/My5DmxG2a
         mrcA==
X-Gm-Message-State: AOJu0YyTsvlUjGr4pC7Y+SpF9tydIZ8f3dtO1lvWqc1BeCRlwodyl1U9
	AzC1eTv7Q6toao00lmoaA6LmToXrvjiG4NDrNS+d+BUTo+2kwE7gRFqBujKP+BJ8embQjAv6Tzm
	PTMxW8YADbJzPjSV+RYkNZYYci2mfcAhTLcFwzQ==
X-Google-Smtp-Source: AGHT+IGDflkHEVBa03b1Bfl72mpon3cdcyEI04qMZquBPzXoVaoldzCLxrdhfuAGz48oB/DXRZc65MMbqgc8o/+1+XU=
X-Received: by 2002:a25:2d14:0:b0:dc2:3818:f36e with SMTP id
 t20-20020a252d14000000b00dc23818f36emr4815404ybt.18.1707303291509; Wed, 07
 Feb 2024 02:54:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202223454.1667383-1-robh@kernel.org>
In-Reply-To: <20240202223454.1667383-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 7 Feb 2024 11:55:04 +0100
Message-ID: <CACRpkdb+Z8oxBa7kibHdob1qk1eVKiSm1MaY+bF442d=ztdmdA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: nvidia,tegra234-pinmux: Restructure
 common schema
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 11:35=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> The structure of the NVIDIA Tegra234 common pinmux schema doesn't work
> for restricting properties because a child node schema can't be extended
> with additional properties from another schema defining the same child
> node. The 2 child node schemas are evaluated independently as the
> schemas are not recursively combined in any way.
>
> As the common schema is almost all the child node schema anyways, just
> remove the parent node from the common schema. Then add 'reg' and adjust
> the $ref's in the users of the common schema.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

