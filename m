Return-Path: <devicetree+bounces-196204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0B6B046C6
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCE9F4A2B53
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 17:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AD11DC07D;
	Mon, 14 Jul 2025 17:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="itY7gHH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8035C266EFB
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752514935; cv=none; b=FVIbv98erSfvsAizgEBqlXIhB3j4q7ufeP9SGGf7gQmmZ6u76xp5zL//AvxgT8XDrvX1DO/xyZ/iDvlz2oX43mWipO8b3u5H9R/79s4Y/qCGXQpqUbjj1aETKnc5pv0a6rYfUgK2JBSasdz09zEJAI534LxiDzhIhYe2u/Gkud4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752514935; c=relaxed/simple;
	bh=0JgqA9YHt4TpWiwtgR0dMP2Dgm7rG+QC0iY11YRi0Og=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qq5NnUdqAbSNwLCbrDv9e6DhHxptxRI/lC+zxJ3MfEqyHxEMsq1Go1aZiV7Iediq2AHviR+oRhHKllt/PNQumIOmLW3DWHWVJ0jl0uUqIKc3K5BkaXl5JSITN+4dkIOhhh5noqsz83Lah7k8gERXUFDMqzrej6/RQn8lg3fiGpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=itY7gHH9; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3138b2f0249so3749246a91.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752514929; x=1753119729; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hN8YccMgbb6UtBF/LeELrVcLJIBR2bmzofizaUxZUo=;
        b=itY7gHH9Hrb2s+9ESwlPyA1GyWJsukvmCMhAMTnV6jMVNbxMweVLUkrKqVbuIeI0+d
         FkmHIifHpEBt5R0JZcxUsnpyR0lmDurc7mdGKUdpjqEM9JP7IwsuqGGdRrgJw64HmQSe
         S21/gS8pAUuHTBeDxdK+298ob5gprsWqpn2Xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752514929; x=1753119729;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6hN8YccMgbb6UtBF/LeELrVcLJIBR2bmzofizaUxZUo=;
        b=GZHBlWJN7IXmeSN+W+elDEkL0z9DwT+3adrU1kzshFbK5RdLBEycNdxWom8qrXAj2v
         PXSTwIoswE/gPJH40T2+eZhLHACcvejfh4DEqxVAt/cXuNCO/9iWdJHhI3pEqgwD4cXo
         Jx3Vc2lLsoZZRGARfA5Qz6shV1tPwgh8gPaqYP5nrlT3U7iLz5NJqOKTygDU/rEJBzv1
         lOkc+9uIcbGl6lgwqoagj/mJEi+2ShLobbpoYiUaPxFiF2qpACB79ftAj5obwORgu1Yg
         ++rXxm3TqmIgy5/J2uhVc57wI1CCe+rYMc+MjQNHZztVWZeixM33cXyJMM9D2H5eDX60
         zudg==
X-Forwarded-Encrypted: i=1; AJvYcCUhOB1bKd4rZ5b9KTzfwiicO5bRaa3cmBMIt8JG3pKgoC9mgjPALrVrU+gvX0l7kuFiD0Q9Rwf83Pby@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8DWJtpFbvY9ZVh3c27yHxOec3wFvpY5D5OQ/JOdZFk9OcZfGP
	CL+SXdPUnH/t59tl+dIqx1No6YgLO3mPoUJpnShhLwWR4ipsaOPFQTPZoKoqVmZBVTn7ZORCtlg
	nKlM=
X-Gm-Gg: ASbGnctY36mwP/KmwNQTehVLApygNUEM4Vd3vWcrVLLgYOD1pdlENNGIJX0j817F12W
	0ocMVsTkntvevV1GQcallYlX7ShIN6lfg1SALRd0GWGnE5g8M4/YDCLZc62p6o8IPa3ZIPRAaKm
	BMbxPGI/GWbX93kho07d2FxQIn8IvmioPFid5WTA3GH9Jy2v88ewXQk74/TYE6x9H1H6tN3h1dz
	AJIuUbMW1RBpfhbDyHA1WnPGUimZlsiNU9ZrQs9ncGLd9Xejg8sb37qqeVoSO2vzgxDlhcELXW7
	uqOlxVhZKx0T+R1EW4i6Cr4YfZH1xUhrGV4QPCgm1lacc3M+aGpW/Ile6SkIu0yQfSuHX4xK3fW
	ZSLVBTu0DekgFv7YTnIEcN553LLjnI8gfSDBtvRYalFzNpQ2UqIs2KjF1NfqWNChpktK0qugd/8
	v5
X-Google-Smtp-Source: AGHT+IFRRaPmp4KqB5ds20OF/CazQjARc+6MCRd0MhVafHo/JrJvHpHmB70Y6sarlopwVHr8SuTS9Q==
X-Received: by 2002:a17:90a:53e3:b0:313:176b:7384 with SMTP id 98e67ed59e1d1-31c50d7b49emr15427601a91.11.1752514928693;
        Mon, 14 Jul 2025 10:42:08 -0700 (PDT)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com. [209.85.215.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c3003faa6sm13859851a91.4.2025.07.14.10.42.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 10:42:06 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b31c978688dso2403212a12.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:42:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXTqnkssR7G/aOdPMhzDQDzgb4PctIWSvwz4Ra+Uh6iO4Ys2z53ZSvDv9CVFSFg6PlUmYyNQ7vjgci2@vger.kernel.org
X-Received: by 2002:a17:90b:33d1:b0:31c:15d9:8a8 with SMTP id
 98e67ed59e1d1-31c50d5dfc7mr17730062a91.1.1752514925305; Mon, 14 Jul 2025
 10:42:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714173554.14223-1-daleyo@gmail.com> <20250714173554.14223-3-daleyo@gmail.com>
In-Reply-To: <20250714173554.14223-3-daleyo@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 14 Jul 2025 10:41:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V8Z8Vq_XP=n_YGh2Junj3N4nWwdU7PeWWt323wsonL+w@mail.gmail.com>
X-Gm-Features: Ac12FXwYxUojKbVSCKrTAuLidZaZV_hTeWFSLtqTJMBGCZSvoJjYkTTdNAw6f-M
Message-ID: <CAD=FV=V8Z8Vq_XP=n_YGh2Junj3N4nWwdU7PeWWt323wsonL+w@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: display: panel: samsung,atna30dw01:
 document ATNA30DW01
To: Dale Whinham <daleyo@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?SsOpcsO0bWUgZGUgQnJldGFnbmU=?= <jerome.debretagne@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 14, 2025 at 10:36=E2=80=AFAM Dale Whinham <daleyo@gmail.com> wr=
ote:
>
> The Samsung ATNA30DW01 panel is a 13" AMOLED eDP panel. It is similar to
> the ATNA33XC20 except that it is smaller and has a higher resolution.
>
> Tested-by: J=C3=A9r=C3=B4me de Bretagne <jerome.debretagne@gmail.com>
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

