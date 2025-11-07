Return-Path: <devicetree+bounces-236007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1CEC3F187
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 10:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2EB7B4EE938
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 09:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE8A3161BD;
	Fri,  7 Nov 2025 09:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AqCEyeX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CA6316910
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 09:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762506696; cv=none; b=ZyKjmSdh5A1bhfZGCcD1d5mbweazpknMYzqpt4rl693fbWE76yU8SuBA3U7T4w5jsbtdOc2MjZtot+8oYASQqW4nh6tPUtKDA79dsBEXj7LBrpNd7zqLw3trW9SrG+W1uiQ4Hkd3VfDMVu1OKaOG/IJLhf51AQwO755/A/72czU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762506696; c=relaxed/simple;
	bh=Xm0T+ra2WFrzdRdP3JxtuaEukspvdWnhUZFpw+N+Mdo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CNFTF1GxrSaH/WN+raTtJ9XqnfisOCkfUpq6tbyGC3tzDr6VryXi2epKe+Q4P31EbwAuYMtNErm0T4lCuyUtxyRTmpyDdXV2fOuXq0jNwUnjicO5/dcRz5FhtSqLyHD0WlCfyVm+82q1KPzCAz1eY8ZhO9hIZl6XJDIJ7s3Zg50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AqCEyeX4; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2957850c63bso5489505ad.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 01:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762506694; x=1763111494; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hW8/cbGR87ObHsZ6SNcI+MXLmQ5paXElRz+RxrOT/SU=;
        b=AqCEyeX4UpT/bc6Wv6wOYRUfMdrWzlrG37mKRQm5L+SZE5zXqeWEmLWJbONXLzH2Cg
         qITjBji6ht78nTiCeatG/+BIZk/57dvHjxAIXIZDyTY/qablhIovDOrz6YEZYlARzIiC
         fuwbx0Qhi7mbAUESRgFe2RuzDEX3ez4fpe/CBgmSW2JuDPM9JR5qBudqo5Zzg9sRtI3x
         YCCjytUhqy3vlHoPDFTIbemvf2WIrGUjAq/Nksq8TItZPG5yodh9cinbF1JQIhXqai6W
         hA/+pw2GI9Tv9LVSV6lQv38+4nz3C2YI5+ILpQazNCxTaVr9fFdoxnqsSHThnxBmEcvK
         MSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762506694; x=1763111494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hW8/cbGR87ObHsZ6SNcI+MXLmQ5paXElRz+RxrOT/SU=;
        b=EuGRS5SLZTrpOLqPbf5SN2MmCxbBtgaVOwJE061yLea+6FjBG0josupMnX7Rs0XrIu
         MTdhsv4Swc74BQqYsganW6MywzaUZF/2H2AxWzo8xqGtW6vCFWPi3MYHav9Cth2u+GwA
         BedjU9Lxutd6Uekbx5B+A/EiIXrV3xKyPGe9Ef6/zbGaszQW3YOEFOqd6nNZVIGFIRef
         0w5G8tOoOD2Ph1MOqjra09hcL1mbJuRq2oShaAIZ8tro+/mSCHQDZ11XS9ByrJgc3FuN
         7Lsq8XpN9z9TVatwt+dVZE5XiumRRehehyMeYSTmG/rgVCwKIi+mDgl2Ru29oZ9NL1Do
         2ufw==
X-Forwarded-Encrypted: i=1; AJvYcCUND0w09YT39t8YQBJtN6RecsL061jP3LRVmg9YC7ZJpvyi0v6Jt1TZNcpGvPkTWWBrYgHx4+42UJ1+@vger.kernel.org
X-Gm-Message-State: AOJu0YyBjMA+RWrcN9xE/QfK703I3O40G+K5lphCsyp3XW52b/0Fo53s
	txIjBvvic/WSfl32YkpOmKaPccA/Ui/GMk0I8kXAhefSmBjvKjai/AaMG1s/SoWmxBctV7r7Ua/
	Uab0KChpJstNcUKigZ1/qmrkjFUYL+tM=
X-Gm-Gg: ASbGncv2wJ8S+yYt/i/n5hcQ2pIiIUga7I6qm0F0gzfl8HB50ifqvAIkHVt4aEZU4+r
	MS4X9Wd4VWlqeXRTmmm+3ipymZ/DAJZIpH4SK0Yr1+P7pfSkiIjLRaL8T6BsIUhl+FhRP25HNuo
	S+6PM5vnlKg1+wwR7R0pOoVynI0tuQ2KeH73gM+kk8srDRS2KuzXnq97+8edPtn9L4ZkLdo6liH
	In3Fwelj/56Sfs26jG4Po0gkYU3058yW8/czKnNLTvJpiohOxFz1nFOqw==
X-Google-Smtp-Source: AGHT+IFsw4Qh5yQvF8GQ7bDn+i+78HlvDDo9Xlss7dAXe32EJJ3DKG/FTpv0vFs5HihRB4beIyG1MovPvmR4t9DxwLk=
X-Received: by 2002:a17:902:f705:b0:295:57f6:759 with SMTP id
 d9443c01a7336-297c95acc53mr15301995ad.15.1762506694201; Fri, 07 Nov 2025
 01:11:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-imx95-rproc-2025-10-31-v2-0-758b2e547a55@nxp.com> <20251031-imx95-rproc-2025-10-31-v2-5-758b2e547a55@nxp.com>
In-Reply-To: <20251031-imx95-rproc-2025-10-31-v2-5-758b2e547a55@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 7 Nov 2025 11:13:59 +0200
X-Gm-Features: AWmQ_bkGy3n9ih8PCPlxo3uy5k4L6qRRgXRYWv7PUkhd8VPxIzhklJdDlhNWAZ4
Message-ID: <CAEnQRZDcrWdAFqJkcbjy-jL=EczgmSM9grv5zp6bntWnqou_kQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] remoteproc: imx_rproc: Add support for i.MX95
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
> Add imx_rproc_cfg_imx95_m7 and address(TCM and DDR) mapping.
> Add i.MX95 of_device_id entry.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

With the minor comment below, you can add my:

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

<snip>

> +static const struct imx_rproc_dcfg imx_rproc_cfg_imx95_m7 =3D {
> +       .att            =3D imx_rproc_att_imx95_m7,
> +       .att_size       =3D ARRAY_SIZE(imx_rproc_att_imx95_m7),
> +       .ops            =3D &imx_rproc_ops_sm,
> +       /* Must align with System Manager Firmware */

I would add a comment here like this:

> +       .cpuid          =3D 1, /* Use 1 as default cpu id for M7 core */
> +       .lmid           =3D 1, /* Use 1 as default Logical Machine where =
M7 resides */
> +};
> +

