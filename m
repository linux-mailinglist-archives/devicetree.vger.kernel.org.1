Return-Path: <devicetree+bounces-119748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63D9BFF5E
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 08:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65015282E1B
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 07:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46155199924;
	Thu,  7 Nov 2024 07:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OHuNbvct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8125319645D
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730965765; cv=none; b=GwpeVg+m9vlhAN7vIxgybupoxx/I87bm2Xc+phPhR3Im+ZnrEj7XoXiVyGbVBd3ak0q8Xn9lXiLMIya6tJds7DP3LDP7rWXKWrTaSU1Okpy97NQfoD9syN6wOIbQrKSkvRCacRTT6gAaQWhKvdeVIGWMY9sJ2MKr7eU8Yj7vWQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730965765; c=relaxed/simple;
	bh=Z5KIa5+EjcYXaQtJ5CUKjRCce+Nn4x5tsG3QRpALwRQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QT4C6UVkucZnSfkXdjrKx/5oKdcQaHM/oU2xQfygKq2xf7NaTlC0BUbnXSwjrfQ2dvaIbrPJKL58HGxeXlhXgLZrLFluBWL5QgRI6CpCAmq605aY98DST6yjKAlXwCD4rX3RbpAG/+Lqix4wmy56PC3ebmAAEVp7Sl7/oJuFVeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OHuNbvct; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e4b7409fso746349e87.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 23:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730965762; x=1731570562; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5KIa5+EjcYXaQtJ5CUKjRCce+Nn4x5tsG3QRpALwRQ=;
        b=OHuNbvctu8vBzcDDUrwSu2OJvVy8Tkncf+rvvfNc+pbkub/JY18xzUzWqpa2TQI40D
         j0yxdvJxcGw34ZRr6/vtNBXAoQpWQ/XYAvD3aMFdsUsscFzH7d6Oy1Z7EeD2EKaCuC8q
         CKtQnuUzsKT9OxSCDQjruh9lNXDNZWrjW1Wbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730965762; x=1731570562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5KIa5+EjcYXaQtJ5CUKjRCce+Nn4x5tsG3QRpALwRQ=;
        b=kYotuGKzQq3WEvsqPiY8xQUhurCzmn2KjV+xT/Xuh6L8xfvPsw3szhJ9wfDmWRXPZQ
         CCb+tRegdqdo+ZiwjB0Rttji/kNn6dz6eyu6oAcaXAEWbTqyxedNaWMvt1MfbolsfScq
         K6JTWZPwyJrtuIsxmYGelltIvBYAy+I8Y9r4+B944Wnx6seuhhsWHuuYpSUeX/PjbghD
         5g0eZTgPeph8BntQGeMdfDrpt12gi6E2hGFW32Krup1b5acYHQJHInPiU5v1Knw9GhU4
         ryAAfmZxZubPcErijl53pFK+bk9vzEJrSg1hHS8HBm15LFcJ8guFRpb6/UByXQC+VjYv
         BZAw==
X-Forwarded-Encrypted: i=1; AJvYcCVoRRaIVsQ9ciiul1eA4qHRso+OcMj1aEjzWLAjKm/mm/RhsMN76j7RBelTp2BPmulZ03r9yRFzKpy5@vger.kernel.org
X-Gm-Message-State: AOJu0YyBrW22CQlBrddk+4fT5rU1rmR/wEpWJNguKZwTG9ZP3rboiuak
	K4yMbFA1+7Wccu5qX50Vrq30Hcfpnz8kU1s9MYsNr2wVSkA10KVWl1e2XDt93+OLD3CGYwaXhkY
	G3sZbY2eWDAi5t4sMuNQiubHfoHVJ9FM2Ce12
X-Google-Smtp-Source: AGHT+IGxn2pSbneZDHgWnWUCDZaUop/6c6chaGYhHrU991goYLF9CZhKqopx6hRuSSwvbSM+DLDtcwV7tpySQOVxgHc=
X-Received: by 2002:a05:6512:1086:b0:539:fcaa:d0ca with SMTP id
 2adb3069b0e04-53d81971b63mr724012e87.13.1730965761512; Wed, 06 Nov 2024
 23:49:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241107074603.31998-1-yunfei.dong@mediatek.com> <20241107074603.31998-4-yunfei.dong@mediatek.com>
In-Reply-To: <20241107074603.31998-4-yunfei.dong@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 7 Nov 2024 15:49:10 +0800
Message-ID: <CAGXv+5F3+65gTsmz7Dzrm3QchmKnTECAGzLwJW9uT5aM_jLeMw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] media: mediatek: vcodec: add description for vsi struct
To: Yunfei Dong <yunfei.dong@mediatek.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Fritz Koenig <frkoenig@chromium.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2024 at 3:46=E2=80=AFPM Yunfei Dong <yunfei.dong@mediatek.co=
m> wrote:
>
> If the video shared information (vsi) is changed accidentally,
> will leading to play h264 bitstream fail if the firmware won't
> be changed at the same time. Marking the shared struct with
> "shared interface with firmware".
>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

