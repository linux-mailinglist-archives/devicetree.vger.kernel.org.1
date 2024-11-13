Return-Path: <devicetree+bounces-121345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF599C6888
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 06:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B50F01F23CB0
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 05:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C2416EB55;
	Wed, 13 Nov 2024 05:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="exI69GoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D064315A858
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731474928; cv=none; b=RbPPD+bHKeAxWE2U++VHyxq0uHo75AZpn3ATUZSwhkQFWvfuoT2P9vKAVLEaSv+cIHMGIM+hqUIQtmDY1YKw8+zl5+cMtCzWkrHDNpX6zgBGMMHMAuBWrjf9WNyr7ErYrphqLtrWEPtnzry2Ze6IQwUU0ygI0rLBHycg8bOezRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731474928; c=relaxed/simple;
	bh=wy4+P1aE6KL1b95G5rkLedo4vTwPHTtj+ixFC+cglbA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nUb0P+SCSWgAVNCl+KbTLnuqkfCVMviZF67FevEEQDyDgXzrgRP00NF2Z3jSNLpHrqsjYp2+RlbgJ2eEkWSabM9RwbOL6yHk92nkoayZdEWns60CUAYeaHdhgVaAULiGDroBk8qUq53pQhSvbUSRoPTjfz6ZOmHFRZaPuHzACpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=exI69GoT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-382026ba43eso1787560f8f.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 21:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731474925; x=1732079725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPN2+ClNY4OUgw2QDwMQ8s5sPEe8deCfdS3jRkvBbD4=;
        b=exI69GoTzmrMNfoy9Jr/TIKrkkqMFdSSbTI5sFKmDpaAkN1Z+ad57ur55EhiPbTPZY
         dIZDqB+8F0Ipy+gthO6uYj8dmgPWX9z/jabrDNefeqSkhOE6tGTznQmlwiaEc/kdDerD
         +91LaiBJud9K1uJ8TqnWfiUa/jS7T2uifdRWYrb+JZ6HAsscBNajKOIT3YIF8ztNu3j4
         554QUNX0SWksQg7UBTAnrT8xroAjLzaVgs4GkrvVawN5lnPLEkzwb0ipuG1ZoQkpFCD/
         9rpRVhZXDSyyIIQgh2mURkNThtYF7gn9KtbOnOfqlsJjqYZyT89ODKqotvxoDUOpRNiQ
         f9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731474925; x=1732079725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPN2+ClNY4OUgw2QDwMQ8s5sPEe8deCfdS3jRkvBbD4=;
        b=kvBJj2+ocd1yupMyTXHJEwst9BAp3kamTz+iUQclv1M0eEfGqhgFXffKL2jtjzAyUI
         dIkvl8iWrfw5gf/e990XCZqZPJLsk9TzzRFrl0tGCREoMJtgf3fyEE1wWhYjFf9w2Qo1
         5HxrAJZoETqyRphy0/MKMWAlbw1NCAirSBE9vJ1X/HvqFI+iYLNQIzECFTe3NlPaXQwt
         0MhKza+S3gP7C9CLlCO8LFOa+1KVqpxUz7GuPhY/lwj3g6zodvsOcZhtFmv7Js5PO4iJ
         yIA97fSGch9Zmjqo++S2WcX80wdAutG1LtfGW7n2TAlRvrsVYrqX9qww1N5syndsRRWk
         bfeA==
X-Forwarded-Encrypted: i=1; AJvYcCUNwX7wUljizW7/zgzUucp0pkpJeW6rVV6zENXP/eGL+2spdz+UBFrog3LpRk188ZqYuGpVaSQx2nDh@vger.kernel.org
X-Gm-Message-State: AOJu0YwVOOREreZH5unlNh01ckLpuOPos3o+2IFeJzjHBpq4VuE+H/YT
	Jnzjh0NMmgxGOTWH7tcfdJOCFBH8WYSK1PGZ1MoaPxHvxNSxKqy7aWd6FSNerfG202lK61DEF9G
	2YAKiRk6dTjJKWjuSuj1OLsv02PI=
X-Google-Smtp-Source: AGHT+IE/zP4IJkvYGPVEb9b5NDmorppeghk3nUxzyj+9tdFlYYh5tXWjzAQV8KoaAiUa27cl7EKOb4TrrKEDwmr4/q4=
X-Received: by 2002:a05:6000:1ac6:b0:377:6073:48df with SMTP id
 ffacd0b85a97d-3820834b240mr3709033f8f.58.1731474924898; Tue, 12 Nov 2024
 21:15:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-5-honyuenkwun@gmail.com>
 <173135828350.1935626.3279818343954125790.robh@kernel.org>
In-Reply-To: <173135828350.1935626.3279818343954125790.robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 12 Nov 2024 23:15:14 -0600
Message-ID: <CALWfF7+KdqZT-FRzjAoXD5b1CXLWu-tk4FnSqeRRfuoBWvLzbA@mail.gmail.com>
Subject: Re: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi
 5 Max
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 11, 2024 at 2:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Sun, 10 Nov 2024 22:53:25 -0600, Jimmy Hon wrote:
> > Add devicetree binding for the Xunlong Orange Pi 5 Max board.
> >
> > The Orange Pi 5 Max is a single board computer powered by the Rockchip
> > RK3588 similar to the Orange Pi 5 Plus.
> >
> > Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.
This v3 version is now sharing a base dtsi with the Orange Pi 5 Plus.
So it's not a separate entry in the dt-bindings like it was in v2.

I'm eager to hear from the Orange Pi 5 Plus maintainer if this
approach is good, or if the boards are considered two divergent and
trying to share a dtsi is going to cause more headaches when enabling
features that are unique to the Orange Pi 5 Plus.

In this case, it's not as similar as the NanoPi R6C vs R6S or the
Orange Pi 5 vs Pi 5B.

So if we decide to use the common approach, I can use Conor's Ack. But
if we decide to use the separate approach, I can use your Ack from v2.

>
> Missing tags:
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
>
>

Jimmy

