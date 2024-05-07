Return-Path: <devicetree+bounces-65486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD78BE921
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 18:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B94B1C239AF
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D5216DEA9;
	Tue,  7 May 2024 16:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nIrnwaFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB7616D9C7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 16:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715099371; cv=none; b=eBzokJcVBxEys1lvN6sA9H9LtwpzF2BG8A2qSObm82dAA5Wycx2Ybm7DjQkp9dVfXFvR+mVDSKfmDQUi8UTDSjz59ltNFTooRuAMSz2O7XAWIvFYAwkb7loD4MiC7hOIdTV5nHQdyIm2g96rvmck589NzaCY4fNBHG1ykIsrQgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715099371; c=relaxed/simple;
	bh=gA40961915NjpJzym6L6HzsY7i//kdLIcIZ/CTYpdew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UzkzwLV9QUo2ON1QksJTGfLOtPH68MCr3R57Ctt24oo0fvpH9TZe0zRZ7hvpp8+3TbKGUeJ24SH3xSK9l34Qp/qQUiT0CdSe20RPY/CgG8eqQPeUXwcne6VRtUG+XJoujlPEqXzbNGuGQIAEmVPtmQkG3Vpaq1z+bRG+BHbcWbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nIrnwaFJ; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c96c096a32so1372303b6e.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 09:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715099368; x=1715704168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hmBmzg39oPwlHH3+Q/yrquaQKff44gbWHvBa/1NwxMw=;
        b=nIrnwaFJ5DoQ/kkLRHCJz/jYw7wYjDe16wQOs8zy+DnWaCpsy+AvColerosQspTrGu
         yqfD4szdzlBPwbpahb1zDXZl3lLVgKA6szhpuV3yLQGhmIhjRPC+mhqNDRPJuHmzh+Lm
         k9ZQZWAOltb1q/pIahheJLwQhpiROOKpqu+ic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715099368; x=1715704168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hmBmzg39oPwlHH3+Q/yrquaQKff44gbWHvBa/1NwxMw=;
        b=wb2pM5IAR+lQl4/37787QgGw6+G5mtAlUdYlOIFMG/SwrvAZyBIzokic7nNuMFcL7e
         RNrfzOLTce6Re67vOykw7nNyfKdeSQaiDRoyTFc2aWov1etrEWvP5TYx0vtHXegNRip3
         RWoN1qRykSl3Yd70FHJaBZ4VuO6/RE57s6Lb7sJ9CiJFSegDsEz852rXsbC3aRnHxhFo
         b9u186dqMTQaAu9xb06rsKneOw5en+SMtD+fOJKzVaCkveT7uHLnMePUOY7vNyotyv4U
         Dzwy0haVHWfihxOlgpmQiG9vCJSCx/AZX8NZxLOTHk1ra/JJFyTwZUAImvQUt99eVJmj
         8N5A==
X-Forwarded-Encrypted: i=1; AJvYcCUYqsS9X3yX0uyI7y1k5WRfWG4tWvNkN3AXht/+i30JUoX2tETn/NRbmaLk/DZAZeuyxLk6tx/oOm92sddJP3ae7uFkUOr+mm6t9A==
X-Gm-Message-State: AOJu0YzDXZlsASXocfeyk5sh/KVSwViuL+L3mrArater6q8Af0H2wkZ6
	H/0MZoeMSNc/wfLm9N/xs736us2SLOWHpECrYH+iZHS3g3u11pdRPfmtMAksG2BH+lxFIwUwx3M
	=
X-Google-Smtp-Source: AGHT+IGKPHWWwihc0S+5xkPBSkMjBhIGIA7BPWOSAQxCu+TbY0pW/3+TSYBbtoXdYXWYPRKrQUft0g==
X-Received: by 2002:a05:6808:308b:b0:3c9:6b6f:b4a0 with SMTP id 5614622812f47-3c98532a514mr53178b6e.51.1715099366344;
        Tue, 07 May 2024 09:29:26 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id a4-20020a0ce904000000b006a0f9e2da38sm4785030qvo.75.2024.05.07.09.29.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 09:29:26 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-43ae23431fbso1121cf.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 09:29:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVrmw7l1tkXlWKv2grDorzulVpgKPJJ4C/CJLv7POWcGRghxfeLBv0jr6zGPSC8xto3Cr3wuwz9VXfmPPVCYbDVWZvHEi6Gk7tXfA==
X-Received: by 2002:a05:622a:1243:b0:43d:a002:b with SMTP id
 d75a77b69052e-43da00202a4mr2608201cf.9.1715099364710; Tue, 07 May 2024
 09:29:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
 <20240424023010.2099949-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=VFk3epSxksh+n_LupTiZp=gK=LB2NESGy5iNF=5xFAmg@mail.gmail.com> <CAHwB_NJMWR883kjshtfBFuDBcM9Av87Fx2Jf4d=3_5LLnhUFXg@mail.gmail.com>
In-Reply-To: <CAHwB_NJMWR883kjshtfBFuDBcM9Av87Fx2Jf4d=3_5LLnhUFXg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2024 09:29:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wjgc4F2zMhzeLY1hmRN1PTjEpZ7nbYBCp8RPMM7LhPbg@mail.gmail.com>
Message-ID: <CAD=FV=Wjgc4F2zMhzeLY1hmRN1PTjEpZ7nbYBCp8RPMM7LhPbg@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 7, 2024 at 6:44=E2=80=AFAM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > Speaking of which, some of the panels that you add to this driver seem
> > to disable extended commands at the end of their init sequence, but
> > this one doesn't. Should it?
>
> I  have confirmed with himax that disable extended commands  used
> at the end to prevent accidental writing. And our inital code has been
> confirmed by himax before FSI. Considering that this has been on the
> market for a long time and there are no feedback issues, I think it shoul=
d
> remain the same as `panel-boe-tv101wum-nl6.c`.  What do you think?

It's fine with me to leave it the same as `panel-boe-tv101wum-nl6.c`
had it. At least it should be more obvious to people that there's a
difference now. ;-)

-Doug

