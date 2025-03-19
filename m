Return-Path: <devicetree+bounces-158838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAFDA68432
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 05:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38E9617C443
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 04:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0130324EAAC;
	Wed, 19 Mar 2025 04:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TwDT5kQH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375371B4156
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 04:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742358249; cv=none; b=NXSPS6XlFj0jbsFd5eQoehWvTGa2311nj25QJmAXKWY2FRVyVC2PGlWCDSWx0OO8bgJHITBIyk8O7/y96B5jkMaWVgp4Vm3l68DNnvEniNCSnCREmR3Vjs7t0lA9S3pTYwu1JdEbkAiNezx3cWrkFccPpgza+/w95VteyYBQGYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742358249; c=relaxed/simple;
	bh=a2qNyugN9w/uB1pJA1qv4/kcNutyjnqoIx8nMHelY60=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M0yR7c3jl6ldAnoiQDeEy9rVA8xGob9ukn9yn2eVgb2yjvx3BkKBU48DwC+/DLb3kWllnWnuNLF75s6SLf49ZY7kfylvHySKfXKtIeW2u8hSJ+fkW4FQFcb4EOdkxAkCdLq7RnVGhJR4bxcFJVN7wd8x0Chf4RLH1d83wqgyefM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TwDT5kQH; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54993c68ba0so6678445e87.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1742358246; x=1742963046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a2qNyugN9w/uB1pJA1qv4/kcNutyjnqoIx8nMHelY60=;
        b=TwDT5kQHEcklNi9oBDswGarfPdqSLId8VXtGPpX8TnBwzmhrixtS0ubzF121bGusjo
         PD+c0JbT+hoOEycAuZ8kqLPPftddfha/pCHAVmqcrNmuECw+oivi/4eyrQ6B5bm1DP6H
         OI6Z09d/4xQQl4nuaheu77HVwuuz9BidE3er4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742358246; x=1742963046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a2qNyugN9w/uB1pJA1qv4/kcNutyjnqoIx8nMHelY60=;
        b=ikDDb54TA7EtWkkLSIPkOBuyiuCEpXiQ5pQ3ebGKn7gf1pfeoHIJVZCAJp4vPcHXyP
         NFD4Ck19c/0Z4O7aPb2PJUgwqxaVlZqPJE5dNNZnGeu9OAkVS5+tCAAK3fnUucGJwh4g
         T6SUBsN5/Kk2LfFgy3Wy+2etifDRa2yMCPaehV2EQ5ey+GoplvB4S7eOol6zx7NcDems
         3IaDK/HcIaTwrCQbpmv5jQidmkXgnrVA1TIuQeo60ILFC4iV9lWgyhVbI6UDzonmo6FE
         KyZbGPHYNqXtKaC4Ak2nm/RMCqAmmFj2dD9TXxeOvoZfhb3HtTGcC/yQMD5ydJMisohw
         ca/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHkXYV2tnoIjBETZzF4YmRre7nJnz8tJekBAASdWYnL3HWeVHfXsUJ+1e0Bq8OqI6vXvy/FdOv358e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9KOjCmynjX4DCGLwsR5w6hyhqYosrvU4Zj6x8Kta8mb5nkCQ8
	T4FiI+2Uayo+2fEUdPyFcTNThX/CCu4HbzcNkRqw7ecDw1HAPZLZL9oYs1++4nsEwyFI2jATCft
	JVnFRzx18+ttzVPT2zhpb15aLQ6ybT1OBTkQZ
X-Gm-Gg: ASbGnculhMkSshVYgLmcS2ujw77WQck1xFyfs0E3NP6FhmOcPnFwXVNwnPVPvDcFq59
	P9EgX1PCq7icCYsjsjJoDPpmKzaZM1JS4Uaklz5REaZDwu/qcwMhwPOdo+uoKxwVT4Ul2BeyHZI
	3G5af5aOgiwGoLwGtsScDzm2aeFObEb3stOoZ7ZTo+uxZfJM2SryqExA==
X-Google-Smtp-Source: AGHT+IEWZEscaVFUOUAsNjIprCbhq625oZrV53qjtBJsRwdVvGNmpIniSb7MX6P22AGKIV1DoFhBcxyYIRqcNBKHkLw=
X-Received: by 2002:a05:6512:2342:b0:549:8cc9:67d1 with SMTP id
 2adb3069b0e04-54acb2050cemr276298e87.38.1742358246305; Tue, 18 Mar 2025
 21:24:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250318102259.189289-1-laura.nao@collabora.com> <20250318102259.189289-3-laura.nao@collabora.com>
In-Reply-To: <20250318102259.189289-3-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Mar 2025 12:23:55 +0800
X-Gm-Features: AQ5f1JpqtWWWC0q87IWTa2_visyDIAAE7HlagkjknGbBQwFRTMIurzAoihaTquM
Message-ID: <CAGXv+5E-G0BY5q_EsxOkEEJvqXaX5=Y9PWqNbwysLEFfU-UmAg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt8192-asurada-spherion: Mark
 trackpads as fail-needs-probe
To: Laura Nao <laura.nao@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	bleung@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, chrome-platform@lists.linux.dev, 
	nfraprado@collabora.com, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 18, 2025 at 6:26=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Different Spherion variants use different trackpads on the same I2C2
> bus. Instead of enabling all of them by default, mark them as
> "fail-needs-probe" and let the implementation determine which one is
> actually present.
>
> Additionally, move the trackpad pinctrl entry back to the individual
> trackpad nodes.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

