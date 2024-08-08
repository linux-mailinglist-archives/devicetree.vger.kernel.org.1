Return-Path: <devicetree+bounces-92227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9FF94C4F4
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 20:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A297B28161A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE121465A0;
	Thu,  8 Aug 2024 18:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HjNNHO5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78EA146D6A
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 18:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723143327; cv=none; b=C2ME3aOc6Tq7osTmIxnH5YFC4Q8BT6/vGgcjLPav7hEohe8kpcgdmXZ48K8xk/GLUuSeHyUBEpHFY/u3jfGQKt9+eH1Wu4mhiKUnUjOz3JtnLLP/qdiIc8DjW37J69EeUbhBQmFJYQvL9BmxqRI3E/KjlgQnI1B9z5adKHJGQAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723143327; c=relaxed/simple;
	bh=lNkDxEjqXY+lnTpLDK2Jg90TC5u4Y/9yANlHx6UZOwk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IIaIyMs3DPdltjFVQJ75H+Tgvh0F9wMuJ8i3+ItPzu0QBliE0vp+lE2AgBdyDH6WQsaflYSWQoskYoYm8Oupht2osLCDTE/aPBinErlMCI1sumnjiYXo5d7OZEvsUoQl55MQupdMqH5r8vBOr2Nufeyw9u3mS32y5SVrnMV3hE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HjNNHO5R; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6b78c980981so7330356d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723143322; x=1723748122; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ia3gn65ZzmXsv1RewV6q6A0e4ePY6aOjBbUhD4zPmes=;
        b=HjNNHO5RoRE7h6z2O4O5fKcajxw6ZbhWv9yDmHfZaO3ei8W7QOpY5aEsVDZuO6+0bh
         eDYpQTKttYxTXSTUR6WhuxP1QpmO47xyaF44gNSlM6hwjqnFxBFeUfc78kd+nnJ+uhg0
         aTgS6iQjv4yjsp19gjWPbIkDb6+HTqkyElgIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723143322; x=1723748122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ia3gn65ZzmXsv1RewV6q6A0e4ePY6aOjBbUhD4zPmes=;
        b=ILy7MVxDK+SN5jine67AutJSxtyNAJlEXmH6EmJ8iSXyGTIxj76kCiVN7Y4Hn3pKR3
         TfNNVvLyfxasLxu3R6pQ8/vP4BVP1g6zobJ2l5WN/Fq04FF4b4MzlS5H0EeFkB8lqlP4
         7k6zNAEdJpTku+wwq30YNKAITV1TzS6JNvigv2oMe7At2qbNXtAAgKBgGsEmI0nRVG32
         ffYmgJwGUh+OLTriu+y/d0WYLA3LMRF0iQ4i8XWvC6kEWUQ7qmpbgBynuejO7j+E6m3H
         L5I2MEyv05zOsgxJdF1TYOkpMFkc7XVuDaUE4pBXJgaUk6Op3234qeI6SgSuqbLD79V/
         qdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxjYTJ5/7LWbFH90vC1N78XYZ0wOfoWYxF2epIyu/kqqMm4fhriLqtIBRoA3kwYgBsMqsUvfJQyhhdPKuU0AuWsIMXuZNi3xoRQQ==
X-Gm-Message-State: AOJu0YxTFJ0/O/W0RkWHYeJAg5qIn7k2q7N7eQTxlwlRRQmIgg7r7fmO
	DuFOwoUBmgysvjZ5AHHQf74bUGr3B9b85AymZHtNH0Hsu0d3pp9FfIXyKTuL0wVZQLWYmfhkBew
	vK0/i
X-Google-Smtp-Source: AGHT+IE4LRNklcZbwRBePOxxn1oDCFh7dMeDpy3j7xUhSZi8SgB7x3DIr4AX1mkOHK0vYHXTpZw7lA==
X-Received: by 2002:a05:6214:43c4:b0:6b5:dcda:bada with SMTP id 6a1803df08f44-6bd6bdb60d1mr26512426d6.55.1723143322114;
        Thu, 08 Aug 2024 11:55:22 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb9c78ad54sm69600556d6.31.2024.08.08.11.55.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 11:55:20 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-45029af1408so26411cf.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:55:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX0M8ERMdpA3P82UvYVl72/+yKofmE6XXxYJN9CcK8BK1EdXqwUpKCmxRs5wRmzcGjzBZyDln8b5VXgBWE157O/wIwD4tok+jZDow==
X-Received: by 2002:a05:622a:5797:b0:447:eaaa:c852 with SMTP id
 d75a77b69052e-4530de62980mr344201cf.23.1723143320261; Thu, 08 Aug 2024
 11:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240808114407.1.I099e8e9e36407a0785d846b953031d40ea71e559@changeid>
 <CAJs_Fx7GN1_2xAM0Qg8oezQ2Foxy2smOXb3zMhNiJxCDMPUNug@mail.gmail.com>
In-Reply-To: <CAJs_Fx7GN1_2xAM0Qg8oezQ2Foxy2smOXb3zMhNiJxCDMPUNug@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 8 Aug 2024 11:55:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xt0_yhVGDv3X+uZoVQ-_Wiwq4ENJUpi6__J6dN_aMm0g@mail.gmail.com>
Message-ID: <CAD=FV=Xt0_yhVGDv3X+uZoVQ-_Wiwq4ENJUpi6__J6dN_aMm0g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: panel: samsung,atna45dc02: Fix indentation
To: Rob Clark <robdclark@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 8, 2024 at 11:47=E2=80=AFAM Rob Clark <robdclark@chromium.org> =
wrote:
>
> On Thu, Aug 8, 2024 at 11:44=E2=80=AFAM Douglas Anderson <dianders@chromi=
um.org> wrote:
> >
> > The yaml had indentation errors:
> >   ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml:21:9:
> >   [warning] wrong indentation: expected 10 but found 8 (indentation)
> >   ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.=
yaml:23:11:
> >   [warning] wrong indentation: expected 12 but found 10 (indentation)
> >
> > Fix them.
> >
> > Reported-by: Rob Herring <robh@kernel.org>
> > Closes: https://lore.kernel.org/r/CAL_JsqLRTgQRPcfXy4G9hLoHMd-Uax4_C90B=
V_OZn4mK+-82kw@mail.gmail.com
> > Fixes: 1c4a057d01f4 ("dt-bindings: display: panel: samsung,atna45dc02: =
Document ATNA45DC02")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> Reviewed-by: Rob Clark <robdclark@gmail.com>
> Thanked-by: Rob Clark <robdclark@gmail.com>

Pushed to drm-misc-fixes.

cd9aae921ab6 dt-bindings: display: panel: samsung,atna45dc02: Fix indentati=
on

