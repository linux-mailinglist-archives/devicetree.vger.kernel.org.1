Return-Path: <devicetree+bounces-198288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4CAB0C418
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9841D7A6E50
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 12:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D00052D3746;
	Mon, 21 Jul 2025 12:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="a8FcZPkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F2120F098
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 12:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753100826; cv=none; b=O13+LWwnl0Gjr6VvYUOpNRqfDJEqHWs6CIf7I41+C64XjYM96aoVHmayozEi/oeSGEpvaiTRZgaLzVabrzf3KWpuoyRIbpkfHeSfWkXJcXbgzuGAXnE7GCJ/Jq9esN1UHhBaOIKVJqYrJ9e8302TIEg5JMr/sLJLfFWJDYxncKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753100826; c=relaxed/simple;
	bh=S37p+ki1hKdOfBgNLa4sGHFLbLRIOH+ZYzrfDoPofCE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kJv1vI/E7kEKBP4Zxr9cIbfNxv2d4QJfNOdpAx4K7JR0vCcCNHTZn+Xpu9sW7gS1xdAf6GmhnhNIgjKEdIiuRlnTa730ZYBd9OT7xo3lGZsd/OnOeg1ik2N/UojCyZNK+JPd2bmYYpPW93Xpyewo+lWEbXdj9xsT6/au6uaPprw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=a8FcZPkg; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-70e3c6b88dbso29130467b3.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 05:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1753100824; x=1753705624; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S37p+ki1hKdOfBgNLa4sGHFLbLRIOH+ZYzrfDoPofCE=;
        b=a8FcZPkgUSjCXtvn75trAIHi9FyklEUxUEsyYKh0TCt0B05woQ/P8QklO+Lg3J2Vug
         ErRAcjyzNuDoSvveYGRPL3DEvCjB6epJkf+sJDsXXDcBLPCz7MRP86ZocX2XEmrUQ+Q/
         t2Qd+xrzJO+HypSL+HHr8REhp96pwi2DMDb/75wj4LAcc2rbjeZShH0H9wtBmji74h1i
         Lkm59mCsooAlUSGdTrynQGhFmIUOWgCvQxXn2j0z0fIpKV52jgFwW1vfQLciXNZGFNP7
         2mVDS+V6MotNZHAKg0Ot+8oZppAG77v26hKCbBh/7DURhIWZceSwPMI/+ARegRN34cmA
         +57Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753100824; x=1753705624;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S37p+ki1hKdOfBgNLa4sGHFLbLRIOH+ZYzrfDoPofCE=;
        b=fd2yrahS3gSsdMbwoxfhq3kAMNCPTHt4d3O4e4nXbgDrhCZYtGi/WEBz32YA/dFioK
         aNg+XLK3m6nTiWphZlGdIaBShXL+M0aTt/mte/SlWM25xqFarGr0g3btEpDLZOT+vb04
         bZJdJu+rWlmxwe0n0utAOZOG5wopZQE0OP3f4LDBlYwurR5BJbJa75+xkI9ksKgR1pUl
         yvZdLZvyl2fIIsFIV6j8hkYc/cqK++ZsTrIN5i+NlER6ykTuAKWyxh99z4VI0hnhq5Zc
         XkhzINzZo9jq5OQLoNJoLjE8FGefa6AwgCIPU1nrxqDS0oRUMgTo16mR+EbHjA9rgF60
         g/wg==
X-Forwarded-Encrypted: i=1; AJvYcCXhqUERVbl2HvTil/T7ofkyLckWZMfUKqvP/LWstLlhTptokhc9oitvhi8D9tBsH3geb4CfKIE/EzeA@vger.kernel.org
X-Gm-Message-State: AOJu0YykT4NyMNmqJz27zJfcXGIznWNceB+mxFMq7woDARrctIIK3fL4
	JJbv5jpotwezs7pt4+DMJ5yBKYuU6s5UXUSW33y+pxTinwcZa15A+AS9Id7jh9Yfyn0nVGnIisZ
	S1YknUGAz9ghbacm0PTWnCysABRz4RKTxNy3p/nviVA==
X-Gm-Gg: ASbGncupaCY0ckfTxc+9dB5RT6RqtlW5/1yXtjBM+1TSC/rTN3La1gL98uuOh1cmjv0
	mLko5TAq4eyLKTqir58zHoy+NsxJPPwZydtvGD1VpBL+NtgrAsev8OgwCo/cXSO+mmHvecqBR66
	k9IUfCsZddheqDWL+OfJRhwojP6xkJksgHNdpq4aNIzj+4ey7XpuCjC615ZV/9eXyROSkLglr4M
	wX9zcw/Ht0jGC1xtzHU/bKoQ2Zt6tngPlvUIHy1kkYiXGvI5owT
X-Google-Smtp-Source: AGHT+IGyzKwa7R7rwYenhb8xAPhroS7OY07UztHqILHpzfiPDYy6DXrcN5pIt7ZXpgtFgcLpZWS9QSKxCRIuIw12Fpw=
X-Received: by 2002:a05:690c:d0d:b0:718:38be:b3e0 with SMTP id
 00721157ae682-718a98230f3mr208870237b3.40.1753100824241; Mon, 21 Jul 2025
 05:27:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721-leds-is31fl3236a-v5-0-264e841f4da9@thegoodpenguin.co.uk>
 <20250721-leds-is31fl3236a-v5-1-264e841f4da9@thegoodpenguin.co.uk> <4f57cca8-49a8-4431-b41c-78097eb11da9@kernel.org>
In-Reply-To: <4f57cca8-49a8-4431-b41c-78097eb11da9@kernel.org>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Mon, 21 Jul 2025 13:26:52 +0100
X-Gm-Features: Ac12FXyhi4nQpPpVH43-6Z2QkWFo9ppc1veMmVayv9agkzFpsA9IU2572_o8jFI
Message-ID: <CAA6zWZ+x9cj4kOTepYNZ+9anCruSP+dgdsyux6iVKF+vN1Heaw@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
	Lucca Fachinetti <luccafachinetti@gmail.com>
Content-Type: text/plain; charset="UTF-8"

> This still does not match min/max constraints. You already got the
> comment on this and nothing improved.

It was not clear to me what you are after, so you want the pattern to be:

^led@(?:[1-9a-f]|1[0-9a-f]|2[0-4])$

So the range of the unit@ string is controlled via the pattern
orthogonal to reg,
the range of the reg property explicitly via minimum/maximum which are decimal,
despite the fact that the reg itself can be a hex value, which is
preferred for readability
I suppose.

Kind regards,
Pawel

