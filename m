Return-Path: <devicetree+bounces-196585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B19B06518
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 19:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90CEC3A7396
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 17:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A25A27BF89;
	Tue, 15 Jul 2025 17:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WsobGYc/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04C4C2EF
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 17:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752600419; cv=none; b=KCCPbz34mSF0bwSjKGtKEsMjFYlS0btfVG38uks8c+aV6Zm1P2WGIH2Ws8qdXMKWXcd47z5X9yIdmNonYXwjJhMEVVZ/f/SbPVazKT1/orsO4jo2wwjx1yPQAqm+5b58u9/+GiKFvllJD6r96Ieiy/QmOWwA4FOfR5DpfPT3qgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752600419; c=relaxed/simple;
	bh=isF8Gtau3GCw3cMblNO5v7kplTfbtpgalIiR8BIoNZ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IXzC3+xlo8cbRQ6ueQRFrTLGVXrXHOrqEAI8/UckfuyhUFu3ECYtkgF9f5LR8SsDfyupk3JBffuY8qyMNboL9QGBmwUQ2NwG4f5iadg5L35HfBSONx9trZW/CvwGmsuWp1Oxe2oeMxs9dqZoZ0X3Vtq+5Z+H81eD8FAaSiQz43o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WsobGYc/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-742c7a52e97so4744958b3a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752600415; x=1753205215; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j6MhRN6ppxrCnCAXp4O8kzdMF4x4FAEbIn2zSZ0Cd/A=;
        b=WsobGYc/MFTKtq8p8D83P0tH4hQ1XxJ+jeJgqa5A+j98CkHlMzwEwfD5v5dMs/XNhs
         D/cuSZcLgcj8r9sOv/LaYWN+p0Yl7C0HaBh4o7KzhsHzuKDWpdPioHl78VBusK+kzQ9a
         CcJKA3egHshkyheADfeq4PVyaZzCe3OXZ351E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752600415; x=1753205215;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j6MhRN6ppxrCnCAXp4O8kzdMF4x4FAEbIn2zSZ0Cd/A=;
        b=hzjK3whodJHag1d9JP/eORGj9v2ML6kpMvKjTY3QOfDiIMFEZsP9KGt9h1U9nvVP5j
         B/ai0Tou4qCKcuUVyk3lmn/LyM4/uDcKQkwdy2BWfkzTigaUiBawl+mGUtI2Fcdrd7HH
         R8s2DFJ3TP+oWU/DgxStwloIsmSOLzA2k7PwtIPmxjS5Povtl3OPisHXQUXpphX7Temh
         JDxGtm8Vb4jyIzddl08Q9wNscfR+jvlGZBCFEWVl8aRKGvX30D8JXgyTGtf3NXjE7aUv
         /T7KuINTY+lJtj0KXuYo2eKmHtme2gRDvrYtGEwW/zW5rt9iOA0qw5rYqyb1QvtZp/6e
         YSjA==
X-Forwarded-Encrypted: i=1; AJvYcCW5CFPpbaVvJBqF5YeHtY3z7XDjKadsAR5yHuQrGzNF2w2pjtXSiW+gh7Dy0+UNdifb5Sg6LQjJ2C+w@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjk+eaTlw2n1DKY2rfHDLFlZbI3fgfJhiJYQxxt5Spst8Qryox
	oaYKJiPfau30XWyN3auAYZmxtjXNfrs6a7WeOIFpRnL6uPJ6wP/EVM3GdGj/6P9eHHYOdR/Zzbo
	1yW0=
X-Gm-Gg: ASbGncsJCkNrVtqtAcUaqMwM4JwqorGzeLGibDOeovYzrpnT4DU0OqT8yOpfnNL+ZMK
	hwjWwoxoyNUOxM4jrBhXMgpCx7shSlO5n0YDVulbzzh9XokZONT8lBPm0SSj1/TpJVRPtYd0GBf
	P2Slv/4CCAB1SZnxWy6lWDLggnBvbgm1EqA+Alcq+EHwhsOYeEWNHUrKQXtgUlY8v9HKV1lR9um
	zv9wOtR9Gkvg10hBemA8jyQPSyp2pf+hb6PJ+2M8urn3jpl/mtK0uG1/yiVaBE+LeHc5NIyg3Ep
	Ow3pe/fmARLK59nF1WaKZlbZVPOqaGmnJNLSzKp1/qhl1N58KKYUoJ0HKaFgiiNoVwP0LxCtOrg
	oJWD9e0qql21CtIsbSl78grWKJPp07oI0ovf86rMG0DjIUNPLIPxStxQ6xe7a4+cADg==
X-Google-Smtp-Source: AGHT+IGPvZFpUax1W84w1DG6aBrGPd6YtH8FWwHYm06cueoOaIPMT2d/ri6VWBi8NTZF794aS0oCDA==
X-Received: by 2002:a05:6a00:ad3:b0:746:27fc:fea9 with SMTP id d2e1a72fcca58-756e9de7067mr226665b3a.11.1752600414905;
        Tue, 15 Jul 2025 10:26:54 -0700 (PDT)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com. [209.85.215.172])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e06890sm12774879b3a.48.2025.07.15.10.26.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 10:26:53 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b3508961d43so5156687a12.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:26:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULlrml4wOSHgq/PQL6Ne6fFP8s6VOXpH20JytHIeatz645i+FZRih9AXZ4XLwCSolfEU6vA9BX9gvn@vger.kernel.org
X-Received: by 2002:a17:90b:5587:b0:313:28e7:af14 with SMTP id
 98e67ed59e1d1-31c9e75a6demr6694a91.19.1752600412930; Tue, 15 Jul 2025
 10:26:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714173554.14223-1-daleyo@gmail.com> <20250714173554.14223-3-daleyo@gmail.com>
 <175255192501.20738.16784196888105498389.robh@kernel.org>
In-Reply-To: <175255192501.20738.16784196888105498389.robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Jul 2025 10:26:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XvHu_NnahFOcfLV4XQm_mQkO5cG3YP+acRgC9AE2m6Jw@mail.gmail.com>
X-Gm-Features: Ac12FXym5rkm10vzDYnC_hB8fozQpKkEtx52Jg_soFGip83valaWRitivphZL1M
Message-ID: <CAD=FV=XvHu_NnahFOcfLV4XQm_mQkO5cG3YP+acRgC9AE2m6Jw@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: display: panel: samsung,atna30dw01:
 document ATNA30DW01
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Dale Whinham <daleyo@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?B?SsOpcsO0bWUgZGUgQnJldGFnbmU=?= <jerome.debretagne@gmail.com>, 
	dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, 
	linux-kernel@vger.kernel.org, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org, 
	David Airlie <airlied@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 14, 2025 at 8:58=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Mon, 14 Jul 2025 18:35:38 +0100, Dale Whinham wrote:
> > The Samsung ATNA30DW01 panel is a 13" AMOLED eDP panel. It is similar t=
o
> > the ATNA33XC20 except that it is smaller and has a higher resolution.
> >
> > Tested-by: J=C3=A9r=C3=B4me de Bretagne <jerome.debretagne@gmail.com>
> > Signed-off-by: Dale Whinham <daleyo@gmail.com>
> > ---
> >  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Pushed to drm-misc-next:

[2/9] dt-bindings: display: panel: samsung,atna30dw01: document ATNA30DW01
      commit: 0bcc0f5e98bebd05e44261df3c33d274084eab60

Given how many of these we're up to now, I'm starting to wonder if we
should come up with a generic compatible like we did with "edp-panel"
and then we can stop having to merge CLs like this. All of these
Samsung OLED eDP panels have the same power up sequence and once we do
that then we can read them via EDID or via DP AUX bus to identify
which specific panel we have and if they need additional tweaking,
just like we do with "edp-panel". Do DT folks have any opinion about
that? Coming up with a name would be a pain since I wouldn't want to
assert that all future Samsung OLED eDP panels will have the same
powerup sequence. Maybe "samsung,amoled-edp-panel-v1" even though that
sounds terrible and there's no known need for a "-v2"?

-Doug

