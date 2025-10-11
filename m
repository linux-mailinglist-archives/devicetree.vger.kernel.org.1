Return-Path: <devicetree+bounces-225585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9AEBCF3B3
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3467B401505
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4390925C80E;
	Sat, 11 Oct 2025 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YiMyerF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49B3255F52
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760179113; cv=none; b=UVeP6iu2fhgvi4w2gbHaw6Fq3cy7M5uj7xLHWFg8us6N/eh4L/5tmyf0uwfWpXdgxYzNnWNU2B6aaFpvJKF8R0hDZZ+hKjt36jgA2kkQvKh1DSqPHPpIYI1Ci5VRDjvJdebf0AUs+mXZPCcBmP0QyOQMXA8nLmrl2HF8iy9C19Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760179113; c=relaxed/simple;
	bh=ZM6gK8/ptNL07x+/PAG3f+iZfMJySGfBm2OlXDFCx6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CdlQBIDdCfqk20TBjkVm2T5r4pBpA9punRNe+vFIWKcbBl6/CSk51pfXljWs3JN4kBrB81b5GhagJiUJQVxN3l2ldVhzMmd7CPjgmlezQ423Xb6HOfHaRalGjlPhrBSC8/7r7LKCIn2CZ1Vx0dsL9JoIuEp3i2GgMr+q8J3/4Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YiMyerF+; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-afcb78ead12so449334366b.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760179104; x=1760783904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xny2m3uhM/SxXH2HjS7Fl5XTjSKvXRs2Du0+aNtpjtY=;
        b=YiMyerF+Ci5i4X30bpQRx6Ef7bP9jro3kTE1spZMla6EroksOqX2stYaQKh95Dj1pH
         TPkEvDNiCP9uJoMxsDStJuCa3KDg29cogpL80yYZtBwRQ3cpxnKpfJgwQQ0kDuWLjoxn
         NcRCxSSGodwQpoyKu1Zopi/gtpHSouaUUAfTbE8AhRwMjAMzRx6NROWU1zY0/7kLjXJk
         TxB4Bw4dawK6lO5XVzDAEBbCP6hjt0XNv7znZxDic94Jg5eMWOHq/eF6j9JCj8JTpbJk
         iAcAog+GhRzpn08Nv0MaLXvDP614G256LtpWWKHP67hWGk2mf9ML/iCrRhsEJ0W1h8er
         daGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760179104; x=1760783904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xny2m3uhM/SxXH2HjS7Fl5XTjSKvXRs2Du0+aNtpjtY=;
        b=c5oIvjEdSCQsNLIlPdohAt4AvvXveSVEjC3dpzSTi12H8zQcuVM74HNO0jOLxOe928
         sZFW45qw/edpXMZXeLXajv+6nh3xKBk8Ifx2j9n499kRgls9gqPsDSYLwL5owpiAuiYV
         zecnHQU5cz78KgnCR34AIDKb7YB2pz/mTDzyduDZn3LwD5vrtwgqD+050xiOPby4fpC0
         K2A+ne8wYHfWZskPMHydv1rSnAQuQCtk8Jf5xdcK37zsynGueb+584G2Gz3EqlIMDMY2
         Q/V4PHg9zQHpuTsDlzwtCJSrkubXffzNW4RmuND0GYI4CCmcgW0aH3pUkMyKbTm7kF+P
         7wJg==
X-Forwarded-Encrypted: i=1; AJvYcCUfy0NccNEZsJBs/DSBhf+DSCYpRX73WejGK/N5OGMoJ/ktOj+a2fHnq2KBx0w7a3MRf1II6S1Bwczn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz/7dqBPc0sQLzoheUZR+8lYHWbKJKC1pAKMwXWgYVUlJuyWc3
	fFqYX+eXO25xISN4X6ivOVGg363UXx/WVijOW31EdlnifwJGnZUl7OVTdU+2WmQeEkUkhXWfG0E
	DkPg5BWrlCaOOcF8oyWCXDkAZzsHIrmA=
X-Gm-Gg: ASbGncs8QmCyFOXStiNFGNkMUd/XhRrGTxgyij5iOApimhgc6IJ0te34cyx51DF4cM1
	FxybR3bHBTEil1nIj0kxY7LFXdX/wqu3nNlRIOM1naE8+IlNaZh2zkODUkJILK4QiOUZUgCkvf/
	POqjasYeq+v/em6vGjwe1s5bUJe9ZAh0CliKCwfiAvKyj3xij0+irw1NIL0h/fW9BNoCYPpVvJX
	3nLG6j+5Km3aeNnJGUoa7y77Q==
X-Google-Smtp-Source: AGHT+IE7l5xvIFgT9i4m7mh7Oy/v5NjT9bqTFYELpGCEXyYpZaEcHvHT3oTtVXEc7bXN+PyntmQrK0WQUm7ynfY+S08=
X-Received: by 2002:a17:907:3e13:b0:b40:a71b:152e with SMTP id
 a640c23a62f3a-b50ac1cc39emr1445899966b.40.1760179103638; Sat, 11 Oct 2025
 03:38:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-2-raskar.shree97@gmail.com> <175992812188.3371104.5716471946724146308.robh@kernel.org>
In-Reply-To: <175992812188.3371104.5716471946724146308.robh@kernel.org>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sat, 11 Oct 2025 16:08:12 +0530
X-Gm-Features: AS18NWAnttKcW-sKW8_JBGa9qUMRxmLzTjvvzFAZDNvf13qm3vN4yW9SF_3ub_k
Message-ID: <CAHc1_P6xDS1kec8mScCGHfPiVYbBBK8Hr8rgve5xSsLk=2Keyg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: nuno.sa@analog.com, dlechner@baylibre.com, linux-kernel@vger.kernel.org, 
	andy@kernel.org, linux-iio@vger.kernel.org, matt@ranostay.sg, 
	linux-kernel-mentees@lists.linux.dev, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, skhan@linuxfoundation.org, jic23@kernel.org, 
	conor+dt@kernel.org, david.hunter.linux@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i=
io/health/maxim,max30100.yaml: properties:maxim,pulse-width-us: 'enum' shou=
ld not be valid under {'enum': ['const', 'enum', 'exclusiveMaximum', 'exclu=
siveMinimum', 'minimum', 'maximum', 'multipleOf', 'pattern']}
>         hint: Scalar and array keywords cannot be mixed
>         from schema $id: http://devicetree.org/meta-schemas/keywords.yaml=
#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i=
io/health/maxim,max30100.yaml: properties:maxim,pulse-width-us: 'anyOf' con=
ditional failed, one must be fixed:
>         'enum' is not one of ['maxItems', 'description', 'deprecated']
>                 hint: Only "maxItems" is required for a single entry if t=
here are no constraints defined for the values.
>         Additional properties are not allowed ('enum' was unexpected)
>                 hint: Arrays must be described with a combination of minI=
tems/maxItems/items
>         'maxItems' is not one of ['description', 'deprecated', 'const', '=
enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
>         1 is less than the minimum of 2
>                 hint: Arrays must be described with a combination of minI=
tems/maxItems/items
>         hint: cell array properties must define how many entries and what=
 the entries are when there is more than one entry.
>         from schema $id: http://devicetree.org/meta-schemas/core.yaml#
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202510=
08031737.7321-2-raskar.shree97@gmail.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>
Hi Rob,
Thank you for reviewing my patch and pointing out the dt-binding schema iss=
ues.
I=E2=80=99ve updated the YAML to fix the reported warnings. I=E2=80=99ll ve=
rify with
yamllint and dtschema
to confirm there are no remaining errors and submit a corrected v3
patch shortly.

Thanks for your guidance.

Regards,
Shrikant

