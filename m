Return-Path: <devicetree+bounces-116692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6A19B3AAE
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 20:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DBB41C21338
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E18818F2DF;
	Mon, 28 Oct 2024 19:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZPp8NgXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42267524C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 19:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730144912; cv=none; b=TlDw8xK0y/C2/vjec2n5k/yIUUzybD2nKaO/3Yql41rOtsp+m3SJrrvfS3Bhh22lB8sWQh3Chn2K+juppvNenPm0jVmOoItHyMeMTUQGFWt72kyWnJIYwWTNRJb3BPA2GqI3SS/TMykpZYvpuzRUZxCoiOVyas0mvgox2ewia3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730144912; c=relaxed/simple;
	bh=7xLNu9FrVeKEDKB+XHpFWkkAlgiJSL8q8QyE+irsgoU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cKHgJIBwd1KYwHRiaVPkkaNLS3j8Xqh6peKp8xeYJ3dqeQKl2GSoKTFnGOvOXjdbRS1FTlIMRK4owplpy3ZRumHpHWeMy6TZ0s8RXwU9P9G3duKpFZlWrdJcMgp161xT5MpM0MZAdY07uxYvnFRiPLXCJUDWGhKb++sruANs8ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZPp8NgXB; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb5111747cso43113811fa.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730144908; x=1730749708; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kvSrQqqbLNQTUVRHoadSzM2dB0+MrpOREbt1fRDUeo=;
        b=ZPp8NgXB5FICMUpQJdCknsA2w637NoJEbgqsuR9hq42h9F10vzXYAC/9ovw7Dq2yuS
         SkaOVbFTRUS0n+MdYviFOSMnTkV49x8ALi1qmzvo3bdQL1RC/b4blmIjijWNefBRPBqM
         uSMczeyXa+uuM3t2zMgjhqMj2mx60ZoTiSRm27Wpw++qxg6T5gihtR6Yv0HanpSySPOS
         7lTjl5Yxo+8D0WRIYCj9vgwGSXcLMemN+s0SXnnlzMFlauZseXVH4Jje00cN8KZWZMeQ
         Wlgz0LAxeM1CvH/mRExWFK3TeL4ihwt6mBeJcWHvmaXNbOnoJkdHR5PmMdCFn/rV46cQ
         J9XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730144908; x=1730749708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/kvSrQqqbLNQTUVRHoadSzM2dB0+MrpOREbt1fRDUeo=;
        b=oYx7AiSwlnFWZo45liOyRmisP3Hs5smTbORO1jtKqMqKUJNl0Se2DZx2e7YtDzOgxe
         S/OKxzAkL/BsJq51pGungCE9KrWnPsEuEyUwbSbvk8+F+3CLa9ad5bRI+PI+AkcdHGqC
         gEMlsJuMshIZgY0C4r09WNqyKJNedCUln/zgTSrh0/2OJHMgSJPmMzCKXsJQCMGV2GfR
         aL6bgg9XQZvf02CwNczI8NnDSWQRLndHweweZivJMIhVNSJTBNOXg+IYZi+lpYr+8cbe
         xCbNGk2w/RWbD/aoYYFBrguFEL8t3jlCH1GfjX0AMurqwNnjkiJRu7kniM9q3VYVroJT
         HgTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0wkJTLnXP4txjGk97Ux0I83JYYF/7l+nDHPd3rgi2FS7yqj/OaqZdpljFNJ3p0uajEAKEi44Rm5Ni@vger.kernel.org
X-Gm-Message-State: AOJu0YzxLyZLyFIT3xRuT11ygG55a5IhkJCLMumGXyIcgk6k7BI1VcAI
	BuMcv805tUfsMEsOBAUh57TBUt54SCyhJF2yv8RrcrIJ5aQg2R359nun7rkmcaWWDDKk6+2YhS5
	WtnA5FSl5ASwONWts2HaLMnHVXc8=
X-Google-Smtp-Source: AGHT+IELGhB95rG+9fE7ziAngeTj3KV9sBRB/cO1X2UqxH738DKa/nlaAv3YXumbQYQm4kl2IZm04mlWo9msT3Gf+zU=
X-Received: by 2002:a05:651c:2115:b0:2ef:2490:46fb with SMTP id
 38308e7fff4ca-2fcbe08973dmr38305511fa.37.1730144908053; Mon, 28 Oct 2024
 12:48:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028180844.154349-1-festevam@gmail.com> <20241028180844.154349-2-festevam@gmail.com>
 <20241028194728.0655edd3@akair>
In-Reply-To: <20241028194728.0655edd3@akair>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 28 Oct 2024 16:48:16 -0300
Message-ID: <CAOMZO5APJM57_ixBiRFZSZex3AiawA=mtqMszdGezVoajaXYhA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6sx: Remove fsl,imx6sx-lcdif fallback
To: Andreas Kemnade <andreas@kemnade.info>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On Mon, Oct 28, 2024 at 3:47=E2=80=AFPM Andreas Kemnade <andreas@kemnade.in=
fo> wrote:

> As the devicetree might also be used with other software (e.g. u-boot),
> this might break something.  So if u-boot (or any other software) does
> work with fsl,imx28-lcdif because it only uses a subset of features of
> fsl,imx6sx, it might be worth changing the binding instead.
>
> Same for Patch 1. But I cannot test that and do not have a strong
> opinion here.

U-Boot would not be broken after these series:

https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/video/mxsfb.c?re=
f_type=3Dheads#L388

