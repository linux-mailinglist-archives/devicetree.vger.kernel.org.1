Return-Path: <devicetree+bounces-140676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 262A1A1AF67
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 05:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 519373ACAF0
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 04:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F631D63FB;
	Fri, 24 Jan 2025 04:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WG7YiOTK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B7C23B0
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 04:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737692856; cv=none; b=nm0ToKB0NixloxFO1urzL2tGepB0b2BVJ4UrlaiROLTHOw36o7ZJYMgZ0RMJega6wXMJJXpTnv/afRIXUFvma+9ORImbrjZJJS6cM7twgf/MqmAXkrSlcRtNzZfZPT89ClbjBzRMkqnMPcCQzX7i497AOhAeuew/ASaw7ImsCX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737692856; c=relaxed/simple;
	bh=j/BuiNKJ6yVH7SYucYouITYrXzZHm2fJW+U85RQTjvo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fv+JVWr9to0FBQehZmgRxUUJwkW6f10LSqKQgFLCzYrCZWQsF7ZKTtMt4X7rrI5py//QV1/mgWMgtgIIQBFhd5fdl9m4cKWey96t6GrRishQi+FQUqMzXJ9SC5b8uo9r4vYSA0dKYyldmJTZDFfG+lcqrV5bkCWbWuRUw9nxGfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WG7YiOTK; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-542af38ecd6so2022901e87.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 20:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737692850; x=1738297650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/BuiNKJ6yVH7SYucYouITYrXzZHm2fJW+U85RQTjvo=;
        b=WG7YiOTKtfF54JDvYq3ArVHtB0WoH3ABudOsi7qeN9lffHLATXSpbciLMEhqopJw47
         wdqsMArIrJ9bQ+4puTHa7erHXVEEXTGd/Zl8cb2/ktd3uYGdk2eXcng18QWNz+l0Hfpw
         IY2M4CuCn9kVmR+txVQiunnIIpcOvi8qqfk/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737692850; x=1738297650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/BuiNKJ6yVH7SYucYouITYrXzZHm2fJW+U85RQTjvo=;
        b=tCkSqI3oDlxsyNBKpNQjOHIcuEWXS6zeqCPcpSr++SXua4XcAL1DCPLn/pqBBmkpGj
         ZcSX63MBPAMHeQVxwW92rpIi6DxHflCsnVHEKtltXiGbCkesaEBK9BbhLI3ba3ZdFREX
         KjFlcPTQDlxFWF0cSr+eaKbJI2qIFuv0+y4HjAFRUtIbbo/LYm7RdUs6jKyI2KBK6zKh
         B6KGbZdZqkU9WSklJ1zyqxYZiF0V6jztqSGh9pNyPU4sf/bhjjiG9RVmyL6yWFIbRRFi
         x1NfgRPwF5vdvvTyHBTx3XSsBMyJGvXM33fWzCiDg8NvkF0IJRGpebIMHqXdR8w+3EwG
         Fm+w==
X-Forwarded-Encrypted: i=1; AJvYcCUWLaQ1s3m1JUE+zcQp6q2iuvZnOowtRCNKcPPcGw4sBrevhxtfD/ZjEl16HXwt2dQ1bJK+NTFkjV2O@vger.kernel.org
X-Gm-Message-State: AOJu0YwYqSH/XcHUtG6YOnQ9jZneDBjl6ZnRd0bYP+3vyb7yoe9Y4LC9
	bgXHYrhCbT2rvx0vpoyir5nY2YZCrfECEAPokqWZRCLJd5Ufq/Xru5NIvP8EJ7qioOyEL1mCfHC
	H7j70
X-Gm-Gg: ASbGncv3UKkUbHFqfe+hrVtdB8igC48Dgxf7e2kbKEQ6CUNynMkvURyH5cGG2jRc4VS
	KlG64+zeb7KS0HRfI0MIOVpxaJworELMzaJrkttQRgL6l4stHE7N1pB5rmsdDlq9R+7xvj6/8Xq
	Gr/wD8ljJm8X1H0HUyCdmYuCli83VM4tHhP/2/7J8wYpUSwrzpzbsVATgJ+PIad7Hc8JsTAngah
	w+aX4+yGvKFz+8kfzfDV5YzV+r6jW33Xbgaz+8ha5et4+PDQOSMA/6OVtnzMrFCMiEcy1UMduHo
	Wl9egggeRil11V8ARteTvxg3xByzdKLgKtuY5p/ICAgES0zi
X-Google-Smtp-Source: AGHT+IF5lLNkMxnF0eaKNVzyIiXjhDQVjP2WG+u0BU7bv/riLb4vhkd3O048MDEqzki81hdntpmJNQ==
X-Received: by 2002:ac2:5225:0:b0:542:241e:75ae with SMTP id 2adb3069b0e04-5439c22d82emr8436994e87.9.1737692849519;
        Thu, 23 Jan 2025 20:27:29 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c83799a4sm153019e87.166.2025.01.23.20.27.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 20:27:29 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so12366751fa.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 20:27:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXFx3518kU/GGwnKJWTeiRWDZO+MAqKApfsjWdvR7duLrgzXddHGUIunyxp8ltA0bwnJMvNbwbGXtyT@vger.kernel.org
X-Received: by 2002:a2e:bea1:0:b0:2ff:d044:61fc with SMTP id
 38308e7fff4ca-3072cb249a7mr109162531fa.33.1737692847757; Thu, 23 Jan 2025
 20:27:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
 <20250123064758.743798-2-yelangyan@huaqin.corp-partner.google.com>
 <CAD=FV=Vr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6vW_azMARZQ@mail.gmail.com> <CA++9cvpBHN-i82mMwd_WZZrDGEQog2DmUSWcE9hDxsREyhNdrg@mail.gmail.com>
In-Reply-To: <CA++9cvpBHN-i82mMwd_WZZrDGEQog2DmUSWcE9hDxsREyhNdrg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 20:27:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UNkjPH_i7+wJqbPGpugTmo=Ly2_1bj=-1SKS4fiaRAFQ@mail.gmail.com>
X-Gm-Features: AWEUYZmsKLiAzRAqlcAQdor_5g31Vg2LFMBTq4YC6Rmtxp99wgbUKMuPl0RD4r0
Message-ID: <CAD=FV=UNkjPH_i7+wJqbPGpugTmo=Ly2_1bj=-1SKS4fiaRAFQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: panel: Add compatible for
 KD110N11-51IE and 2082109QFH040022-50E
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

On Thu, Jan 23, 2025 at 7:54=E2=80=AFPM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> Hi Doug,
> Your suggestion is very helpful to me, thank you.

One note: when responding on mailing lists, please don't "top post". I
personally don't care that much, but many others do. See, for
instance;

https://subspace.kernel.org/etiquette.html#do-not-top-post-when-replying

I'm sure if you search the internet you can find lots of other
descriptions about top posting, including the usual:

A: No.
Q: Should I ever top-post?


> I confirmed the controller chips of these two panels, and it turned
> out that they use the HX83102 IC, so the correct approach is that I
> should add these two MIPI panels to the binding file/driver of the
> MIPI controller of HX83102.

Yes, that sounds correct to me. So you'd move the bindings patch to
add your compatible strings to:

Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml

...and you'd add the code to:

drivers/gpu/drm/panel/panel-himax-hx83102.c

...when you do this, please make sure you're following the conventions
of the "panel-himax-hx83102.c" driver file, like using the
hx83102_enable_extended_cmds() function when appropriate and using the
defines like "HX83102_SETPOWER", "HX83102_SETDISP", etc.


> I would like to ask if I need to release a
> v5 version or resend a new email if I do this?

IMO you'd call it v5. You should probably drop Neil's Reviewed-by tag
in this case since it's a major enough change that you'd want him to
re-provide a review. You could add a note to the version history like
"Dropped Neil's tags since V5 is very different from V4" or something
like that.

FWIW, for the bindings patch I would personally use the patch description:

Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
STARRY 2082109QFH040022-50E. Both panels use the HX83102 IC so add the
compatible to the hx83102 bindings file.


> Thank you again for taking the time out of your busy schedule to guide me=
.

The best way you can thank me is to teach others that you're working
with the lessons you've learned about working with the upstream kernel
mailing lists and sending patches. Maybe provide some internal
documentation for other new engineers to follow. :-P

-Doug

