Return-Path: <devicetree+bounces-79284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6050914887
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CF18B25708
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6656B13958C;
	Mon, 24 Jun 2024 11:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F0pCHklK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E163813776F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 11:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719228247; cv=none; b=admfv200T2KAVQzu/oV/tFP4fzsMmFRTL2gP09AzoeAeSfUG5bi5dUgZN0PXkYDi4gu3dlyFMi1SJzcYgh6+VjwBWXKOxJkSdUuUe03fT82616PTwZZmXkJpA07AZMYzOnCipufZpVb0B/C/nnfxmZfcto1edHgIZYB7rhD0mgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719228247; c=relaxed/simple;
	bh=4dq6+oB/CSwk781PF0vUGPbURV5g6ETTeJhVeud5l/8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YDCrM528C12+QSD8DjJpAxpmGgqzXLmZjnvVchXQREqxtJc1rU+nOvhNq5P7jtaRi33MZhykyNiqR4+1Utnas4hXRyoVFB8SpXgASoRu13yy+ruHAYTyJKAUrBj/oHYKUVCzeX8WpHF0tH4OQ3lAl3FnFyPl9YS+mZk+DsHJJys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F0pCHklK; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5c1d6064557so1698117eaf.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719228245; x=1719833045; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/uG0pk/rOzEYyf9kgjbXb58wu9autIPkbU8eM8hrs0=;
        b=F0pCHklK7EyVlYG2nmQ4OKISElFyQ5VUGQ4FXAIQvakUZ7lzhmP3eW9eYytPAqFyaz
         wmWem7uPJFVKtYiWt/vOgWU1v4Tav2G1XFV6kh+qsbXTYja+/3HmtrQ853WHROMAlVC7
         E+8tnP1r4RNyUiNwvkcfqJWipV1NskibcOYAe+7UVqDMDqKW2nBDcsAe5Yp9bIuxjZJQ
         OifMfhjzyE4rZdb02UQaBown3/oBff0NKpYoxhUTRXF4EYoL5nSk6z+DvE7HVPhT/IFb
         YwV5I7E18+g3S+YkmBlQPF96wvORTZycXpW0YVA17flJgie+lX6+DKCjFrguCFUScrqd
         iesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719228245; x=1719833045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/uG0pk/rOzEYyf9kgjbXb58wu9autIPkbU8eM8hrs0=;
        b=j8JnZ9GVysyUsmAXY76U+7aYVP3ZMa9cDXek9GbxT1qD4moc0aRdqa+jdC7A5byLOS
         eHyb4ornFiAELqVEN96A4GpAj7nH8kjM6fQcG0b4J7T8lvhgUpmKupSuWljrMOi3tpFd
         hfETU4Bj8JMV0QAS+L+Ddf7e1h5udbdeNDUxDimmbnZ92kEltUbKrH+ZN9HLvL3+Rzcx
         TxXrGia48D7seunShF3omqBvOFDPJFNm1fSEUzWMaRA9TvSu0W+zO7ktX0Fm71Zz0tv8
         8lCkI+sc9oZQj2EKmFmXT1VOdog4zs8i0qQsmUcU9fTsIM66278munJuZ2xHz88Fc7Lp
         zwtA==
X-Forwarded-Encrypted: i=1; AJvYcCWGDwX7oBslQlDUTGt6VVSZ30164FPNIUQCMAdsjMA/72cc99R+5dqDp/Re1jBdezzzSKh5Ny4dh7L5i28zEZhFaw2B5uuoQ6lYSw==
X-Gm-Message-State: AOJu0Yyi5OyFXYdvr13LlAuLOOzFZMRZ8DPCsUaQi/vqUldqP5PoT3Hm
	iv/dWewVrXPHylVfRQOybaaAy4M4YTAKaMiMHJTHbulj4ABhh0agyn6nv3Dew/rAuAwES8VmQ1d
	m3gQJc7nYyiIu3NcZtQCYCEhsmwCDgPPqxqvcaw==
X-Google-Smtp-Source: AGHT+IHMLqDC2rTXhVuW4+7eVR8LzUhLBmZIQgM3baPjvR31e95ip2NrsiCp0QKxJlc/jUGwGVTWHwCoML9aCJwp+iA=
X-Received: by 2002:a4a:85c1:0:b0:5bb:e55:56a8 with SMTP id
 006d021491bc7-5c1eec84869mr3670014eaf.0.1719228245151; Mon, 24 Jun 2024
 04:24:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org> <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-4-b66de9ae7424@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 24 Jun 2024 12:23:54 +0100
Message-ID: <CADrjBPoP_ZXyNrbS7vwVOqZTBqp3Brg7zigYukf-p1jX4AtHCg@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] phy: exynos5-usbdrd: convert (phy) register access
 clock to clk_bulk
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9

On Mon, 17 Jun 2024 at 17:45, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> In preparation for support for additional platforms, convert the phy
> register access clock to using the clk_bulk interfaces.
>
> Newer SoCs like Google Tensor gs101 require additional clocks for
> access to additional (different) register areas (PHY, PMA, PCS), and
> converting to clk_bulk simplifies addition of those extra clocks.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>
and
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Tested using my Pixel 6 pro device. USB comes up and it is possible to
use adb from the host computer to the phone.

regards,

Peter

[..]

