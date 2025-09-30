Return-Path: <devicetree+bounces-222585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 888C0BAB207
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:07:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FAC1C45F8
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70A91F0995;
	Tue, 30 Sep 2025 03:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M7fZPkP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D61A204F99
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759201637; cv=none; b=hh9s+DWjlOUePMUy2rDdaXAB7JvhqMdMnUpnLFOUJmvCXkcj1NztX5XCHRrikwDYDAfOUx8fsGzSzAU3byxnZThiMIdMMqs9n4MyMWsjO9oRfnSIgocX8ZK8lsoQqmRDd28kUT4Uw5CR6RmBp53U/4M1o18rBepiiuxN6/10A6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759201637; c=relaxed/simple;
	bh=6CYu0yjjLffWbYyT1iuvFnA3aqfZ7582Muoa6RB5CIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lC5jlD89fHO6VX01SytANlTPZUMKSM2vWLOcXLA0AhG4PEo+mjbYfSGJMdV1FlWZLR3dghT9Oc2uZAiM5HyveOuBAyGpTpqxClxr9IH6Uayg+WCWdzvqiumMLELX6qX+oPGcpWt08nkNoQ45TyNKeXy6wN50GbZhnUZBFlr3qw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=M7fZPkP7; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-780292fcf62so4138672b3a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759201635; x=1759806435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gKvNIqyQStmqM1bZBXJ3keviMu+G7jno5fFKkr2O1vg=;
        b=M7fZPkP7EKsyvYI7rOb+Db64coP+WwF50JILz4ui5r5fx7k5Dxtg28c9nfVnO7qao/
         0AUGJwshYQ/snPaGiXb2eQxDQFKt5uiI7gYmeY8OdwFanjWzngJNDVzm/SwFZwaTomM8
         odOeYpbb5/K51t2972KMPXYggCW69lJHBChAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759201635; x=1759806435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gKvNIqyQStmqM1bZBXJ3keviMu+G7jno5fFKkr2O1vg=;
        b=PHis+THw8G0ZYOsJ24FZAnZZL0CtYgla2aHAPPkhxn13YkITUdbShQyIo29SoFHRie
         xze3nvgxWMcy0EMRufWTOtFOTI5TzLB74pjmT4EyT9mZ4YetF41N50Crw92DlNyAs0oA
         eqSh96d+Ea1b92uSaxTPH4GKEVP3xCE3zJABec7N5jOWoHw0gpmztibZmTu0oqNAFyg8
         UnzKqMY4UpyvGcIIRghoHnLIhYZKQT8qHn5Q+Ncwg3DHkxSVSQDxfB8/wHSJsOfG6eIa
         UnsktgLIV8Q3DbPPqSRQCTd6n5a5gRrf+37ELNBwzdEfbhHl0j0a7NGbiM7ZPTsi5Dt0
         pNtg==
X-Forwarded-Encrypted: i=1; AJvYcCXDF3WVJaIt6y92u+ByGI27D9UzRP+3rUX912Dn/cpm4Oj8Zj2UdsO2NlhoRwVTmcY+4GtYztehPdz1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8BfJsD2+YVbqw2Tc3uYoHwQyMN4WJFdnFp+e6Wrym4FDBOPqP
	vnRvo9NgdRd+m9rWsDJRL0cz1EJ1dLNq3KrEtNiQKRTA6r6aiM+Vj36p+kw3/xZEh4rlzcawFnU
	ke5kP8w==
X-Gm-Gg: ASbGncuNAEMDnjYvfJ3Xj0XsXKK5YAz3KJIOasZqApEod1U58fKqw6QJmjgcV+eLJRD
	JyngzfUzaG75x5DkBowef0Rcb8NS4DIILcoleRF8ypOWzC3N4FYIRmqZyZmnUJUMYrlzmjZqU94
	cV5J6in2jv5fRrxlY1FTcE7AVaC/zTm/IxuuY0MBYsXvARqRD8jQGssRSL+2/8RsjLMkD1FpbEj
	k+BXkiZBrlM4hJEETYW0fEa/m01Uh1eU8C7q520DRui040RCuEsZ0bLebR1MowtZSoruKKC9+hT
	TE22NNuKtGhwMTvhbGlu670jv2Epa573K7ymc7N6ooxndGx61lW0bMSmhK0kiIl6vAmm3W6coQT
	IxB3n83icBiKxKxyqgcGh5SbUO/JN0kbaOs0aEI+C9rDuVq5P8XHCY3t9f0a7wm40pPs8vweJMc
	P3azLvsCBs5Uw3hgisnjnbz4qTXofhomuAytc=
X-Google-Smtp-Source: AGHT+IFzQmF+pGMQpo3728FYHYZ/SGjzcUVeZjTs89OhAob4tuD80RlILm5iblBFUNVVEbsm/b+QpA==
X-Received: by 2002:a05:6a00:1906:b0:77c:ddd1:749e with SMTP id d2e1a72fcca58-780fcea3c28mr18972345b3a.19.1759201635608;
        Mon, 29 Sep 2025 20:07:15 -0700 (PDT)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com. [209.85.214.181])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238ca29sm12324532b3a.6.2025.09.29.20.07.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 20:07:15 -0700 (PDT)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-27d2c35c459so43422025ad.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:07:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWNoedEgU2yEBQQPjj+0Ww0g7EzuR7E3i7TzZKXdNHDwswDDzSUCW4tS6BSybWHCR+6XfojOct4W+UO@vger.kernel.org
X-Received: by 2002:a17:902:f64b:b0:275:f932:8636 with SMTP id
 d9443c01a7336-27ed4a2d54fmr206796235ad.38.1759201634408; Mon, 29 Sep 2025
 20:07:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-2-clamor95@gmail.com>
In-Reply-To: <20250929142455.24883-2-clamor95@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Sep 2025 20:07:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vd=muLeMJYszC2SqRBThN=Srm_bKXBEmjjqND7bqHo2g@mail.gmail.com>
X-Gm-Features: AS18NWCupJdoWovR_kE0x_uWeV-e4Q15rTRpmAHzxBq1v_8sPWAFlU2cXRm8lAs
Message-ID: <CAD=FV=Vd=muLeMJYszC2SqRBThN=Srm_bKXBEmjjqND7bqHo2g@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: display: panel: properly document LG
 LD070WX3 panel
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
> LG LD070WX3-SL01 was mistakenly documented as a simple DSI panel, which i=
t
> clearly is not. Address this by adding the proper schema for this panel.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/display/panel/lg,ld070wx3.yaml   | 60 +++++++++++++++++++
>  .../display/panel/panel-simple-dsi.yaml       |  2 -
>  2 files changed, 60 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld=
070wx3.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.=
yaml b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
> new file mode 100644
> index 000000000000..0a82cf311452
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/lg,ld070wx3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LG Corporation 7" WXGA TFT LCD panel
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: lg,ld070wx3-sl01
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply: true
> +  vcc-supply: true
> +
> +  backlight: true
> +  port: true
> +
> +required:
> +  - compatible
> +  - vdd-supply
> +  - vcc-supply

I suspect you'll get a NAK here because you're not preserving backward
compatibility for existing device trees. While there can sometimes be
reasons to do that, you'd need to provide a very strong justification.


It seems like instead of breaking compatibility you could just have
two supplies:

* power-supply - The name for the "dvdd" supply.
* avdd-supply - The name for the "avdd" supply.

...and then you make both of them not "required". Maybe you'd add some
documentation saying that things might not work 100% correctly if they
weren't provided but that old device trees didn't specify them?

