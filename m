Return-Path: <devicetree+bounces-86477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDFD934559
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 02:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 415491F2241F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 00:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B9F197;
	Thu, 18 Jul 2024 00:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cEx7Qrvh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E8910FA
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 00:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721262089; cv=none; b=fhUtBESoTq9k01DCVnYIODRnNJjd4RkNJjCqqBhLb4oakrNFvkFUD7/Bo060qXSaFFsH61eU2THnXUwJEYgur78zA99mxU8NRWjs/h9FZGbmGfjJ1foI3KN2PykwoBiCFyPAoIoj2m42F2n2eyYOBY6PCa2pwLlh/V3zidu3u/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721262089; c=relaxed/simple;
	bh=qfZaM8VI9ijVSJOyXMtAz+GFmiwxmMVRmm55/KX47Cw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MLzyD/tfkFdbEeM0UYeiUDi84IYXj2fG6MSFyH1e1Ub1Rf6Ve/SeqLXLYDBSM7R9NJ4v/x+tok0G+0Ht+H5nTam4fS5SZOJdVIXVtYKPO3kd+6T+i7pxEGivL/wBnme4CuQjd3JFDp51oFUt07af5xKvgcErmXIT39no8jDB4Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cEx7Qrvh; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6ad86f3cc34so1576666d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 17:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721262084; x=1721866884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfZaM8VI9ijVSJOyXMtAz+GFmiwxmMVRmm55/KX47Cw=;
        b=cEx7Qrvh7A9UcogLFB1sr2kaSwUKz4vhRKoSLZtTj0YZBEF2rXkD0T4/BdemFQpzn6
         6WGqapL94VD2irpl4l5ziunqxFovAFSht/ZjVCU+y5jHQNq4tJqS3mtidr1WXi7nvoJL
         wBsxtTEMVvN063yDnq4o85JGsQb1hY7xMF8DI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721262084; x=1721866884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qfZaM8VI9ijVSJOyXMtAz+GFmiwxmMVRmm55/KX47Cw=;
        b=nogsk/OA5SQOUijja70+TOpNucotX8C4+5p09MD3BT2h+bvxTf865iBCLeF86PBFWd
         WVwxLUFidmoo1ICyTDm2JKRJ+BjwO3CQ4FzVZ6F3NvZaYK766woifnsJZ8KnnCADuvbe
         vnIXY+t1jBoZg7D5koE8PFgjgvfLVQUyTUvUv3CG//gilgpeEofWGcxzGTYjCLBdSiKk
         it2Hh2WPp3CI+Noa8bxITPHmfmbVZlPgwgZkFtv6Losw/IQaUbgTG/IuA3wBeHim0z3k
         VI/ySpsCdwIUtqIr7LQYgHQsusZfHpU5njREk/qieHNsk7vtTOQyku+O4SBqXraBjwaj
         6e5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEqZ2QcayQ3xqzqpEdQDpYQoSnYWNwYuBNDBistOTQZU4qQetcfCN6+oW+2ws/3DHUpdLDDq0amUO3MwXmMtSi9neFQP1FkQX2mQ==
X-Gm-Message-State: AOJu0Yy+HRNq1tGbcRoNdTKnqNzRwHzojt/Zn4bId8YfpUdU+mGUbaR9
	vJdcd8k47izIVXQBreKeHEJI9ZSMrKDBFhJU1+R8eTSqXBW1QZLjl+JF+UOPBSgMv9h21WpfHhw
	=
X-Google-Smtp-Source: AGHT+IHpmMkvCQADXx5G7G1GEVTqJiMKEVfbJtk9vTV1TvJiHfigEgke52OFtBv7gZtv77kFwL27Cg==
X-Received: by 2002:a05:6214:628:b0:6b5:e403:43ee with SMTP id 6a1803df08f44-6b79c929295mr12203836d6.50.1721262084534;
        Wed, 17 Jul 2024 17:21:24 -0700 (PDT)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com. [209.85.160.181])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b79c5230casm3360346d6.68.2024.07.17.17.21.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 17:21:23 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-44a8b140a1bso145371cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 17:21:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWUUKUOyXlnCMMoOlgJ41NkEy4o5JuZA1PDmSEIl+slSUfib73xP8Uk8TFx9ec1G+yCeWNk6P0kL5DBCr197I7RNbNVNpGVr+N1Jg==
X-Received: by 2002:a05:622a:a70c:b0:447:e3e3:77c1 with SMTP id
 d75a77b69052e-44f92572a39mr538891cf.29.1721262082740; Wed, 17 Jul 2024
 17:21:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-1-31b7f2f658a3@linaro.org> <20240715-scorn-canning-a7f23b9e2039@spud>
In-Reply-To: <20240715-scorn-canning-a7f23b9e2039@spud>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 17 Jul 2024 17:21:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-nOMu-JDQ3T=ZRJ-rZ0BTtyzFVfnzbtCJdbRzAq3YMg@mail.gmail.com>
Message-ID: <CAD=FV=U-nOMu-JDQ3T=ZRJ-rZ0BTtyzFVfnzbtCJdbRzAq3YMg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
To: Conor Dooley <conor@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Conor (and/or) Krzysztof and Rob,

On Mon, Jul 15, 2024 at 8:31=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Jul 15, 2024 at 02:15:37PM +0200, Stephan Gerhold wrote:
> > The Samsung ATNA45AF01 panel is an AMOLED eDP panel that has backlight
> > control over the DP AUX channel. While it works almost correctly with t=
he
> > generic "edp-panel" compatible, the backlight needs special handling to
> > work correctly. It is similar to the existing ATNA33XC20 panel, just wi=
th
> > a larger resolution and size.
> >
> > Add a new "samsung,atna45af01" compatible to describe this panel in the=
 DT.
> > Use the existing "samsung,atna33xc20" as fallback compatible since exis=
ting
> > drivers should work as-is, given that resolution and size are discovera=
ble
> > through the eDP link.
> >
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Can you comment on whether you would consider this bindings a "Fix"
since it's a dependency for later patches in this series (which are
"Fix"es) to pass dtbs_check? See:

https://lore.kernel.org/r/4bca316a-2334-425b-87a6-e1bb241d26b5@linaro.org

-Doug

