Return-Path: <devicetree+bounces-144742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17598A2F1EF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28CA73A56F0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6ADD23E254;
	Mon, 10 Feb 2025 15:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NS8G7jW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E243924060F
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739202039; cv=none; b=XB/zZq6iRua5MVm1FL5t/Qmjm4EdoMlp3kbqiK7+Dkq8SxghZcB7Gi/zktEdNWz9MGHBKZ9MZY9NthpwqnKVAYU1t7y1/ZSB9O04EoLS6YSntFw8i7CjLk89i1BVt1k8jvtG8c52Bi/XqBbwIj3QVtup9eEGdL8M8+63JAnF9ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739202039; c=relaxed/simple;
	bh=kj6zSX8Sy1priPFeNHrLAanZuDtOXsR0uQHsylLl7I8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rSs5ttx6dpum4gtN7jjcKeVtf4LUazZfc6hm4dKd7gsAYJl4/9lUhh0673UvpanITI1I4oD4F8Df1rvGD0nEPYzPEyvD8wYp+nlaItvOgRgQv1KgA4oXyvcBsqCn8JMGO9gjP/wzLbGXo3PIJT84EbgeTd8Jc0XEk1MiuWN2D74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NS8G7jW7; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-308ec50eb3dso12643481fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739202032; x=1739806832; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/SdZj5cHoqqEQ76M9Tucg5S48D9qoX/egkWuOcaBkIc=;
        b=NS8G7jW79Fv+txFyDGqstILI+uwSUK1PLofAUYJXac/l3wqLwc73LV9JZLYXla1QHY
         7GMIJTYuwYgMnNRkGsfl6olHRiGvJ4sxjG5ItcgwkmUv8tFXH3ucYxjV4ayX/oDIcw6F
         ZOboGxJ4mfKS+0N0Tn88ZbhX6uupqKMGOhqNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739202032; x=1739806832;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/SdZj5cHoqqEQ76M9Tucg5S48D9qoX/egkWuOcaBkIc=;
        b=Y8X9YJe9Dlh1+4T1wE0qiqC7mTYSRMTpFcFe/Lgeu9CZqQNGlnYT5sGMKptI4LLGZx
         9YQ5E6EwyRV2BQsbLme+VvI5iDmEC34LOJezegJDNMulVWv1ktkTJW7bKNJKyd2igJK8
         NSuPji4oQEGO9xCb4577UE2BW4bC3whNdwzMVYVZVXDPIfCClq8+KmRUwwEAvbE+hL1I
         7DvUj2qz1R4lbjBq79e28/WTtOYazfNtNtkwzllqgxVviakk8smPbWiTPL+JkKWtL8DZ
         H7A/GcSC0hWovQGq5kQDpsqu11R/73zFky63Pip5FZw5PECRCDJbubxscXdTG1u4EXnG
         l0yA==
X-Forwarded-Encrypted: i=1; AJvYcCVF+zA37EyZa0kOYjuzied3IAaDb9Qx/OOo8Puqy2XsFyS7srRiiQytrGT0PU3nrtQa0IbrR4W/uxX+@vger.kernel.org
X-Gm-Message-State: AOJu0YyZKftAaBMoIQo5nQDtfZSslw7x6Ahv7hfvb8wYmXkC6B1lmUzz
	rtX/8GZ5W0u2D6a10/dJtA5POraZIfGRdMjjmwqQEXxEYz2iaZkApJf3eQJ+C58sTGU/SRvSal1
	HVg==
X-Gm-Gg: ASbGncv0QT2YcL8DouS+l/pAinAo7hm1mQlK5yCvi12Xdka4nmdabdMQQ1/RdGhBfnj
	uIw5p+RGq2VOKBNdS8GyA/UNpN0D/d6mraD1UNgiE0QcEPs38xEHg6gakEWmPBCkrGZT+HKhxeP
	gXr34ULTRwiAR+LfaVlufbv33zixIAw+v0/D3424elgmv5HgK98zKaJ9d5PCldQzJq6X2/nIB18
	NftojxOthNf7VveFMD+dvkrA6uXSXKdsjQIY3KAOVfPVNu5ssUmXpB3DZVsTgcuChEiojDxfQ5B
	x992fB7zNmyc07XJmjEfBmxRSWRzwFS6pBlVUwSaBB+T3V8TvmIxNdCEyg8=
X-Google-Smtp-Source: AGHT+IHM15cMlma9b1tP0nrxF/uKUPTCJ2QuVqKez4vI2xz8weC65zQrG2CZ2kqPWoEwyH/NQYcSmQ==
X-Received: by 2002:a2e:bd81:0:b0:307:dc28:7508 with SMTP id 38308e7fff4ca-307e5a6a7c8mr41952411fa.27.1739202031691;
        Mon, 10 Feb 2025 07:40:31 -0800 (PST)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178201sm12134011fa.16.2025.02.10.07.40.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:40:30 -0800 (PST)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-308ec50eb3dso12640781fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:40:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW93O47HzeqAokPop+0CBHvl54xJQhfpdt66YpKlSM0UBpZ9APbizsr2w0H4Do5kdHqEG3yLxTKCiVi@vger.kernel.org
X-Received: by 2002:a05:651c:893:b0:307:2aea:5594 with SMTP id
 38308e7fff4ca-307e57f2535mr53531281fa.18.1739202024114; Mon, 10 Feb 2025
 07:40:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
 <20250208105326.3850358-3-yelangyan@huaqin.corp-partner.google.com> <CAD=FV=U6AfAq1j1B7tP7HMqjwh9yNxJ44mfVfdP+KCFiUO0Xng@mail.gmail.com>
In-Reply-To: <CAD=FV=U6AfAq1j1B7tP7HMqjwh9yNxJ44mfVfdP+KCFiUO0Xng@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 10 Feb 2025 07:40:12 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UyLEEnVRJNB-vAV_KpiZvBgmxiAkusXVooMUgzt570Yw@mail.gmail.com>
X-Gm-Features: AWEUYZn9yU9AYjv0ZV9n8hb_YE2USzRC2N16Y3pIGHR5EU-Jjsdk8V-yKWEWNyw
Message-ID: <CAD=FV=UyLEEnVRJNB-vAV_KpiZvBgmxiAkusXVooMUgzt570Yw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] drm/panel: panel-himax-hx83102: support for
 kingdisplay-kd110n11-51ie MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Feb 8, 2025 at 12:25=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Sat, Feb 8, 2025 at 2:53=E2=80=AFAM Langyan Ye
> <yelangyan@huaqin.corp-partner.google.com> wrote:
> >
> > The kingdisplay-kd110n11-51ie is a 10.95" TFT panel. The MIPI controlle=
r
> > on this panel is the same as the other panels here, so add this panel
> > to this driver.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-himax-hx83102.c | 115 ++++++++++++++++++++
> >  1 file changed, 115 insertions(+)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed to drm-misc-next:

[2/3] drm/panel: panel-himax-hx83102: support for
kingdisplay-kd110n11-51ie MIPI-DSI panel
      commit: 15d174fa85d936f3d0250b111e7d3b7f26a38b40

