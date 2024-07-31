Return-Path: <devicetree+bounces-90042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2F994396F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 01:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 768FE1F2256D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FF3616D4DD;
	Wed, 31 Jul 2024 23:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DtjvDoQp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC20A1BC4E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 23:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722469186; cv=none; b=dz/rfeggH5/jA64uJ5ps0eMbAnI8/mPCW2tddqoYiwBblVKc0XyKMIZpQIZdsoHh2B981HekjKWizSOV/yjmq/+6HgzVwPrRQHp5SDS2d16vhmeDID4gKYgpgw8HNfeS65eSvrcVjHge4Dprq9oFI62Ss47Z7zyG5tXwN1zkWt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722469186; c=relaxed/simple;
	bh=paENHMW/2+UYl3tt357TcNttcJM7CEFJjVvZ8PpjUYU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nx3/IO4zwZNDPr2MSlZ2T+rJv72TtmxaUWTGIVyZ3QcaVx18gGYJtBSrcokkVqo38KhaIARTNIkzZwvUnb7PXJBQOEr/w6v/x6sGRURXtrBPiBRpjOrF0Kq+P7ORgdXzoWESA1ILJSQxaT3HweDYzes308eWWSzX5Sj8hLaNpSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DtjvDoQp; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6b7a36f26f3so13535796d6.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722469180; x=1723073980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cGN3NcBjvEDPuj/1+sYN2kLmAgP2z3leFVjhSD6EVrs=;
        b=DtjvDoQpnspsO2xW0gt60UqyjLEaYWtTNuzsTcwhJ7x5KKDkSiW60USgg8LaW0HABX
         zGpyaKMK/k7sSl1N+H232uzsOvAZ6DqpZjYPN2WVqG7md8uKdduX5Rj+LtDS5AYhFrFe
         gWukTe8keUcvQWqgeljrI9BCoZJfiVaOJAoUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722469180; x=1723073980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGN3NcBjvEDPuj/1+sYN2kLmAgP2z3leFVjhSD6EVrs=;
        b=HJWXYT3/Bp8Xa24TEbdp7FXiFfmxClKwa3r5W3Ai5TMz8TZpahvqGjjY7lmHZmkcDQ
         a/qv/BUmhO1OjnZNc+oqS/ZQL0IV1sjJ8gTQjJA3zAHhxoy9v+9mBfEgSBWSw10DXaT+
         1zh10yYh9RqKEnTIVLWZU958awk0rg4YHm5G9+jx89p7kGNir6hyPbh6BBnbl8X9xxtc
         XJqy94IKGw7LtvvqHSxvaN4VcElVWJk7qpu5MQe5EYkFtuFrIAuTiBxK5RYwTBTnYSny
         UyZv4QxKTUbe7tr7uEM4eZzUrfCh6VTjmSnrvRtQpnPleZSpqPFmTcmljV7Pw1ZhLAoy
         wmkg==
X-Forwarded-Encrypted: i=1; AJvYcCUvn/PSUUo4VYokq/X8pZc/brk8sburIQ9DTat3i2jz8tapTLsHlbwXrBUkk/BG+Y+IN85wc9wkfAiAOjoSud4MuKgLdDW9lNYJqw==
X-Gm-Message-State: AOJu0YxB3WBkOg4Tp8TUmij8mwNXx//GeqjvqSKZ7fithErsmnzjqNR1
	iPU+Sq5reMd8NPkAzTwGgyyE98gjKE+Xr4NGU+PuiZfU2DnoZRbBLMDThkMN9r3OnXE8p2fqGXA
	=
X-Google-Smtp-Source: AGHT+IEGXX8P3Da1lFRTfNiWBAuVVjUj0HBmsvc3CfeYoKCSqtMh2KIjBo4+41opWgbbvGcDdshWaQ==
X-Received: by 2002:a05:6214:21ae:b0:6b5:2aa3:3a7f with SMTP id 6a1803df08f44-6bb780cac0cmr41166356d6.20.1722469180199;
        Wed, 31 Jul 2024 16:39:40 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb3f8dd342sm78970666d6.6.2024.07.31.16.39.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 16:39:38 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-44fe76fa0b8so508571cf.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:39:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVkN3b4zsZhjPqelH2Xhc4XQSGI1UkzsJQXa8esdudjH5W7y8NtE9//84q7CdO5KiNrgpn0rigFfjOlZUaZ9McxSlgZ2myXmsA/yQ==
X-Received: by 2002:ac8:59d5:0:b0:44b:74aa:1838 with SMTP id
 d75a77b69052e-45181da7fe4mr1901cf.5.1722469178217; Wed, 31 Jul 2024 16:39:38
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729205726.7923-1-robdclark@gmail.com>
In-Reply-To: <20240729205726.7923-1-robdclark@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 31 Jul 2024 16:39:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wo2nVzn6qvwSAFAnrFX4wtv6_ZCVZaL1K_DBBFg9DJ=w@mail.gmail.com>
Message-ID: <CAD=FV=Wo2nVzn6qvwSAFAnrFX4wtv6_ZCVZaL1K_DBBFg9DJ=w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: samsung,atna45dc02:
 Document ATNA45DC02
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, 
	Stephan Gerhold <stephan.gerhold@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@chromium.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 29, 2024 at 1:57=E2=80=AFPM Rob Clark <robdclark@gmail.com> wro=
te:
>
> From: Rob Clark <robdclark@chromium.org>
>
> The Samsung ATNA45DC02 panel is an AMOLED eDP panel, similar to the
> existing ATNA45AF01 and ATNA33XC20 panel but with a higher resolution.
>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/display/panel/samsung,atna33xc20.yaml       | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'll plan to land this in drm-misc-fixes next week unless someone
objects. "fixes" instead of "next" for the same reasons discussed
previously [1] that the dts patch should probably be considered a fix
and there's a chance that the dts patch could land in an earlier
version of mainline than the bindings unless we consider the bindings
a fix.

[1] https://patchwork.freedesktop.org/patch/msgid/20240715-x1e80100-crd-bac=
klight-v2-1-31b7f2f658a3@linaro.org

