Return-Path: <devicetree+bounces-94206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 130E395452D
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D0FFB211B7
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 09:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63EF813C689;
	Fri, 16 Aug 2024 09:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FeGL0h+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A7913A250
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 09:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723799416; cv=none; b=Rgd0weeDUj63W3G5Di25pL4A+LaSG32/m9kqITbvneNYjkSnPMbojIzLrQFcEBa0se0RC5fpoGtZkE7cudQYi+ghPya8KYhz5ytAYkcYDfIqMOHFoGe29cow4bcZpUw/9QfvxE15ZvWLKfN5FMRd4R6OFZFJGONzfvH7gpYOQWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723799416; c=relaxed/simple;
	bh=+447AkOnS1uBqMb8FHGHUkrDqwuwBEyFMUSUD/t7gbU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MIaW+Cexpcqj8CaPXj0SDr0X9Y0AwJNuxLhaY6UNG+BoeBFbOybfx0mQDnTkQyksUQN0nmuGeWaH3lBQhxqXU0UQcihVx2QKvmVoD1H042EtVFG+gY2cQAOYRwpe6S02/yOSmohUKe0bzugSnyFtZVrZWMOmU1f5qo41OIkPOpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FeGL0h+s; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52ed741fe46so1970376e87.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 02:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723799412; x=1724404212; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+OEH4A1p3/H1CuxcdmLsuPBbfALhVq7kSh25EJu5bk=;
        b=FeGL0h+stBW8BNGOQ1BL/H2ddn8AmxOvTFUTXm5D2Y3u78Oe7eICm+jYY+eqgK1IUt
         TgRJ4pJ/nZmCixTCmWYuhtSuZ1wQRoYlMs8xyTXW0hreFpcehwjOcBk8zi5W1cdyRe0K
         5D8Zk4vgcXqIvqBgyo3Sq/srBz48ik3h3RuOhMj0eI3CAgExMLvNtQyYdLMnZ2hV2c22
         IbenbcX0/iimnmWpe+2eLP4fk9BWLLAONrvi4581MrzagLhWRaUimZnqh0xIJDmR7M8I
         sIwZOYVeTN3V0DJVTJz3h9g6p6TloDV2I0VMDK+OU6dbfOIkzNG++536vtePoitPAnBB
         dC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723799412; x=1724404212;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+OEH4A1p3/H1CuxcdmLsuPBbfALhVq7kSh25EJu5bk=;
        b=I2/TVg/ls/OAmyGmZ36DkZ8Ev6TgjNeuXfMnw9wzha2TqbAr/M+U0noyOj+o4TofZo
         FyS7QFxuINviXfbZPPi+rRIA8KO+DjdQ/gCwxX1vdbiM/i3YDB0zc2XW2Wzv/m6lAoZL
         0sr8ISeogd313cboJXfzuwEtDfJ2K+mWB+4BlYaw9At7o/qwrcf53QZdlXclxS0dkDPq
         pW7u0FhVs4f20JI3xVtAz3HJMI+mVeduTmXCPZzU8zDCIIFfifTv4xWwvaAc22D9/vbq
         EIAZ0ZZm349TTrdBl/ws7tOH9kUQXcbn8ZwWC71D78ntyzL+NC1/n1ptryMbGX1XXZ9C
         m8lw==
X-Forwarded-Encrypted: i=1; AJvYcCVMLYe2nciht+Ztisx+849PMneZWnxK8HFZmAcTbdyfIIR8dKMBupeEXnhzFmH9y/SU1igUzkfq+oBFvy/KX+DcOGxBULnrJZaIcg==
X-Gm-Message-State: AOJu0Yz2LZPPz4k3jfBi2kIZ24qj3fGO4c8x5VGWPOVAaXnhOek03IiF
	chtA4Gc6adq6FAInoAP3FoknFpo6NPpNGYO91VsaFg6hJ9CASxTpOZjtMZdLyOPtb3Aymh2DUe6
	v7FZXx6BxjxO8DpiX7AL93JywpNZ4KWIAFePW6g==
X-Google-Smtp-Source: AGHT+IFB3aIW7Bm+lnja7PhaLnwXaRYjuWrHIHMzFAXmCtoDzMvBJ6bByky6rPgRVOj2x6JwSAi/BLj6VPI7F5SZiP8=
X-Received: by 2002:a05:6512:2806:b0:530:ae0a:ab7a with SMTP id
 2adb3069b0e04-5331c6975abmr1399845e87.17.1723799411703; Fri, 16 Aug 2024
 02:10:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <87a5hcyite.fsf@kernel.org>
In-Reply-To: <87a5hcyite.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:10:00 +0200
Message-ID: <CAMRc=Mcr7E0dxG09_gYPxg57gYAS4j2+-3x9GCS3wOcM46O=NQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Kalle Valo <kvalo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2024 at 10:26=E2=80=AFAM Kalle Valo <kvalo@kernel.org> wrot=
e:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Describe the inputs from the PMU of the ath11k module on WCN6855.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> > v1 -> v2:
> > - update the example
> >
> >  .../net/wireless/qcom,ath11k-pci.yaml         | 29 +++++++++++++++++++
> >  1 file changed, 29 insertions(+)
>
> This goes to ath-next, not net-next.
>
> > diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k=
-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.=
yaml
> > index 8675d7d0215c..a71fdf05bc1e 100644
> > --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.ya=
ml
> > +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.ya=
ml
> > @@ -50,6 +50,9 @@ properties:
> >    vddrfa1p7-supply:
> >      description: VDD_RFA_1P7 supply regulator handle
> >
> > +  vddrfa1p8-supply:
> > +    description: VDD_RFA_1P8 supply regulator handle
> > +
> >    vddpcie0p9-supply:
> >      description: VDD_PCIE_0P9 supply regulator handle
> >
> > @@ -77,6 +80,22 @@ allOf:
> >          - vddrfa1p7-supply
> >          - vddpcie0p9-supply
> >          - vddpcie1p8-supply
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: pci17cb,1103
> > +    then:
> > +      required:
> > +        - vddrfacmn-supply
> > +        - vddaon-supply
> > +        - vddwlcx-supply
> > +        - vddwlmx-supply
> > +        - vddrfa0p8-supply
> > +        - vddrfa1p2-supply
> > +        - vddrfa1p8-supply
> > +        - vddpcie0p9-supply
> > +        - vddpcie1p8-supply
>
> Like we discussed before, shouldn't these supplies be optional as not
> all modules need them?
>

The answer is still the same: the ATH11K inside a WCN6855 does - in
fact - always need them. The fact that the X13s doesn't define them is
bad representation of HW and I'm fixing it in a subsequent DTS patch.

Bart

> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

