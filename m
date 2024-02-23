Return-Path: <devicetree+bounces-45124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6009B860CF8
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 09:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7A5281EDB
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 08:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E81B18E0E;
	Fri, 23 Feb 2024 08:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tMZInjpm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FFD17BC1
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 08:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708677347; cv=none; b=Yc0QeXmPnsG5eP5X18NpDZaPUj8PklW5APXElWP9btRKp38loYp1PyJFX+rfCuR0jAbJR6ar0thjWEZga4nyJltcCecdvrTEpoagj/G4OFBGgGOWwn8qDOAdmgrd5rsFcRFKH7Qq6a78ZJlvVGf4QTwd6IoGNZGiHr9SG42JAg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708677347; c=relaxed/simple;
	bh=BDJzrankMyMZocCjXVCHMyuvOlOLvr1YP5o6PLfU+ng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N9QmgTe1gsAaAUwMbllkLQ14QMCG8l+JtLUMfXdHCbIWZcG73yVgopHvHgtDsj+LO0FhwNrUPW3rlpKXOzkz+pUf7JnDfShMRwaeATDHEJORvRm2ovP0Rdi59iWC0z3uL+8KRItp3SWFzeyMxib17A8aBEWxqwijx2+vMqjsKCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tMZInjpm; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc6d8bd612dso540193276.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 00:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708677345; x=1709282145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDJzrankMyMZocCjXVCHMyuvOlOLvr1YP5o6PLfU+ng=;
        b=tMZInjpmvJaLXfTZUAyBYdoUEgLN6Gv4iM1TlgdiLl86hAZ4i06pu9+VpRILXkyTd0
         ePOdUzghIovQD69xdxbTNooHA/QbYtr80BBmZgDDiJRz7AJplv7G4+tSdQiIxRh59+hc
         Hl4pbQtC4rBGbFMiuh9hNxYP7lcLLUiEBX3Wxri99LXxSGD8I/Nxp0RecK6zYWRGTl/P
         Zb7akIT46GajWyNfawR+LIDRXr0PRTna7Uzt2ig5w+PIsnwqrPnYWfsJgXG2rRPHfHLB
         IRz1JMVnqQXlx1vxHkBtyj/nQFAhcVk8pCopOEo7vqw2lKd+cBF01eMTRkN39l99y/Cc
         JSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708677345; x=1709282145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDJzrankMyMZocCjXVCHMyuvOlOLvr1YP5o6PLfU+ng=;
        b=aezV1sMMUiDl0KWSjKOgPVFs32+lIy8mmt6XBQ5ykaS8AFnuY5GwS+zj3l36lMhdW7
         ceaBHywf581zbS+a9V1SO24U9WxCKQR4ymWQNOaAtdkutThJpaf0HtwrNodIZcc9bTbB
         lQQtbAOJAmkLt/8OHyQv3BPOAGNuJg97bFdM/GG2orRXGN36gbZP6TfOSBvmZZYNH8w/
         AbfUPnoTdLMu9x7NxsNEbXdvWnuraJRhV39cQ0p5sb27E6KB3PSBXlSFlUcd9RGEHIrt
         bFakPcME6USaVyCVWRHzUgd1gEGjsTab8wBBlDcEsAZmni+WEKU2iLgDNn1uDoz0hiBZ
         QBdQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/56EkooTO6LBscpwPK4XwN/yKmfo/ZECprNgxATGX0lGYbWmGR++x0uuX6ryBW/qHxCL8s256W5c2K64lXOHPDSpTod3P1O5O4Q==
X-Gm-Message-State: AOJu0YwAGSpryEmVbYjDVkuvN0NlCkGrWWzmAeCFoI8M0/+Wg3j8aBm2
	zD7yq1IyNBEgHidljPEeOBZ1um2GOAla6eHa8osY1dHvEXAmf9tdpkwW7HdUdPKIYDFznBWPuuH
	aXoNjAbOqViYD9iQJbNR5cWrtjMPHsoS6NL51Mg==
X-Google-Smtp-Source: AGHT+IGOlBpYdtZ4/p5L/TR0zjPYT869hfBVTynTZpUrGGbxeGr51rjvskBAzAxe2aQoNBXBzWL75316K2e/O2MrnOI=
X-Received: by 2002:a25:2045:0:b0:dcc:ec02:38b0 with SMTP id
 g66-20020a252045000000b00dccec0238b0mr1342720ybg.64.1708677344960; Fri, 23
 Feb 2024 00:35:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240223-pinctrl-scmi-v4-0-10eb5a379274@nxp.com>
 <20240223-pinctrl-scmi-v4-3-10eb5a379274@nxp.com> <CACRpkdZLuWwecacBAimT=Vj67dGabzBH-7aaqzoyj1B1sY6o_A@mail.gmail.com>
 <ZdhYc90uy7yuYrx2@pluto>
In-Reply-To: <ZdhYc90uy7yuYrx2@pluto>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Feb 2024 09:35:33 +0100
Message-ID: <CACRpkdYZuHh4JuwwgUEeVR_0jG1DPtj212AMOgnaxWdkT_sowg@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	AKASHI Takahiro <takahiro.akashi@linaro.org>, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 9:34=E2=80=AFAM Cristian Marussi
<cristian.marussi@arm.com> wrote:

> Well, AFAIK there is another upcoming change in the v3.2 SCMI spec and
> I am not sure if this series accounts for it...indeed the v3.2 -bet4 was
> still pending fr feedback AFAIK (and I doubt latest changes are in since
> they have been discussed like yesterday...)....but I maybe wrong, I will
> chase for the final spec and look into this to verify if it is
> compliant...
>
> Anyway, given the particularly long history of changes in PINCTRL v3.2
> SCMI I would wait to have the final spec officially frozen at this
> point before merging....

OK fair enough, I hold my horses!

Maybe we should mark the series as pending spec or something.

Yours,
Linus Walleij

