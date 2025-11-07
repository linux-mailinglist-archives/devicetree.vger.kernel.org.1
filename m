Return-Path: <devicetree+bounces-235970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F8C3ED31
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 08:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09884188D1A4
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 07:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7E830E821;
	Fri,  7 Nov 2025 07:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dqmsZeXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E942C11CF
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 07:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762502056; cv=none; b=CPRp4bFDj4vhEEallnPJGBiLBDo9ovk6FnS9uqB7XLRMmW2T2kKspxtsyY/0JYSrMTQhv3bD7dgJEEQ6FjdnEZ9bbsjkUNWkHHJu5pcNEXP5urmUnTnHK2jCbOBa8ijmAoJapxRwPoPl9NHYu7cQWRQhqYyGqClOo0ZaC2xxVD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762502056; c=relaxed/simple;
	bh=hht2khT+M/paWxzoLF4glbCzxzDG6WfHD/Jh8JDmVm8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bWKVbCDOLphrnnPOTaN+bZEQOsJy/PR2+vNOP8jv1j620hj2vMNwOlWJZB6IH5DcYqeCyvOmlyJd2NDzIIVA5X9i7jPH2C+knZ/wB6vo7KJ+wLSU41f4zta9mUu6X7NvXhrn+84OZX8tLdM3orfJDsX5Rmd5VlNltPY347F30bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dqmsZeXn; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7afc154e411so341127b3a.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 23:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762502054; x=1763106854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hht2khT+M/paWxzoLF4glbCzxzDG6WfHD/Jh8JDmVm8=;
        b=dqmsZeXnah3owgv9LU0TB/AZDmVzNCwm1AATRL8aG2Rur5PLhtJZ3sQkQl0W2DfAWy
         71EPUf/DQ9ddYGflNciTusRdjd03tZ7fRBfVIvnyhQyiGsR2cnUMqp2RGzbbzKlKSXjq
         Sm4CKgtEdn0iDEiW7E5oTc1i5PMgPvJzSewDHDRggUgpaymPyYz7695a/VzZrA7r719M
         KghSiL10cU++5uhit8q2wd2pEQCOqGNI0JgCiHScV9+OntAuJU+/DZpLgNPzpHKmDtJE
         uaVLMAEl9BQeiVi9wc+R9/PkymLZpCiz4auNfP64Q26UaovpfmX3Y4iFvK2Lm9x43r2m
         xgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762502054; x=1763106854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hht2khT+M/paWxzoLF4glbCzxzDG6WfHD/Jh8JDmVm8=;
        b=fZtcGTa43vpzYv19ycNWkRtkZUDAimHiZ+ab/S0TJlXiFeV/xr1F/+j311eYDIOpls
         sTw993GCW61gq2QFWKR1/PPDWN0rYOCuHCxm1Eet+/CAW5Hb7Dz4/qRaYjeF8h40xYpA
         t6owqhP/7ygstWXAz+YSjnlRZ/no20g477rb1Y1LV6FqakgwxW4cv0nQHw33UrPgNwrv
         GU1MuYa8VErxugpy8e8OQ/Y8+9NXnGidMT69fcgbXxI+Q42jz4nODSHiFJcAKqPMBHzj
         z4eokuZ/BkC8gSbM5S2lZ/SiBFXIVuX5LYIAeZY8C00biW/N+Bu8xXeQM6oIFIQ27hex
         yRvA==
X-Forwarded-Encrypted: i=1; AJvYcCVE9lhAAvU1ZQgIBynPKCuKFF+KRzoW6lQJRuh8LBGHVZf2YMD1rHnnap6E8n2dp177LSVF8u7kmM6T@vger.kernel.org
X-Gm-Message-State: AOJu0YwYZ3DevtrUsqUTqwmJDVsE+zXv+m9YrATRjIEy+TFTh/3Zzpnj
	5cLhdx7eZSNxptaeOtUUE4DjfDsn5v17FikaqBkX95+0/wYfgBQa815DnzRIiFSCnlAWnBuWR3m
	xOfWm7Pq1IdwxgwBF0OXduxTix3MsTKU=
X-Gm-Gg: ASbGncsucQoU3HOfHJ8qZgIz3IzbuIPmAjkyWaIpefqpZhNwbMNbIX53IYZ96MpcMsr
	ud6dy0+/pNOo0Y03H/YhDZT3VClySymN26qsyBlDwsp49z9+biGZFa8GFi2xl8l+i2a+Exk5pzc
	dqRUV3o3YoQoV0sff2Uxle2B2Km4QZoe5yHxgG/apbWLhE7ybjC5dkbdQdG25co4nqwYzIclM2G
	33iGvY0P3+rlXiLwL6wPj94762+LkJy+DMMpCU0KvXDgTeaU4wAOFJwJQ==
X-Google-Smtp-Source: AGHT+IHL0mKF9QQYctg7K2SDNNvhbCsy5jQOa37KMcgcdBvRiNDOg88v8nsypzK+cTSQzbs7MXiMalVatyoMujxAM6A=
X-Received: by 2002:a05:6a20:914f:b0:334:8e2e:2c55 with SMTP id
 adf61e73a8af0-35228572ba4mr3084918637.18.1762502054278; Thu, 06 Nov 2025
 23:54:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-imx95-rproc-2025-10-31-v2-0-758b2e547a55@nxp.com> <20251031-imx95-rproc-2025-10-31-v2-3-758b2e547a55@nxp.com>
In-Reply-To: <20251031-imx95-rproc-2025-10-31-v2-3-758b2e547a55@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 7 Nov 2025 09:56:40 +0200
X-Gm-Features: AWmQ_bldmBxOD-3eNLQss-begsdemT3T5zDmdImzkOkUALSL6znnWYvoGByIzsQ
Message-ID: <CAEnQRZB4szsOxtP2QmRdpwR+ZJ+8ydGg8hGAo5DqHC=tw23M8A@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] remoteproc: imx_rproc: Introduce prepare ops for imx_rproc_dcfg
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

On Fri, Oct 31, 2025 at 4:28=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
>
> Allow each platform to provide its own prepare operations, preparing
> for i.MX95 LMM and CPU ops support.
>
> No functional changes.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

