Return-Path: <devicetree+bounces-240444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F913C7123C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:22:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 16FE435022C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 21:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979952FB97D;
	Wed, 19 Nov 2025 21:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="paglm16F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4BB2EB843
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763587338; cv=none; b=jFYQlYo583xJaI08lSkBUY61hLRrB3a6bBg+BzY0RIH7ubadr/iW4/e4gcmhtICg63AsCy+OXg61OsW/bvHqrvqU/rirmXcwWcXum4ztpSg5VMORFLzk0NVHm6aq48ej8WmxvNUJY6VIbRZ0U99EQaN/nKtwvAqJmcO7HAC6rbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763587338; c=relaxed/simple;
	bh=DBz0niONnl+seOVorkJ/1kFeqhbKAlpzYMwEYSVEOlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q3BqthtWgIYs5u4w4owbzmawp0W2DqM97AGwT3NreZ1fzFMgHHTZGWfxXO2Hy3/qdAO8hJ0/hTBNQKXPenn4pLn9kGSuzuSuaQsNETgh9RUnYC6ycGnndXuNzQGETjEtK8YcQ8N7xw+E9mv8GAGSdszvEoO48vP7jYtOEBpM7Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=paglm16F; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59581e32163so108818e87.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763587335; x=1764192135; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=66eo3/FCxbT46WW1S08bhZLk8NV3Guy/KGsyPNbaZKQ=;
        b=paglm16F5/OclCayPw+IY/tD7YtH2HmV+Thh/it20JFPgY3jEmdMHy4EYNAdnci0Ky
         vAE3scjVbqzQM5hWNSHLsfqVT6Nr2k0rvvobWH06EjRgTakfNwC874MT7st4BspyLYwC
         Ecfx9bocqKJPJkiIWQntSywi3uOl22+ISd9I4BsYXgJl6gnxguep3hq0DLF+QuYXxWxv
         Gk6+nTqn7XBBT0mDHHrHTbiG+JXsBly0usElkrvJ0VtnSsTMoi4ldIX20kJq9W36Guag
         ZJZFDDSnRHi+ODh2/arRFEvtzQm9OuUanhLLn4kSm5qzxI6iR1GZove0ebwadf+dcHon
         xgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763587335; x=1764192135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=66eo3/FCxbT46WW1S08bhZLk8NV3Guy/KGsyPNbaZKQ=;
        b=Hi4JxuI9Ix2Zv86dMeEpGKkasMs+gi6naALTt/BtPRmN0yNe0J/J9fHNxNg2ChVKWv
         gIzYY28b3LBhlAlfL9OLvtQc6ayiYmtZB4qM2wyea5WHSOsNjjLe0+qQpLO1B9frYT9s
         /nEcetSl7v5R2EY5hWPN3L1WTt6/ah0htWGbZsJE9tkUwh/UmW0zQr2uTnrdBjyptaw3
         LS9sHknPDUZo+ohixP/0S1gGrWLlFXIJxJGWzxj7GVnouDieKzYlW4k41D+h/HzVvkB0
         /woH1SUK39eS4qp+yMm7Jg0vlw5f0iYUrBSc1gHa3i73fO1XgCVW2LEq62sZtjHTZVZK
         rDTA==
X-Forwarded-Encrypted: i=1; AJvYcCX4q9YoX8Hj7KGuE+J9C1xxSpl3bIMlLlzvE9mGSOyZgPKFw3XDWB+a7GZHilh+EfNAxBQUsYN0Eht2@vger.kernel.org
X-Gm-Message-State: AOJu0YzmkQpdo4QIUUhEensfklMwoZKDiojvy0IKeyMO9zFJM0chVoBQ
	mhY4yM10xOyZTs+CfVJIwBdSoCLEMlyP1JtpIAle/vDKScjcWT6kx5IhqAcKmj3NACVAURIFAcH
	1WkM7KKgSzw828TBVOWV8AcH1NURzsh7qKjRRAtCWzA==
X-Gm-Gg: ASbGncvgWIKc/uq0+dulkrKAhbLl/oNPrXMARF+4JaVxySF/sy9lEmFhRPerlYUuR2n
	bgizCCU1UDnaSxUzKZrboCi4QKYFUPc+G6pRwktvI8sp959X1vK4t8fr+2b/Fh8NGlIN1AFJDTJ
	u3uCVJbNdM9QyC2+OiulG5A8807dBZ6eB9c+pMz/WOvSbwqyLka5v8nfVaTlqu+7Hglv3ByPci+
	s3ExJLKUVGzzTYucCJUMaYkIiNeF0OhNXZevxz5/FYWvXvZn8Fz8jFsc4xQXIkFn1ehoMXqajtJ
	MggmfA==
X-Google-Smtp-Source: AGHT+IELiSBP2aXqm08BReCsgwxpMOYg15fH+SMrgMDaXnTxP8h9xFapGyVh9++EymMn2Bzw6LukssCo7PGt0VpsR6E=
X-Received: by 2002:a05:6512:3d09:b0:595:82ed:ff28 with SMTP id
 2adb3069b0e04-5969e309670mr93355e87.32.1763587334880; Wed, 19 Nov 2025
 13:22:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117091427.3624-1-antoniu.miclaus@analog.com>
 <20251117091427.3624-2-antoniu.miclaus@analog.com> <20251119-violation-enforcer-1362d3eecb69@spud>
In-Reply-To: <20251119-violation-enforcer-1362d3eecb69@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 22:22:02 +0100
X-Gm-Features: AWmQ_bkWCJ5flHFo7S9tQWx88Mz6raD_BwO06QspIghe4e7ST0AyUuf6Ba9-3ns
Message-ID: <CACRpkdayt+upQxxT-GdQOENWjdF2zz3DLEjcvD7sdg9-oaLwoA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: switch: adg1712: add adg1712 support
To: Conor Dooley <conor@kernel.org>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 6:56=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> On Mon, Nov 17, 2025 at 09:13:22AM +0000, Antoniu Miclaus wrote:

> > +  switch-gpios:
> > +    description: |
> > +      Array of GPIOs connected to the IN1-IN4 control pins.
> > +      Index 0 corresponds to IN1 (controls SW1),
> > +      Index 1 corresponds to IN2 (controls SW2),
> > +      Index 2 corresponds to IN3 (controls SW3),
> > +      Index 3 corresponds to IN4 (controls SW4).
>
> Did I miss a reply about my comment on this switch-gpios? I was asking
> if a binding like this, which doesn't permit any of these not being
> provided is a good idea.
>
> > +    minItems: 4
> > +    maxItems: 4

Maybe we should make them named GPIOs after all, as the switch
has exactly 4 possible GPIOs. It was my request to have an
array I think, and now I feel a bit stupid about that :(

> > +  switch-states:
> > +    description: |
> > +      Initial states for the four switches (SW1-SW4).
>
> Missing an adi prefix? Also, probably should say initial if it is
> initial states.

It should probably be initial-switch-states.

I vote for a generic binding as it is a new "subsystem" in DT,
and this can be exepected for any new switch.

Yours,
Linus Walleij

