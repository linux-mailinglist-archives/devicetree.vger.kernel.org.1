Return-Path: <devicetree+bounces-109586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E2B997154
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 18:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE0CB1C2268C
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 16:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4F81E7C05;
	Wed,  9 Oct 2024 16:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DTEgIvsA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C094C1F472C
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 16:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728490670; cv=none; b=RtppldjZpDRU3RQg1T4/o5MklWkuxPA/ECfZL4SIEt9Ce26/r3HOD5UBdjxNoQg2ilnPDtCWDkHFZQDwMBKTmGULHL4GaCbBoneanYRsXRFYH81YxZ2sCYAV2uQfSjY0eRHJX9qg1zkZoskfdqRlmaBj/VC59WtWHcWtcrqo5r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728490670; c=relaxed/simple;
	bh=XsCqJPOQJaKQv6y7Js2/0JYlyxdvkv/RsvJw/wD4z80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UcOkTo2vW34l1d6LF2mThGTIFG4C3Eupv1byJA6qkRCVBxdEoiAjR//Bd0owgxEvemHYCOT8NSpWIbXGzIDEv1pzGYE0hBdmaBFTE+LSm82hNOM5/g0eF0/C105PnN/D4tSo6UcONdBZQTE34PHqAiP0ceY0GUVXgwriL68Zon8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DTEgIvsA; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e29026b0a85so701463276.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728490668; x=1729095468; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XsCqJPOQJaKQv6y7Js2/0JYlyxdvkv/RsvJw/wD4z80=;
        b=DTEgIvsAjvxBspGidQ/ySLJjkMt5QEpqWIj8/h4qQ1q++2Pkbymr3Y3Yu5eoEYW6b4
         kPgJxdi26hYQ8xodCBFZ/pAtfdNBeGf7hFhxBnY9h+wCz4kqcGxghZ+663boh2gHlElW
         mnMw8p2+xOxmv0H0vCE3p9SRp7st8flA7l1Ye9OeemtU2M9R6aaQT6oy++0iN0mMEjtt
         MwiPWh3qabiSgaFvEraURBU7wwodg4vMQnPNAG8yvklMddml25rSB2gMYgsZY1y6lea9
         Mr4FfLFpqHkuLzL5RfE+pN4CbmPgZQtcMyX+CggI4kuPOfG48NDd2XsBA/FLCne1mGjp
         6Z4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728490668; x=1729095468;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XsCqJPOQJaKQv6y7Js2/0JYlyxdvkv/RsvJw/wD4z80=;
        b=pMHleaUmuhoDXnCFbPWcBjCMhXORoXPP1e7JMxTxMRBG7pf9trikDd1i6qo/b19Rya
         bRuuOdK0hY+PJzBcCEqIq8yiK0CAm3sNZLhK7p2kMj90pu1rcfG5gq2TdEObl/+OvkmI
         yRWAUKjnI9QIvdu8Z/jYMBZhRhJUHJQwOwEIvVmMc5gMYOwXA1Rfo4DcNMmvANi7TrZC
         ZKgrfb/9zr0my96jMIC1B+Enfb+eo5xZUHYjoufwP68WLBeOmXgR24n1X0hg6TvKHbDy
         NDEInByW5mN3u3ZcUwidVVX2XTBTi1WmV8+MDF6oP5ybM3J+Q4fEU5UVG3RqAethim7g
         v41Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJcy1owSUxdJHBlUXuxzK8Nn/8zEL2VXKvtxoNA6IIonuvf6aokgbYa3Q6klE9WadR4Slxq+0Oln9V@vger.kernel.org
X-Gm-Message-State: AOJu0YwQgzYVhlwsb/TS2sDuLR1Xk3Xc3SENlQdJqJXVa0cnd2l4/2Sm
	fx2iIBvynTPFxi9CEVTAn/tnPVNcX4hl5HMyePzSPpFPJuqLdm/zHdEZhJdXpFbiQ+ay7LI1nTZ
	hYg20jvLXUqPVcLOIPeTsX5NuP8gjOoKfHLxD3w==
X-Google-Smtp-Source: AGHT+IEhc4X5nJH7MxXrAXKISCQ0c1nXP+Dase0RooHZuKgw/ZrA+HPP70H1m4gm8R9ZIUWIimLj3y/pq23btFkwfJY=
X-Received: by 2002:a05:6902:140d:b0:e28:f172:976b with SMTP id
 3f1490d57ef6-e28fe3d18bemr2644772276.8.1728490667542; Wed, 09 Oct 2024
 09:17:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241002135920.3647322-1-andrei.stefanescu@oss.nxp.com>
 <20241002135920.3647322-2-andrei.stefanescu@oss.nxp.com> <b80873cb-432c-45f3-8f65-41af607af4c2@oss.nxp.com>
In-Reply-To: <b80873cb-432c-45f3-8f65-41af607af4c2@oss.nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 18:17:35 +0200
Message-ID: <CACRpkdZf0jSExrs9=E7dcxm_WAUGHsZE6gNTVeyEaAbGmF8-sw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] pinctrl: s32: add missing pins definitions
To: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>, Chester Lin <chester62515@gmail.com>, 
	Matthias Brugger <mbrugger@suse.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	NXP S32 Linux Team <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 3:25=E2=80=AFPM Andrei Stefanescu
<andrei.stefanescu@oss.nxp.com> wrote:

> I would like to drop patches 2 and 3 from this patch series
> and keep only this first one. Should I send a v3 that only
> has this patch?

No need for that, I just applied it :)

Yours,
Linus Walleij

