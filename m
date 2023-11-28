Return-Path: <devicetree+bounces-19443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C0E7FAEFC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 01:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89BDAB20DD6
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 00:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075F77EB;
	Tue, 28 Nov 2023 00:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k5CmGuBg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FE641B5
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 16:23:54 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a0064353af8so1133440866b.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 16:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701131030; x=1701735830; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CITKlR0CufWKC9XKPtJeX5JTUygQCHjXuf0lX1a+I9k=;
        b=k5CmGuBgL//eBtv3B8oa8mDBinVwyu4uO/rWpvqG7QP6DKVFKQGO8ocn3uawIhkLYa
         LuU40RfMzUDUdk+gLE2hL9b6tl0LokWzCCogvpdCfIY6NYMQs8Ftfw3Dp03q6lZz/SA3
         lXpdyEkrKzCrAyd3LZTZ1LofML1V3wCKMkMfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701131030; x=1701735830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CITKlR0CufWKC9XKPtJeX5JTUygQCHjXuf0lX1a+I9k=;
        b=l3wkXUKUpgVttQc0OrLqfzugeEhYqru6S0K7s0q7H/R7rMWOL0plgV3sx+re4AOu5H
         wlDybIQYex97cs8RRsFP8tjmpNhSUMQ218waSEtiCtqSHJqAv2imwLTR+C3OyXVt8tbk
         4A5ipX+PVNzS+vgM6BUZ26zvPm+q3kNAlsR/FjDHIFPwoe6DCaUle3mrLOUfoIzpes+H
         c1bCrX7ZiTfzJalcgk7MbskV5CpfSzI0gC9j05lqDAKWXPEvgAuZblXEi6x0HfveTn3T
         r3pQwIRhbg/0ec4hA4SszvbfyI8+o+KWUYaiZLQ6W2iv2iaolGWUhL5gUL/mRg2NVBD2
         8Ixg==
X-Gm-Message-State: AOJu0YxNJXw0MBMBuwTdbIaY5HJMiaiyv2EFiq+hFkRq5NSHqJcjQoSl
	f60NMtKnLBmAahryKtGsbFr4uzZW/u/HTzRbzwDqPA==
X-Google-Smtp-Source: AGHT+IGWhMjALJn75bf/A6sl9hlU2Yn6BBwf2yjNbXV5K778aLbhZ1AAD3xz26YoGmSNDzMoPmQUWg==
X-Received: by 2002:a17:906:748a:b0:9ee:295:5696 with SMTP id e10-20020a170906748a00b009ee02955696mr14136150ejl.2.1701131029641;
        Mon, 27 Nov 2023 16:23:49 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id h24-20020a170906591800b009fdc684a79esm6225637ejq.124.2023.11.27.16.23.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 16:23:49 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40b367a0a12so1955e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 16:23:49 -0800 (PST)
X-Received: by 2002:a05:600c:3b13:b0:40a:483f:f828 with SMTP id
 m19-20020a05600c3b1300b0040a483ff828mr728526wms.4.1701131028845; Mon, 27 Nov
 2023 16:23:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128002052.2520402-1-swboyd@chromium.org>
In-Reply-To: <20231128002052.2520402-1-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 27 Nov 2023 16:23:33 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xbd7q=SZqje+hW7jfH3Fk7k1ZN-FzE7VrqOZ+rP0a5EQ@mail.gmail.com>
Message-ID: <CAD=FV=Xbd7q=SZqje+hW7jfH3Fk7k1ZN-FzE7VrqOZ+rP0a5EQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom: Fix html link
To: Stephen Boyd <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, devicetree@vger.kernel.org, 
	Alexandre TORGUE <alexandre.torgue@foss.st.com>, Yanteng Si <siyanteng@loongson.cn>, 
	Jonathan Corbet <corbet@lwn.net>, Bjorn Andersson <andersson@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 27, 2023 at 4:20=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> This link got broken by commit e790a4ce5290 ("arm: docs: Move Arm
> documentation to Documentation/arch/") when the doc moved from arm/ to
> arch/arm/. Fix the link so that it can continue to be followed.
>
> Fixes: e790a4ce5290 ("arm: docs: Move Arm documentation to Documentation/=
arch/")
> Cc: Alexandre TORGUE <alexandre.torgue@foss.st.com>
> Cc: Yanteng Si <siyanteng@loongson.cn>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

