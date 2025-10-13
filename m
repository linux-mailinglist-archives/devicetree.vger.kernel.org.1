Return-Path: <devicetree+bounces-226132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E916BD4F15
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:22:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 11A80506A18
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FE230E823;
	Mon, 13 Oct 2025 15:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Kmc+EicW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE7630E0F9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760370474; cv=none; b=AFqrSx99/O9GV8K9nXWP1gz5BRuxlGsa7m4lub8jRTIiire/Oqk9bMqVDNJqRFTgUutOn2ojOBAL2zV3LPguvTykMYCe3NPJntZA8QV0ZQeVjhcW9uMtVLMvWUQM23AWxPrz/an3raiviGsCOvcgJxn/rdke6edkud1xdU+p1QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760370474; c=relaxed/simple;
	bh=g6TFFFPGjr50jQR7xQx4h+CFBPxdsLdChbbFuSFu0bM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lADH9VqKHsZfhSKBdvKawZlV0mehC29Dyuut6cWdB0xKIHBP/1PQLY0+4BTYYDJdgN6Xeh7pMFNRn1gUq4618xmGcrpjtlhWELpiNNt4NpHkRz9G/eZt33sZk+NAncSrO/xUOmLnCd9m9iL53Ko5j8eGJRGDF/O5ZI1C8XGdtMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Kmc+EicW; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-371e4858f74so51775241fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760370470; x=1760975270; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YBeBnLojRUp+3BGjW9hqqMrpXMlk2wEyeaFT1Bjf2RU=;
        b=Kmc+EicWOnGGJv7h3XU37uIanIetzI2Y0gIysTNKa/jbxzrsW/u18lpFhrh7ojoUdp
         DyUguXAGeDupQIpwgNmb7DO+NhXzZSZpVeqy/rRHSeolzqlsVu/AjK4bxGImmJk55QD3
         io9iZfQTNBWNUciKMpgtbWdrYXU1Awjdihq7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760370470; x=1760975270;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YBeBnLojRUp+3BGjW9hqqMrpXMlk2wEyeaFT1Bjf2RU=;
        b=UxZs4deGFC9BIgXaWd6+PRJ+cSsdt5FOu1gjyQQU4Cf1fJfYZR8hFnTgok1Ewi5lUp
         n4tGAQ9th1qRdOzuL2ZkwRTjkSap1+c1dJ7DWt8vKsAI2HVy5q/SJhOdwsApiP6x6FCJ
         eJQ94tlr9joDYraInJLOrJc9V6kHPyHVM2myS6PQebd3EjN3nWft0V8mU+AY7X3j/UNO
         uc25WJ/8MaHTL1AR2mIxNlw2UE1Ll+QlWgbbaCpzb9UiEYppwFY2L4tSrp3YwCCQNkwO
         bFM7sWlsM3ampvVeILJE23pDnukazPoPyuDccr6UtV/ygYBC0gs2z2PMNVn1NHwn7SA+
         Hi+w==
X-Forwarded-Encrypted: i=1; AJvYcCU87oPyc1Q2hwXTT8tt9mU+LKNh76DZSVj8sEbJqeTaqqak/YJnQ+ThtduMKtC5SQyIQYS9ILDGQED1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6iOxI3u2vJ0B7HR24ZHUFzN8eFPxCd45S18XkzyHfxM+X0kC7
	D27o5qVV8GyFmthsSaVQWpUAckRpgF7JGuMI0wcC7HSe/R/aKzr+kRTLFuTHqwZsSZNMpmc09Nc
	6151XMQ==
X-Gm-Gg: ASbGncvAmbABFxwy59hHikjfWSLp5bQplwu/50WFxwrBHeIh2Z9vwtTHwt36QX+JK16
	Nt8ere94DzyH8zVcPEZ9/qxnE9eXd5vaWhn8vwpRa5bL68TRljA7Q+d4U9MYq5hvZ+2gX8NdGn8
	mm3tYULKEMJy1ZgyhNwH0IS3XNdRnrOeLuSJmUrITMxn3Dfv84r5iFB6wKiz4ZrWsODGnmsfQUx
	97xlQ4lUKKZeOtJNBzts5FwBZ2P0a5G3MG/xbBdEcKfcMDGkc+a0X61Aw1hWkgkuYkKHMeHl4Me
	DCWfie88RvpQYO613arEY0hFecgyChclosG1UckKytSEAWOwQ3PdMQvbUFyEJn4o4uKqZ1vWEDU
	P8bp+sqkRS2MI5O5GjYvIhc41wOBnC+LOvFDcy+apbnTInmZ1yXSfJmZh/CrKGxs/3SZLct1JkE
	qL+k0/HpruR+/IVw==
X-Google-Smtp-Source: AGHT+IFdRYt+EJ8MoHYGiq2Ju5m91EjFgAnZKl6JN73mUn0Q64JdjhDJ7RFD1emUBKJVCKJ1f6jpiA==
X-Received: by 2002:a2e:be88:0:b0:371:7771:9f19 with SMTP id 38308e7fff4ca-375f50e0b14mr63634311fa.7.1760370470288;
        Mon, 13 Oct 2025 08:47:50 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3aafasm32378921fa.49.2025.10.13.08.47.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 08:47:48 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57e03279bfeso5434946e87.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:47:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBsogyUarrqzXzAeIBWzdCm8cJ+2ZuI/uuxe2kJvClopKpq8IF9W/rfrH1RBrOfXnDFv/zpN89BHGL@vger.kernel.org
X-Received: by 2002:a05:6512:1329:b0:581:bdb8:6df9 with SMTP id
 2adb3069b0e04-5905e1ffebamr6390861e87.10.1760370468172; Mon, 13 Oct 2025
 08:47:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013-dts-v1-1-5731ed92684a@chromium.org> <aO0eLbLCGLKf6sF+@lizhi-Precision-Tower-5810>
In-Reply-To: <aO0eLbLCGLKf6sF+@lizhi-Precision-Tower-5810>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 17:47:35 +0200
X-Gmail-Original-Message-ID: <CANiDSCu2hdaO5r8v_GcCksepy58AJFsuLb-xxz3WYOUknvKLwg@mail.gmail.com>
X-Gm-Features: AS18NWCpy9_8RtaLxButea2qoJBXTdgqbhebqmgYPmIE7BU8dSEVQ_qnVy1gyYw
Message-ID: <CANiDSCu2hdaO5r8v_GcCksepy58AJFsuLb-xxz3WYOUknvKLwg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: media: fsl,imx6q-vdoa: Remove redundant quote
To: Frank Li <Frank.li@nxp.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Frank

On Mon, 13 Oct 2025 at 17:43, Frank Li <Frank.li@nxp.com> wrote:
>
> On Mon, Oct 13, 2025 at 02:52:20PM +0000, Ricardo Ribalda wrote:
> > Latest dts-ci complains about this:
> > ./Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml:19:12: [error] string value is redundantly quoted with any quotes (quoted-strings)
> >
> > Fix it to make our CI happy.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
>
> Thank you fix it. I have posted at
>
> https://lore.kernel.org/imx/20250925193546.305036-1-Frank.Li@nxp.com/

Sorry, I missed that one :)



>
> Frank
>
> >  Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml b/Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml
> > index 511ac0d67a7f2360afe22b81d76644575081089b..988a5b3a62bdebeda6b922a986b9ac93d0933e51 100644
> > --- a/Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml
> > +++ b/Documentation/devicetree/bindings/media/fsl,imx6q-vdoa.yaml
> > @@ -16,7 +16,7 @@ maintainers:
> >
> >  properties:
> >    compatible:
> > -    const: "fsl,imx6q-vdoa"
> > +    const: fsl,imx6q-vdoa
> >
> >    reg:
> >      maxItems: 1
> >
> > ---
> > base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> > change-id: 20251013-dts-83ce7f7b9e54
> >
> > Best regards,
> > --
> > Ricardo Ribalda <ribalda@chromium.org>
> >



-- 
Ricardo Ribalda

