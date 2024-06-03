Return-Path: <devicetree+bounces-71766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A35A8D7E01
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 11:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE7ACB23866
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC8D495CC;
	Mon,  3 Jun 2024 09:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A4X+8xUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AB341C65
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717405344; cv=none; b=YlTIyQfTvy6x7OPg12TslCmo+cNoZR98Vs6T1OTd1utEuHc4GojXOnXqMpBgECBUiRFWg/0GuxNhuTYFN3j91Ufba6mz35LePcIycDqq5MTATZGyxx3kIeJ5UAPoiBKOz5T6syf4tn76y2fI58sqExZJz2wsVLat4Ag1EUfCgzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717405344; c=relaxed/simple;
	bh=AcydM7QsoGt9wsjKnGfhQXGfHg0USww1QuCKbjHudHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uiyIFre0X4rD3ljzEg8RZrLSEgXad/D9gkDRvBo/1++VWkA4hBOKy4gCyN5WoX0NHdr+brOMJA39j2mEQxcsLskRYsJVl6HVD8KtU+S29OP1+6C7Ir7POgYZXlH5fz+ozHP2tS7pE0+dJyADi8xFOxm1szH5XhvvIQMlNwmeuuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A4X+8xUo; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2eaa80cb573so19156461fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 02:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717405341; x=1718010141; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcydM7QsoGt9wsjKnGfhQXGfHg0USww1QuCKbjHudHs=;
        b=A4X+8xUokr0JXk57wO3Lo3dxNBUuwPKtS3mKsYy3xPmJzSbPgSt4ofBkH2teDZV0VI
         G6cm6B2ztHoLC57IHKeQ9/cLGMTmiTHyXs0xEirJt8A4cRa7pwmZ3hgkACs2DTdIT0yt
         YPdKVO090l00ubcmpWFNWtg6VMiW6EbM9Qiyu7PxTATxbsYoOpoHKQWBX0sBYgwKBaY4
         8mZ9r4Fjut3qTBPNaO/178EkoxLm9koObr6OfXbg5zqx9imLh0D1KBSvSPX2c8icauYs
         HUnwjC5Q0U5g0fvojJ9MmtQZWseFwEI/dCikyq7uPtw1IGwZj/wAP4QNW0tJt0eRg0nc
         AOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717405341; x=1718010141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcydM7QsoGt9wsjKnGfhQXGfHg0USww1QuCKbjHudHs=;
        b=iSWoP8A1wQclzqNBrMx8dCINQEP6ixdD0vxbbYGlRndIBAKC0xgiCgOG2BB8vsO4JT
         2Ju0zJxz+WMtBC2/g8y7KLoexK50ErNMChPMI2aYN3K9cvnjLgg1+kYaPfT9UH3DeZtS
         714dDBH3+JuqKHFOZvA7DM/r2n1haR60JFLu0jlNmJs6v0K2hCBbNAQWrLX5OcQZ1V+1
         SLJsL09/sVWfmD0yp+Q9e2gkj7rakz8yCl/7sWTBsSr36VUJ66mNuGKyIYR4ioqiqY3R
         RT7fgmCZXvzq7P9D6JNo1LFvNEDvpyA5TW3kCvOix3Zq1YayjN1bn3Nl5SLznfZNTtMa
         6Cbg==
X-Forwarded-Encrypted: i=1; AJvYcCVCUNpMqDVXoTP7EqVVRC1WDvbUfISFyXxP/d9kdOp1PXToc5HGCG91jvwgKXlZRekqGjGhGazyB9pKxY6Q9+5Bwrcof52Q1bncCg==
X-Gm-Message-State: AOJu0YwquyZNsZrA2GuMSGbToKzQoQjKVlolLmq0ZPACL/iBTo6BUgO9
	+W5uI4iVNu3b5GYCVFl9ZxyDTZC+ZBM0vgRPqqUCJFd7mRyFNKMy0RwYKFuPWPwWZ0MNO48ZkfD
	OglNyxvzdv/M98l4rInGLp0XWj6mvFHysWgrwsw==
X-Google-Smtp-Source: AGHT+IEVI3F0oXXlsedQRXHnOmAZNvZf/Ix2jmEABaS7X8f8bO9zDtlbkikRksb5ReaaWxEFK9ztgDuFWCd8m7IkxTE=
X-Received: by 2002:a2e:9f14:0:b0:2ea:83b5:40cf with SMTP id
 38308e7fff4ca-2ea950c8010mr49046331fa.3.1717405340591; Mon, 03 Jun 2024
 02:02:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503162217.1999467-1-sean.anderson@linux.dev>
 <CACRpkdbOAoSDNFhXfz3djUZh1_MQ_T75CC+-LmojRXvyCbUusA@mail.gmail.com>
 <06a4e5fd-3d26-4923-bcbf-0bdd66d756c4@linux.dev> <CACRpkdbSsgxtKqF6ORXubufTaegjysHU7zH-tJfDfKNd=Kdoeg@mail.gmail.com>
 <51d984f5-896e-469f-914d-2c902be91748@linux.dev> <CACRpkdZ19+zUCEBCJJ+MBnnaF+caZKFTDxYiWZ0BRGx+PxN3bw@mail.gmail.com>
 <e4972a07-18d6-4a8b-bb5a-4b832aa2d20e@linux.dev>
In-Reply-To: <e4972a07-18d6-4a8b-bb5a-4b832aa2d20e@linux.dev>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 3 Jun 2024 11:02:08 +0200
Message-ID: <CACRpkdbL63ZWcopgBbANKzr476rO6_cwZL6JLqkvTDXbzzpkpw@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: zynqmp: Support muxing individual pins
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Michal Simek <michal.simek@amd.com>, linux-gpio@vger.kernel.org, 
	Krishna Potthuri <sai.krishna.potthuri@amd.com>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 7:08=E2=80=AFPM Sean Anderson <sean.anderson@linux.=
dev> wrote:
> On 5/29/24 04:38, Linus Walleij wrote:
> > On Tue, May 28, 2024 at 4:28=E2=80=AFPM Sean Anderson <sean.anderson@li=
nux.dev> wrote:
> >
> >> Well, perhaps you should have reviewed the original driver more
> >> closely.
> >
> > Do you want to push me down and increase my work related
> > stress? Because that is the effect of such statements.
> >
> > It looks like criticism of me as a person, so explain yourself.
> >
> > Writing this kind of things looks to me like some kind of abusive way
> > to express your desire and that is what burns maintainers out, so
> > if that is what you are doing, stop doing that, adjust your behaviour
> > and focus on technical issues.
>
> The technical issue is that the driver does not match the hardware. We
> must maintain the existing set of groups for backwards-compatibility.
> But this should not prevent improvement.
>
> Saying that we cannot have both group styles means that the driver is
> permanently stuck with whatever was picked when it was submitted. Hence,
> if you want to have only one style you had better review new drivers
> very carefully.

Actually I did say you can rewrite it to the other style, it's just work.

If the previous approach was wrong, just redo it as it should be,
and rewrite the DT bindings and the existing device trees. If
backward-compatibility is so important, add a new driver with a new
unique Kconfig CONFIG_PINCTRL_ZYNQMP_V2 and new bindings
on the side and select one from a new compatible such as
"xlnx,zynqmp-pinctrl-v2", problem solved:
new driver new bindings, can be used on a per-board basis,
can be compiled into the same kernel image.

It may be embarrassing to have to tell the device tree maintainers
that the bindings got wrong three years ago and now we need to roll
a v2, but worse things have happened.

I don't like the approach
"this was done so we cannot redo it", we can always redo things,
it is even expected as proven by Fred Brooks timeless statement
in "The Mythical Man-Month": any team *will* always design
a throw-away system whether they intend it or not, there will be
a second version.

This approach will be more clean, I think? Also it will be
possible to phase over more boards and perhaps eventually
drop the old driver and the old bindings.

I'd like to hear from Xilinx/AMD how they want to solve this
going forward.

Yours,
Linus Walleij

