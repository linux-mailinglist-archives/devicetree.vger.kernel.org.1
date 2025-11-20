Return-Path: <devicetree+bounces-240761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC66C754C3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B73E84E5729
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8A5334C04;
	Thu, 20 Nov 2025 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ane5loVE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FDB3314B5
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654133; cv=none; b=isbclUoEB8fCIAFt41xi4lUD6rh/Y+uAV24oXlkuKTSIQfnivml/1Ch2cmClgPyHqiIqVK58Ix3LIkT5dvaQrbscQ9ds9q2WQOyKBkEiuzsmFJ7oK0svEFPVE4L372oWO4XpH0qW7jm6DKwF7Z7cJLuN+QVfKrBDvEONKtlZQR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654133; c=relaxed/simple;
	bh=KpwVOmFqTFuo0Z6eKiC5OzlZRDQzEkNyBAiLc6W/jgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=huwyT9vXlS/cWGZCMf6s7qQA6GD8YPUJPV2mRzxn9eDNXPp+TMme0ZM1dW85cNAwQuKcdRqMvLTqM4U/aisASKcZtNAjWpbz3Q/OJEVSk5F9S5ZsJ7wHf8nW1acfZDGPQPb7+WyDw5lZticQFIG/hD4ZLflqA48nU5gsCYPPMfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ane5loVE; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b7633027cb2so203287966b.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763654130; x=1764258930; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghmWOWbZTvWynBucWAPubJECyzCUtCvAL03C9/TJgWg=;
        b=Ane5loVEgyI1S9DAhW0w48sONc18cjnZwF6uXBslI1P6YIEdRhK+1ymX61z1MyESiN
         Iz4ifBKIJy1IXKu26sX3vdBikRNPzH4e2y8jYoWvheR14Wtk1mEaAhvpgmEroIG+MSM/
         Q2zB23YYQeHNOzKZoAiii9tleKT9ucXEcVZpavGy0dR7prM24Tdq57Aw5Kz6jCsM4wSm
         dVIymUQzjrILr550Q+H7geGB0NN/6obgQ153LFUUyhHJpeeGI4yYsEYqfDweOE7BgyVD
         g/B3LEFDfmmYTmkJAN2ViCHF4arZE8rqgFJiRwtvkDD3qnuOceofIFEfM86AxbbLmXsj
         XmtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654130; x=1764258930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ghmWOWbZTvWynBucWAPubJECyzCUtCvAL03C9/TJgWg=;
        b=FSkrCL1aboTCspL+7KrYqYutDcDHDH603m3rHvWLK6DHqqhCc8D1p099BtUly03khb
         KBcgQqNx7Ei+B4MHJXCkM/zifjJp8kmdSIhXR0o4ADuQPAnAYlMGLpSOxQQqI+6MzAJg
         J/aSQ4LmiLA4o78Lwd8ecFCqAZJUfCZRMpxyEgyRwSHDNHgcjBZgyOIIkJrdgvbAacHi
         lx1e85nVVHvaikYPS+POHfLcjOAh8D69DMXEVAMRIslTnLJauGfzztabMtqjnr6rARUS
         2v+9ZKjBOpieeUUiYQ1VN8BFN8aTVlc4bJdyiPgtmHbtFY3IFASpyvrimhCOjdTR2Ef3
         FMXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0FJ751echNzjTkxV2NCvid2tYEAnUEoLfeWtgwNLXKGxqPdMUZpbcqOWxz6NSVjJDwpbUnfRN0k3n@vger.kernel.org
X-Gm-Message-State: AOJu0Yx87x+pygv9bCMPLN2OZee3fywMOhlM3I/pigQ3fNTrtJ/nfWGD
	I91CA/oeeYq31lJpkfeht7ty0WppHLN7IqNrCgPGD624uGL94A5mzuudlHLffTHSBvMJNkMtrec
	Er1/R42EDFDsqQwGAGfcjkUHNF3VCPag=
X-Gm-Gg: ASbGnctPu/whQdKxY8OnJZPNLMwYbBUxL/aBgcbcT1847duWKJT/AbDFTMtftSSIa19
	wS4d5i0ATmLVm2fE6flAy1itR/VeO58KcuKjTzsN8XieI2ysjD67XU/k7UK1omcljJEuB99u/ya
	xLhTep9nqd6TeJ5rqrYktJwXv1hbyYnCbIIf3rCPz0kKdwGNUOMApCR0b4JsKxD/CDysCHpH5Da
	LWT5S6J+f9fBfZcg8fB2kEKMd9ZLhlroU9cmWD5gP6TVTWfFAw+YxrkSOe1O/kHhy1mzZM4
X-Google-Smtp-Source: AGHT+IE0AL5MA9t89Ar84y72vT9ZL5wd2+e4neIMpRgtPuskz8HYSHudABZkUsiN9omSjTRJqVFxwNJKwVHrMsWiKdo=
X-Received: by 2002:a17:907:1c1a:b0:b75:721:4297 with SMTP id
 a640c23a62f3a-b765560c0d0mr352163266b.47.1763654129618; Thu, 20 Nov 2025
 07:55:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119184708.566461-1-iansdannapel@gmail.com>
 <20251119184708.566461-3-iansdannapel@gmail.com> <f65506e6-ac29-449e-86b3-540c23ca6119@kernel.org>
In-Reply-To: <f65506e6-ac29-449e-86b3-540c23ca6119@kernel.org>
From: Ian Dannapel <iansdannapel@gmail.com>
Date: Thu, 20 Nov 2025 16:55:18 +0100
X-Gm-Features: AWmQ_bkzVO_sfFN_FTjyX56BaPglZeVMgyhMY0yBpAno-4oPfspKiU2yA45zqiQ
Message-ID: <CAKrir7hCGEdwZihgV8-JaXq1EbzQCvpJXcG_FEmDYEoJqUpbcg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: fpga: Add Efinix SPI programming bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-fpga@vger.kernel.org, mdf@kernel.org, yilun.xu@intel.com, 
	trix@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, neil.armstrong@linaro.org, mani@kernel.org, 
	kever.yang@rock-chips.com, dev@kael-k.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Krzysztof,

On Thu, Nov 20, 2025 at 3:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - efinix,trion-spi
> > +      - efinix,titanium-spi
> > +      - efinix,topaz-spi
>
>
> Nothing improved. You received comments about this - twice or more even
> - so I feel like you just don't care about review.
Sorry I am lost here, this is based on a similar driver, but it is
probably very outdated.
So the fallback pattern would be okay? Eg:
items:
      - enum:
          - efinix,trion-config
          - efinix,titanium-config
          - efinix,topaz-config
      - const: efinix,fpga-config
Or would a single compatible be better since currently from the
drivers perspective there is
no difference in hardware?
> NAK
>
> Best regards,
> Krzysztof
Thanks for review
Best regards,
Ian

