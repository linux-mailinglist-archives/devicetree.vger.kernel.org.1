Return-Path: <devicetree+bounces-17591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D967F302E
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 15:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 931141C21A53
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 14:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7390854F88;
	Tue, 21 Nov 2023 14:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BH4Ws3hQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14DC1D72
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 06:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700575475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Lg4k/3dlZcCU56aN6iGyLYrEU5FjTnslfS62KZBVgEc=;
	b=BH4Ws3hQSE9TwFsKj4MUeHe0/Kn2MTxsTeSHDLpwYP4rL2yR0cWHsM0Uob/ZU4P4wMU/E2
	HxTsZbDGXi1r+6caEBDGkbv9awP/Y6YOyKx8RpJHmT3hLjm2zxqOrNb5p31SnZaZ38jH11
	S/v9i8b+5ap1qE89SEYWNk5PjmIMf4E=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-YxHWDTviPtG_C06TD0jeWw-1; Tue, 21 Nov 2023 09:04:32 -0500
X-MC-Unique: YxHWDTviPtG_C06TD0jeWw-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-66fbd02d104so43465906d6.1
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 06:04:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700575458; x=1701180258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lg4k/3dlZcCU56aN6iGyLYrEU5FjTnslfS62KZBVgEc=;
        b=keywKh4JYHFnnsvQA1RSLDrbvvU6WTAVAID0Z+p5pbd6JtvxGy2In/oDdmDUQ7VGLb
         TAPYs915hs68UAymshWp+rB/dx3O5hDYEwd6x87zj6L/Ey5xttdOdsuiZiPbeti1NRr6
         ZdMUElLvrDVbr9S3Njip8bF0fc2rf+LT7I6xh0vxK794j2mTNi7Vwtj1CaRB369qklJF
         LpY7BD6Qg5Hy37RD8t/US4bd+By1vEapzGFvlXbFxjOFmOYmQCaIHaH3zAnT4TX/beHU
         YQ4szhLbO9n1fC4eUF2NjGFhkvKfv6QiRcSj5FyhIctMOjaQuVaaigksspCj09LzGnnP
         tdiQ==
X-Gm-Message-State: AOJu0Yxls871h6I3rv4xAh9Ks4zcnj92guwL25shHNOb1h6N9idLOT++
	zTg5MQ/Dp9jIfZXU/I+Q0cqbdebLwZCtFOJLiceWgcV8KnYc83iswQHV09TijlImB2wGudIRXY/
	tRpGdP2Isy8FKxtgGrgFteg==
X-Received: by 2002:a05:6214:e4f:b0:679:d33e:352a with SMTP id o15-20020a0562140e4f00b00679d33e352amr8633036qvc.1.1700575458636;
        Tue, 21 Nov 2023 06:04:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnLik0eV74HqD/F8NKb24Z8lRgzXhSPmwf6CP38CjCe1HMvqTyw81qfCQiYOQyIHdj/5K0Rw==
X-Received: by 2002:a05:6214:e4f:b0:679:d33e:352a with SMTP id o15-20020a0562140e4f00b00679d33e352amr8632999qvc.1.1700575458385;
        Tue, 21 Nov 2023 06:04:18 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id b9-20020a0cfe69000000b0065b0554ae78sm3930045qvv.100.2023.11.21.06.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 06:04:18 -0800 (PST)
Date: Tue, 21 Nov 2023 08:04:15 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] USB: dwc3: qcom: fix wakeup after probe deferral
Message-ID: <syszua6kmso3k4zfvwwsfjaq4ok6gkexhfli34r3dtjhn63vio@dwhhnn5b2s5b>
References: <20231120161607.7405-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120161607.7405-1-johan+linaro@kernel.org>

On Mon, Nov 20, 2023 at 05:16:04PM +0100, Johan Hovold wrote:
> When testing a recent series that addresses resource leaks on probe
> deferral [1] I realised that probe deferral can break wakeup from
> suspend due to how the wakeup interrupts are currently requested.
> 
> I'll send a separate series for the Qualcomm devicetrees that used
> incorrect trigger types for the wakeup interrupts. Included here is just
> a patch fixing the binding example which hopefully will make it less
> likely that more of these gets introduced. Fortunately, there should be
> no dependency between this series and the devicetree one.
> 
> Note also that I decided to include a related trivial cleanup patch.
> 
> Johan
> 
> 
> [1] https://lore.kernel.org/lkml/20231117173650.21161-1-johan+linaro@kernel.org/
> 
> 
> Johan Hovold (3):
>   dt-bindings: usb: qcom,dwc3: fix example wakeup interrupt types
>   USB: dwc3: qcom: fix wakeup after probe deferral
>   USB: dwc3: qcom: simplify wakeup interrupt setup

For the series:

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> 
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml |  4 ++--
>  drivers/usb/dwc3/dwc3-qcom.c                         | 12 ++++--------
>  2 files changed, 6 insertions(+), 10 deletions(-)
> 
> -- 
> 2.41.0
> 
> 


