Return-Path: <devicetree+bounces-16408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A56607EE86D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:39:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DF2D280FFB
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70F7645949;
	Thu, 16 Nov 2023 20:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTZBx4Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F984D49
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 12:39:31 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-da077db5145so1226510276.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 12:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700167170; x=1700771970; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ie4bIp+/8X3baaFx5LodBCI7zgnvFrvMzLlKJ9qcML4=;
        b=mTZBx4IkQ79AMp8rx/4siUqlA3amnJIxLXVvYGCGBhm4C+dzYByVlDRUJnPVfQuTyu
         Q39eqSd6au/Shk+YfRyFtwf4a4MRz0DzpHVncTHSpA3pSSqC5OzUNiSennMgYET9/biq
         gu4Nr0oHsyWUXu7adNoyRrYu3/0w8vO0p+Qquq6ao4/2M74SS0kZ2pIyeE2N7qTW8KLF
         Zka1PQpGGTl7B1XaP8vD1qrY0DoqMOFoHxLYzXk80aVQ4UHkiW7Nv6FAcLZD9RCmXJW/
         Zej9UZsiS0new5umN3cu46MERDXOrcGuhUJOU+rFn7LWCZowI2ihl89nzbCRhKLFpTur
         1QXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700167170; x=1700771970;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ie4bIp+/8X3baaFx5LodBCI7zgnvFrvMzLlKJ9qcML4=;
        b=gnyZnfqvaOLd0FkEtV54wa5H/rft03VUWzjkTBCHZCyXH3kxDjuo+/aDIIb/cBhOkX
         qETNuDQBpHFtQplKc687d2vb+4OIUzDqTd02/o/OUdfR1+PhejtxYMqM9yq3a1xeCXGd
         eWYfq6KVQhC72BZLiXZlpj7HwxaJCH7GyhJJVBjN6LlA6S70U64ckWNtZU0BgmyQfdaZ
         VGQXozOxL5t5XWYgs+0SYJ6EUCXgYDmsWy79xj43a4H/Lbg7PjOkxzOCEMX7r3+WeBVH
         4ZirvMYhQTtVBudOUNU4YYm4IKa29Fc4ezKw7xDVfEICqdDfjISYucqu9BYPXe5AP0GL
         R0kg==
X-Gm-Message-State: AOJu0Yy1IcZ0ejW3ocoy2hmOpCx7I0uitOATmLBZsV2nvDLJzybZikus
	Sw63rnhAL8oxKDyVX0llYme7FzHjubdEuE/WM/UzcA==
X-Google-Smtp-Source: AGHT+IEl05nrGsWTPLgWubxHE+fCn4FbX2jQkSHiv84o+RQr7HDu/P2diCHWO/l3K96sMozK9YE7r3a4UuHHpB6baak=
X-Received: by 2002:a25:400f:0:b0:da0:c49a:5fed with SMTP id
 n15-20020a25400f000000b00da0c49a5fedmr13754181yba.50.1700167170644; Thu, 16
 Nov 2023 12:39:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231113221528.749481-1-dmitry.baryshkov@linaro.org> <20231116183609.GA2742530-robh@kernel.org>
In-Reply-To: <20231116183609.GA2742530-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 16 Nov 2023 22:39:19 +0200
Message-ID: <CAA8EJppW3v7Ozr+KnoYYF6GXE5DqqMjEiETpaqfC_sE3ufNhfA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] dt-bindings: connector: usb: provide bindings for altmodes
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Hans de Goede <hdegoede@redhat.com>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Mark Gross <markgross@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Nov 2023 at 20:36, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Nov 14, 2023 at 12:13:26AM +0200, Dmitry Baryshkov wrote:
> > In some cases we need a way to specify USB-C AltModes that can be
> > supportd on the particular USB-C connector. For example, x86 INT33FE
> > driver does this by populating fwnode properties internally. For the
> > Qualcomm Robotics RB5 platform (and several similar devices which use
> > Qualcomm PMIC TCPM) we have to put this information to the DT.
> >
> > Provide the DT bindings for this kind of information and while we are at
> > it, change svid property to be 16-bit unsigned integer instead of a
> > simple u32.
> >
> > NOTE: usage of u16 is not compatible with the recenty extended
> > qcom/qrb5165-rb5.dts DT file. I'm looking for the guidance from DT and
> > USB maintainers whether to retain u32 usage or it's better to switch to
> > u16.
>
> Depends if you are fine with the ABI break on this platform...

As much as I hate it, yes, we are.

-- 
With best wishes
Dmitry

