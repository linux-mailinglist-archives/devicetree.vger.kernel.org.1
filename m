Return-Path: <devicetree+bounces-217748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E138AB59284
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AFEE34E2B52
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EACC29B8FE;
	Tue, 16 Sep 2025 09:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OMiwrYvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B86288C89
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758015738; cv=none; b=rk3x953GeOOk9H9AqKhoal7QXfJfoqnyHunWTX9JS43sbesOFlUzg5GpHCT/BCHo+/6ZHo/r4kTxfPogXcOq7wxjQevUm/3QqklJaiVCEjBsVXA8jPcbrrCVLTaY+0e7CITyIuWKlZ/gjTnQ75FNY2YGNdPmDa8oN5x9D+ljSAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758015738; c=relaxed/simple;
	bh=yxrxMt/N4dpi/T9k6sahK9m+SYHc4ch9rBILVIoKVxU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rTUi0dwoaDymS4gRGk7aRMc3/qayr6hhkl7OthQNP/71MSGSHSPAyk8EpdPcK09eQztpfJqhjGrXsJRgweZ+DQDEXDkaYAzPN3DUHEswSQyhr/kUDC/0H3iwIZkU7Tn+SsI3iuwQYO7H4jk6EIQ3gEcVVJo/OmWBhQ3S9Rb4zkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OMiwrYvC; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-352671bef7fso33798201fa.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758015735; x=1758620535; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxrxMt/N4dpi/T9k6sahK9m+SYHc4ch9rBILVIoKVxU=;
        b=OMiwrYvCrtBzaWemA9MJMbtodFHQDuTNtt9MCfawl6//0yQlO+6x5b2JCdx2HwDmak
         bHbjEwkxNJFxdrL0s8SG/pwE+n9Mdl0cIM+pa5qS489jMEn1fO5w/Jvj+EU0b7A2rgcA
         kOS7JhTrUYyzjoNQZvkTs8h0krrJ1/xTDksTHVY6M2xw63gH/nkRfmsp/NnTED6GtvX8
         oIaDwRrUPdieE8vQ9GlTEhSEO+Bop5M1pGC0CgWRMnWq+3zw7YSMeOuzwCAzfsO9w61E
         C21vRXn36tLAd5nyWNyUBZaheLWs43JNsAnkvqDqAjQnn7cBCFkmlEz6URFD/+9UdPC0
         mQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758015735; x=1758620535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxrxMt/N4dpi/T9k6sahK9m+SYHc4ch9rBILVIoKVxU=;
        b=S6YUMAkb5Q0pII0R92zwc1e38KQ8GNR1j+o59ZXkcX3Cs6c1btSv8/ACkzqsgkdpq4
         x3OZieDP0XuqV3eDRww0amo5B4uNJ5IlVw3RB8g/okSYTpLezUsMOcS9+mHl9HFTVA0v
         ct2l64SlJliEQ6aCFQD3ZsBLKWbbqbTwd2YvoTR2y1hqFXrfZ4viZpbaIg4cpefEY/gL
         r5ZmAchm86ZNC7L9IcOdt5ZOhd8eJMVTGqjTM2uNWWZtxEIpcyX3J0rRfmJ17nBNx+mW
         UzA5pF3isZ6LZ9Rf5TldJCOt7qJ5itNXm4pMOtes4/Oa9ZpKfOP1Bsgvlgdobykp7x8B
         miKg==
X-Forwarded-Encrypted: i=1; AJvYcCX9KbNQUJpUUPvNDT+C/tl6AJt0+FnWyVD8QeYfhuwh/t3oAzX3KQCBBbfQP48o5E2izASw1VTPLJan@vger.kernel.org
X-Gm-Message-State: AOJu0Yw66UqzQSfCsYmDaNv0lfcXnZgpWO5j4DSFAorF1StmYNBMH1qO
	Lp0O25fTHhMP23oCLfRvxBs11t9D5z+0s8inpMfjQw+C6t44tYtS27BN4wG57GK6nmvA32bl5LB
	UUYTUlNNIYFmYLHcgMqguPwTUJSNyXFTWiA==
X-Gm-Gg: ASbGncskfV5upHILwMzIm2CuulymPZL4b3bm17wLDO3oK0zGzHA5K+4u2+tPQSh3ukS
	wG2FuhmP+kQjw7qNdKnfRhibAjFghjcKRIEy187iSSxC31BLOZo8z5znnaHbXSH5ktUTb7/Q1z8
	5Wb5Qv2mvTPHtKuSeD/Y93Pb0r71aZ1eilTjarMdcg4eCbRJcN4o8o5YPlciUHiFWLe6GyUegNK
	YIUgehUEGGFPq/1Rq9h
X-Google-Smtp-Source: AGHT+IHSzD/UXtsWQJdvEcDe5zgMaGL6TzhZJBGJKbCYfBRewNgR6XMtJmfU671bOH5GYMzsf1oInRq2RbM4os8qMC4=
X-Received: by 2002:a05:651c:4393:20b0:354:4e91:5163 with SMTP id
 38308e7fff4ca-35cc1503303mr4719061fa.10.1758015735185; Tue, 16 Sep 2025
 02:42:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916-flexspi-dts-v1-0-61567f969165@nxp.com> <20250916-flexspi-dts-v1-2-61567f969165@nxp.com>
In-Reply-To: <20250916-flexspi-dts-v1-2-61567f969165@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Sep 2025 06:42:03 -0300
X-Gm-Features: AS18NWDVVl3vA9anWkY4oi_Wwrstjq0EwNsL75GDNd_C0krbxXIk6QAPlbESP7c
Message-ID: <CAOMZO5DYWenp7fzrthWUiEyOHAVcL02wBqvzA3RyPqiQ8CzGUw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm/mn/mp: limit the max frequency of
 spi nor chip
To: Haibo Chen <haibo.chen@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Haibo,

On Tue, Sep 16, 2025 at 5:57=E2=80=AFAM Haibo Chen <haibo.chen@nxp.com> wro=
te:
>
> The spi nor on imx8mm/mn/mp evk board works under SDR mode, and
> driver use FlexSPIn_MCR0[RXCLKSRC] =3D 0x0 for SDR mode.
> According to the datasheet, there is IO limitation on these chips,
> the max frequency of such case is 66MHz, so add the limatation here

Typo: limitation.

> to align with datasheet.
>
> Refer to 3.9.9 FlexSPI timing parameters on page 65.
> https://www.nxp.com/docs/en/data-sheet/IMX8MNCEC.pdf

Fixes tag?

