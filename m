Return-Path: <devicetree+bounces-64532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EB98B9A35
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 13:44:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69217281031
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A783D64CEC;
	Thu,  2 May 2024 11:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="En+nyEsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BB760DE9
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 11:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714650278; cv=none; b=OCI60+HX74UvXlYK39/q/mGIc3hUbdN+Ry/07nm7NTMHHc2xki811XTXJ+QOkQ6dOIiCuO4Gpo/MKivhvPxR5WvuaXlkUUF3DR3HII/2lZxKJRfqMmLWz1yXM2hnGfwQ+wyEGkUejaron6sr/Lyy+40xDpBuNUh+5v9OEjLM5tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714650278; c=relaxed/simple;
	bh=3B5U1op7r0DTmrEG2HdH2GbKAb31+8iCOdD7rSVpnX0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LLnCaWN3DYjZIx2pCcZ/T8JKFEZXYiyDmhGeNSPwbhWAax8KDV5X2TP6Re8eJMFvhAkQSHOnyJLiyppeF7z6gpomLV8y5FiVp+qhIT7osRNsZd3lgyjd5JaijQfAGAqc834iM1vGuTdGX+INGRQsZgZL7r1Ach93EwNN60ED/Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=En+nyEsU; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-de462979e00so8756862276.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 04:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714650276; x=1715255076; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hs0Nc0RqDY6OiurlpPpTgb9tgJy9jZNX1Jp6pCKzxxM=;
        b=En+nyEsUPc1JwEzc2k+SXZw9ecO8ayict3LYiA2Zoqb4JPZAPhgWobwBFAXXiCX/+4
         nDBldw62lP9U/O0o6/7VVHSp++1CfC5j8+cTYD9cL/x+GirTXyAjbpSxqUU0rI3Hhp4S
         zUy4vP+5/aAXlCRMVGpGCwWC1KEwCgyiZy3IST6S/YBDwQuJDagdpqppxct8nQw4dXra
         lO+aMKeIcPAXRMWs/oWrKnOXykg3k46r8ZkDUbWgV9J2kT6n4D2OqRCZsbl4nopYFGNJ
         IEjROQEVwzkGzqUyl3vdCxPzuYh/2J6JDO3DVACT2SQdz5dVezziZoZzVWYJ7RwJcDc7
         GATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714650276; x=1715255076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hs0Nc0RqDY6OiurlpPpTgb9tgJy9jZNX1Jp6pCKzxxM=;
        b=lJZ2znwFpSurKeldJmq7u+2jWXMc3Fxcyhdu4WjZzxN1bWb2k6gfNR7CXq6VTrfXvk
         akVO3VU0cMqzNmFzh7hK1+Oe1bhfkiPMZDminaK9L6ly25hezCKz3thPvX8Vwxnz1tjc
         DkSLVdXV0RgCXt1gtAC/1yVpCBuUSbESE1VNzu42P3mYjQPAVJNjuuixLcpd0uDsj5YQ
         gQmHnYBVeyzlOTigRXV94xVr/ZMJrGhsHfbWQCKQYxhG8hIjGdMO+F1E/hVYB7AahspL
         1BGC5p4AGxQmJJRuCZHIjXZnsFK/8fprpzhw7r9OOuTMC/B2TydCGTRCUaKcCC2S/+23
         8vVw==
X-Forwarded-Encrypted: i=1; AJvYcCUbwpoUa2oTMjx/7h+75iarW3KrJyjRQSoIGVV8+vagvryKvGkBIYzMXaBmSgLiIB9pJ1cxiCpnUxlkWtKBIRjjLLFLnTu+4wdGYg==
X-Gm-Message-State: AOJu0YxK/1bYdFTZwXTSXSdUYl5ac2ODmvIaw5DoH7Lu7sCx/iGhcgYt
	D8pPG+Ny6MAcW9oWgmmsISov8t749kaOS0kpU5vkomKRNo4ApKsYO2nfp3BoRin9RPyEfFNQ+Be
	CbCEp+ekwZ0mHGWUdaAlBqJt00gI5zqCaAXiBig==
X-Google-Smtp-Source: AGHT+IEFG+Ydm81rpI162xZeCq5BDZoBPUrt3LS/LIQol86OfQuy68hn7gucOlNacue4gvj7osvZue/EPKC5+EStroY=
X-Received: by 2002:a5b:52:0:b0:de4:738b:c2ea with SMTP id e18-20020a5b0052000000b00de4738bc2eamr5728494ybp.24.1714650275853;
 Thu, 02 May 2024 04:44:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240502090326.21489-1-quic_kbajaj@quicinc.com>
 <CAA8EJprPLqj7GQM0vmN25U2+3kDow=NH8=-VC2N-0p92Ub3iCA@mail.gmail.com> <5134c012-60b1-4c07-9e1f-c48c3d88d404@quicinc.com>
In-Reply-To: <5134c012-60b1-4c07-9e1f-c48c3d88d404@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 2 May 2024 14:44:24 +0300
Message-ID: <CAA8EJppK7fMmX_cePhaK4Xy-+gfZfYZSWJDbEnVvq_60B32Rig@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add devicetree support of USB for QDU/QRU1000
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Komal Bajaj <quic_kbajaj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, quic_wcheng@quicinc.com, 
	quic_ppratap@quicinc.com, Jack Pham <quic_jackp@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 2 May 2024 at 12:48, Krishna Kurapati PSSNV
<quic_kriskura@quicinc.com> wrote:
>
>
>
> On 5/2/2024 2:39 PM, Dmitry Baryshkov wrote:
> > On Thu, 2 May 2024 at 12:04, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
> >>
> >> This series adds devicetree nodes to support interconnects and usb for qdu/qru1000.
> >> This is based on previously sent driver series[1].
> >>
> >> ------
> >> Changes in v3:
> >> * As per comments on upstream[2], to get role-switch working on QDU/QRU1000, it was recommended to
> >>    use the actual TI switch driver. Since driver doesn't have the functionality to provide role-switch
> >>    based on gpio, thus reverting back USB dr_mode to peripheral and removed the remote end-point nodes
> >>    and usb-conn-gpio based role switch functionality.
> >
> > This is not correct. The recommendation was to describe hardware properly.
> > Which means adding schema description, adding  ti,your-switch
> > compatible to the usb-conn-gpio.c driver, etc.
> >
>
> Hi Dmitry,
>
>   Sorry for the confusion. In the comments [1],
>
> "So the compatible string should be "ti,hd3ss3220". Which is fine to be
> used in the platform driver. Just describe the differences in the
> schema."
>
> The compatible "ti,hd3ss3220" is already associated with a TI switch
> driver [2]. But it works based on I2C. So we assumed you wanted us to
> make changes to [2] by adding GPIO functionality (which usb-conn-gpio
> exactly does), since the compatible you suggested matched with the TI
> driver.

First of all, please don't make assumptions. It's better to ask rather
than making assumptions which turn up to be incorrect.

Compatibles describe hardware. DT describes hardware. There are no
drivers in question (yet).
You have TI switch on your board, so you have to use "ti,hd3ss3220" to
describe it.

Existing schema describes it as an I2C device. You have to extend the
schema to allow non-i2c attachment. Describe GPIOs, make reg optional.
Make this description purely from the datasheet and usb-c-connector
point of view.

> If it was to add compatible in usb-conn-gpio, then we can support OTG
> functionality with no schema changes I believe, but the compatible
> string might need a different name to avoid clashing with the name in [2].

And this is the second, largely independent question. The
usb-conn-gpio driver is a platform driver.The existing hd3ss3220.c
driver is an I2C one. There is no clash between them.

Note, unlike plain gpio-b-connector, the switch supports more pins and
actually provides USB-C information to the host even when used in the
dumb mode. Thus it might be better to add a separate driver that
registers typec port and reports USB-C events.

>
> [1]:
> https://lore.kernel.org/all/CAA8EJppNZrLzT=vGS0NXnKJT_wL+bMB9jFhJ9K7b7FPgFQbcig@mail.gmail.com/
>
> [2]:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/typec/hd3ss3220.c?h=v6.9-rc2
>
> Regards,
> Krishna,
>
> >> * Link to v2: https://lore.kernel.org/linux-arm-msm/20240319091020.15137-1-quic_kbajaj@quicinc.com/
> >>
> >> Changes in v2:
> >> * Changes qmpphy node name
> >> * Changes dr_mode to otg and added USB-B port USB role switch
> >> * Dropped maximum-speed property from usb dwc3 node
> >> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120859.18489-1-quic_kbajaj@quicinc.com/
> >>
> >> [1] https://lore.kernel.org/linux-arm-msm/20240502082017.13777-1-quic_kbajaj@quicinc.com/
> >> [2] https://lore.kernel.org/all/CAA8EJppNZrLzT=vGS0NXnKJT_wL+bMB9jFhJ9K7b7FPgFQbcig@mail.gmail.com/
> >> ------
> >>
> >> Komal Bajaj (3):
> >>    arm64: dts: qcom: qdu1000: Add USB3 and PHY support
> >>    arm64: dts: qcom: qdu1000-idp: enable USB nodes
> >>    arm64: dts: qcom: qru1000-idp: enable USB nodes
> >>
> >>   arch/arm64/boot/dts/qcom/qdu1000-idp.dts |  23 +++++
> >>   arch/arm64/boot/dts/qcom/qdu1000.dtsi    | 120 +++++++++++++++++++++++
> >>   arch/arm64/boot/dts/qcom/qru1000-idp.dts |  23 +++++
> >>   3 files changed, 166 insertions(+)
> >>
> >> --
> >> 2.42.0
> >>
> >>
> >
> >



-- 
With best wishes
Dmitry

