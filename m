Return-Path: <devicetree+bounces-47273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E25486CA31
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EAB4286FBE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 13:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA607D412;
	Thu, 29 Feb 2024 13:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="diK6zDaI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB19E7E0FE
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709213069; cv=none; b=BIU/tJxsfUAssZm06NsRR4GZl+yDV+ch/nGDvqn3LhLXxEPZn4x4xmMOYCiwNz6WvrPDvwjYDRQZhFTcG9atdIDGYF/Bmy+6uM+5RmYH34khQXs+T/o2oHNnTQMIvFawhEPlH05uuqmvYJKhESkpFp9/azv7hyToOd/HzJNnx5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709213069; c=relaxed/simple;
	bh=5shKJIq6joWiQf1OMpN/6d1kx+W0ECYnM+AdFjTkEVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tGFsfupplZBAJOe638ly8rcGqOVY/Ec4B4TNhFcqvOlC+hofMbYQ/RMkTl0bkFE+HbK6N6kCP776vYd0D3RNdzO28V3ICAso59YZcIaQY+Gwu/ZDnJmMt3MMRIjn2gnz+AG5/gvYD3H7I83noiy0zjNLgSZkYICAWvE+yDF9AyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=diK6zDaI; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so1001640276.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 05:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709213067; x=1709817867; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5shKJIq6joWiQf1OMpN/6d1kx+W0ECYnM+AdFjTkEVE=;
        b=diK6zDaIjPNE2V7pvNGH68rA+DFSWmGbIJiwzirYiWR6s6XrojlKdeAh2MvYubHcq2
         ELCRE3qa9p6DAgXPLXPjwIMeo3B+zbmxkU2BXtewrUUwMrVs83B+SRC64o+sR6mtnFe+
         rtsEu3jGXCe+dqGfMG7+ODcF6xeGshzwUIS1wuqZt1sSw6TSQ4AGZAFhy+13waEg2FWl
         IE7zKEz8soWg/9BRJEw7qZNiX8QBPrBfJWv+oqja9pKLKEJ/KlQWJISPMjgc0gsZhMsV
         0HpsPrNgUDE8XR8j5OVBtF63Z3xZIL9MfTci1Cka0PlCq4jUZRH+ZQ5+mN0tCbrf80Bh
         fj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709213067; x=1709817867;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5shKJIq6joWiQf1OMpN/6d1kx+W0ECYnM+AdFjTkEVE=;
        b=KUJ1dobw8xsVsoesmMPHfh/2IgZwfQAPVQvxQhk1Xvsbn3HrvvjkMjdayVzc6vK+Wl
         H7286DumQpixBkPFTv62HjLucWImVZ0/NMEEIRG/AdOIICDYC7NjY/cUoGRtV+bkgJKS
         SxcIhEQa3Qy3XtEHVNoaUKxA6bs+4G++nqtSrbOuYLSZOBxGFFPwlHy87uL96Tu9rVmy
         MuwTQEXddZIsfKxuKRFjo8ugv5SXHjBMyPnB2S7OyZrWU+WzrKqEvHTlavt3qrLahLR4
         b8dsQct33+ZcIsCj7jSKCABXrUyRZlS2Izq7LAprl7M4AUJtdeVcqWo/112znq49gVqa
         H7Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXpSb6r9nMS60DtRN3/Y7NWStgGTyByHY9pv91JKRHxEJSliw5R3lvhtad2jLFCJ7M32L8QApmomNEiupkz3x0faXvCGe7OLttY2A==
X-Gm-Message-State: AOJu0Yw1NYzWRYDg+fPiqjYe59JFnsl0w8oyzZj6D6My3CsN05ot2rMd
	A7ONfyLCcDQuwF2vKBsdFCk9xjepv2SGxbTYp5dT53rfoyEhmZafwEwyP1ZmXbEXUMCFgGMBKt6
	+OJMXp1D2rhbaar7ckbG6tsRR8yTPQaUBp3SQ0w==
X-Google-Smtp-Source: AGHT+IHtxtxLc1PV2T7biqX/e3kKfkY0L5vzXx+f1q90xelaRpKnFCLjxEZPqxD5C352GVD5oDSCgXpz2Z6iKLkdUDI=
X-Received: by 2002:a25:ad85:0:b0:dcd:30f9:eb6d with SMTP id
 z5-20020a25ad85000000b00dcd30f9eb6dmr2299746ybi.57.1709213066996; Thu, 29 Feb
 2024 05:24:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240223093701.66034-1-bhargav.r@ltts.com> <20240223093701.66034-14-bhargav.r@ltts.com>
In-Reply-To: <20240223093701.66034-14-bhargav.r@ltts.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 14:24:16 +0100
Message-ID: <CACRpkdZzTheR=+=in7RYTFM2dquEPmGDudB7n1zoiUU4B1UCVg@mail.gmail.com>
Subject: Re: [PATCH v2 13/14] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
To: Bhargav Raviprakash <bhargav.r@ltts.com>
Cc: linux-kernel@vger.kernel.org, m.nirmaladevi@ltts.com, lee@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jpanis@baylibre.com, devicetree@vger.kernel.org, arnd@arndb.de, 
	gregkh@linuxfoundation.org, lgirdwood@gmail.com, broonie@kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com, 
	vigneshr@ti.com, kristo@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 10:37=E2=80=AFAM Bhargav Raviprakash <bhargav.r@ltt=
s.com> wrote:

> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they
> have significant functional overlap.
> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
> dedicated device functions.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Is this something I can just merge to the pin control tree, or does it
need to be applied in lockstep with the other patches?

Yours,
Linus Walleij

