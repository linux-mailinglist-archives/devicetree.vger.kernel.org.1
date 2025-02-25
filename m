Return-Path: <devicetree+bounces-151053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F43DA44464
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:29:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 758113BCD2A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606F226BDAE;
	Tue, 25 Feb 2025 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMYlqlDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F3A26BDA5
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497312; cv=none; b=NPZyMOR4UPOltSEqjcDh3ZxY3K+ldGZFXnDTEyndX4lDt0BTLtBB+M6U9mqr+mq6b6SJsL+wz9Gld/Y3DxiqvAKXM86GccsCeOnCUpR7fopzj1QS2V6WgRXFMjPdCwmmh9fCGPRq63sFGawduLamagb1AV56U469G1Ba3Zm2lIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497312; c=relaxed/simple;
	bh=rSEl3QGwsciK3DZesh967er1Ic9Jq5iFZZ00R3tL8wc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k1Z2a6plEux4haFlmOj+afAiK9XEVllsI5rV3mpl6JJrvUXm3OXe4RcyXQrRQPLsY0NXNPavSeC+Ned6x0Yhw5O5A1Nu6eeFLMWZk8IB6loiFdqj2SiataVvWTNnriJyEYJ4LYwzKedG3//QN8OjjwJJm5a3r65skekd7jpKMOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMYlqlDh; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30761be8fa8so62290151fa.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497309; x=1741102109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rSEl3QGwsciK3DZesh967er1Ic9Jq5iFZZ00R3tL8wc=;
        b=DMYlqlDh2WyxTfxyDyYTUfYNUfTLyGIJqFNeFefPtHKUrGzMPMwjki4a3UTnMDQG3A
         nD6sf3V6xWbYEoElXjZQ07t+VVBCXcKIQ3JtudqhfGfbRnAL4d9iBOHpqvwccS33QdMX
         SqZnk26Jy2vIEFF/mjoCOu4/RoW2JV7VbtoCUDjRPBZb9aRzYaGRVGe4jmONRhzZfeik
         P8rYCskQ9aLbpZL++TCghLGUhAxZfcURWCi3CRm0vT2/61l6IVK2ZFojKadipYu/X4zE
         1QRQs66Dh8FyzuqVVKt9Qjw8SAjGJVka12rCCQV7VA3i+xMpdDzr6FbyNx6oP7aZyflc
         pQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497309; x=1741102109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rSEl3QGwsciK3DZesh967er1Ic9Jq5iFZZ00R3tL8wc=;
        b=BBahkd5RX2pG0yLiZpSzGacUTQdpZ0BNZXT04YCwjpOuXrb3YfX27ajfD6KnyLpT+m
         8WaOnVNzY9c+3xUDGOm85l6NmcTi+ANR3h/iYKQKoc0YysQfS79NVOYuGfY8xBZFXX/T
         aNS7FjVph2ZAJ7lGmfJHT0K990JHRitVNSXXdW+S5Z4QVoiEQq693ynNUXtHo7smu4mK
         Chvw6LyLQBD1EbaRd+RsyJfLUiGA2k+x0jK6k80zj6m5kceM/eEmDbtvEiV76b2OqwXU
         X4DZ15sjkB4KNPZ00UJCmp7YFHSsPc5Aaz4j4sT4cvEv0QlPPLWPWCxFpoCdxu0tyBYx
         8UFg==
X-Gm-Message-State: AOJu0YxgpjxApaqUf2WmFQYec/anY3zJVTjgLo8+elvydjOejAKQ+vxA
	6lscQGDSx4qPF+wxEuO8u9UU6Y7Z53AJ57gVO6+N/cTsyUHT9VbijYY9DqjeqBd4RLYVpJ1yVAE
	QHLcQHQ9+ok+5BGFQKvMPHsxq/Y72PAJgDxOsQQ==
X-Gm-Gg: ASbGnctrSgvaRlm9FQ5ISmT9Mz2Mlf70xG3oyB3pFiPh66vI09BkojH14Ows3wMwxhY
	Wwiyxruemm3cODGqVWVjX5LigxYu22VUmUHBjYmX6R3KwbUyRGp9GtlT4XbJGkxVdXY3cmbaaeI
	eHPt66NQ8=
X-Google-Smtp-Source: AGHT+IGhBcI3R96Ygjl+ia9NcJw/ZFQLjv7p2n56sPt5viyPNoWWS80PuvTaUtF7NwD5c1yT/18+krfoAge6OiTuJt4=
X-Received: by 2002:a2e:b38c:0:b0:2ff:e7c3:9e2e with SMTP id
 38308e7fff4ca-30a80c16470mr16634731fa.17.1740497308697; Tue, 25 Feb 2025
 07:28:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-6-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-6-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:28:17 +0100
X-Gm-Features: AWEUYZm9-GSXUNrjqwaX5LIfxqSFIktvtYAfGG9Wtd97LclpY3yNzhXHmiBivzk
Message-ID: <CACRpkdYX3Ad4PDDwFV-9FG5KgB_55JmiRMuCetVAAhmw38NBHg@mail.gmail.com>
Subject: Re: [PATCH v7 05/10] dt-bindings: arm-pmu: Add support for ARM
 Rainier PMU
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add support for the ARM Rainier CPU core PMU.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

