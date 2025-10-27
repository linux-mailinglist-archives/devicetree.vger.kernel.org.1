Return-Path: <devicetree+bounces-231798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D7CC11A8E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3E1C3AB561
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9892F12BE;
	Mon, 27 Oct 2025 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m9sW0++M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A902723AD
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603453; cv=none; b=uLjyCcl2mYmQWHG30vjeg6rGHAwdTru03Szm1QL5eIqpsu3zHbCltfhQo8z26dvZM6GHyhCBhUaM7g/PwRqcLF35B8rVPXh6MuVvTIYtxuXcxBNDwlCFgHgb3TqiRQdXIEiIIf3EVtkagCA7rkKEodUcyPotnyrlQjV5utIVSf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603453; c=relaxed/simple;
	bh=Gu9c7lWkxgnzHfgy0KZY7zp67ms1gfmmcEaQ5l83Deg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WCcC6CAHO0cNZJmKm6XD5RKjM1FLmFb/BkkgjR2TxLk/6yCnsHM12IqUN3/qJepcWQL6PuUK60ZAt3R8CJzLydzHnSd6nTDjsHw0Gn54heu6fpqLHKS5V5O45nrgX7SQ8TqrYVH3IKXV2QYDanAFOXivU7PL+6xN1tepR5ulHh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m9sW0++M; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37902f130e1so12179101fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603450; x=1762208250; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gu9c7lWkxgnzHfgy0KZY7zp67ms1gfmmcEaQ5l83Deg=;
        b=m9sW0++MVtdUGdCPa/EY3aCj4cz84G/E9UKMkw07drMblsYj4eVaiBWgEINfXgIIrM
         YuWy38Ph1XzdGnUAfngfhMButYBGly+ldecqQH08y5Wh4uSMNQUVfZbM1C/Lu1geAVxt
         W+KhooWgPZRJBjbiCqztmuOMymyfve/LlXir6x35j+BnjifF6Wo9VJMIC2dNkgvx//Mc
         pl2kIfPkj1PLhcSZQJIdbPBO1QAlK1yGXdHoDV7h3eu/UzSGIOHmiKOSAwWlICry+Feg
         Y8r6tEAuV0xeHruFIE5Fw9cfAyHg8aiCmKxp0pdeBuXjSaWBnBHKfIkHv6HJQ8AWKpGi
         G1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603450; x=1762208250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gu9c7lWkxgnzHfgy0KZY7zp67ms1gfmmcEaQ5l83Deg=;
        b=VFTL+xIymrUb7rFAygXsKoDPQ+0s594hpH2qJdRC5kWEIzZ45RGOYQVEPb0/psY/kz
         2dORIxZ9vJ0Wwjrk8U4lL6YNCWLNPxfQeszVPCRU2uM35spi1AQvE9vUsnYQLzmXLzSf
         Mur8OVyz7Rqhl/FiIp+qOfH2BZ4zjidwrzslar/bgyuiiHjgvmcvaIgMhVRMy9cvohLa
         lFz8hJgMOJWX161wqmim2JU+LaRoKV0px4Ls5O2cdUI2RoAN50OLkJKpVc0m44arWRuk
         xWsKJHhA9Saw4CkSR5lfLOXIzVWKRqW5P6QgHHs0SH1FX0ra0gZobItgh8R5/5JgHJTD
         1uKw==
X-Forwarded-Encrypted: i=1; AJvYcCWLOQlkbPsV7y8NJ+8pAlAi5Yr4zVqJjIGgnZAsEs7X8JzC2t/QF0A7jF54Wdx1ZG/GaJoUnwk4GYvF@vger.kernel.org
X-Gm-Message-State: AOJu0YyPdWoMJkVkfEDd+HfGb1T0fdrbypgk5b+kuHJEqVzcSBD+ipbw
	mb3JSiM2xx3KN7rHG6kJj8OPqW9DpvqyOighPV+o/xAu8PpFKEtddMu4asWCVtHnylgVYu28Iz4
	+nM4JA06bJVCHLEgxr2n3pCsrEphu7dg4acUFowd0ew==
X-Gm-Gg: ASbGnctv2tTaNCR5k7VBYLvpSaVkHb3Vd4BRn17ClsAApRIc9nKPmCOPP/3VxzzsgpN
	9xAPAKv4z5BKbbuppU6eAXxvP9u8MOq3BurofSZGzM8o/LDPkmg+Xg5GF/fQvemXymcC5DrHCnU
	w74EpWsi9BCSt4cMfLTKS5O4ZnvUslQQbpj3v14HGbvJzVTxR4x8tWyJKF1QOfGOk61n5JQLpCr
	09m6Qg5q8e9K5Z3Umf3hcBpb5G0v9g1e15v4JYhn/9z6Jn6ZR06s+wn2sT3
X-Google-Smtp-Source: AGHT+IHJkZ6eE1AkncVU3lyfeHAfgwuxN0K4vqQ9jMi+HxWP78OGiBunIzAgT3y/91LM4yJ4y7mIdTa25YZ1xkf/4xk=
X-Received: by 2002:a2e:9395:0:b0:36d:860c:d98c with SMTP id
 38308e7fff4ca-379077ad874mr2869931fa.45.1761603449931; Mon, 27 Oct 2025
 15:17:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-13-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-13-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:17:19 +0100
X-Gm-Features: AWmQ_bmnRcLAntimuZ53EMjWeghfhO7r4GpgnvkhG3-R4hWIysmsmbmnWQXNJ4M
Message-ID: <CACRpkdbGjsGwvJ5gA-HhUQ4_XrQJAaMa0pdzHS19sgLXv0XUag@mail.gmail.com>
Subject: Re: [PATCH v4 12/12] arm64: dts: st: Add I/O sync to eth pinctrl in stm32mp25-pinctrl.dtsi
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> On board stm32mp257f-ev1, the propagation delay between eth1/eth2
> and the external PHY requires a compensation to guarantee that no
> packet get lost in all the working conditions.
>
> Add I/O synchronization properties in pinctrl on all the RGMII
> data pins, activating re-sampling on both edges of the clock.
>
> Co-developed-by: Christophe Roullier <christophe.roullier@foss.st.com>
> Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Please merge this last patch through the ARM SoC tree!
FWIW:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

