Return-Path: <devicetree+bounces-140621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 248C4A1A90D
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 18:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B0147A541B
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 17:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C17156861;
	Thu, 23 Jan 2025 17:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="msti4JeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0909A14EC55
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 17:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737654007; cv=none; b=tbouihlbbLPPikd8bX7DrCj2lT46d/+OnWzSCETKwfx3GLlqPNyg8tDqtoPOM06E8tEbnJ90Kr2b2/SpSHIWgyHps4YgMvfzOMcLWM3CLvRXeFe7h8rXLDlcTna33HQ5yZLXgtRqOM7yoA6tAxJERDtQUOyMP43piyBdRMSAsUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737654007; c=relaxed/simple;
	bh=X9uWv1CZXW+AYt3piL5X/2kw/MCLHhdqmnPyWe9WfC4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PPo3jIFCHl3YOKGdP/pgxNfhq/9+wBHj6uEvEYyzztli46F1jiU6qDHDqLxQzenwnRgj4lpZ0cu8DWeao7EUlAGfdQZBcUi+9SVwT0p+huO3ALK15B/qlvWs/ni9rWRmibYzeDTG5oYJ+2lGDY9EYwSParuyKA9gT+cI2NnUMh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=msti4JeJ; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-540218726d5so1348687e87.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 09:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737654000; x=1738258800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X9uWv1CZXW+AYt3piL5X/2kw/MCLHhdqmnPyWe9WfC4=;
        b=msti4JeJ9pG41hEjoVpk4cCE5vf46CFZRHRA0wlGHlwXx2FaexsOr/raNyCrUN79CV
         hpYjxB6lC1d9WcvrlB2hZUHa4IfMPPoKZBJ57/4nsVSpUX2GAhbh2R8RxJd0pcIgsjpe
         4H2bZmB+eDg1fVr0rkGt6yjURxLJtg1dw+u50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737654000; x=1738258800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X9uWv1CZXW+AYt3piL5X/2kw/MCLHhdqmnPyWe9WfC4=;
        b=tETovoTlH34IAZKwqFN6SKu7tSL0MqZwFxvCMyVJTDCgAq9emp/g/XC66MGI/QGacX
         XzJpuec0xyEGGlEbQRnqWZfRgFD/W0G/rz/Xk0hgZWveQ/9YqwbBw9iuUy55f53nNVqs
         5ODVXdtAMKFpqCVvL6y5dAVQc1hkOt2iVYWUYjOt9K2TmgQ/1pO2GWk6qwUbQQb7RiBL
         E+CuvKIxOcaf3nRuYBEYfKHfLQLG8FbHP0anucNbKkpDU6iBkv2iq1Y3vWLFbWWncdVe
         wx3HiQt4ocJZmYkiq70K+1dzfo5fjvnSaht2scc5pAdGl9JovpPqxrotOd2pYh1QRyeD
         IMtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTIK5Yrx1+XilUDG/2xZoNGxnuTykaOGLu2hIijESW1Mw0vqbc/7FJSHb9bbAeUOr8eYVd8A+AMC+V@vger.kernel.org
X-Gm-Message-State: AOJu0YzT5OS1vHr35R0r38ImxRdICEqofXFXZJwP1dLFyhnAzwSTIlUk
	zwwKzmlevuFRKkPIz88yFaizZPxohJVtrO+IeeGWDGTp5viNnYX7aaycdIFKb2gK0yAmJxixvB9
	Gaoqm
X-Gm-Gg: ASbGncvb+WVzhMyPD/iNCN1nwQpElXE6N0KYOacpzrHBl3LguBnKammBzC78MYloOlt
	JC4YxttOFh6xEK2Cc5cjxg4M8NkjCaj3ilAyx9GoJMJ5pBINk3Sc6ziikOd43Vo/H5uUAiG26OB
	Qv3x78l0NtfTi2bPLwvc/syqr9PFkx+GBH+cyAazA7VwF5LhDNqsYf8M18tqxUpN0Vydb+HPFgk
	ONGQwH0CJ4uVUItfgDOr1YHWAmwLQn3Md6JTnC6eGJMlUe52c1DwWKTCe7zhyAABzsjJw/YOcls
	RWXXOwqBwFm6DLStIQLIU/beRtAAxeX34msLPu6HZCTT
X-Google-Smtp-Source: AGHT+IFiZuSAPO6LM/vf/SIq+Fwd8TDoWsNQq3q0IjRs0A5KGq7kX17Mx1DLRzpTs3RUOTGQDuVm3A==
X-Received: by 2002:ac2:5a59:0:b0:542:8d45:cb4f with SMTP id 2adb3069b0e04-5439c22cb19mr7197433e87.1.1737654000038;
        Thu, 23 Jan 2025 09:40:00 -0800 (PST)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af733f2sm2747031e87.192.2025.01.23.09.39.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 09:39:59 -0800 (PST)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54021daa6cbso1336957e87.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 09:39:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX31KvB3h8Gssl8933Ee/3aB2hv/jI+gcbH6VM3BTIJGfvjMY5+YXGLs87jqybAC4//sA6cNkDb5xla@vger.kernel.org
X-Received: by 2002:ac2:4c24:0:b0:542:6507:9778 with SMTP id
 2adb3069b0e04-5439c22cb95mr7130113e87.11.1737653998113; Thu, 23 Jan 2025
 09:39:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com> <20250123064758.743798-2-yelangyan@huaqin.corp-partner.google.com>
In-Reply-To: <20250123064758.743798-2-yelangyan@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 09:39:46 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6vW_azMARZQ@mail.gmail.com>
X-Gm-Features: AbW1kvaJA_nHTtfVUNc2cj9PmkZzMWXaKlErRqAlrUOWVEWHGuH3pCltIcw2e98
Message-ID: <CAD=FV=Vr5DnACFoQnnFzPhF778Nv6LOZj43BqZX6vW_azMARZQ@mail.gmail.com>
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

On Wed, Jan 22, 2025 at 10:48=E2=80=AFPM Langyan Ye
<yelangyan@huaqin.corp-partner.google.com> wrote:
>
> KINGDISPLAY KD110N11-51IE and STARRY 2082109QFH040022-50E are
> 10.95-inch WUXGA TFT LCD panels, which fits in nicely with the
> existing panel-boe-tv101wum-nl6 driver. Hence, we add a new
> compatible with panel specific config.

FWIW, this is still missing acting on a request that Krzysztof made.
Specifically, instead of the above wordy patch description, he
suggested a much simpler patch description that was just one sentence.
I could believe his suggestion may be difficult to understand if your
English isn't strong. He said [1]:

> "Add a new compatible for foo bar panel ....". One sentence. Could be
> also one patch, not two patches

Putting that more concretely, you'd want to change your patch
description in this case to:

Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
STARRY 2082109QFH040022-50E.

...and that's it.

Personally I wouldn't send a V5 just for this, but if Krzysztof
requests it strongly then I wouldn't object.

That all being said, the part of the CL description that Krzysztof
wants you to trim is actually somewhat relevant to me if I am to give
a Reviewed-By tag. The agreement from DRM folks seemed to be that we
don't want to jam all MIPI panels into one bindings file and one
driver. The idea is that they should be organized by the controller
chip. For some history here, see [2] and all of the discussion in
response to a previous patch [3].

So the question is: do the new panels you're adding actually share the
same onboard MIPI controller as the other ones in this file? If not
then you _do_ need to spin your patch. If there's already some other
bindings file / driver for the MIPI controller in these panels then
you can add to that. If not then you'd need to add a new bindings file
and a new driver.

[1] https://lore.kernel.org/r/9cf4efd5-cc4b-492c-a1f3-18a19ba7afeb@kernel.o=
rg
[2] https://patchwork.freedesktop.org/patch/msgid/20240516072039.1287065-3-=
yangcong5@huaqin.corp-partner.google.com
[3] https://lore.kernel.org/all/20240410071439.2152588-1-yangcong5@huaqin.c=
orp-partner.google.com/

