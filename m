Return-Path: <devicetree+bounces-143688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC97A2AEBC
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52E4F16A724
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 17:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396F823958D;
	Thu,  6 Feb 2025 17:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UTryEWIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF946239572
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 17:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738862472; cv=none; b=P8gZerDbkTupsug7KLgFxeG/iQsL/Hlcg63092meJIRoS7LsfDgAvXY4lSiKb7V5aKinH/cxAG5EMUTGhu68TIRgH3qS/u2Mwl/oaWBN+1k12mVtk+LCP2mUk+yvqtHkAO3p9TwTN+NMdji8d0QvV27xL8g/3ge2CccXYuE+mps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738862472; c=relaxed/simple;
	bh=4wSuz5VzrMxF6hFZ+dGcbfUs6KWTJLSlbQyKfhds770=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MU4mtaz7l38fih9+H+bmliN8Ks8IYPCU+VKG3EBm/nFA/CLSBHqkIFHjsR9wqqe1b8GlK6o3xYKFTtPhecNfwCnOJhbQ94Q/BN9xnYIOgmXkSG/gpAcVv85jYpWHV1IjAG8TnRUUv3Lyv2OSGRrKU2eod40Y/Qm1Viexoxa0EaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UTryEWIq; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-543e47e93a3so1272776e87.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738862467; x=1739467267; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xmyQQLjc7ihSNeKK+vC8OeDD8oaLS3Nn6NTNSIO758Q=;
        b=UTryEWIq/b4RwjRdwiq4VmPyYm7oIXv0xqgGKgMzjlXsB4WYA+MqRNZ4FDXe4Xujlo
         w4Dzb32am2KoiYlpLfX5INJrnsdYRcBU77Qebj93seSaSSrir6NP4lGT44eFIWTMg5hO
         YjLvq+b8O9/rIxfCITDHgpSTCtIujWMaVwF/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738862467; x=1739467267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xmyQQLjc7ihSNeKK+vC8OeDD8oaLS3Nn6NTNSIO758Q=;
        b=CGHBEE76PH1cDY75PMyprBASzRptU//1yI6O9L+EXsfs2aWS1yL81eJeZwbHNnwfyw
         mCYB6RGGSozaaoJcwHnecoKlv0RPcs1xyzpsfZnkd0IRT5o2JPP2K0vZDEoAVJFIpLuq
         MJ/kmTuvIybP21VgMY+vtHPehRAX5gXBOWSeNT+IYa7HLR8gOa3dMiV8YvSJ3n9Svqzr
         5WFkxlkrnn9IGJ9C2ES2JD+r64jrum/CmzA/htGOEiMbusegcFuVaDKUrfM7yuaz6uE3
         sYVxAyr2OXngCrcIZYlCUdUTSl3YgZqwTwR++XO/rzvY74XiNrXV+G0TTfLLkSKM3g8c
         Vr0A==
X-Forwarded-Encrypted: i=1; AJvYcCVonpx34fw0H9rrWCYVzg1NP++ZWUYpNgjwKalhV1ccnN2+fARHQBAB0TqFs6tXcbKennafR+VPHVBf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Ws8wq9+f9RK7N7TyRBuR6hGN3P7saUCs7S9dtwmhw9tjZVM/
	UDYJFl+N8CmTQEeL5BryjQqg8aV5bQemOhCpemghXtTLriu5UV/TC8B7YsmiPpqecjYSqVmZQMV
	9YIFx
X-Gm-Gg: ASbGncsTxW4x+hyuZ1OcJEuP5bVemVVucilctSZR/XzRjSa6Eyb0zwtIfb79ihazFch
	LPo3I99Gva/7PYuVkUqnCQ62LHCcBCeMOMriQ6Uw08RqY1K+S8X1+UrmGZPyOEyP+zTUQ91nsQN
	TQPLjVp82DYAuW/1DECut4N7vvXXEnH4kLstr9Hj3Dj0cgKKqwhQHtsq1lu3VdljY/mxejKFrjj
	oZZQrI5nTzegiPDZiPjG8it6MzQwS8trS2kLJjor4t3UwbzvalKWl5oWOs97V0A6j1I2d081ySU
	b/65FnJQ2oZNLvqQCNMGMYjCtAMY5PVfsFWwN57aVlBW+xApxpWxm6k=
X-Google-Smtp-Source: AGHT+IHc4JChvj9nAXN6So4oTh0FOMp9JvCJL6K2qD3AQSHqzNFnDsfFY5YC+tWtdHw7DYLhwPNFGQ==
X-Received: by 2002:a05:651c:50e:b0:300:33b1:f0e0 with SMTP id 38308e7fff4ca-307cf2fd19bmr25872651fa.10.1738862467008;
        Thu, 06 Feb 2025 09:21:07 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de2b98c0sm1748081fa.69.2025.02.06.09.21.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 09:21:06 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-543e49a10f5so1303083e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 09:21:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXosPnpoMgddPgFt3HZKxGlvYCfRuGnCbqxsFNdLm1HzrMfYXt2UZpWcvliZkA4tl35Zn4nAD2Mzawx@vger.kernel.org
X-Received: by 2002:a05:6512:220a:b0:542:8da7:242f with SMTP id
 2adb3069b0e04-54405a10653mr2730027e87.10.1738862465869; Thu, 06 Feb 2025
 09:21:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-4-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250206131300.1295111-4-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Feb 2025 09:20:54 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W8WR4rut47LA=PftG1bdDLkSa97syY8wt=rH4dJa-pLA@mail.gmail.com>
X-Gm-Features: AWEUYZkQjg27CCS9VZJxZrYKj8mLCb6hWyh_QBl79_c9o4gHiKUmfZwJ_3PvYOU
Message-ID: <CAD=FV=W8WR4rut47LA=PftG1bdDLkSa97syY8wt=rH4dJa-pLA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel: panel-himax-hx83102: support for
 csot-pna957qt1-1 MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> The csot-pna957qt1-1 is a 10.95" TFT panel. The MIPI controller on this
> panel is the same as the other panels here, so add this panel to this
> driver.
>
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 123 ++++++++++++++++++++
>  1 file changed, 123 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

There's no rocket science here, so assuming that the bindings get DT
acks I probably won't add any real delay before landing...

