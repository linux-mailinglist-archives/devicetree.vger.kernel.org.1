Return-Path: <devicetree+bounces-77294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C51490E04D
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 02:00:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD4951F23007
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 00:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9261802DF;
	Wed, 19 Jun 2024 00:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S0Q8euxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F51B155322
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 00:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718755205; cv=none; b=pho9rWGyvX7oO7prMhjz1h1wrQ8eEoRLYaiNzsDAeTlrR8Ss4FHp2pytk9ZuufixZ2HV21+0WiAfH6pZmtuB7vuoOvneqpp1dILO72kUH9E+EnXSEnnlw0j3gR2MXLpDiFd1lm4vzyWdsVI7/Dq13/J2IKXyOvGROE3dEPnlhos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718755205; c=relaxed/simple;
	bh=PuNTi5bUdDeMTi/XN+FoMWULngrNdVFbUfdvtMX5iBM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CqCDmMjOKqnGodJIXM/1d6b+9CpZjIEnaATHiXQ45dzM2YCnRagxUdyqLixeViAjCCEwrE9tB64fSjMu9lt+efrnxO/urIOCYtDnhPEtHH3WJji9ohKtNqN3S2BGTDvYbgDKcb84ukHinoShACTBe0qbYV1mHDG0O6+Vtkf9diw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=S0Q8euxJ; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7971a9947e6so315380485a.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 17:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718755202; x=1719360002; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dd6aptPdhHSWBGR29uSXjubG6ZgMcokb3JBWxjGVcBM=;
        b=S0Q8euxJlPhuWOpzbrB9x/QxcpZ7Zt0RZtPvTElf2k7g4JZzPkIbQIe2sHwF/wvfj1
         D1esPjvQX9+dObNNo1kxuE97bThVlpN5IEMpRr+O+P8YZmT/smZ0ZixTWItQGxAu/c33
         cMu5ij2fG51e6JW272G8OIKmGnf6LrdHGKTEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718755202; x=1719360002;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dd6aptPdhHSWBGR29uSXjubG6ZgMcokb3JBWxjGVcBM=;
        b=n3vxGvyYicL9+waXyVxbeml/x+D0Qk44AJpLHUCLepVGj5kAvvotslUffJQESFRABv
         SvEMd2ivlM0ziIw8fCIJS1P2CL9zGo6UnqsMp71oIYiQdno6tZEaP9wmaPFgRLPIY8TN
         zKPVNr+3lLVHsw6+6ng7FeIPZbeDzG5M+aV2zLBilenglfr1920KME3PqpNqMM44Wj1G
         np+cT6nsirSwz7boSlQJ6Fnrnnvu4XRdco7wEVCUppKMaeq+842pVhLeqcq7a6+waNZi
         g8njN4L39c6ecFTMidpBtmAGFRSX5fv/wTxTl1/YsjBDv2Ydwua9pAq54Owx0isrwPzU
         6xTg==
X-Forwarded-Encrypted: i=1; AJvYcCXwHCfcburELZNG3kgHIwGcREBR7yZYG756ar1Hss/6nhw3gl8EN5e0yqi77alDCPLFRqCJo9iYhK1DtS1nWxiuX9xPq9QdvgXCpw==
X-Gm-Message-State: AOJu0YyfsLkE9HaALKl0R1FFNGnz4Iw7wN/OASPk5y6lI+LaU73BX+js
	eUoZYOBPR3r/BEgAwGkxrwlMri2cpBgDLJ7gD8k29RKC0QXawmk3cRyDVnMTCRVnFrICLKXc8t4
	=
X-Google-Smtp-Source: AGHT+IFXMTwGPU08NTzW6CIA5GnfbStE0ubRwIGTf72xkGrkVAMLMXuXWP0ne6Em+6Mr9CxnbD/F8Q==
X-Received: by 2002:a05:620a:248f:b0:795:5b40:25ff with SMTP id af79cd13be357-79bb3e302f2mr135902085a.31.1718755202546;
        Tue, 18 Jun 2024 17:00:02 -0700 (PDT)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com. [209.85.160.178])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79bb8aacb02sm4049885a.48.2024.06.18.16.59.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 16:59:59 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4405dffca81so50831cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:59:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVd4VnPL4sAxm0AMbkI/8+pCDTgLyD892tZMEKjJx3v38Bsjl6tgWAU75Bty3nffILWih8y2OOKX6JgReZIQ85cEeCxla2WTIlkqA==
X-Received: by 2002:a05:622a:54d:b0:443:99d8:746 with SMTP id
 d75a77b69052e-444a8b5e25amr1444801cf.0.1718755199364; Tue, 18 Jun 2024
 16:59:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240614-sc7180-pwmleds-probe-v1-1-e2c3f1b42a43@collabora.com>
In-Reply-To: <20240614-sc7180-pwmleds-probe-v1-1-e2c3f1b42a43@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Jun 2024 16:59:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WYAgKRwYrBgFvBjaR8WS6Cf4Q2mcH6ifwCp3ygbEdbOw@mail.gmail.com>
Message-ID: <CAD=FV=WYAgKRwYrBgFvBjaR8WS6Cf4Q2mcH6ifwCp3ygbEdbOw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180-trogdor: Disable pwmleds node
 where unused
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@chromium.org>, Stephen Boyd <swboyd@chromium.org>, kernel@collabora.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jun 14, 2024 at 2:00=E2=80=AFPM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> Currently the keyboard backlight is described in the common
> sc7180-trogdor dtsi as an led node below a pwmleds node, and the led
> node is set to disabled. Only the boards that have a keyboard backlight
> enable it.
>
> However, since the parent pwmleds node is still enabled everywhere, even
> on boards that don't have keyboard backlight it is probed and fails,
> resulting in an error:
>
>   leds_pwm pwmleds: probe with driver leds_pwm failed with error -22
>
> as well as a failure in the DT kselftest:
>
>   not ok 45 /pwmleds
>
> Fix this by controlling the status of the parent pwmleds node instead of
> the child led, based on the presence of keyboard backlight. This is what
> is done on sc7280 already.
>
> While at it add a missing blank line before the child node to follow the
> coding style.
>
> Fixes: 7ec3e67307f8 ("arm64: dts: qcom: sc7180-trogdor: add initial trogd=
or and lazor dt")
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1-kb.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1-lte.dts  | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-kb.dts  | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-lte.dts | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts  | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9-kb.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9-lte.dts  | 2 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi              | 5 +++--
>  9 files changed, 11 insertions(+), 10 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

