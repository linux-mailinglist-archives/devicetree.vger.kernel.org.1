Return-Path: <devicetree+bounces-84767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 443E092D789
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F32B228186F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3121D194A62;
	Wed, 10 Jul 2024 17:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PoqUm5Wt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923A334545
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 17:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720632951; cv=none; b=DyJHJ6BZF1lETHLxOzfmguuTxkBHeItT+XsBxOgdD8JwyN/KPlokxdhVabRp5Z8cGCRezGqhQRwKt+iLFuEVwqf/jGO78Cx1SLCJ8rGOlg72P1OPFvyWWSEWklOMcPLEc0NkQDXimaVYcIorF63mFw1cT8evVk5wsuL/tZb+v6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720632951; c=relaxed/simple;
	bh=qUtJuf7BpW7416xCDEnMAZ4qpPxi046SuSivO4rvOIw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=apP0GHaQhQUi+8SJy8Il5ooDgWy6ARP2neFBe8S8cD8/781mxC+q17xId3+eCXk/N7DspchpwzM18UluvTSXxEAawkm4UaCtN49I/AhjLcjuI7+G283GL1DPWZJlUnUy2sEzogXB8EtC4Zvsq1KwvkAlZqHaIuTyCUz7oqt3/Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PoqUm5Wt; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e03a0faee1eso6730606276.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720632945; x=1721237745; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nq9tNUhoBsUEDC1UEIUaCv3t+k06QOX2ENZA+annY9M=;
        b=PoqUm5WtbpSFgKvx+OFhMCC5edPrcTx1a6ehq9/botlMdxH9B+4MQypr2GzEVMrPzj
         HQgBqLt8IeDCalcwG+wqpak1sMN3z4jWpodkxEOJZn0yrbXVxVTws51Q89/07qgjp8ng
         Uo5pzYFGlSu5dcU3SWmc/o0jZXIFqK9mZZ3CM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720632945; x=1721237745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nq9tNUhoBsUEDC1UEIUaCv3t+k06QOX2ENZA+annY9M=;
        b=GzfdSopWc0B/vLoBcn+G7QLtVg443r6h7MnwZVedsQCqPcYzFRdcizbW/jc+jJ48o5
         fLkMp/dVDjth71L7IhI53fdIlQ2ujbsHVbcJxGK3HMPKqGESE2p6t9prij50jj9ibqcv
         gdU0yHbwhnsp3T47VkNn1yzOQjiKVoChOHV1ikbeyHYGwitXVXjOKqaurPGBfAIBdQOp
         Nq+WE65BLim5F187d3Nl1rTcm0uQK2Gp+TIbh1vwW1PzOnUGpWCP5iqvRu/tYqK581zH
         bUuxxGn8xf8woVpkX0KwvgpfSaPEWSSz6++MyO4xZrYl8vvBlBFmP1N6zgCM4GRFP5dg
         23zw==
X-Forwarded-Encrypted: i=1; AJvYcCVjUL6ZW5kP+AFGkw20LsRGqUAl/QvVL0bc3nzV8HlwtcjUzO4ak6zMLyV7wiotfxsSwqijOpLYZhvyIs5XQZ+bkLfG+9U/5nw4Fg==
X-Gm-Message-State: AOJu0YzhDZWJn72wr3fnBfoTrEKvshut6WTskI2tr6s4aJmgYwsWlSdo
	HWDuda3uTMpxge2P67YXn740D25kxrKFNaJ47f3fy856+ep9tK2tUMvUVyxq/kKy+hnbe5E4Mu4
	OJQ==
X-Google-Smtp-Source: AGHT+IGSOnMpGk1rDnRGVPMH3G12c+Q0Z0LpUdC6XWBlGeU6qXmOgBgrQIPxdv2cXZH+s+tcaZiRbg==
X-Received: by 2002:a25:c54e:0:b0:dfd:ca03:29e4 with SMTP id 3f1490d57ef6-e041b073fa0mr7127768276.29.1720632945641;
        Wed, 10 Jul 2024 10:35:45 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba7495csm18788396d6.92.2024.07.10.10.35.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 10:35:44 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-44a8b140a1bso24481cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:35:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUPiuOSnP/BhkNUVGluuCT9MeKLkgVgxmpoEF184SERSX3+sQegLCU13EBZBftRHjZWeKrHE0Gxi3GqNZYG+/PrhWlnJCt/lpzFag==
X-Received: by 2002:ac8:5399:0:b0:447:f3ae:383b with SMTP id
 d75a77b69052e-44b1a14a434mr3218051cf.19.1720632943866; Wed, 10 Jul 2024
 10:35:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org> <20240710-x1e80100-crd-backlight-v1-1-eb242311a23e@linaro.org>
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-1-eb242311a23e@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 10:35:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XJuV12mStW3eUm5MHG8BA9W_fn0skN=BrtmqC+fnCZig@mail.gmail.com>
Message-ID: <CAD=FV=XJuV12mStW3eUm5MHG8BA9W_fn0skN=BrtmqC+fnCZig@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 10:05=E2=80=AFAM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> The Samsung ATNA45AF01 panel is an AMOLED eDP panel that has backlight
> control over the DP AUX channel. While it works almost correctly with the
> generic "edp-panel" compatible, the backlight needs special handling to
> work correctly. It is similar to the existing ATNA33XC20 panel, just with
> a larger resolution and size.
>
> Add a new "samsung,atna45af01" compatible to describe this panel in the D=
T.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml       | 6 =
+++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna=
33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna3=
3xc20.yaml
> index 765ca155c83a..d668e8d0d296 100644
> --- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml
> @@ -14,7 +14,11 @@ allOf:
>
>  properties:
>    compatible:
> -    const: samsung,atna33xc20
> +    enum:
> +      # Samsung 13.3" FHD (1920x1080 pixels) eDP AMOLED panel
> +      - samsung,atna33xc20
> +      # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
> +      - samsung,atna45af01

Seems OK, but a few thoughts:

1. Is it worth renaming this file? Something like
"samsung,atna-oled-panel.yaml"? I'd be interested in DT maintainer
folks' opinions here.

2. In theory you could make your compatible look like this:

compatible =3D "samsung,atna45af01", "samsung,atna33xc20"

...which would say "I have a 45af01 but if the OS doesn't have
anything special to do that it would be fine to use the 33xc20
driver". That would allow device trees to work without the kernel
changes and would allow you to land the DT changes in parallel with
the driver changes and things would keep working.

...and, in fact, that would mean you _didn't_ need to add the new
compatible string to the driver, which is nice.


-Doug

