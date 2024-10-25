Return-Path: <devicetree+bounces-115698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D119B0636
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:52:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 389BC1C225C0
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258071586D3;
	Fri, 25 Oct 2024 14:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DtbbuTAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90DB14B06C
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867919; cv=none; b=gdhNJJEoyQdMeoC/zmkiRzhJXVWazaFqdvpkGfqCXY0E1NcsJRcRiAeCrLgQLVYMU8U1cWJb4mQ5WaIPFKWcQGVg+g9GMamoYZJsnGWlmoDV53urNiKpmYPq17pGk3E1FVVIsU1g/AlK27II8aGfDkl0LrNV2aEJu/K+LN8giVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867919; c=relaxed/simple;
	bh=Vx8Bd9sC0kDg9EtadUja5JmXpyq7Oneb9WEXhTdHlV0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VWCpvnK0+J2eMdt+RxObQpUXhFT3OyZWiGKSPywF1M6UAwSWkwDq1XeL1uj67MzDkp0ls8j2iVtZLj5cpSSAwvgi9iPlLFdQK0hSSrTw7r2i4DG0HVxiYzCOA/PQG6et/vjnZVw81fI+xsAwlV43Cxay5NVrokHxCUjp4AbA+wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DtbbuTAr; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5cacb76e924so2766280a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729867915; x=1730472715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XR/4Fvu0tMyoCCtOc6mB1xqHO3YtOWoM5ClealtuxgM=;
        b=DtbbuTArMtW2T0bqSX1pVoWD20AfmSyMOJ8GbpoFowvd4ffVs/ujY1+qCQFqAFkTge
         FquSFOvIjFqwj4y95Px555IpeFfQYj1/S9GqyZEgM3fVd2N6mvUMzoDge2C7Y11L22To
         DW+BLGcnLneLl06Tn3ZeZIPnlK6fUTLzJCynvEGqzI1FZ/tg7jE5oK/OM7I406PadcfQ
         FWGCDw4zSA/kf2Fpm6o+z09329HNieJCK5jW0aklvKlTF2fiqFXb1pwJ7E0BsooJ3D1K
         74CIdt56kYTJTjmu7uqASx45gL5mArJc9uCEY4p9vF94DsZ8Djrua3h4iIFnK/QRLnw1
         egJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867915; x=1730472715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XR/4Fvu0tMyoCCtOc6mB1xqHO3YtOWoM5ClealtuxgM=;
        b=SfbqQT8IRAZTy6wylJ9zKeDy7a/PoaFzaGYahnQ+SHo0vMiS42SD7IdCM0RK+bE9RQ
         qtkjCFPHvgIj0dLhDSp0cl/MgsmEFL0RO5cdT0rG2vUAK+QO4XmlhAPsE0AKbUDE2glf
         SuXIwfmh+S2+Q5U10WPtFnA1cbTpolnDmkfpK444UUwjZMLqQjSj+HeKGLRXX8i9EL2j
         OQQCXqF8u7QnW2ei/fkhr/PgI/h77/2TgLzzp2F9f7VaUN8sCJMRJg+1HSHODsgadlsg
         uSZ9+fL/GIE7+k4REwnvVC0WU1QfK4OPa1zmpwKgn/rCzhVJzozMCjJKCgtGm6He/lAG
         BSZg==
X-Forwarded-Encrypted: i=1; AJvYcCXRvVMBJRS0o/0Or85wpjRJ1N0xKL0KpMDDfimldSWWE/02QrHL/zdnV0AiQor/vTowEIxVN0lYI8s2@vger.kernel.org
X-Gm-Message-State: AOJu0YyjxdP6zOVB0MBkUAlmWBCOCHcPmGjQ21JcaiRHzOFnaK0Lk5MM
	9stDR1tC7n/NL1+cXONvUrTIeSOhO88un62Q4+nQ1/gRnFzfCOHC+zblcM987jIBmawpf9z3c7D
	1XUOLMLYpgFzrvu1udSlUEEs84oHeyhIr99b9nA==
X-Google-Smtp-Source: AGHT+IER6oLuLAmMqy0L4qN7TusuZBghOustjiSV8015jNjOqosSq06NJ/Zu1YsQk+kV8Qw7CqO4h9Ex1wfPvyXxJpM=
X-Received: by 2002:a05:6402:1ed6:b0:5ca:18bc:8358 with SMTP id
 4fb4d7f45d1cf-5cb8b264348mr8002531a12.24.1729867915170; Fri, 25 Oct 2024
 07:51:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241012143826.7690-1-linux@fw-web.de>
In-Reply-To: <20241012143826.7690-1-linux@fw-web.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 25 Oct 2024 16:51:16 +0200
Message-ID: <CAPDyKFp192dy_OXXYk5zqJQPUvrTwkQYPaMoFVsHHQiO74U1eg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add mmc support for mt7988
To: Frank Wunderlich <linux@fw-web.de>
Cc: Chaotian Jing <chaotian.jing@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, Frank Wunderlich <frank-w@public-files.de>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, daniel@makrotopia.org, john@phrozen.org, 
	eladwf@gmail.com, ansuelsmth@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 12 Oct 2024 at 16:38, Frank Wunderlich <linux@fw-web.de> wrote:
>
> From: Frank Wunderlich <frank-w@public-files.de>
>
> Add MMC-Support for MT798 SoC
>
> changes in v4:
> - drop minitems because of dt_binding_check error
> - explain mt7988 compatible with mt7986 platform data in commit description
> changes in v3:
> - use mt7986 platform-data with the mt7988 compatible

Applied for next, thanks!

Kind regards
Uffe


>
> changes in v2:
> - corrected minItems to require all 4 clocks
>
>
> Frank Wunderlich (2):
>   dt-bindings: mmc: mtk-sd: Add mt7988 SoC
>   mmc: mtk-sd: add support for mt7988
>
>  .../devicetree/bindings/mmc/mtk-sd.yaml       | 22 +++++++++++++++++++
>  drivers/mmc/host/mtk-sd.c                     |  1 +
>  2 files changed, 23 insertions(+)
>
> --
> 2.43.0
>

