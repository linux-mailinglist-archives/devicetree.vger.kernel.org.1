Return-Path: <devicetree+bounces-91484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3970949720
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 19:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 310101C2127C
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 17:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23CB76035;
	Tue,  6 Aug 2024 17:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hyOSwXl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2A46F2E2
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 17:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722966762; cv=none; b=bOgjdBwTaKuBZRBBL2Ts7YiVh5ixt8LcJNZFQSDeRgwevrM3qYH1K1vwx3Wz+Zm2mZms0HBI6tK42VgMH81gRxJDGxQtWCh33cJwts0T4sObdYMXTmSrmuLJTxdRsuFfzwZBYJ+HRpwQIxx8Qz/7A8eW27/s8iMe2zthNM3iqN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722966762; c=relaxed/simple;
	bh=6sEhV/UwJzHAc0B/xdv8Aikpej2a67uW84ZZ1V4NXJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nM7PFg1ukxwP7dvUVWrb0hJc7HjLUj3o/1l7aJisNqmmOvyfWjwOAP/jDbjeTYegpl+olKi68XTaA42TKhdCtyTKDcwvIkHGNqjNJgPI9s7AP3T/P06ca6j56aygRax+B9iqHFZvoBGgH9TM5RhPKQ5yygZGpqw++fJjiiFRKyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hyOSwXl5; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6b5f46191b5so5000996d6.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 10:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722966758; x=1723571558; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5W2l2GkWTnRzvV1UUGjKmQpo2CkW6GJdcOBrie/UAMQ=;
        b=hyOSwXl5TLqVMYYqejrutY6LSAjPENNbX/QDS6+QPqcKBpZZTTZ2UiRCTuPyXsMJrT
         uO7F89nfW5PQ0q3B/MqUrJGdIvowvyhsu4q/fW+FSUs8bVLR3HgzIGZe8gKv338+W/5R
         1x67n+9hKS7/jERCD6pk3bdnxwStoqNql/cjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722966758; x=1723571558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5W2l2GkWTnRzvV1UUGjKmQpo2CkW6GJdcOBrie/UAMQ=;
        b=vubMUkohqTFAi1wobN7OUZZTNYibfxmfNcgWQ6rhLbUmqH+CrZk4RIEEYgAG5wQjT7
         1AJdTk4h4/fJR4jq03qpiMX9hoOmlEEKNNSuJJnTJZD8NLMgyoEGoS/zCj4lpVG4F9nX
         8xodFNLxaY3ugP1xtynOTDsVLSYCR1NW4IwjYyabNx46Yw5bmiy8XCHXItgl+YDq4AVf
         lxCsMgcGaajmFM0rEzvkPaHlUBZoS2sYx1yh7pnlXAhWadHonJbVixHK2h7iSebOeOOM
         8lBB3tqHiRfO+pwN46qe/cKflHDoTZkNsQGrUmdYD6pA3pAmhx/8ZDPgzgay3ODN5pTE
         YxVg==
X-Forwarded-Encrypted: i=1; AJvYcCXsrA1VcDiFkwZMVMmCf8wA22BfSd3L+14hG3OlRfXamnf0Ik8AlugbeAZBEkQoSdoiB6H+KzF1WwYJtAc3BaUHVDRJ3jQjB0oZ1Q==
X-Gm-Message-State: AOJu0YxpThhgVCMDVz/OFUpcQXTJVlo5Dy2BkheCJlGaevG7yTDd0v8d
	5a15QJX3aqO+fUAg6LywJGZr4DI2aBr2SVleL7bGfiGtUfoRHiArMhfNzFCamo/+2aMtNuN1s+6
	zDIyY
X-Google-Smtp-Source: AGHT+IGLL4C5Z8E+ZIjKxtxFigxaNkYf27nU+RHqE+2r35Yn79q7TWKtP/MRpeMC0qezPqOpnGlH6A==
X-Received: by 2002:a05:6214:4803:b0:6bb:9169:d904 with SMTP id 6a1803df08f44-6bb98357418mr230699536d6.14.1722966758357;
        Tue, 06 Aug 2024 10:52:38 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb9c79b09esm48738796d6.55.2024.08.06.10.52.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 10:52:37 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-44fdc70e695so580791cf.0
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 10:52:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV6U9L2bjbaIyCiiKbpTnogaBjwapPM/tniFZR7CY1vTmObNa2gKQqmCPUkLJFit7bZ4h1jxI5HuJ1mkTGeOwfXxSTQcuPpgsEMUQ==
X-Received: by 2002:a05:622a:1aa6:b0:444:dc22:fb1d with SMTP id
 d75a77b69052e-451c59c3f0bmr133271cf.12.1722966756828; Tue, 06 Aug 2024
 10:52:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729205726.7923-1-robdclark@gmail.com> <CAD=FV=Wo2nVzn6qvwSAFAnrFX4wtv6_ZCVZaL1K_DBBFg9DJ=w@mail.gmail.com>
In-Reply-To: <CAD=FV=Wo2nVzn6qvwSAFAnrFX4wtv6_ZCVZaL1K_DBBFg9DJ=w@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 6 Aug 2024 10:52:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XMJ7b=2tt6_2oTGFXuL8XcmBxuDtQBoWdf_65YyS49XA@mail.gmail.com>
Message-ID: <CAD=FV=XMJ7b=2tt6_2oTGFXuL8XcmBxuDtQBoWdf_65YyS49XA@mail.gmail.com>
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

On Wed, Jul 31, 2024 at 4:39=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, Jul 29, 2024 at 1:57=E2=80=AFPM Rob Clark <robdclark@gmail.com> w=
rote:
> >
> > From: Rob Clark <robdclark@chromium.org>
> >
> > The Samsung ATNA45DC02 panel is an AMOLED eDP panel, similar to the
> > existing ATNA45AF01 and ATNA33XC20 panel but with a higher resolution.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >  .../bindings/display/panel/samsung,atna33xc20.yaml       | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> I'll plan to land this in drm-misc-fixes next week unless someone
> objects. "fixes" instead of "next" for the same reasons discussed
> previously [1] that the dts patch should probably be considered a fix
> and there's a chance that the dts patch could land in an earlier
> version of mainline than the bindings unless we consider the bindings
> a fix.
>
> [1] https://patchwork.freedesktop.org/patch/msgid/20240715-x1e80100-crd-b=
acklight-v2-1-31b7f2f658a3@linaro.org

Landed in drm-misc-fixes.

[1/2] dt-bindings: display: panel: samsung,atna45dc02: Document ATNA45DC02
      commit: 1c4a057d01f4432704c4dc8842b6e888a91d95df

-Doug

