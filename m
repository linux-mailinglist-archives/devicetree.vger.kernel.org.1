Return-Path: <devicetree+bounces-127027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDC59E4388
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:40:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01105B6488A
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 17:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A01121765D;
	Wed,  4 Dec 2024 17:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LSKG2vqp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9929221764E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 17:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733333175; cv=none; b=jr2mg0XR8NtXi3uHCbnQI6C04if7mN61hX4djcMJAsb45ZST4hG7ZbutdFOCfDTiM5SF+rPTUqZBYXR+/PgtzjcTY/6Yn7t4sIqJB2iExNv794i88q+FWuZJHLSGCW/U74a/lHUiN7Tw5dl32rZmDNBOAz1WEiR3Heqs5RNkido=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733333175; c=relaxed/simple;
	bh=3XOKyfOtCe+byiVNEcWIU0XMb6iWf0YuG2kDOBxGSKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dHnUUOCZsXGeFpp/TJIkr54rWmmXEk04/8scokc/XAWe2hFxmGkmWudO0iCpHVbGzYKeJWhtO3FnfJfds8PbtnlUwn8LPsUFDEhlrWYPdlg5b1JYIUhaMNwhlC1I5Em1c6a+ZWC0mF4rQ5EHCjVYtuLlIpZshtbxWbxS97FyQT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LSKG2vqp; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53e0844ee50so59180e87.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 09:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733333169; x=1733937969; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcxUVGNwDSHYT0cP1lB+JvbULa6oEpjDSAOsUsCsW1c=;
        b=LSKG2vqprD3CCsdcM8jWHqrbrOpbuAGhAlFzg/M4LGr9jIQ2EBeekSdY8OU7LUL/2q
         QGfDRQQdYikv6OWWcgp1Qjso/q0Uxjqti+wqhT2Sk/eGIIt21TVLvYwOWj0g93FjI6+E
         3Hz3pNUf+i9ca7bS5qmDB/j1gKcQwjjgYfaYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733333169; x=1733937969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wcxUVGNwDSHYT0cP1lB+JvbULa6oEpjDSAOsUsCsW1c=;
        b=S5RDvH/2IrdJ/ClLErS4tWoTavgIpul59KKH3KTZPQutp1rr3AlCbiSy++ze2H8uZc
         RbylwlMHi+ft4UQhzbbswwL35V5rTyoTEG6j7K7b5I7VL1B8Wql02gggtd7fURdxUWF6
         3P7FLGqgw1tS0pWkYol3U3MhBMkK8EYZLa1w38pnErumlpI/RN2G3IyqWxEzTXkpIQ4D
         8v0RODIYZ+GOPmygwsBUA0N+gMI4+UxPDSh0OzRAHChtkjjdz+DgJgIALKdcAY+Fn6+V
         QNYw5FJ3U1l8WMNhf4Oem+IML8olfwPVVl+oYfEuKelvKtzOnUaI1IyFFlVVzB1geIEx
         MgTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQUJ+mohRl8P2FmERLxk6i11pd+7kWDoCrFbU7tVMeXZAeXtHn5w29gXrGu//dyUHWdrQL7O4OWdVG@vger.kernel.org
X-Gm-Message-State: AOJu0YzYFcapx08C+9QQiuQpSFwen4sfPwDNg6Pik+nUSKr59X4TyDdo
	lEPOgAN+xlfP+oWTbVXVXOOr5M18WVP4uV5zhmey+IAWFtzYKNzEU4hVRa2yixFBxJiF4gOrF+7
	W0w==
X-Gm-Gg: ASbGncuY27S3bRv1OVdgviGxTdvyij0hHlsDqAADzvO120mjtLloZav+FeFHwL+azxg
	Yi8KkhInDH1S32r8VsHhvivxCnIJPmP2WGnrjwl4zZjAv50ohzK2pK85MLkA0hwGuPRNmqeHL+b
	w+R6eOtifnxFZqS4Jjw1ds5sqbZoxqEXB/EHZ60/RKPO/RSSd+zDa5PUgABsglZPXMIh18gQV3c
	0WYDXI2a/QWjTeg9X/Q1mjztV6Ve/zUzrQkK80ZbA2+RITK1oaPnbIXD0C3f1e/3Tmn7193OQk/
	hF7rcw9bkFVE2g+L2Q==
X-Google-Smtp-Source: AGHT+IH69kzeXo5CAJnGrRWOgTy0ycl1lgo+dYSbEkPNFerONp8p+gkS3AyKb+QWgOpLTkWMrDkxjg==
X-Received: by 2002:a05:6512:3d04:b0:53e:1959:3239 with SMTP id 2adb3069b0e04-53e195933admr2368934e87.28.1733333169214;
        Wed, 04 Dec 2024 09:26:09 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a2b5csm2243574e87.283.2024.12.04.09.26.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 09:26:08 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso82352051fa.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 09:26:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXWCJR4FbX+DDxQBIlebIpBGC+GcPSSkczqkV0b+LaFR6tt10X7pLyCaIfRq4/YcZYa4TXQg2dz0HbM@vger.kernel.org
X-Received: by 2002:a2e:a108:0:b0:2ff:c027:cf5c with SMTP id
 38308e7fff4ca-30009c3f871mr30428561fa.16.1733333166812; Wed, 04 Dec 2024
 09:26:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204150326.1470749-1-quic_vdadhani@quicinc.com> <20241204150326.1470749-2-quic_vdadhani@quicinc.com>
In-Reply-To: <20241204150326.1470749-2-quic_vdadhani@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Dec 2024 09:25:54 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XF+9wxZ5xNtO3Uy8QW9UY4tb+KR46jkondvBeQuVLsrA@mail.gmail.com>
Message-ID: <CAD=FV=XF+9wxZ5xNtO3Uy8QW9UY4tb+KR46jkondvBeQuVLsrA@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: i2c: qcom,i2c-geni: Document DT
 properties for QUP firmware loading
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	broonie@kernel.or, andersson@kernel.org, konradybcio@kernel.org, 
	johan+linaro@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, =quic_msavaliy@quicinc.com, 
	quic_anupkulk@quicinc.com, Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 4, 2024 at 7:03=E2=80=AFAM Viken Dadhaniya
<quic_vdadhani@quicinc.com> wrote:
>
> Document the 'qcom,load-firmware' and 'qcom,xfer-mode' properties to
> support SE(Serial Engine) firmware loading from the protocol driver and t=
o
> select the data transfer mode, either GPI DMA (Generic Packet Interface)
> or non-GPI mode (PIO/CPU DMA).
>
> I2C controller can operate in one of two modes based on the
> 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
>
> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
>  .../devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yam=
l b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> index 9f66a3bb1f80..a26f34fce1bb 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> @@ -66,6 +66,15 @@ properties:
>    required-opps:
>      maxItems: 1
>
> +  qcom,load-firmware:
> +    type: boolean
> +    description: Optional property to load SE (serial engine) Firmware f=
rom protocol driver.
> +
> +  qcom,xfer-mode:
> +    description: Value 1,2 and 3 represents FIFO, CPU DMA and GSI DMA mo=
de respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3]

I'm a little confused about this. I'll admit I haven't fully analyzed
your patch with actual code in it, but in the past "CPU DMA" mode and
"FIFO" mode were compatible with each other and then it was up to the
driver to decide which of the two modes made sense in any given
situation. For instance, last I looked at the i2c driver it tried to
use DMA for large transfers and FIFO for small transfers. The SPI
driver also has some cases where it will use DMA mode and then
fallback to FIFO mode.

...so what exactly is the point of differentiating between "FIFO" and
"CPU DMA" mode here?

Then when it comes to "GSI DMA" mode, my understanding is that the
firmware for "GSI DMA" mode is always loaded by Trustzone because the
whole point is that the GSI mode arbitrates between multiple clients.
Presumably if the firmware already loaded the GSI firmware then the
code would just detect that case. ...so there shouldn't need to be any
reason to specify GSI mode here either, right?

-Doug

