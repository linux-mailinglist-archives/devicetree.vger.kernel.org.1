Return-Path: <devicetree+bounces-235968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFBAC3ED19
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 08:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8719188A774
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 07:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261F930DED5;
	Fri,  7 Nov 2025 07:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fwQEsdr8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0E330BB89
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 07:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762501902; cv=none; b=MyW6FbDiz3QBeMO+fBRvABW72bo2ihLlNDBh3OBjhu22HEQubZtoIgXa7mzYpNR44yZ7JcAjU8W/rvqLEDaf3TG+ZKP+oP5bMSO6fB2++x+sm1egDINHHaL/PueH3CGfl4BF+5+vQ1fAlJNAD2dWStjIzWZUZj6/Rd8LvTp1RDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762501902; c=relaxed/simple;
	bh=m3vCS5fEBZTrIlk0oaQTEp9kJKU7A5DiAAXFXV5fdVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r98ejXeL2hb7caNx2wHowURyiLc7l9OOJbFTPqmgW/tZAU6Z1AAlmgQ+XvOwFuMKI6XW6opC841rgQ89WLVzClZpQfgYyRdQuT6S/ZSkSNjZrSrvhw7rO88wsMLV8ZvEiMyov+z/xY5pJEWE4WvmachXes7nPvG6BuXU26bZ3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fwQEsdr8; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29470bc80ceso5049445ad.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 23:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762501900; x=1763106700; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m3vCS5fEBZTrIlk0oaQTEp9kJKU7A5DiAAXFXV5fdVI=;
        b=fwQEsdr8HkxhXUpnLpI0r+sEsbQdiOjdeLGAwGNOSrSzRIW9mxnZZeXCAgTv/gKFWt
         VKkRoY6+W53nh1HEaYWLAdKjR149whtnK5iwydZKkTi8BHj0z/48fDU/RvL3quSaR90T
         gnv6W0dMcZJ1BlvZ2SWmvO6aslwIwKdgdLt6ycsynI5VdFDilMQWCoXvEUQmOIKtB5WB
         cwv0wKPDuTX1sf51b9AaExExco6dk3rFBFYsFyYfpAjFqoWFt8fb8d+BJCtYouhH8AMH
         QEXJSuAeM6CkJOAloy/Be7bWX6l7SxMtZG06uQS7P2zjIkbeE5cdUv5tOx+MIBgzKc66
         HRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762501900; x=1763106700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m3vCS5fEBZTrIlk0oaQTEp9kJKU7A5DiAAXFXV5fdVI=;
        b=IIkAKUldXetzddHRRBS2eWXCHc7zP6JuFHOorVxQYKSXL8oywB7jt3lpTmAus/rpf2
         CrS0qPhDreY+6btqQT60z3wTAQTfNxQFJ9sOZ4ebT/WsmxjKTS7JKSVnUnzfMZeHw5tP
         LiSAPZ4l9ONuW8I9UBkQt8hbYm7paF5KgkWlYiL5qY5n+XbFO/Hi6+NgpsL9HcqnaBzL
         x0oO6IDuq/CI56ybEaaSE9YuW0EKiKYp0+pueQG+J8ST7LcY7Vt6NsxEVEFuwGN+Y9L4
         A74HJe8fFnl9Ld4q3bjQPgIxa2fa29gGZUIgYg27Z1U8j7nDH+/YXyQQzNXovdsHOt0b
         IgRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKQcWKYpWBZjPHpwuQku4FHFVOlzrtQHZfsVDQbOEAs1gu7N8yH1YI2LCzLbzfMKvMt9yoOo7ix+4w@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6Xc/gU44HiTeG8bb/O8yhF5ezZAQEvQlxc/NXFn5fbJjsL2Pw
	9tqCkNG4OedG0Z5Wd1ycropKOO59lJeR9tMzleqJYqnCQnwt9zpWfnNUnQ2/99alHJwItSzy4wU
	ojlwC5a5ORJHcT5JVYH87qK1dRUiSqPICaw==
X-Gm-Gg: ASbGncvID8jJNgikGFQtL0gdE3kArRwe5YkNOAeK6KcP8lGpOshoGIpRnVT+zlRdm3r
	pjxBAhxYCRQTmGTK4a+SWiYT2ioBG9//Cp7OeLEklvhpwB675kS0HMa0NiOOIx3KbC/qbTJKumh
	pf3fOoggduikyZaYDktnQSF/lRhiER7x7Bjfkbd3vIRzs5yWUiqTQGD4Q31tY04GPSUaZjd1uTq
	BPSqqpTmf9cez/3NVUbnukrpNSTtFDokC1oqLqwv9KDCAI18eoF9cPzBQ==
X-Google-Smtp-Source: AGHT+IFkh8XME/XKdmm+TIe47BXYcMMyHnwgbqIA5X6bAhqAdmw5d+3JqyQ85nbSaeZPIXV7fRyM4oESPwNxWKjSk8M=
X-Received: by 2002:a17:902:e847:b0:292:9ac7:2608 with SMTP id
 d9443c01a7336-297c94b32a9mr11604375ad.8.1762501899726; Thu, 06 Nov 2025
 23:51:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-imx95-rproc-2025-10-31-v2-0-758b2e547a55@nxp.com> <20251031-imx95-rproc-2025-10-31-v2-2-758b2e547a55@nxp.com>
In-Reply-To: <20251031-imx95-rproc-2025-10-31-v2-2-758b2e547a55@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 7 Nov 2025 09:54:06 +0200
X-Gm-Features: AWmQ_bnGeOFtoZrRWw9KhEpAzRXkaZJvKZO7s-geVquRIrpRxLbcQTb4ng5zby8
Message-ID: <CAEnQRZBJCZOO9yLr-T_DT_QYerKgRP9gdasmUK+WN+d8VJPV6w@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] remoteproc: imx_rproc: Add runtime ops copy to
 support dynamic behavior
To: Peng Fan <peng.fan@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Frank Li <frank.li@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 31, 2025 at 4:27=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
>
> Structure imx_rproc_dcfg contains a const pointer to imx_rproc_plat_ops,
> which defines the start/stop/detect_mode operations for a remote processo=
r.
> To preserve the const correctness of the static configuration while
> allowing runtime modification of ops behavior, introduce a new
> imx_rproc_plat_ops member in struct imx_rproc named `ops`.
>
> During initialization, dcfg->ops is assigned to priv->ops.
> Enable the driver to safely override ops at runtime without affecting the
> original const configuration.
>
> Improve flexibility for platforms that require dynamic operation switchin=
g
> (e.g. i.MX95 Logical Machine ops and CPU ops).
>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

