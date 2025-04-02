Return-Path: <devicetree+bounces-162536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA4CA78AFF
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51A1F1623BD
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3796C23371E;
	Wed,  2 Apr 2025 09:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EM3xpAyC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F5D19F40F
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743585860; cv=none; b=rkgHFzdMTJuLVQN5wJmAY7iMbDoIsjh5co89M2zOSRxmdkFHeYp7T1tSSWeF9fX0PNPTiSxB49qy6WJiincrJhlEyrIVwzga4ZgQbnvsxI55ul2dzYv3lyGGSr/2vnh9dF/ZWhthMTlKxCIGG9q4oePMSRURn3QqI1AKYC3vBvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743585860; c=relaxed/simple;
	bh=Rl/Qf4SUmk2urImNh86E9uj8E/MvEVph2O9udL2ugf0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FDBt4BLioeLkAQ6lXZXlhnsIDlq9UOdgCNBp+PdTPrEhdf/FyGXSSye0TOlRH4Qr6mi5sU07UAsh7Xze2xY/DA6wLsfF4tmndRwsK0bltaSoSqpmLLs3kCdRxy90p8fFg8rLAoZJp4j3FoB1EaG6uC703TyJ9/vQtKeBLBltoeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EM3xpAyC; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54b10594812so5139777e87.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743585856; x=1744190656; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rl/Qf4SUmk2urImNh86E9uj8E/MvEVph2O9udL2ugf0=;
        b=EM3xpAyCZ4uyb/ZQVKyb0kD9kfJ2x2uKaLzycB3JP7nK4l40HUdiCLKAPniNq9TzVk
         CSo3uhnd0kr99eeX3q/TWiEAVxQhH9RHE6yBEbh2d+xjtxGo5VDoUgou588ZHuliSb4W
         S451Lzxqj3CJzCA5c7KO5RDneIO1RbILywZ+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743585856; x=1744190656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rl/Qf4SUmk2urImNh86E9uj8E/MvEVph2O9udL2ugf0=;
        b=PvhqZGZgDQFf672qtEUSQ7e51Yhk7qZlvxgofCrlAZ3LDTEyr3blT1h9zbqWF+ejy7
         tBcZqXN1SLfR2HvQAfJMCmFNCzk0cPKDH0YEKdirIq4uPu1zTTN0pIok6kdmIPDaV0cx
         2rlOpxNmAQp8OHf03o9MKKbD4gLd9ndObDzypwZgkRHFQs41g1js7pQSOc/6ziODVfT3
         hZO1elIb8vRxycG5KYnRw7kr7VLBnbAsG9HTnaFw7JOXL07hsOV2zfKKMZhl9AusjgaY
         uzfPC32g4hsV30ei5A8kajZmyDrijPnJGptEgrGfQZEonWiuPKfvp5yYrzX1PpUYUOvx
         cD/w==
X-Forwarded-Encrypted: i=1; AJvYcCWHkC0E/YI8wiWTtNnxdTShg5GRN+Io+0I8GO1Jg7NNCij6gW2YNBWPtVkpEBmFl6eY6Xa5/qAvjDSR@vger.kernel.org
X-Gm-Message-State: AOJu0YwgYO4sA2/PAxnh+u3TSHu35pJxOnwlR0Rd94MYLYP66G3Qo4fu
	Yu1yjAxHA5yzQrbxPiu+wYuuhXulzzG68mRth7oIx2RPOzVbrKOsqSahCzvoLomcdZBotF8uyPB
	9xeUx4ujiGq0eE/SZM/uH7KMYjlaJ+vA+bkt4
X-Gm-Gg: ASbGnct6QvPd0JcHss/IZlOPKHXfB4wdeCXhwFhJ9IAEVAh6RJenqF2UHsbZauam84y
	djUf0RJa3ipGCFWrx+o2tl8VZfo6k4P/i4M0W05EpZRK5K2yYO+DyBEO/uDY/MaL51EzFP/DrXP
	6YFf1rtg4V1HWa8n+1N3iqNdc4f2Y07ppayHF8iySY/FA+Zxi0hpxY
X-Google-Smtp-Source: AGHT+IGw+YGuv8ErLPgxlPKM2b09XhB/ltk6uSyNLvkfiPfwDz8v+Y/E4L1VGtq26j3qk9kLU4E2MeK3y1Gu6VR/5FA=
X-Received: by 2002:a05:6512:2341:b0:545:8a1:536e with SMTP id
 2adb3069b0e04-54b10dba30emr3831169e87.6.1743585856527; Wed, 02 Apr 2025
 02:24:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402090615.25871-1-angelogioacchino.delregno@collabora.com> <20250402090615.25871-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250402090615.25871-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 2 Apr 2025 17:24:05 +0800
X-Gm-Features: AQ5f1JoCbqqAMlKuOxFWbpG8BuhCzvYJb5XMq2RSYRHsot0By3jXZZ1xVJeT03U
Message-ID: <CAGXv+5GuUm0LMphTMvV-A9zebOfyb1sAG+QyQ0jhrF7TV5M48w@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: mediatek: mt8195: Reparent vdec1/2 and
 venc1 power domains
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, weiyi.lu@mediatek.com, 
	tinghan.shen@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 5:11=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> By hardware, the first and second core of the video decoder IP
> need the VDEC_SOC to be powered up in order to be able to be
> accessed (both internally, by firmware, and externally, by the
> kernel).
> Similarly, for the video encoder IP, the second core needs the
> first core to be powered up in order to be accessible.
>
> Fix that by reparenting the VDEC1/2 power domains to be children
> of VDEC0 (VDEC_SOC), and the VENC1 to be a child of VENC0.
>
> Fixes: 2b515194bf0c ("arm64: dts: mt8195: Add power domains controller")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Changes look correct. Would need MediaTek to confirm whether the power
domain hierarchy matches what is claimed here.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

