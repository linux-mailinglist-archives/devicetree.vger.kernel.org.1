Return-Path: <devicetree+bounces-91895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9809394B279
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 23:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54C80280C0E
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 21:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D116B13E409;
	Wed,  7 Aug 2024 21:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mdq5QeKL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4229F77F1B
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 21:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723067786; cv=none; b=mtyABvL82sIEKe+MXru9aQkdgPMK4YHnG7u1ghHqLq9x2/Tnpr/ZvbncHeH0trmNeImnYlHMZ6TuzfT4q0iuujO4iX5ZH67mF4sc0k+jLP4M4rOjPA0NMNP4NlyCrCvlYwqhwEibbSXuVKhlWQN1dKm6sPj06Kz5CVIXBksdnkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723067786; c=relaxed/simple;
	bh=XPRl8AKc7BvHuB3QMo2rImKhhrZI5XkY4l2t0/ndEuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ThF4VV8D0S1bXqmt8VDrk6sJKYCEl4L2HFW6CabVihdUsTydreUxJxnAGrcx9XiPNOEonQrZ5fZfmDHyJBkbdtkUITJ+B2b9jxl/1UurPKkacH17ZF0kJJk+b2wtfrLzC9xXFDca6SOJy4jiztq6ou5t9UQbm1RGerqX8nS3cYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mdq5QeKL; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6bbbd25d216so8239306d6.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 14:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723067783; x=1723672583; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OVodnowP0eaUum6OAuR4DXp0pjV1BAajzdmmLHEX8NY=;
        b=mdq5QeKLuPhs0rkooCwz4hHjSL4EK2R1Gjbr7Trxj0YqP7TgHhMwNSAALxEnfU77tz
         1ext3HnOzob5r7Ku/uNhWIOuZd64ddl5+JVSmzQQaBV0IDfKV3ZIgweMwhwzMG7QuItD
         J0ojQcEBd6QAOUHOsV6Erum1/TISQkChsbEMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723067783; x=1723672583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OVodnowP0eaUum6OAuR4DXp0pjV1BAajzdmmLHEX8NY=;
        b=N/UwNPGGcmrG4muWIfgiEtQF7pK1/FLGfmQSRfLeVIpjKI/iDWkDh+0kYyfNU205zX
         3s3qaU44UnMv1DG/FzXkpFLodcoQ8TL4MPn2gbjDCeTA+lr1Pb/+RGOBBKhGvdHy2Y4/
         DP00SPUfnWaBIt5EkiL4mGa7tI38FBN5HNDXj3Ic//5J4Rek81SRWeQPhB9gOd1s/m5F
         vndMboCv2xBNwitIni+ObGmlWsn8oc69D1MPIuywPLixKLaBF0CW28+386em6lw+PNRS
         oW0FA1SZjSzmcS+TQICHKAaYx3pZ0cxJZftzeI2aAxe5CUbRI1c0IXQeaxceVezth1b6
         oz3g==
X-Forwarded-Encrypted: i=1; AJvYcCV55OUEmYykLTZCPSDzmtB0MQwDskFYAjhKZMa21svU0IbgQTYGUh+Dh1jTnqCXpEiyfO7v6B2q+KDCaKx6ZGIcPdtrGMnTdHrkZA==
X-Gm-Message-State: AOJu0YwrEO/cNTwH2ZgptQ0uRN9Xq5YEMyCxpmhBqWtqhFN6tEwo+iZH
	8EQnrB8ngNInlFaVweP/w3ktEYybrOJKdyJUI2nP9+d4gDmLcBWJrkt81+R5UDQn5kLLt5pz2b3
	/GQ==
X-Google-Smtp-Source: AGHT+IE9yXYu1Kjzv97X0j387KwiFi+waj5G1Jbzss1csfqSWY307ap7YDOOpbB+PC4sujpxVkWkww==
X-Received: by 2002:ad4:4088:0:b0:6b5:82e1:f89e with SMTP id 6a1803df08f44-6bbbbddfa7fmr66962186d6.9.1723067782764;
        Wed, 07 Aug 2024 14:56:22 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb9c862abasm59794126d6.105.2024.08.07.14.56.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2024 14:56:21 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-44fee2bfd28so57451cf.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 14:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUW76aqxQAWkFjK/nBkw0d5jg9eLI9BnmW6HJOak7wqRORt+rpo6y+tsQdytHc4zMVrx80OUeXUfolHuBYKGf/KXSrOQB2nmIwQbQ==
X-Received: by 2002:a05:622a:1906:b0:441:5e6c:426c with SMTP id
 d75a77b69052e-451d382a2cfmr401061cf.17.1723067781326; Wed, 07 Aug 2024
 14:56:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 7 Aug 2024 14:56:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WCw6pAump-PUFCW0cgbRY+5_2tPNLe=hN3-dnXD=B6MA@mail.gmail.com>
Message-ID: <CAD=FV=WCw6pAump-PUFCW0cgbRY+5_2tPNLe=hN3-dnXD=B6MA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Modify the method of sending "exit sleep
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai, 
	dmitry.baryshkov@linaro.org, jani.nikula@linux.intel.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 7, 2024 at 3:04=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> This "exit sleep mode" and "set display on" command needs to
> be sent in LP mode, so move "exit sleep mode" and "set display
> on" command to the init() function.
>
> Modify the Melfas panel init code to satisfy the gamma value of 2.2.
>
> Changes between V3 and V2:
> - PATCH 1/2: Modify the commit message and subject.
> - PATCH 2/2: No changes.
> - Link to v2: https://lore.kernel.org/all/20240806034015.11884-1-lvzhaoxi=
ong@huaqin.corp-partner.google.com/
>
> Changes between V2 and V1:
> - PATCH 1/2: Modify the commit message and subject.
> - PATCH 2/2: No changes.
> - Link to v1: https://lore.kernel.org/all/20240725083245.12253-1-lvzhaoxi=
ong@huaqin.corp-partner.google.com/
>
> Zhaoxiong Lv (2):
>   drm/panel: jd9365da: Move "exit sleep mode" and "set display on" cmds
>   drm/panel: jd9365da: Modify the init code of Melfas
>
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 137 +++++++++---------
>  1 file changed, 71 insertions(+), 66 deletions(-)

As per my response in v2 [1], I feel like patch #1 would be best
reviewed by someone with more MIPI DSI experience. My current plan for
this series.

* Snooze for 2 weeks. If someone else has reviewed / landed in the
meantime then great!
* After two weeks, send a warning that I'll apply the series soon
unless someone yells.
* After a few more days, apply the series.

Please yell if you disagree with any of the above.

[2] https://lore.kernel.org/r/CAD=3DFV=3DWrMxyxkuCYEbd=3DaYFaTJKNqGqXr6Re+V=
=3DB_h9jnjHPvg@mail.gmail.com

