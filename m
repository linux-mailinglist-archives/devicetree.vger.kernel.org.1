Return-Path: <devicetree+bounces-249705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDD5CDE3D7
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 03:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DD3B830019DC
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 02:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46F813B58C;
	Fri, 26 Dec 2025 02:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IYxrDFvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A059443
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 02:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766717224; cv=none; b=AvUrF030COIn2PvvezpmZamIkVF4BBz2Em8z3PpfYOabHOmsmFhvl+iwT2D3XWUBQYokJOeTmPwSCDvcpIaKG/YUQfKtpe4lts+YcI8bAK1V4opGBA0ivf098t+HphZk1ONw6GMy8i80cIKm59iu8ixQghlIzlj/ukH3i1zGTAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766717224; c=relaxed/simple;
	bh=xJiiTZNZCL31DvVz90Wx0EslqHC3mu+ygpLgc6tnU0k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mddXIHVGGk09MD/b42NqCHHEk6VFCcY+hcZZNO67fCxgkzZr1F2A5Nk1zegLmyBGxlDJPDBgVZTbEDT01QYiPq+3Wqn98XMl+C29TcDWXST9yablLZD9CbZ4+feeT6GsggoSuZUWs0TiXMVsfESqTcamwCo72nINhoiJs7hqP7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IYxrDFvX; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64b92abe63aso10820391a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766717221; x=1767322021; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sc6VFXAWg98c93WjxpNUKPTmn+y7MpCFPtCQUe/fiGU=;
        b=IYxrDFvXirNlaYZhCO4Ed5lMBHRKYrqSPdbo4a9almOQ3pVoMtVuG5z8iMyYV+0avf
         smA+2iCugSw6cRA3nxnEYBF6qdDJ6KvdJ4j2c8imtZ4iv+OuIoqoAScgpemvfsIUL3s6
         i+UPCELFVMrCjIg8RUiW4JPIKM2Q2N3oLqKLZybrV78GK/jfBjpjYmzfd0AABdpAj2zU
         87RxrifbZ25QHGDI5cRpfpbqMBvX3mHxcvPwdGIrLjkG5+29ssJ2xQYF8agZVXuYcJSL
         YvPh5d2mFWP8lcCvPBXZyC0Hwaokx5y/mVOEW9A32kh/1tzA8UdWZWPo5y7MC9E4M31O
         OmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766717221; x=1767322021;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Sc6VFXAWg98c93WjxpNUKPTmn+y7MpCFPtCQUe/fiGU=;
        b=GcTzNIBKiCBMFNCIyr7kSXOhEW0iXHDB3NC6TIaZdhBys5OazX5QLoK0EPkgcvuj25
         2KLGg9odiiN3rIW9JRSolEOrDlVN5HMx+vDO1KtXc8uvsz/aqfC+xK47eUxLR7tRx3Wt
         sxumo/cvm1y4spWtWGZxWQAbkm8sOB4ZIEs0CLa0EsHQKNNmwatINN0bEOqwg7elTXaE
         Vv3/T2DjiS2IxnXC11KRbHjSCUEEtMJNAGJy539gCu1aJLNNy3rEp6/1ThW9cqFI6d6L
         Mg3VQzRXnKJutk4b5tAeHucQMllRitnmTcSnvVuh7oicQNCsFJGOA8214cUnzy+5Ma+p
         Sy9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuqeeBoWkEU1y0o+7tUOaVeKeMKy6B5iVzlqAuKnCrlGzUNpPlG0cDsi0YDS8J7SUhrWkiz+5ORdv9@vger.kernel.org
X-Gm-Message-State: AOJu0YwWskM654WQsVq/sHl8PjA/10f+06qdBuilfy4hOmpguIO8ZCAC
	xWBGu9aWnupHIiMUETSJhUi9U5YAcghJlN8Rq9iwtZQ901odzUqk3ZYOKZBMf6PxHM3L/L1HFlN
	+cSkzVs/gOGQ7c2MNHJcA6ONVcInYEos=
X-Gm-Gg: AY/fxX71Vb9dqu482S1sb/46gpAJSej3gBexRMxGGIlJsDyK3nwvs93GB5QDqPu6g7A
	MBdI3HEUF/Rg+9xAbkEtcsm9zFlGkI7jDK02YBbsPrPy5xcKfzFgU/aNWIU2YEDK/okB8d3Iaig
	FuTiNbsQFxrERBcmGtCGL35sdFFnLA5sXFjC0d1eQVmZ4+dsFArs0I5ZQkr3jWfTGPB/Qo8I5pl
	Iwa4/nDTpvQo8RN2QFrAUrqdUu6B1QAVaM9mAR8vO2QUlJTtOhU7hfa8X7ekY0JOomUWHJe
X-Google-Smtp-Source: AGHT+IEIYVIBnbesVoRgIXaKl0qIn6Gn7v9LA2ZlbmCmdpsuWPSHYk6K4E/+9S+Uq59Gj5Yu4Th1cjDN8S21bie23E8=
X-Received: by 2002:a05:6402:1454:b0:649:b492:70b1 with SMTP id
 4fb4d7f45d1cf-64b8e2a6fb8mr23973347a12.0.1766717221216; Thu, 25 Dec 2025
 18:47:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224084821.2092169-1-hsu.yungteng@gmail.com> <490569f8-a434-4297-b11e-ad34ddc4ae1e@kernel.org>
In-Reply-To: <490569f8-a434-4297-b11e-ad34ddc4ae1e@kernel.org>
From: Yungteng Hsu <hsu.yungteng@gmail.com>
Date: Fri, 26 Dec 2025 10:46:50 +0800
X-Gm-Features: AQt7F2rVQjHxlmfBvtqyMd7ayXMOkDaSIbnZF65eOCKeZ-ZxhtBPf_e7OEAJUDo
Message-ID: <CAFT9tykPEt+zTREF9C4AXtGp0qDh_65LjHZCK9F=NFhE-K4dGQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: add STEF48H28
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Krzysztof Kozlowski <krzk@kernel.org> =E6=96=BC 2025=E5=B9=B412=E6=9C=8824=
=E6=97=A5=E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=886:03=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> On 24/12/2025 09:48, Charles Hsu wrote:
> > Add device tree bindings for the hot-swap controller STEF48H28.
> >
> > Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
> > ---
>
>
> Where is any changelog? You keep sending versions but you never
> responded, never said what happened with this.
>
Thank you for your feedback.
I realize now that I misunderstood the process.
I previously thought that the changes needed to be included in the cover le=
tter.
I will follow the proper procedure for discussing updates in the thread.

> >  .../bindings/hwmon/pmbus/st,stef48h28.yaml    | 43 +++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/st,st=
ef48h28.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28=
.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml
> > new file mode 100644
> > index 000000000000..c6a4b02bcd84
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml
> > @@ -0,0 +1,43 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/hwmon/pmbus/st,stef48h28.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: STMicroelectronics hot-swap controller with PMBus interface
> > +
> > +maintainers:
> > +  - Charles Hsu <hsu.yungteng@gmail.com>
> > +
> > +description: |
> > +  The STEF48H28 is an advanced 30A integrated electronic fuse for
> > +  the 9-80V DC power lines.
> > +
> > +  Datasheet:
> > +    https://www.st.com/resource/en/data_brief/stef48h28.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - st,stef48h28
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        pmic@11 {
>
> Your description says something else? Confusing.
Sorry for the confusion in the previous version, the datasheet link
was incorrect.
>
>
> > +            compatible =3D "st,stef48h28";
> > +            reg =3D <0x11>;
>
> You keep ignoring comments. Can you start responding to them?
I have updated the patch accordingly.
This device is not a regulator.
It is a power monitor, so regulator properties like supplies or
adjustable voltage are not applicable.
>
> NAK
>
> > +        };
> > +    };
>
>
> Best regards,
> Krzysztof

