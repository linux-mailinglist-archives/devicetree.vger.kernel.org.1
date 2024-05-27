Return-Path: <devicetree+bounces-69539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 971708D01AD
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C852C1C22649
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950E915FA95;
	Mon, 27 May 2024 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UKKJ1hJp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91B915EFDE
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716816773; cv=none; b=T8BfIITgKVtuI4A8WZ3ZEYh/XTDCfcLYgSqzl49505W6pB4TNy0cmGroKdNuS8WUaA5Bp8vCFyCGWvlIdOl0wHNPJOsZHEsUfMWt3GTI4HZSpVH0Gov6ptTvV1dknV2IhrmmaNGEnjFBEWyPopWqFPJqj+eH2VtgwFtQlArVOWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716816773; c=relaxed/simple;
	bh=re0qxFe2nuEnVA2exGP9LuAkNJPYPSelsBcOw7WJz7U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uiAsCtL3d03galDi/i6X2DmYRIKZUzmABAGjV7PJa39sPZM10IdQjirq7lBIs9D5x/0L2SYqtEUuVdlQ7n6WIky05dgpqXbCuE9ebDsC1IodQL6gTXUfnohJq5lL/S/LvGga6JqLCQuy8dWn4wvN4sZl6FpEFw1gjMO6OZqu//k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UKKJ1hJp; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-627dfbcf42aso51811697b3.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 06:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716816770; x=1717421570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=re0qxFe2nuEnVA2exGP9LuAkNJPYPSelsBcOw7WJz7U=;
        b=UKKJ1hJpUbF14OX+9SWEvRMj5KV9+vR2K4IDLPVOCfEnulek/COiWjciORlKJVdGeZ
         Tt5uPIgxCJiOGa6saMCjOM4NlBuNWD979/eG3dceM2/ntzFjZHsfBz68SmzobLykdIOr
         2UDT5SV7TQ2Fbh5TaVDCbHHLLNNeNx58rRp6M6+nFyM3mlGSugOsRnUIImt8pWK0OQjy
         aFes90JMSP+DNN6l46x7hL8vI819LN71nCFFKdDTeiROLHCdIBAaiOfbC3J+VE35UJgE
         o9GT8hsoQ7BZex6w1x0NqiddkGe02wSI2yukkA5cXj16KP85lkkjZeEaLr3VMKuh9gKT
         OqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716816770; x=1717421570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=re0qxFe2nuEnVA2exGP9LuAkNJPYPSelsBcOw7WJz7U=;
        b=kpZElk11tce0uAuo7PqxYAcZgv21f/op9mufT1HduCEPOts3FgB5JjkXNO/Dtpmj4o
         lduukPs+FcRD2P5DT6s/bMw/thkFjRzRYG/fDK5aoPgsFdUrMydyouRwlim3ZcLZZFQO
         G5vUa1Q9BnisK/SXyFo8A01DRIK/Mahm0Kx30z2zKoYMp+kmmHNPIuDvvtA8j6QyaSh0
         dvNeNdusBCBLzxOYFc1CVFcpAg6qlI70T5MlS6JEyT0c059jtrLwkZvt8aZTbqGIQl23
         sELn0Y4XwzXiHSgMPXRfdYg2kjbFVOmDk5ZQtFSpJTrMV5Y4o7IssTuawnJU7lob/+wU
         yCIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJpGbrwNZglmJWqSmy/pLnf3Glgy4/XGV/QoySFARRhP0zjpdvFJc3oQxSLwLom0PHCJTnWP1LxTGjBLD+DLWJE0PCh3LuH5h3NA==
X-Gm-Message-State: AOJu0YyZWk+TIpfv+h1BXliNWvYwZ0WpHaoTUIFH+XCMrSnS38qo93Mm
	lq9NpQAUYBIpeRH7tPAV6cbgjNpWIKRN7f40pUeFJqNktmFjosMEf1xrRRiwXQoab2hsgiOEJZN
	+tI/WbaHIMJzzg2Y6cvbQuk70VFhEsl18Ybz98A==
X-Google-Smtp-Source: AGHT+IGz+uC/fA/a54O+l/V2P4epiaXRsMHq+gj8E8PqFpxrunoU60HcVV8bog04E9h4Gp0Ydl2e4lolznVLBOsTqNM=
X-Received: by 2002:a25:b42:0:b0:df7:9380:fbe7 with SMTP id
 3f1490d57ef6-df7938100fbmr4779513276.3.1716816769156; Mon, 27 May 2024
 06:32:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240506150830.23709-1-johan+linaro@kernel.org> <20240506150830.23709-2-johan+linaro@kernel.org>
In-Reply-To: <20240506150830.23709-2-johan+linaro@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 15:32:37 +0200
Message-ID: <CACRpkdZbe31=7uL1XA=Spj4pOmLYpx+Bouwdo1t446hq_wGJ9A@mail.gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: mfd: pm8008: add reset gpio
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
	Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 6, 2024 at 5:10=E2=80=AFPM Johan Hovold <johan+linaro@kernel.or=
g> wrote:

> Describe the optional reset gpio (which may not be wired up).
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

