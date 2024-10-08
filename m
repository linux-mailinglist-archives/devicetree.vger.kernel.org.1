Return-Path: <devicetree+bounces-108905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 665839943F9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8579FB29143
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E9917B4EC;
	Tue,  8 Oct 2024 09:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hl9pAJpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AED178CE4
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 09:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728378734; cv=none; b=uDFSGMeZ+HH9WwBvgQT49VbJ8VWEfm2D256FFFt+0oT4sjssrUzL7PPynEW4HYtSVIJ+WeMfgcHro/SceWR+o8lUfOAx5yfg10Flqr7prPPC3LSurp9FBwtQFz5b42fPzgysHyz9ZxqZTtT+S4PbUA9qeg90LCpTpsaMl5r/n9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728378734; c=relaxed/simple;
	bh=8R5mNUaqgWhw+SjU51bMScNSOuHChqgNVLLs9a/h8UA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BWFBH3V6QfP4VBZD11jKeHUarrpEUum4Z1PN/ixRXRNyLIbdC4p3Q0b24eK3fvXo5v8o2VpqpLnk4rAdqQKTDB+qsGQAY8sTXrSW+IXL9oZWwHMm7JGCFF36yxf8MGv5ii28P9mfcbtm7lD3QZzdxKP1dnc19qfNY5cAceXfcYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hl9pAJpY; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fad100dd9fso74728631fa.3
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 02:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728378731; x=1728983531; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8R5mNUaqgWhw+SjU51bMScNSOuHChqgNVLLs9a/h8UA=;
        b=hl9pAJpY0OMPoMPkT7x5fnU2Hc8B6zbOcLs6m5ueHzuUebAtQgCHTXN7vtw7UEVw04
         fwqtRafXO0gImfVeJTFL918TVIgUE65xoMc0LOG/LNbteAM2RgFRObJpozJejnKpOIDv
         bOBrcm+HDcvri/38HG/xIgCt6bZyDQA2Wx1RthPkECVA3crNg5JW2enQpFOY2/ZhhT+i
         xa08LO1PhKbUa4YdV2kez3P3ZFMWsUBwM/p2grz1j+NqQyKNfML90eM8UN16aR0ipjA8
         cprRIdRjfBqwaCDE6rE4iMjzZ4rdRrh/AEzHVAEoddEimYEnv8fksD1JZcSvrTm5biju
         rzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728378731; x=1728983531;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8R5mNUaqgWhw+SjU51bMScNSOuHChqgNVLLs9a/h8UA=;
        b=R/Uz7vkCHX4yjW5KTqU0Thg4kNVEtN0PJ3V7toXW+fDRJr5irrkkn398l1tkjXWKHF
         qlqExIuG8RS07Py7NCUbfIcYHHRAf2cblTS+hBQCicoYXWulPoDfGxld3yhxj3R8pz5C
         sGRB1VP+PtgA3dPJfH0ooBCGp7q0wdBeuXmc9IwslMFWDarqkqA4JmoCdJi2OjL4rSpD
         KRVaah18t2ChJ73dUjpr/hrs1ACHK7KcG6vTrDg9KlbE/KXD6b6XjEPTWUhS6TAhwLRU
         OQxGxapJ96+/XYwAnvuHkpB/t6FnALHdMkW9UhhVoW44kfKAkyzDUWCnQAB/ZkFEc0PF
         eu+g==
X-Forwarded-Encrypted: i=1; AJvYcCWzqQkpSkw7g+6TjpOiLlnZZRBcu7isXB4JinL7NyUMKjIIJThGPS/VHmNXI6+5zFGWtLsA0N/qi9BG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhf4p8W7+IapVttEfhJySnj2D7G0Cjir+F0ZRsOjYx02CroTyH
	dYHiLQq0MQLVTg9M+ONf648fdIjaiFpS+JLiS22qSOkN31qc/Gt5aEpZN1t3gUupGWd9Bc4Y6aO
	3WO5rM+ob4vTsrVcozEtJOB+HzymLC4XIo5u6pA==
X-Google-Smtp-Source: AGHT+IHcBA2jTE1QM6JyuIGCT7tc+Sb9Dr7eXCmaROonw0Ss9mIeMA8MiXWox+luFXYNnTEtJ3oq3bBdjFrsUAeO2LQ=
X-Received: by 2002:a2e:e01:0:b0:2fa:cdac:8732 with SMTP id
 38308e7fff4ca-2faf3d70720mr73174491fa.30.1728378730928; Tue, 08 Oct 2024
 02:12:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ad82005d-729d-4165-afa5-61ca82382bc5@app.fastmail.com> <20241008084744.30819-1-exxxxkc@getgoogleoff.me>
In-Reply-To: <20241008084744.30819-1-exxxxkc@getgoogleoff.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Oct 2024 11:11:59 +0200
Message-ID: <CACRpkdaPBH1CE0YXGMKUDQWyJQTZvkYgnW=UTO2uxWmBvecu9g@mail.gmail.com>
Subject: Re: Re: [PATCH v6 0/5] Initial Support for Linksys EA9350 V3 (linksys-jamaica)
To: Karl Chan <exxxxkc@getgoogleoff.me>
Cc: arnd@arndb.de, andersson@kernel.org, catalin.marinas@arm.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	mturquette@baylibre.com, robh@kernel.org, sboyd@kernel.org, will@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 10:49=E2=80=AFAM Karl Chan <exxxxkc@getgoogleoff.me>=
 wrote:

> Also Other linksys ipq5018 based rotuer is capable of booting arm64.maybe=
 i could rip the
> uboot from those rotuer and flash it to ea9350 v3 but i dont have another=
 linksys ipq5018
> based rotuer.

It's maybe scary to reflash U-Boot.

But you can boot a "new" U-Boot from U-Boot, so if you can compile a
U-Boot with the proper hardware support and the RMR quirk, you should
be able to boot that, and then use that to boot Linux into 64bit mode.

Yours,
Linus Walleij

