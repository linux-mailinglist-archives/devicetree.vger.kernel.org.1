Return-Path: <devicetree+bounces-231397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8740EC0CE16
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9FBA18825A4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB24B1F92E;
	Mon, 27 Oct 2025 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fiy4qYUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F352E5B1E
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559593; cv=none; b=Uz4kKumqyP7wi/Ow5icb50J2LXPZRr9blXFkNGGzrdQHMRwynMZSm+d/70ijxKhJpDkStFNOiW77OL/nFAAl/t+6ELoQrWpEew3bSKXWrKHZZPquHmLmRK07V4ESatcpu/rc4+3SQfRIdoY8gM+9ePiGj1Fej1QUrWbCRKuDGOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559593; c=relaxed/simple;
	bh=l5doOeAnSYSQI+MnlDBwnrzy87dYaAS/wZNmV4aDiaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WY2Ts/R4PcIZrr8vLcgZB/WMi4uixEfrd/S4+Y/p8H0JjNVdrY+LSsUMDtbFfinwlmCLYAzCYGZ3r/j4PnH84VqM3jftNK71MmLpFOLpVnVNPfqjYpCed2/s5/eAOn6vibfKNJiQW222Kq2Z/RFPe/5oxKCkadAM64Yb00Z7ClI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fiy4qYUo; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-26d0fbe238bso31734725ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761559591; x=1762164391; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5doOeAnSYSQI+MnlDBwnrzy87dYaAS/wZNmV4aDiaM=;
        b=Fiy4qYUoqhss1pi1BHikADkw0/OpvYvCrQutHG51Z0wIRRtAaZ1frbYR1pweve48vx
         0kA+jJX/cVWYcaFb/tEcHIJNGA55MH281XkHq+Kutgau1YkngkwdHnFOD2FuLFB/vAUU
         efXMXVWssGu7ZwRx0oTapHCA84iME1JhQZZ+KFM8GKFJ451lQD/chOO3+7P1+BosiBuk
         N+cRZgFsRQPcGsgBAtQUE5QfbDrPGZmy4enX8fE30NGL+i+Jql1Ny5nzZ491vIWvQfVk
         cDCLPOcJ3zk2AEufkmNe1Z4Y8/rth1Wri54ndffn61xfR+oV6GEP3VjN7GPUaHYrsNTN
         fmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761559591; x=1762164391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l5doOeAnSYSQI+MnlDBwnrzy87dYaAS/wZNmV4aDiaM=;
        b=Vto+keiCNS0kH3+J4u74W+AsD5xuThutS9curqVF9RA/DHqmZKWSnyuFjIzPvqalgX
         HhyZdZfs7twO3GCXzL4tWmlaUdU7fp0jTNXNhd2/kVQL7me4+xlACHnPa+hevd04Vq53
         WNkeeYLuHIAqwpZpuQhY+Sc6mhgrO9p1WSeXQY7BP0QvBKeFns0ahM9LbEzD44z8JNM3
         mZd2I2HdKqbYrmCxkDUYDKMpQhjA74wcCsz6EzD2u6TieUI1crceVCiz4VqArruwSJ7J
         c6SHiHm3il0omfhhezSeU1w9PUFzzmW6+s2CKNBO90MLokwGe3n4EfVXY4+oFgiykK09
         g1BA==
X-Forwarded-Encrypted: i=1; AJvYcCUMGZsen/k/zUZZX65taDu3cMwcdEe2W3ZX3rrdEMkJUqm3uh9azGxRaFIOeHdhxA0EqjtMa7dZ5rTr@vger.kernel.org
X-Gm-Message-State: AOJu0YwRzoj2OWxdy8OKrAVYEUFFpb95Dk6cPOztoptcQdOuLZyPNIeS
	x0mJVDCdS/OUyO9IpD06Aay9hQ9xXYkCY//+RHiCpuCH1yKE1MeRWrqcEvaG5Un1k+p3f0673Wk
	xGNtafBKca15ItUm8TWadGVhbc+wL9OY=
X-Gm-Gg: ASbGncvICW7C08aEL2J3HII3dhvqqynVNFu1O6pyS47bGsizyANMuk6E7bCthGs3xCD
	8BEktji7uYD94lePXO6+IHkiRY0E2O6zCliCAPR3phH4oegXkwdgNuL4nm/NBmRmCJnpZHfnPHr
	Go3nexo/IroC6gO5UzG8gXEGQI491mcezVqhBtVAl3g7kF6nkr6LHIij0tjFrGhY4tGkLHZMBQa
	JOj+rrWSjILJi+ksvoFHJOn6uRGmSE0gOHh3NKSARbgGrd5EcEy+pq/ASh4Lx52D96+57u594Ma
	B2TfrtG2eA4BDg==
X-Google-Smtp-Source: AGHT+IHRpB86RXroRDzzRdYSB7oYFAv4dqfXwWvXOZ++yIISCsXtN6hFohYhh9Tmy4ZRUzQ+j+Lng2VlTrE5kMPFzuc=
X-Received: by 2002:a17:902:e5cc:b0:270:4964:ad82 with SMTP id
 d9443c01a7336-2948ba0d9a1mr120199225ad.38.1761559591357; Mon, 27 Oct 2025
 03:06:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027093133.2344267-1-max.oss.09@gmail.com> <20251027093133.2344267-2-max.oss.09@gmail.com>
In-Reply-To: <20251027093133.2344267-2-max.oss.09@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 27 Oct 2025 12:08:57 +0200
X-Gm-Features: AWmQ_bmTfGXGF5x3XTOBQj8jm2eoTyHs4EQJMNTtCvVM7Dk1SHwZVtKvKWhTgLA
Message-ID: <CAEnQRZDrqKFmenTiNi4U==X-xE0pv0Qt=qpXJAVi4sGvnBL4cg@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] arm64: dts: imx8-apalis: cleanup todo
To: max.oss.09@gmail.com
Cc: Max Krummenacher <max.krummenacher@toradex.com>, 
	Stefan Eichenberger <stefan.eichenberger@toradex.com>, Conor Dooley <conor+dt@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 11:32=E2=80=AFAM <max.oss.09@gmail.com> wrote:
>
> From: Max Krummenacher <max.krummenacher@toradex.com>
>
> Functionality has been added without removing the associated TODO
> comments.
> Clean that up by removing TODOs no longer applicable.
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

