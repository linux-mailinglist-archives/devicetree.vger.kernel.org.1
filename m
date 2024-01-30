Return-Path: <devicetree+bounces-36667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3CB842414
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2256128B89B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 11:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129126773D;
	Tue, 30 Jan 2024 11:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Lze2ElgB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880EB67749
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 11:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706615346; cv=none; b=ZUoAEivxk842y4mV6bvLC1gs7h9xYCK5uWQj6K6TqYLuEqTbaKuV7382fiA0LuYF8hy+PtS93at7RobOmQLvskqfnvuM0qthlktxPW7Cs3mlf4WdvrgTHqLoBO0CxnR7DLSv7koAaXfT6fdFN6panJgkVVsTM1fTs6TJNitp66k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706615346; c=relaxed/simple;
	bh=djJj9XRuv56D+Yf0tvte/Y0cLXHAVntDU34fYEL78oQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WHrHKm4xMDcTT+xeBbuQ+NUt8h6qAAMuUw1mvyqj+50GKNEcVGb2o8GINun8xadm9jqaMhuqkTZTIvosqd3N6B9wV+wV6u8Ds+9rBp27KzgmmJS57Zd7Us57TG1X2wvUWhgMm7k9hBK3b2W9iwOiJ4M61dtuhxQYGrxdzeZwDC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Lze2ElgB; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d911dac3dcso2275465ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 03:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706615344; x=1707220144; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/i4SzQBJoQr/W4/YDTog7lCCv9zfgdmkWanXeduZ2I=;
        b=Lze2ElgBX2tXPOvb0d3CaA+Z5+31LuiWq7aoIXScg9+N89zoJ+LRi7iv/cEigbPMgb
         E8bFqKjLQ0BSY0sJ0zg9LRcus2vOfa8VkLXM3ML1zyOzL5AI+JCAZaAE9eqpYtD7G6oJ
         hpKNUKnFliya23fgSerjr0tKCd7KYVZT6C+Qaa3YaRwZVJsszroiDGQe+Q5qPpnEk4gV
         dChpG/MCF3ooP4YczpbZlSTi2LKMsaW5RJc1ulPqkuKR4BnoBGCOF0JshVfs/NtfsuAZ
         CrnnHxx/IDPT6ka1nYM806+bkauCel42Mgqc0Eiy5jE4oIXNqFaBb3b8YKpjzyW8CdYK
         FIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706615344; x=1707220144;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/i4SzQBJoQr/W4/YDTog7lCCv9zfgdmkWanXeduZ2I=;
        b=tyzTJuWTrCjFk5hsqaBuWLOnNirH9vRwCXPJ9YBNoIQN0Q+JM2mtyyRj+d4n8SqYAq
         Qoskri4Csp3pjx2J9REt1MlMNImTPX2tpdxOEh6zIStPDE9v+9G+HmF9+CoifooKarb0
         KKRp2O4mMECqxr1A3eYEiiOGGnZhXnN0uNB0zK8DgRYZEHtFdfVNMo8hIVqWU/QFf7Al
         KDhHkPc2iKs0i/tg8IxquRoLA1Wb+L0N5hlGAM5uY7+V1y3vf7fADP18HsbNQxy1kLrv
         tXHX6cIZS4qeHNMPStqa4UuqhTVTjfEf099Kf9GLKwieUzfXQUYX/BEhB+nqVWf0sow+
         BcPg==
X-Gm-Message-State: AOJu0Yx+z5iVH/84kTi4hj3JbFG9M+Fs4STNMk9bk6FaF7yXh/DfdxMm
	DY9IOxjfXn7FxWQlNscMHiX4OyGzJrJEUADwjm7Kf4ScDaZKLspt5KlHDa0fBtxOnFTParhXmyX
	kJd6gXeEIkJEjbKnAe7Io6KoV8sMm31y6lxEG3Q==
X-Google-Smtp-Source: AGHT+IH77ZXfkrGtYR4l5SkakOL1AXdRhX+06Z4lEU8XqFeiImXFjxCQGZeFc+X+5lQM13TrnKG+PTTtrEkaQCnpWRk=
X-Received: by 2002:a17:90a:cc06:b0:295:3d98:68fd with SMTP id
 b6-20020a17090acc0600b002953d9868fdmr1399215pju.28.1706615343870; Tue, 30 Jan
 2024 03:49:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130111830.4016002-1-naresh.solanki@9elements.com> <49bb7b5b-4186-83cc-7e1e-4892c7e8b6ef@axentia.se>
In-Reply-To: <49bb7b5b-4186-83cc-7e1e-4892c7e8b6ef@axentia.se>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Tue, 30 Jan 2024 17:18:53 +0530
Message-ID: <CABqG17g70GDU3_DbJbEnu4-9a3aJBSFFXuYKBEG8MJpVfOjMGg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
To: Peter Rosin <peda@axentia.se>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	mazziesaccount@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Peter,


On Tue, 30 Jan 2024 at 17:12, Peter Rosin <peda@axentia.se> wrote:
>
> Hi!
>
> 2024-01-30 at 12:18, Naresh Solanki wrote:
> > voltage-divider is always an iio consumer at the same time it is
> > optionally an iio provider.
> > Hence add #io-channel-cells
> > Also update example.
> >
> > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > ---
> >  .../bindings/iio/afe/voltage-divider.yaml          | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > index dddf97b50549..09f10d7c4e02 100644
> > --- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > +++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
> > @@ -39,6 +39,13 @@ properties:
> >      description: |
> >        Channel node of a voltage io-channel.
> >
> > +  '#io-channel-cells':
> > +    description:
> > +      In addition to consuming the measurement services of an ADC,
>
> It doesn't really need to be an ADC. Anything with a voltage output
> channel works (in theory). But sure, normally it would be an ADC...
Ack
>
> > +      the voltage divider can act as an provider of measurement
>
> a provider
Ack

Will update as:
  '#io-channel-cells':
    description:
      In addition to consuming the measurement services of an a voltage output
      channel the voltage divider can act as a provider of measurement
      services to other devices.
    const: 1

Regards,
Naresh
>
> Cheers,
> Peter
>
> > +      services to other devices.
> > +    const: 1
> > +
> >    output-ohms:
> ...

