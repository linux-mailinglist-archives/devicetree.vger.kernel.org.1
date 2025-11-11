Return-Path: <devicetree+bounces-237110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7EFC4D01A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CBF6422AF1
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1016E290DBB;
	Tue, 11 Nov 2025 10:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MwJe5B6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0E52F7ADD
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856041; cv=none; b=aPL5cxf5Jo/7rEp4Gpzwt93n66OiopU8Lv5FxKrMtVAp0wR84lE08HcAe4I5ZVfSXa88AhOiyJF1QZPRMMnl5DdXl248FsmgTvrfzbMYat8d45zwXW2KruKjOApGGM/B+Q9rWbKk8nC67zHaOBCe/cPhj2S3k0GaV9ddB5yPzCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856041; c=relaxed/simple;
	bh=LeMwXNllT4LhHLeKTaFba9eFWNp9e0Refct3JU/EgW0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G+hXBbbVUbiO5tWlbnvFjJbdMT/arRkUwKyKk/beBlAcY75S7dFEq+31P5onqygBy8THOKijB68cj0IpHUCUk0dgJXcYApKKa2EHeAenEVq2QPJ3utq9KMwlUPXUDQweRBJ1cmbAld9FeYfaI3EfPMq7w/jObwanysannHKo7XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MwJe5B6Z; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-787da30c53dso24203877b3.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762856038; x=1763460838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LeMwXNllT4LhHLeKTaFba9eFWNp9e0Refct3JU/EgW0=;
        b=MwJe5B6Z3IGeLMOqgsNvZFEjNRHUlq982uY7NL9wNNhyAt3zn8VRJep2I/v8PObOIT
         8SwgHtTAiF6FSzh0YnA+HKuE2gnse+20y3qY1qmrkZ0Dla/+dKdVMqxpPQo8vBl65pl7
         ZdxpZtX5sorSF6912jDSaSa/URTCIKwXJRTa4L1wMdev03/GmOlJkPLiUkKuIWGIQCgu
         MI0O45RTPgla75V31QzMzwznVdkWxWmm/7d3qW/olHsUA6s3rfRuGwzmRmIsuhPINaHb
         ZO8B3XOZgcm9zSRetSfGEx8UTqkQrk/33fumhD1XtHspiwQi/PQuraNStDSVzry3x3IZ
         Wk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762856038; x=1763460838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LeMwXNllT4LhHLeKTaFba9eFWNp9e0Refct3JU/EgW0=;
        b=CJHG3TXDqsPr6ppQhYSwvwVcXGkDTg5KcW5hsa1AfHzpJx/mLwjc8zdMslGmRslt7J
         v2BRLOitbCMlxkFS9k7y5asCBeXiwvK9JS9lAns0mwDIqjHO/6osnDPbFYU74DDCmEUX
         o7NWE7WbV0gDuW799t97sYLphaVZUGiF29EkKCNfCEhUhQmSxVioryArSrVB9uy7haT/
         NpRg79I/9Cbgkdaqs6s0zq0H+l+Q8NCdUv3AIP6LBu0z02HbF8ArbwiJCLSjNK9FnDv2
         BghQ7dJvRDvCZQSX+sfaMD6oXU+HlUrT5Z6zw1ody/IQG35+PIJN1juMyA0uqEK0Cb6R
         oIUg==
X-Forwarded-Encrypted: i=1; AJvYcCUXyQV41RMsWCRuHqVhLZphw9imUvaey8LZuJN+XTZxzOlwx9BiHfbUlKTaQyuiFTa7R8W3juKJNvn5@vger.kernel.org
X-Gm-Message-State: AOJu0YwnkhSHxNhO9whV32Wx8G93Y3SWByyS1XRnlALpDJZ1XWGgUxWb
	cnCsdyAGxasc/r1qtdHEe1CMtWUbt3sX2LtjOmVrIWEYbGSx253ZjC63rZzwUPEWDcrJYmr1fZI
	HqDQb9u+zkPFxmNWwrVFbqf5727TVgoorjI2u3HNSZA==
X-Gm-Gg: ASbGncvYMuHf1bk/jteKHOPZHddi0phciBNUioTQrpRafsF7O8YsF16rMwJ4Femz5Q5
	n3A6TdAThokyYFq8YUoJMu4HJ8dwhd/3+0MDuRo/BcccVncrqOTJoA1wj5kMh7WIAM9R/ij7JiL
	gh9D8xa8wx42Be30lH6rFD/qyGLmZLZcPxLKtLH0aQBzqMl1Zu66EUxDk0IYVWsdXMIDP/pG9zr
	L+SGnPxi6qO3h8FonYpsJ5c3RlkbToYanKTMS4WSWKHj2Sp2gvx78/a/889dU31RDpA/fg=
X-Google-Smtp-Source: AGHT+IF9Qzu6zmE2Iio8Nz23xz7uKZaMMjTrJFnhpC9W7T174pmVZm6XJJz8JqOAQn21MLhQ4SKvuQGEPKenwCujUTM=
X-Received: by 2002:a05:690e:dc4:b0:640:db91:33d4 with SMTP id
 956f58d0204a3-640db915617mr7528496d50.26.1762856038239; Tue, 11 Nov 2025
 02:13:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105195007.199229-1-linux@fw-web.de> <20251105195007.199229-2-linux@fw-web.de>
 <5DB7D99D-A30D-42A1-8E3E-B0204A1E6E6D@public-files.de> <1af7077b-42a3-4efe-a8cb-6117136c8f2a@collabora.com>
 <20251106-strewn-carport-a33a8b812794@spud>
In-Reply-To: <20251106-strewn-carport-a33a8b812794@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Nov 2025 11:13:43 +0100
X-Gm-Features: AWmQ_blovY8iar-yYYC_DuviA6U5c_hbl8gXmu0oONH393Qf8f6FhAsUxk1NsNQ
Message-ID: <CACRpkdYbcc_0=qwZgLhpTi1NNjkQ88JuOANqTqTfwMrUs_+OfQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: pinctrl: mt7988: allow gpio-hogs
To: Conor Dooley <conor@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, frank-w@public-files.de, 
	Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@mediatek.com>, 
	Daniel Golle <daniel@makrotopia.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	AngeloGioacchino Del Regno <angelogiocchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 6, 2025 at 6:43=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:

> > > Got error:
> > > said: 550 5.1.1 User does not exist -
> > > <angelogiocchino.delregno@collabora.com> (in reply to RCPT TO command=
)
> > >
> > > maybe this can be fixed while applying?
> > >
> > > regards Frank
> >
> > Eh, have I typoed my own name?
> >
> > So cool. Lol
> >
> > Just in case it's needed:
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
>
> I have a vim macro to a) save my hands typing lots of tags b) make sure
> I don't typo. ;)

Typos happen. Also for me.

A good idea is when you change mail address try to negotiate something
simpler, this is one of the reasons a lot of maintainers have simple
mail addresses such as linusw@kernel.org (which will be my next
mail address the day it is needed).

Yours,
Linus Walleij

