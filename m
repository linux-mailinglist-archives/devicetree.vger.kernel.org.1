Return-Path: <devicetree+bounces-107329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E38298E3D0
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 22:01:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDE661F252B2
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 20:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEEA216A2D;
	Wed,  2 Oct 2024 20:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JYmm18Fi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0E9215F7A
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 20:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727899288; cv=none; b=htr6iydjtm5Ydbg4MQgJAs5PJ8sZTMysuMXVRXDEw8oD4XWJBveBvcWTCefBKaMTgEUM06HmQao69uWUthbBsEcw3176nDHpy3fuvkc2aDwuNW5ANcBA25yTY0PkFbuKc4a+mlWZOM5Gi8Y32/pe2OCvhEe6/dtZQSMeynkgbRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727899288; c=relaxed/simple;
	bh=vmXz5DptHKNfhCU297MSr/SZOtqvGTgmb2tR2k5zN8g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JYLxi4wAyLKPVqGWGyDnVCu5bX9te+5s5eak0TCMx4v0mGs8fAC8FqFzF9isDd02VSkwjCeu9CgI6htdiM2oZ5MaU9bdzU+NqrRwFHa/3tE2IHVtVZkJ1XglsdQ6TDbPvlKSSYSlAv5gFDTZkMp+Wj+VOX7/gj0QVYfejJ6Hcfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JYmm18Fi; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5398a26b64fso129916e87.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 13:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727899282; x=1728504082; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RTbP2THnQ7ZPSao3GlpGoyqfA8hmjwpPW28NYvs/R0=;
        b=JYmm18FiCbmNCnRhvauaMxjh8UpSID8+x8OM75llgHi2V4fxCLR0BT4RifhY06SDsI
         vLWqZ2XzaLBpx+qFBtMlkwvxhO1Ka9TJhloQ8J9xDgb868OWkV6MJKKLrtwVmXII1aDB
         fwaYTDzKi3TREsuh+HxaaWFUQnbiVq3j+qfqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727899282; x=1728504082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RTbP2THnQ7ZPSao3GlpGoyqfA8hmjwpPW28NYvs/R0=;
        b=RdXmnbbEYdanOTGmPbdO+y4sHkTxy38nobx2N4qTPv4R3M16JMjRGXCSpulk2K8/LE
         NG+w/RnMi1PgiHgb/DwCAKkXs31gjCQN7NUObAiQsDwzbEfk4WBsWtBQcs0g2Z3Pt7LX
         1cT14d3Z7LN+PMGlpufXzXqdDbouvqu8ME7xV72dpittED2DV+/opL/+c7IWwnO1/6y7
         K5nXLH8LldvCAx6y8RUSRyg6LpH/NhLwWDwLBm4FnSR+2cewnFQXggL3Ckshep8oi8t/
         6NFM7lZ1Dma7/nTL5SHjN+W+TdsDMJBqq6f6khc3hr1mWssWSHoxIaV1bcGaXHVw36kd
         vzBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVDbh21rqoyKZQ+ghPdAti+rrL6iQCiGx5C7DifOB+XnM8vMnc+bTXZj7IFMt3t6TDpQm8NyMa+X2B@vger.kernel.org
X-Gm-Message-State: AOJu0YwTGp7gbCsEyQzb1NFLCIbxNqMHj1mYDrOZ+rByYCeK0VzoGVxC
	T5TT6JHnKnFN+wyB9lz9U/mOXQpr9/uWqHuU6lgWpv1h70sObzmbrkLGdjRB5qxOfM28vfel106
	u0g==
X-Google-Smtp-Source: AGHT+IHP3hrkIFOUUlDwKkVP1DJFdwtzeia+c8p2Z887aaUV/BZuLpcJCKKwknY5K19H38IrgKHCpQ==
X-Received: by 2002:a05:6512:b90:b0:534:3cdc:dbfe with SMTP id 2adb3069b0e04-539a067c3demr2261677e87.28.1727899281710;
        Wed, 02 Oct 2024 13:01:21 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5389fd5e3c5sm2002953e87.106.2024.10.02.13.01.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 13:01:21 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fabd2c4ac0so2333481fa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 13:01:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBe+9kHD16gdy8Oy7DuIpQY5ncO8q25YTn3k3I+nA3qfNNH8YsNmKsA2nb45biLzyZLZd9DdYWM1Cn@vger.kernel.org
X-Received: by 2002:a05:6512:b85:b0:539:896e:46c0 with SMTP id
 2adb3069b0e04-539a079eaf0mr2740940e87.37.1727899279887; Wed, 02 Oct 2024
 13:01:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927094340.18544-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240927094340.18544-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240927094340.18544-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Oct 2024 13:01:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vm-MzhNrotMz1n-iYvm_VAfyVRDtTp4yrQ=6sCTzX1Vw@mail.gmail.com>
Message-ID: <CAD=FV=Vm-MzhNrotMz1n-iYvm_VAfyVRDtTp4yrQ=6sCTzX1Vw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/panel: jd9365da: Modify Kingdisplay and Melfas
 panel timing
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, hsinyi@google.com, 
	awarnecke002@hotmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 27, 2024 at 2:44=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> In MTK chips, if the DRM runtime resume has not yet completed and the
> system enters sleep mode at the same time, there is a possibility of
> a black screen after waking the machine. Reduce the disable delay
> resolves this issue,

This sounds _really_ suspicious to me and it feels like you're just
pushing around timing to get lucky and avoid the problem. Generally if
decreasing delays like this fixes a functional problem then the
problem is still there (just hidden) and has the potential to come
back if a little extra delay shows up.

I don't understand _why_ it's important for DRM runtime resume to
complete before the system enters sleep. Is this causing the Mediatek
DRM driver to get confused? I would have expected that if the system
went fully into suspend that it would have totally powered off the
panel and then when we resume the panel shouldn't maintain any state
from before the suspend.

...so this needs to be debugged more and a real fix needs to be made.


> The "backlight_off_to_display_off_delay_ms" was added between
> "backlight off" and "display off"  to prevent "display off" from being
> executed when the backlight is not fully powered off, which may cause
> a white screen. However, we removed this
> "backlight_off_to_display_off_delay_ms" and found that this situation
> did not occur. Therefore, in order to solve the problem mentioned
> above, we reduced it from 100ms to 3ms (tCMD_OFF >=3D 1ms).
>
> This is the timing specification for the two panels:
> 1. Kingdisplay panel timing spec:
> https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
> 2. LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB
>
> Fixes: 2b976ad760dc ("drm/panel: jd9365da: Support for kd101ne3-40ti MIPI=
-DSI panel")
> Fixes: c4ce398cf18a ("drm/panel: jd9365da: Support for Melfas lmfbx101117=
480 MIPI-DSI panel")
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>

For future reference: please don't put a blank line between the
"Fixes" and the "Signed-off-by".


-Doug

