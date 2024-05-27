Return-Path: <devicetree+bounces-69504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF18B8D0048
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F102D1C20A7E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FD115E5B8;
	Mon, 27 May 2024 12:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mROal7UP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB32A15E5A2
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813744; cv=none; b=oPIyo3EcqApKpbu0Yet6TfXROWX240TALrD71CDuCtqkbHX3QiTf6pK5+XUsmDOG124dMSHSTVaBB9PfAfNwjNdBc8Mq1aPhHNn+wDOTXZbADSwtqLZXNEWsEJ7m5d+hoUp85SQhfVIVOHWfT3xZqUWVXD96oYIE2PhMwyR13Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813744; c=relaxed/simple;
	bh=gvmIvei/evck27eAyXPfMfAUpIW//VOl8Dual8yqM7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b3tj+wLJ1pldLxyBKf2U8RlHUQmCfslIQQZlRJJJuh3QLUpeJZL5QDszv54s7aETEWf4lRYbRFeuYr1wV3mNyVnJBULKWb42QfiKuVLH7mN8vaw9+XQUDI2e4VVAIAMlyPTnoDYOiaQtSZo8LUrxO3mjyeXF3k0jalmrQjONpPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mROal7UP; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-df79380ffceso1051145276.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716813742; x=1717418542; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RreWtAd7Wi7xpCgHNvoy0257vlpp2GBbsNvbWW0dsCg=;
        b=mROal7UPeV2+tDOeg7vELm3fdnAOS2UtsxNIQR93+IGkKg2PeHQ4YyjhmoAj1aa3/r
         A2yFsVPYqHOfW9WEXIA4MbOetgHi+ea1yB20ZLG1PmNmtQIDaQwDPsvbcPYe99ayKRIX
         VJZmoV4mFCM4bOFV/bWoNX8qfELEM2p2r7jBu4tiITj0KXXrxcPSaiA1MV/G4vjTM0lB
         mVlC9FSYngw4/VlTY5UqiDFXSESXuteL3bfKTpkB5dekpP7+G3DSPHGc6F0MBO3Jvn8d
         JterMso9fM9vfabEGXWrp+WvMOLCpmhal/pNqcJ/vHju21Z3joHdTpUD/tmLzcUO+skT
         sbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716813742; x=1717418542;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RreWtAd7Wi7xpCgHNvoy0257vlpp2GBbsNvbWW0dsCg=;
        b=wwzlKEE5cghPGnBL4XnqViXp9fafeJFtFThALkmjOQ2U0f4M3omQ9Cd39vBZE3bg6w
         vdmXAfw7Bx7Inj7X9B2LWXUOFqMQZWOWLNy2ejlnR+46Lm+NjuMdNbZX9Oqh5iWCwL/3
         t7YLx2UeGXD0uPV1D/iUy+CL4JW1gV8BJfUz/IQP0OL8CWLsgjttMG7plsqbRfv1RrWI
         UbwvXJJuY/vfzVT8i0/KiJ9i46Z5akbXox2rl0a/aC7lMFHxRvGkgOmJqqXBKTGE2zUq
         trLEt3yRRQ+nFDpYbX95yoO8VJg9aAvGajSltc6SpXdZt5JEcxF3eQovNSliCgVq1RLC
         8FbA==
X-Forwarded-Encrypted: i=1; AJvYcCWkjmEj+D9Dt1q8QJgPdTsia/rE5YXAnpHGhZRUQqWLy4RpnG3OGa4jirbm20XxHIBflpz2Hic/RdpyUesfGaeNQH4yN9mrprp+Jw==
X-Gm-Message-State: AOJu0Yxpo44fqf7FBo+svF52vQCrRakP00LXJuR2jeat/wmzCF2qdHfM
	c2u8uxhWIkf3BCF7KzXahp4N8HGytiibJzdpBtSnXKUGIxjwOUJWCDFwzPZz1wsj1Q1Qw80Wud2
	pubJoSyIt9ghHwpb3RguaD2ZYOmeawSPrOOKarQ==
X-Google-Smtp-Source: AGHT+IGnKKyNaK0erydWgd+7egLyO1LEZVbwIGZL84HNMIAWKZun14kUnLhTrRDtqLO6jO06aGMtpPufyBXFe4UUfcs=
X-Received: by 2002:a25:c302:0:b0:df4:d98d:3e4f with SMTP id
 3f1490d57ef6-df5422399dfmr8673203276.12.1716813741865; Mon, 27 May 2024
 05:42:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240513-imx91-pinctrl-v1-0-c99a23c6843a@nxp.com>
In-Reply-To: <20240513-imx91-pinctrl-v1-0-c99a23c6843a@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 14:42:10 +0200
Message-ID: <CACRpkdYP1Tp6Cxn7xMNusZi=DP6LPUUTaKOPzW4FChu3oEbkFQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: freescale: support i.MX91 pinctrl
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2024 at 11:12=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.c=
om> wrote:

> Add i.MX91 IOMUXC binding doc and driver.
> i.MX91 IOMUXC has similar design as i.MX93 IOMUXC, so reuse the
> i.MX93 binding.

Patches applied for v6.11.

I haven't heard much from the i.MX maintainers for a while I guess they
are busy.

Should Peng Fan be added to this list?

PIN CONTROLLER - FREESCALE
M:      Dong Aisheng <aisheng.dong@nxp.com>
M:      Fabio Estevam <festevam@gmail.com>
M:      Shawn Guo <shawnguo@kernel.org>
M:      Jacky Bai <ping.bai@nxp.com>

Maybe someone should be subtracted?

Yours,
Linus Walleij

