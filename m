Return-Path: <devicetree+bounces-231393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AED6BC0CE07
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AC85404A32
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001A22F28FF;
	Mon, 27 Oct 2025 10:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BqNkvpuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DD029D28B
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559228; cv=none; b=JMFBgEYbKNOv7mN3R38UI/KzR9kz3dhS59XHe29/T5br5RlwYEi3co57/qLTLhpF/mDGSQn8NeqWN+GlMQaRHrINSQ31MsxM5GZJenaPc3edLJr/PmDBCtNV38+ABseyUJkLSrfmHcO75JHiIgrVSe6CNTUvfDTvXeSeL0ZCmLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559228; c=relaxed/simple;
	bh=llevhbx7w2gVPSgxchYQykyfF3P6kCmvO3Z+1l6bNEw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tgHkxiTFGioEOtXeYEW8bRbn/VmKwMnFtCvmd5Q2eWss9194kCJeWkrz2VMdEVmwknlTpy0MlMR5LUgEtp1vIHJW4nJovknMWgafGzI+hoDd0A8VQivDB1/Xkds0L6USMrRP9fZ1PwXnr2wYNF3wEWo2CZIAFl0+6tdMoWs8mwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BqNkvpuJ; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b6cf257f325so3655899a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761559227; x=1762164027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=llevhbx7w2gVPSgxchYQykyfF3P6kCmvO3Z+1l6bNEw=;
        b=BqNkvpuJxdLFFaYQmH6TFx2FCGfBO5dYTF27G1SnJK+kZOD3xPEY+kn1E9UrVkf25g
         zkawesYiDwVSXoFYjTeE77r/8zObUTIRlzXL7I7x3RpZAQmCJsGfvZHw5E0vXocKVcyx
         qa7vHdSpwKSv+QjfiXm/kKdWU7rLhXRza5V9xNeEBz0mNKF65ObfuLGrUHDL8ePslbzR
         Uk1eaVlqxFoH6Lq1DJVUd0EDiEk8KFT4xIPDOV1QpJI4Ol5kw3qZzxtuyTMD5NCWZ2aD
         M23eFzYXu92ymZdM4P86C8lXJt6ha8Un5PRq8uEbBwg7ShdTZ+5T6vwFaENWI1YBiMLm
         7Xog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761559227; x=1762164027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=llevhbx7w2gVPSgxchYQykyfF3P6kCmvO3Z+1l6bNEw=;
        b=VEJrYpy8ntGUukFzP22XBD1AAOhuOq5SXszu/BRc3RzIHAplqJMjpa/rPkJGmiNDj6
         ox+w5vzYgaRR2s2Q7Qb4kZ7r3IqqJQrAhf5QoDnXth10rMQR1piyyiMXL/XCpexPoGAc
         ErIh2nmE0Yh8GrZKUTaUJYOmXcVRW/QNQCn59HxzBbxePy+5TonL3KouQ6m/BAgxfYeJ
         jfB9PIES8JNR1fl3wWDbhSJJYS9MiWreQ7EwADnz36arFrmEiHJMyf0wPVhIMgcQ2m82
         UoRi9UyTjmXGzLJlB2le4DYr1dOuVfw8e1X6MpjfBHqU3XrItBvvjRw9LkP1Vd9TW44Q
         kppQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAWraZHMFTCOTIzGsXaEeQ2Ehq6qp02WL2x9+rhwFvyYO8G0EUMMkZAPuccmioFUreTlEpJzqgRJ8i@vger.kernel.org
X-Gm-Message-State: AOJu0YyFQM9y9+Xf5VPg14AkZM6z1eUiQRxsS0ISf2ZKuwsgiN7RWPUX
	xMgVxH5GypUO10pAWI+zCC5fe2PBH60x22Gq3EoZC64z7JGX2aYrZLkH8QvsGLTlLuB2IH283MN
	puq3FJWh9tUYgi7w8xU8rG6YbdXDnQIg=
X-Gm-Gg: ASbGncswlmuVvaI6yy8f4SO/7UqXvhWyW/TafHGGz7J7ovJgiv0rhKqMAaXn896+l1l
	bWVpqa4G+hSwyL4GdS4xO2PW/PNJs2TAZDAQsvbEYdgfpBZNAgxVzXLLeq2PZnPpexaOkaro1Ly
	SRHw9CAZ4SIZeM32QRfc3PC9SHNYb0XTwGpbnoLRpNF08Y44mdGbFKcOPqnqiqP4ZDjKyRu/sVR
	oV7GJo01MbwUX4v9Q0eWAlg+hwYbe3klaCcF+DIpsV3/PDg59at4lF/l7VskRjYuURXgD6r3G28
	8GctEWrgsQbXxGio/8ndQrsSKyrdO9pn0A4=
X-Google-Smtp-Source: AGHT+IEVKeBh2X8nn5edN2JNYH0ip6RRsXlkactmrlxMJ24ltADBqpxEPIq5x0ftvH+xeOzwVb5LwOMRmctLYx+ASlY=
X-Received: by 2002:a17:903:18d:b0:269:b2ff:5c0e with SMTP id
 d9443c01a7336-2948ba5aac4mr144470455ad.46.1761559225678; Mon, 27 Oct 2025
 03:00:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-5-laurentiumihalcea111@gmail.com> <aPJWUDXmGkb8QGMz@lizhi-Precision-Tower-5810>
In-Reply-To: <aPJWUDXmGkb8QGMz@lizhi-Precision-Tower-5810>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 27 Oct 2025 12:02:50 +0200
X-Gm-Features: AWmQ_bnztc34-LVMElYU3hA5bxPnJsvEFVV1IWI00q3s-IiPzNkbThRFF6roaYA
Message-ID: <CAEnQRZBFCi9GPaAw+NdKboADSpzPKGL-1B3WNh1M4Nuxd_9rqw@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] reset: imx8mp-audiomix: Drop unneeded macros
To: Frank Li <Frank.li@nxp.com>
Cc: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>, Abel Vesa <abelvesa@kernel.org>, 
	Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 17, 2025 at 5:47=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:
>
> On Fri, Oct 17, 2025 at 04:20:21AM -0700, Laurentiu Mihalcea wrote:
> > From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> >
> > The macros defining the mask values for the EARC, EARC PHY resets,
> > and the DSP RUN_STALL signal can be dropped as they are not and will
> > not be used anywhere else except to set the value of the "mask" field
> > from "struct imx8mp_reset_map". In this particular case, based on the
> > name of the "mask" field, you can already deduce what these values are
> > for, which is why defining macros for them doesn't offer any new
> > information, nor does it help with the code readability.
> >
> > Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> > ---
>
> Register define still prefer use macro.
>
> So far const string, hexvalue prefer use value if only use once.

This is simple enough that we can use the BIT() macro directly to express
the masks.

As you said you can use the const value (including BIT()) when the value is=
 used
only once as it is this case.

So I think this patch is fine:

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

