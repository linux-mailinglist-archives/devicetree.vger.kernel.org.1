Return-Path: <devicetree+bounces-45893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F9B8672B0
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 463DA1C26EAD
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101CD1CFBD;
	Mon, 26 Feb 2024 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="a2XB+967"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFBB1CFA7
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 11:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708945793; cv=none; b=Es6rKtZn0GKgFvLYVHx3EKZYojVYSrH76h9zt4eyhEvlzQBkg8+nfXXuzm8hN1vYqKIk+tHMFQ07oeuSiAzIQmjieaDTh7RgIVb/tgbw1gYw98ybOeuaA8fTsO/5LjBfCRivnatSB9oM+NkaMlr9KUAlCLy8Ut0zlg8zaEXK8f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708945793; c=relaxed/simple;
	bh=+jLqiY6cbZkUaeKfyLrEDAjpX1juOggyIGmJMdgRqLw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UKMno71G92L0pEaiTmwQkpz+pwiN+g74EiUZjovOtsi8PtyVr4SjTJwT+rcVBRuKHPkfFoD+fLldXPYvR9fT0qVweP1mZYqidZ4DDUxxOS3KDVNt9cbBIivFIW4a/DGmtGIu9nO/IEQUT+fWSs8oSwTKqy5ea49yu8hmLmbkJcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=a2XB+967; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-7c794deb6cdso139294139f.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 03:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708945790; x=1709550590; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JXLJhA1S2e5W/9PS2kr0cO7SXhI9yiOHp+T3ajmhreE=;
        b=a2XB+967CIeQo5ZJMtHJc0wglP2aueVO3UgSq70jxjug7SRjyemB3PM1Pm4fURQmlI
         Pog68vVPTzTL7geTiWU93hHLzdfkGlDQ1KMLsy68a4vq2mKCtbWub6oxmTQVBcYqLq5B
         bzwm5hW1uW8QBJCLzHkGa3VqBc9/Z/SVWGin1jazTdt3p/YDf5hrTMM7JGgFHURU943c
         qSPC6WYOB5ZHZ5un8c6/0gvtaw8b/QZ+KWMG7ru4MOyMVb9pxHalXYfWKaSeV4iK5auw
         tcw5Ez4L0cVCLu0Quwvbq92q7oh7z87M078T241mOlK/ESkHQZKPjzKkO7N41sF1Go0x
         fOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708945790; x=1709550590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JXLJhA1S2e5W/9PS2kr0cO7SXhI9yiOHp+T3ajmhreE=;
        b=kO7GiUOfENzbj8/rlachzTIBgjA2nzx7i+Wne2KTNytQO6k7tctEVhI93SOPcki1yO
         h28DuppWaQvMs0eMtS2+u5MzYkaHK49VS5MyCygFfO0tIleroY1AUG/QW8kZ1rzac+4M
         z0W5Q/Rff0RwGG1AOuJr4BkRsyzp4cW37GdzQn0tjOcpon+5Yth7M34xSF1hZSc9+hjJ
         GLBmP4DRls1Mvk2EWyVu5BmIrFNsM3tdo/YfCGIdgkGBJJrrdo10pcfokPWgw8hWol/5
         Rd21+jYcaQxT9gsJ+zziIf8Jptjt5Z95EeLGhthlgQmJgq/Hz+RGK1CSzScLu0UfVu6e
         8jhA==
X-Forwarded-Encrypted: i=1; AJvYcCU3+uT+mjlLVxwQoUE1lp2Cw3SLANuF1BMP+b10wJEjajVETHej3Lq8tqOoVDcG+lWfE/psPYN+abFZQaS6GXvR1LZIRREOAVyDaQ==
X-Gm-Message-State: AOJu0YwqLzsIxbLRuXCp/NzkRggVHqMgKaS/lsQwEwV+Se3AxehY40i3
	yE8mRnMgIYTHJ9ULqd+6bo1DTyc2W9aqhnS65N9RSAMgQXiwhp5vEwZ7Br5sKF8k3bveHgcmEtQ
	O31zAiVBBO1VSlgmZstEwY4EpXI9b5c4GpKie
X-Google-Smtp-Source: AGHT+IEwEjd31elUaYKxIxM1mh70wep688OMqmuk7WudxZLnasYmVXOgCmS1ONaiIwRiUMQlImGVZaLvPKNgX1VcCmA=
X-Received: by 2002:a05:6602:2765:b0:7c7:9944:cc8a with SMTP id
 l5-20020a056602276500b007c79944cc8amr8677661ioe.5.1708945790588; Mon, 26 Feb
 2024 03:09:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-10-panikiel@google.com>
 <310cefcb-a4d5-4f4f-a482-ba2ff08a57f6@linaro.org>
In-Reply-To: <310cefcb-a4d5-4f4f-a482-ba2ff08a57f6@linaro.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Mon, 26 Feb 2024 12:09:39 +0100
Message-ID: <CAM5zL5rQsYuo3+rW9+YPmvUg9PtNiR0Dy59e8Kf787ranfLh3Q@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] ARM: dts: chameleonv3: Add video device nodes
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 26, 2024 at 10:15=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> > Add device nodes for the video system present on the Chameleon v3.
> > It consists of six framebuffers and two Intel Displayport receivers.
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
> > ---
>
> ...
>
> > +             dprx_sst: dp-receiver@c0064000 {
> > +                     compatible =3D "intel,dprx-20.0.1";
> > +                     reg =3D <0xc0064000 0x800>;
> > +                     interrupt-parent =3D <&dprx_sst_irq>;
> > +                     interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
> > +                     intel,max-link-rate =3D <0x1e>;
>
> Rate is not in hex! Rate is in Hz, at least usually...
>
> Fix your bindings...

This is the DisplayPort link rate, for which the allowed values are
8.1 Gbps, 5.4 Gbps, 2.7 Gbps, or 1.62 Gbps. The standard way to encode
them (used in the DisplayPort DPCD registers and this device's
configuration) is by multiples of 0.27Gbps. This value (AFAIK) is
usually represented in hex, so 8.1Gbps would be 0x1e.

