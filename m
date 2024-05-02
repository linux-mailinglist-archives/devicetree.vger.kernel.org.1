Return-Path: <devicetree+bounces-64621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C794F8BA22E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 23:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C3CC1F21B26
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 21:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB8D6181BAA;
	Thu,  2 May 2024 21:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="F876ssa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FE6181312
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 21:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714685049; cv=none; b=BDiXkM64hBGkC9YD/EIH2Upkh10cFvC/OebBA4gCbY/ow7ahA+fbByvANTgniPM2KUI6l9t+ujOtJSrL6V5WKxdCycPp2EfqZGaIzSALwhnNf/6cydYTxCa30B5CfHaY7GUnDW1XSZhnR9QAgQ+kMQbgWnvFPC3sCP0sDcnml+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714685049; c=relaxed/simple;
	bh=e5MnDYpDbG4HN+rm3kIwAqZE0h1MjgBoqyIP17amCKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oEtbWyEGTs9ehecBVaigUDuoUzGHMitDUAswIROkIHfQcI0QE3vCmI8gA1eSaezPZyitarxd2CLRDDFR/iBHkcw68FOH7HZA58cR4/C0qCg57q03YjxW4kaTSZ3oAE/pNcHJqNLr1xwntg3c3pL2o/74owvj9Xcilw/a5GuzvqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=F876ssa/; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-572aad902baso1918a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 14:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1714685047; x=1715289847; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/DpXkrfXRsTHCLm8mx8p2ZuP05XHl7UCwnC21b1+Ido=;
        b=F876ssa/nc3uQtcmX5bNxOK5roXvQniRl1J7VAAMoVr1RTWoVzzlY+QLdagqt/Owjm
         bjdFFb2oLb1xjsFqlE/xelE0VUIQQ9W3loacGrAnIXG0npf2cfw1Y18ibGRiRjyf+ij/
         ROMJsbfl6+lMRoUhW1XI1guwDIiaMPg3fl2JMDaPjqW7KyeLiUOYPqiouD6sgoZiscnr
         gjaUfldWLkewmF69R9A96mAJAVLm/2b3LTsrUtGfK/yfjcW+Th4fqDC1ibJJGted9lW/
         hcClyU9xC3oU1v5N3YtwWJmoIgz9hov7m8/kIuhq9iPdVUQ7nMKk/+KXWmRNrVLf5XW7
         q/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714685047; x=1715289847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/DpXkrfXRsTHCLm8mx8p2ZuP05XHl7UCwnC21b1+Ido=;
        b=jxK/501IhdIXwO2vKjyX5iWKlHzHmYeYaJleuP24wZ7FBPYPOjk+OmmCIzeCWunUIJ
         xQvmqg1PwGVRuVPXKP1o2iMIy/N+o9FbpUu8vyFXVXW7z05T6qr5ScVevIShMDAgiM/Z
         eAToEnypQNnHTIAPO5NX4/PmEd6lsozBqKZW1NN9o7s0ZCkRIsL9B8iOAAulXQdYdtPQ
         0icZQ8RgrkmoIBDbHeC2z7a/R2eUijfKZl/GViaChkxqWJnlfW4ycC0kHOIHm+4vT5iC
         hJkl/caoMoPUC/Xw3PjlbaHtc8004wAA+YKrbP35dc7QlarZVuCzq8VzKdnkYyhcOCCF
         oXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV16S6IXehgVjwYitUtd4g6z5R73DyVnP4N+k2EgZwSDIgLht+Eep15J0OYGLGg/aup6D4k2Jw/t7bAcC+pqhv3P3JMqT33bcbxw==
X-Gm-Message-State: AOJu0YykOYk9edXe6TcBk9XkObXXFmv+7xDH1xffoB4qOkRMA5BZfSlK
	9Is7fyqIvqS+02h9WDXerpX84agvQ43DfIPRPBEj7q04LjMaausBjEiyEHyPBN4hURYcJWfhMBZ
	ue0nYIHuIJumINM6GqnIxKsHfe7YOKpnP6L8J
X-Google-Smtp-Source: AGHT+IE6D0fEqWY7DDB8CwkPwGyVRibjt+oC+Eg4cUWkVc6Psi/KvL45XqFWzXhHNui+xz3wqXew4hVko87URKKdZHA=
X-Received: by 2002:a50:999a:0:b0:572:554b:ec66 with SMTP id
 4fb4d7f45d1cf-572d0f4be13mr12509a12.3.1714685046627; Thu, 02 May 2024
 14:24:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422232404.213174-1-sboyd@kernel.org> <20240422232404.213174-4-sboyd@kernel.org>
 <CABVgOSnEQ0m_nG-dSA3e+5PSazh9uTB_A56zRrphh5vgPsYk3Q@mail.gmail.com>
In-Reply-To: <CABVgOSnEQ0m_nG-dSA3e+5PSazh9uTB_A56zRrphh5vgPsYk3Q@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 2 May 2024 17:23:52 -0400
Message-ID: <CAFd5g47jEkDvxkg4Kk066_RgN1w6AdjtCKSs3=shWG-kXynPKQ@mail.gmail.com>
Subject: Re: [PATCH v4 03/10] dt-bindings: test: Add KUnit empty node binding
To: David Gow <davidgow@google.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	patches@lists.linux.dev, kunit-dev@googlegroups.com, 
	linux-kselftest@vger.kernel.org, devicetree@vger.kernel.org, 
	Brendan Higgins <brendan.higgins@linux.dev>, Rae Moar <rmoar@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Daniel Latypov <dlatypov@google.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 1, 2024 at 3:55=E2=80=AFAM 'David Gow' via KUnit Development
<kunit-dev@googlegroups.com> wrote:
>
> On Tue, 23 Apr 2024 at 07:24, Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Describe a binding for an empty device node used by KUnit tests to
> > confirm overlays load properly.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Brendan Higgins <brendan.higgins@linux.dev>
> > Cc: David Gow <davidgow@google.com>
> > Cc: Rae Moar <rmoar@google.com>
> > Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> > ---
>
> Looks good to me.
>
> Reviewed-by: David Gow <davidgow@google.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

>
> -- David
>
> >  .../devicetree/bindings/test/test,empty.yaml  | 30 +++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/test/test,empty.y=
aml
> >
> > diff --git a/Documentation/devicetree/bindings/test/test,empty.yaml b/D=
ocumentation/devicetree/bindings/test/test,empty.yaml
> > new file mode 100644
> > index 000000000000..20dc83b15bbf
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/test/test,empty.yaml
> > @@ -0,0 +1,30 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/test/test,empty.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Empty node
> > +
> > +maintainers:
> > +  - David Gow <davidgow@google.com>
> > +  - Brendan Higgins <brendanhiggins@google.com>
>
> Brendan: Do you want to use your linux.dev address here?

Ah, thanks for pointing that out, David. Yes, please use "Brendan
Higgins <brendan.higgins@linux.dev>" here.

Otherwise it looks good to me.

