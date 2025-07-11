Return-Path: <devicetree+bounces-195593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1680AB0236A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:15:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6621A62B67
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DFA42F2352;
	Fri, 11 Jul 2025 18:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y+POjVBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8832F1991
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752257722; cv=none; b=p26bBYTAPwGPHgwsTEL3hVZ+ia0Wc291/MMOU8av0JYLRL3ymGYCRKGoiPT6+PryjWm+6ofOEcr5cnN9lNhdnx+0f9+Kx307omUVzkUEAF49MLRTMf3W5RjXjhuFN+ccOTle0GHaC4MHp3CCp6YGg+od0rlKUzdDZyIFJGdVqWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752257722; c=relaxed/simple;
	bh=i4q8ecDX3sUGA1MLG8h4tOnFmYn0XuYJcSIMOO9sLLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YGVJj/1kZhY9cE+F1oP+TLLo7OShVyZe5+0nYpb/AEoZ+yFgQ8Ce37job/9+WirgbOsuGIH0kpoXeFZnk6moNemGH0INwrDECTsZlQ1zRxXVdtcTgOQMeQu1xHKUzSAzfxyfRqsAG4t6zjUO1rt1EMr/WphSTNyDcgG3easxPRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y+POjVBR; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32f144d0db8so17144601fa.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752257719; x=1752862519; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4q8ecDX3sUGA1MLG8h4tOnFmYn0XuYJcSIMOO9sLLY=;
        b=y+POjVBREK/2j/fBXbbuU78AHzy98MPxVnMfpwLdpp1tT73QnN2I+MSQLSuljMLBBF
         w1aS87Cl0qGbmpQmNjBUBRY8RC0BQCjtyiG3EeVNKm5tiLPizj5BTaz8ohlMtUK7t8If
         XIg6V4rWSzg3sA0vboVNP1OsgMi1KhbRPqTF5LA6dLTPtX2DwwBG1JDR7Zvv2HJ8aCUp
         3P/qG7Xf/Xx6QWwMo8CzqINMyA1ctPO8AViCddyrCkvO+KzXbxdhQZPm50nWFrhqqBmp
         sbNgRJrhGdwefOIuydN2ZHzjDrpXD1pUj+EZKY5xUIGcqtyfw98+o8nBGGC+Eht79TnT
         vQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752257719; x=1752862519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4q8ecDX3sUGA1MLG8h4tOnFmYn0XuYJcSIMOO9sLLY=;
        b=oRPmsPyIU1pCjwrIsyvGi+AHY/BEMJ+TS0KQzxM8myb+MKneZQOw6hNvf2P1p/Oj0S
         ywrkAbjXMu5qsLzc4u5rQbOClGKFtUv/N6ilH3rLuU/9EgxQlQ2fR9fspCd6nDJeWkFl
         TYNxV54/5PMxiimdBPzc3ByFmA1OXR/vz2r1n2SxV7JA53w93V2QnD8oeT3+sbRKCWuX
         kH82JeAhYsngM/FL/iS8ynfEM8SNhiUHRC0MOv7Zk4MjqxsurLTLUuoFXVnvRbhwfuZZ
         DchZLMiZ7G+2MEYXtMBNnkWxAxIDdmWLMwVbbYNrWFWjaHIVRNhAWsRVYCBf3i2fcXGi
         H5fA==
X-Forwarded-Encrypted: i=1; AJvYcCVAp1KHsXnxNHpkge3pb8aUEsq4jugoE3ls5nODTbjXI0fPSf8dKSWlFht5ZrOJ7ZHIdxExBgubXRHJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwiZx+9FgTdJqG5YWNj4EkDiMG+sDWENDa3bioOQLG3XevmAm6z
	HmNGDjRGKiocVnTIqflSp56Dlm15/lTL3IF+CBTmn4wfmKJmf3IB+nLT7udUMFiW6vjMAl+2/Kz
	0iA4OQTnQTSAzlLRaHDX7mSvYZkQ45dMB8jC68XSVfQ==
X-Gm-Gg: ASbGncsRw625+j9X8mUTQvdkKCQVbWQatZcT/KYpNBSOoy56gPaDTHOwm4ZWxh4wwP9
	nhDBbCrM556ib1v+miHHGw4oU8h4SYoI4KKslQ/wWS3WX4waEYlfnKxFzbDdoFSSJJyMQsxEwbb
	gkR7kaXo1PhGowzjQ/DwiUEg6jqR59Yy+P3SZ2P420ewVOIv8yud0/YmaJiWNnbW/q3Ko2Hupfl
	4hJY3LoAnLIt5WVHA==
X-Google-Smtp-Source: AGHT+IFtq0bcfpLwnjm7lAoyNxi5hVnB1TfQxkFuJUC5AXv/cwm7YJlwpXzO1clCMxtNVbmVPeTDx2oSZPEXUcqu/sw=
X-Received: by 2002:a05:651c:b0c:b0:32b:968d:2019 with SMTP id
 38308e7fff4ca-330522ae9a3mr17428231fa.18.1752257718550; Fri, 11 Jul 2025
 11:15:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250707165155.581579-1-paulk@sys-base.io> <20250707165155.581579-2-paulk@sys-base.io>
 <20250708003236.059ba94d@minigeek.lan>
In-Reply-To: <20250708003236.059ba94d@minigeek.lan>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:15:07 +0200
X-Gm-Features: Ac12FXytqUPkCHhoaHentXWpf1pNxNpNZTLS_vr2xp21e1XJ93lgB-y8FM3uD_g
Message-ID: <CACRpkdZjbGLiZYLYxz5UoMXyuhv7vBipy7YRkhMYUfZLgXr_ag@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] Revert "pinctrl: sunxi: Fix a100 emac pin function name"
To: Andre Przywara <andre.przywara@arm.com>
Cc: Paul Kocialkowski <paulk@sys-base.io>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 8, 2025 at 1:35=E2=80=AFAM Andre Przywara <andre.przywara@arm.c=
om> wrote:

> > Fixes: d4775ba60b55 ("pinctrl: sunxi: Fix a100 emac pin function name")
> > Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
>
> many thanks for sending this, it looks good to me now. I just wonder if
> the original patch can be still backed out, I think it would be still
> time before the v6.17 PR?

Yeah I just dropped the patch :)

Yours,
Linus Walleij

