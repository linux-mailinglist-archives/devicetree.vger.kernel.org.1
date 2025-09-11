Return-Path: <devicetree+bounces-215984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 734ACB535A6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E371AA3921
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1132D341ACE;
	Thu, 11 Sep 2025 14:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTvjr5C1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E062C341ACC
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601271; cv=none; b=rxL2nmx1C1F+qlHt6gpR8+Yu0OKpy0kHneYW4bXTaw56rNZAVHizU5QzAwZ73AV276+mqyl8W6a68uLxMvs8OXtHjyQIMcr1TwPAS1AsimsqB4/ER3Tb7a3M22JfMFuFb66tjrZLHSDpRxVKbR17AD5PAuLNOwjcTgu5DC/9kuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601271; c=relaxed/simple;
	bh=GVD95ijtO5hBThBsC3JLfeORX1X1YC6KZcQ5Kx6daVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EOQnbN0Es7nueIQK4GLdNJ1bjdcIifL7VZrh+fJh+j+yDsBVGCg3DAd114qq+WxVMxTHcnQeJaA3CO+8YbsdmNUSt9BAAghuDe6uwxTqEMXhUnlY5IaV6ZLqo4oRL47vKYhouVmI3HqBlepvyqNDk0ZfWYRDTp2/StMkGLkAm+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTvjr5C1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C503DC4AF0B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757601270;
	bh=GVD95ijtO5hBThBsC3JLfeORX1X1YC6KZcQ5Kx6daVM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QTvjr5C1NMP7zP8+KH0+BPH0rFKCQxXVbMjUoaBF4oPdlJL2QypN0f+0IiBGlJCt1
	 Y8hnZww0Kq+vWbzZ87kq5UFk21gU2gtcGzLOBddxCdufRij7ZY2gVIhA39ABUeKAc+
	 TmhwSSnOCXQc1hWIhP0SPk5hjEHpizA3OVwATbGUyF2kR3TtZm2uap301WLkZiNtd8
	 4AVcV5BACiEicZ99gMRIkkxwiaN4C2zZ7SdNEqUKOGmPT+JcUBMzvEw5p3g0iZpv33
	 /fTDQIsdrcY3DPx0GT6AO66I1pb7CKwLFfHLEFHtYdCxVlhf3LT0Bp/uvqGDVQMwk4
	 rRXfs5ZkyyI8w==
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-621b50dca6eso295172eaf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:34:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWkbBIDXIWbmNJ6C74hnZPckd7eS1RsxJXXKBdoIuqUGTsRal8s4sT8Jjr1RqmM4eiFMLpQpWmMnFmb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo4BTRTl+Qv1gsm4809AabtCB41wFGT10TxzrUYGJpCosYJQiN
	3WyVz1FDSnnN5rsu2qQbSW0finPo1QllH2P8qmx8tEXYZTSxpgoNcqLEYDEkYOCLmnLJFGUFcWH
	Xlx0Quz/qMhnj3rO8uh+nmqvsZOUSXWE=
X-Google-Smtp-Source: AGHT+IGbk00tPID8iN310y9ykGA0fFcFhibXN8gFrHCzfGMzacrtpqG/yxh3kJa93XH9ICzpfq8IQpP/IrgK0cJ8YRc=
X-Received: by 2002:a05:6820:16ac:b0:621:aca5:9b78 with SMTP id
 006d021491bc7-621aca59c74mr2240898eaf.4.1757601270167; Thu, 11 Sep 2025
 07:34:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908053335.36685-1-xu.yang_2@nxp.com> <20250908053335.36685-2-xu.yang_2@nxp.com>
 <CAGTfZH1ts4_qO4L9X1ZoYtr0SGLW+3EBCqSybntQLGQztALKSA@mail.gmail.com>
In-Reply-To: <CAGTfZH1ts4_qO4L9X1ZoYtr0SGLW+3EBCqSybntQLGQztALKSA@mail.gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Thu, 11 Sep 2025 23:33:54 +0900
X-Gmail-Original-Message-ID: <CAGTfZH28-jHuRdsw-b5jf13VS5iXnkZWdr_KNmR4vW_6t7Jj6A@mail.gmail.com>
X-Gm-Features: Ac12FXzWgpPa04AEC1I_s9xTK8SvK7eQFkIrOGmr8qsySmEeFUzGiiF8cWA42ic
Message-ID: <CAGTfZH28-jHuRdsw-b5jf13VS5iXnkZWdr_KNmR4vW_6t7Jj6A@mail.gmail.com>
Subject: Re: [RESEND v4 2/4] dt-bindings: extcon: ptn5150: Allow "connector"
 node to present
To: Xu Yang <xu.yang_2@nxp.com>
Cc: krzk@kernel.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, 
	robh@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	swboyd@chromium.org, heikki.krogerus@linux.intel.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	jun.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

In order to prevent build error, I dropped the patch from extcon.git
and reply Ack for this patch.

Thanks.

On Wed, Sep 10, 2025 at 12:33=E2=80=AFAM Chanwoo Choi <chanwoo@kernel.org> =
wrote:
>
> Hi,
>
> Applied it .Thanks.
>
> On Mon, Sep 8, 2025 at 2:34=E2=80=AFPM Xu Yang <xu.yang_2@nxp.com> wrote:
> >
> > PTN5150 is usually used with a Type-C connector, so allow a "connector"
> > node to be defined under it.
> >
> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >
> > ---
> > Changes in v4:
> >  - no changes
> > Changes in v3:
> >  - add Acked-by tag
> > Changes in v2:
> >  - improve commit message
> > ---
> >  Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.ya=
ml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> > index 072b3c0c5fd0..79f88b5f4e5c 100644
> > --- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> > +++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> > @@ -42,6 +42,9 @@ properties:
> >      description:
> >        A port node to link the usb controller for the dual role switch.
> >
> > +  connector:
> > +    $ref: /schemas/connector/usb-connector.yaml#
> > +
> >  required:
> >    - compatible
> >    - interrupts
> > --
> > 2.34.1
> >
> >
>
>
> --
> Best Regards,
> Chanwoo Choi
> Samsung Electronics



--=20
Best Regards,
Chanwoo Choi
Samsung Electronics

