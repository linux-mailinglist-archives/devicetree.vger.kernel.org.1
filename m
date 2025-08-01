Return-Path: <devicetree+bounces-201214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E9FB17C2E
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 06:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C7F31AA4A22
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 04:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC21D1B3930;
	Fri,  1 Aug 2025 04:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Xxvsibdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA3F347DD
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 04:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754023500; cv=none; b=HJZGJbt7OkufrpyObQo1Oiil/00sycBJkTHwjV68oqSaPC0Ikdd0w+QLrzoE/Ss13LEiY5VAIKSW/KdqzcKcPMqREcU8cnFzYY9NNRc1GmIePOWrNtlwhatVzW/qdNpUhDBRxqoVaJGEuLzI+eN2ASNk/GOp272cU9StkieRWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754023500; c=relaxed/simple;
	bh=0Yp8+sGL3lRpm7HC5BKRhWpXDbqCyYKzOoJSMIzIH6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i/RX9iwc8vhWLJLgfLZr76AB6XlB+n4CCxVjbl++quIrRZNMksU1yLOS5wRW/F4iD8mtFjURXvfU86qUI/p05zbA1peRHZMetCqRb1fXa5TlmqH4/DBfHmhd24D4keov1VHN2TtlkbmchEWyHe0D8HtLsJ0Yg3C3hfSVrmt2i98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Xxvsibdl; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5393d190351so587591e0c.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 21:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754023497; x=1754628297; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Yp8+sGL3lRpm7HC5BKRhWpXDbqCyYKzOoJSMIzIH6A=;
        b=XxvsibdlRKOal12ONE0cMCH5vzD5gU3tRGNyT9485Ov0lFoxvurGxlKiQjRfyPZcSV
         C1Vj+eGB45m0/wqWIhlgkwLmsGa9kK860oON69VoyBAml6ZPdQ2XJjLriZykEl65WwYD
         0eteSb953COSpRC8u6FtX8XyxS+W9G2azm3Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754023497; x=1754628297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Yp8+sGL3lRpm7HC5BKRhWpXDbqCyYKzOoJSMIzIH6A=;
        b=dSDqzXBOngzM/6mhNkitUQyk27wrc/CvI1mhS9bbQ5ZPdueIa7OLou3F9qiQSAirDD
         XfL4GMWKuZBSe9bRGQQ/GGQf8zb0Au7w+K8OifkriMBrzGPyTrbvoTo1/v1n0FQLEFvU
         n8n3fEqhoXvrJWpNMQl1uafsaFv1asKdEk3L1+4rOd6KQLy+t1ghBcfS7PTru5B680+O
         YUKHLVjY66dPZMxZXDucsxkR+YgCbNgfJxRV5yUjrB3ZzJXNG/RBOIJOcIDul4BY3SOt
         eevi5EJh9MndzVGFv4w3Zo1gHhtiDWa9o4PAuiJqdr/mNW8I3JkEotKyWfKxbQxi/4k5
         Alig==
X-Forwarded-Encrypted: i=1; AJvYcCWfaXNzZdo3w3BJBaFFFJw07VDvPZl7D9EcgCmbEjXU/LYSt3NzSnaqMSsVwjzJHBWmOcNwyXztThbI@vger.kernel.org
X-Gm-Message-State: AOJu0YyM6HNXBZwVeiCl2pTuzf3t63XD1K2faN1QIJLLO3FvjuRGZXf4
	ENEKWqiPhLs/C5RqKvHx4HzR9vR2EsIs10WAqVr4nq0TU+eB88LXYgU5NKmYP/vGPFK5dAis5sB
	l7/4=
X-Gm-Gg: ASbGncttIRfz56xfKvi4XswoKAIMgaahJ6x4sUoJ32RDnLtz6IMr+JXwLO8djlxS8b4
	EecbBS0UUiqGFRe3dNDZKdJ1N2x4CbNIFlSyvJXt+Ak+e0wcFed1AK4qiGCiHGouGtaG0yJOXDg
	4tNuxgFtLNNkeUyGkcjC75/q5pOFjVNntdr3R1Ke4kkMt9O756HQ29+qDihdq6Xul8V8zGFoC3J
	6gjJ0YQbyQngEQJoEk49iZ4QQJBGsvnJauMjkvxCvPBcdcHdOrp5BV0o/ExP4R0Dwn250au4bc0
	StXaGlXqotlskrd5//Av5zocaHNArbJCzv3PMsQ4M+el8nBruT93z54N4+EP/kcdIEanYGYEDBS
	2KHzO0lryiIKB3UUM0ABzNVxBUZ1VIOjMXCkJ1ZBEocsCB4wmGzHt6i8SDy5nAg==
X-Google-Smtp-Source: AGHT+IGbu05z+m7RDZX2vC5f8bY17sDCCv1VD85XawiUO9vd46JmjUUjhMHBU0Z78K38DvPeVT5BMg==
X-Received: by 2002:a05:6122:8ce:b0:535:aea0:7a0a with SMTP id 71dfb90a1353d-5391ce97f02mr6299699e0c.2.1754023497470;
        Thu, 31 Jul 2025 21:44:57 -0700 (PDT)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53936cb4c4dsm846690e0c.22.2025.07.31.21.44.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 21:44:56 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5393776550aso642367e0c.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 21:44:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVcXX4l96E9KLb1Qp6QCSVhefcEdG2l34aCBKNqBOevCFPi/tkj3btFEAQTYudYrvfm515TGC05EFJj@vger.kernel.org
X-Received: by 2002:a05:6122:521a:20b0:539:345c:f229 with SMTP id
 71dfb90a1353d-539345cfaf8mr2385080e0c.6.1754023496106; Thu, 31 Jul 2025
 21:44:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAC=S1njcFhyY6+dT2MHU02ZsLDq+k_vAVv==bWuoGt3KA18PHg@mail.gmail.com>
 <20250731101441.142132-1-laura.nao@collabora.com>
In-Reply-To: <20250731101441.142132-1-laura.nao@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 1 Aug 2025 12:44:19 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngjmk8-C0H2Nii4NXE3wsL1dYLQp-PXafG0=oaOVsYgmA@mail.gmail.com>
X-Gm-Features: Ac12FXx2cQ8dN2cbGqrj1qjUfxVx4elX2aD-gscg8zxkv2Gb7ghx-fdTpW8_Hzc
Message-ID: <CAC=S1ngjmk8-C0H2Nii4NXE3wsL1dYLQp-PXafG0=oaOVsYgmA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] thermal/drivers/mediatek/lvts: Add support for ATP mode
To: Laura Nao <laura.nao@collabora.com>
Cc: andrew-ct.chen@mediatek.com, angelogioacchino.delregno@collabora.com, 
	arnd@arndb.de, bchihi@baylibre.com, colin.i.king@gmail.com, 
	conor+dt@kernel.org, daniel.lezcano@linaro.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, krzk+dt@kernel.org, lala.lin@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	lukasz.luba@arm.com, matthias.bgg@gmail.com, nfraprado@collabora.com, 
	rafael@kernel.org, robh@kernel.org, rui.zhang@intel.com, srini@kernel.org, 
	u.kleine-koenig@baylibre.com, wenst@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 31, 2025 at 6:15=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Hi Fei,
>
> On 7/31/25 06:25, Fei Shao wrote:
> > On Wed, Jul 30, 2025 at 11:40=E2=80=AFPM Laura Nao <laura.nao@collabora=
.com> wrote:
> >>
> >> MT8196/MT6991 uses ATP (Abnormal Temperature Prevention) mode to detec=
t
> >> abnormal temperature conditions, which involves reading temperature da=
ta
> >> from a dedicated set of registers separate from the ones used for
> >> immediate and filtered modes.
> >>
> >> Add support for ATP mode and its relative registers to ensure accurate
> >> temperature readings and proper thermal management on MT8196/MT6991
> >> devices.
> >>
> >> While at it, convert mode defines to enum.
> >>
> >> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> >> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> >
> > It's not visible in this patch, but a heads-up that I see
> > lvts_ctrl_start() also depends on whether lvts is in immediate mode. I
> > wonder if anything is needed there for ATP mode e.g. a new
> > sensor_atp_bitmap.
> > Feel free to ignore if this is a false alarm.
> >
>
> Thanks for the heads up - the bitmap for ATP mode is the same as
> sensor_filt_bitmap, so the function is already working as intended.

Acknowledged, thanks for the clarification.

Reviewed-by: Fei Shao <fshao@chromium.org>

>
> Best,
>
> Laura
>
> > Regards,
> > Fei
>

