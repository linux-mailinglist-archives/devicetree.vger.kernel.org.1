Return-Path: <devicetree+bounces-240479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D3C71A68
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 02:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 44031348C67
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 01:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF444223324;
	Thu, 20 Nov 2025 01:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FEEQ5Lqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F269D21ADC7
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763600669; cv=none; b=dFSRTXrvwVMCHUCzDO80pR6yDvTX44zdd54yGexo0sas6YsCqlJHRlLBn3gSU56ntkdgMGTvoZs7e8lJmTHq+xa0f53mnoyc3mzsP0BRe6MtnicvE/FCow6OU1jNbaXKKJd569TGTwsWWIzkdMhhBwitAyLiD8SJJPDooOetwrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763600669; c=relaxed/simple;
	bh=HNKStvuc0XB3JshjhPWn5gZkIa6YpjmT/QSv6jmE+eg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z1Xd3J9yGQVmWAEHfK4+vKgHY2M7QoVlZDyVtC3yOcXW0ii8I0XHF6KSA1Gurx6JLKZtB7+oldCLixNf5ynwgA6X5YxMp2LAVZtMLFJCDgxvabJkiAUsExgt9M+jAjQACQV9Fmnp4sXO9Z6lY1HqoobK2u2l2mYd3Nplp5iE65w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FEEQ5Lqv; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6408f9cb1dcso427578a12.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 17:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763600664; x=1764205464; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HNKStvuc0XB3JshjhPWn5gZkIa6YpjmT/QSv6jmE+eg=;
        b=FEEQ5LqvU9V9SEiFyYm48SMBkCpp6Mv01whQsXRIftSIxI80afXfFJpKo9RYynTDI2
         /zjEzbuSMMYOvUKGbcSgDGudOrZoqRhGibIgOUyQvY+1o4RkAHyFQapnVnv8xxHWiwRo
         RJl50okBnr3NQsni0C0cL+CfeHky6LrglZ56U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763600664; x=1764205464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HNKStvuc0XB3JshjhPWn5gZkIa6YpjmT/QSv6jmE+eg=;
        b=rlVTmQT707dt0L+0BB12cMdXeHfzsRvB7zN93ymFQ3tR710O3su4z6uc0NIPoMhiaw
         nbJpYlr1C79vtpd/d3qntG9DA2rH00usFvF3Np9TMRhZx+OgwtMLGHIlRzjXa4wLh9t2
         H/EMzn01fFh5aPXws7oecg7f1xbnwDN/K5BsWpgdwU0Cj/PiGQyw32rPwwben9e/cV52
         FRNPSqYwVziGVS04Ot7p3EAALrb4yqsi+Njwtxo9yOJZVbDIY6lw79wXbOMsUXQvmiQS
         3HcspbU+Y/0/2+kDZjJ69SJ1QgVrwWzf+EMXKZ5+5xAlhEg17Wq4EWKElyyn9rqM1Avv
         A4Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXquBCNM1JTIbDi0YW74R5aAeI4YBCMEDvmPONeh4YHNWvvDBF8dtHTtSzulEFWEwrpVZIEeJh/1Zoq@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ2s46p543EUKNPfWY6SCFeHanrDDPdF2ap2CNr0+ec7/EOKGt
	0H1l6OTKpoSf1FFhbAJ0anLe+uWAeBmL/3Ad+xeUVET2kOkRnFz/UpyPrlWvybEMdim5dkZbr2x
	hwz6/S+to
X-Gm-Gg: ASbGncuyaHx1w3XQaPC5Us7GkudfC52+o5bk8orufEBB3lXNW+aaBgO5DoYtC5DlF5T
	tkU/XK1t25pTnVORLN2jLuqaKa8IWvGb5o3NOA9Bfxe1yOI1N2RQAtDPJ2cGavB/UrpZl18e6Jr
	YSFxsU846GpnT7AlXIFQU1LFYlPDkSGZcXjadVp5cyKO84+tUhLCNrByyTokLx3lJ97VOfIvRce
	lt8pzdYxkn78oE3DaSwOCspIXbrz93CIt+ksBPZOVkNf2PxZDymqz38q2tJd8Fp2lVHfF0ucz2y
	sRPZzRhGcnfttAORx7xi/upubBfacp+qfqMyXAdunrnHZQX0EDRUDkm5u1sW9J2mGi+8GEvh0RR
	JzbauRKHIictm4FbFou/llifjvp2gl6NCnHMBGi2QePAg61nNhE9RbG54jObVv1gfmykCvCWBWQ
	yNk6za+YgIyuWjF8rPV/OWaN+JORU/XzGbuih+KT6iMjmKVn/8R8P/ffQjQ06c0qa309rYrvI=
X-Google-Smtp-Source: AGHT+IGGqpaM76jl5tUPBTG+tFvhdxDkG4puJPkyMNSj6C7cGUEL5+2HdLKbxSEkD1GBfmoGxrVa7g==
X-Received: by 2002:a17:907:94c7:b0:b73:8639:cd96 with SMTP id a640c23a62f3a-b7654dfc0camr97139766b.24.1763600663621;
        Wed, 19 Nov 2025 17:04:23 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d7c919sm77349766b.28.2025.11.19.17.04.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 17:04:22 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477770019e4so3229785e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 17:04:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXxNvz9gTdD4SB8YfGS/nf8NXySpDC3tN7VbnHI4ULrLZ3Lcv+Ay5DCzJv+Bh8uQ0wJDzw8zHz0fTvk@vger.kernel.org
X-Received: by 2002:a05:600c:3ba8:b0:475:dd7f:f6cd with SMTP id
 5b1f17b1804b1-477b8d8eec1mr10748455e9.35.1763600661833; Wed, 19 Nov 2025
 17:04:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz> <20251118-pixel-3-v3-8-317a2b400d8a@ixit.cz>
 <d81b0e70-5e3f-4e33-a268-e8b903904e9b@oss.qualcomm.com> <d9c91625-a829-474f-9fda-5e39342bb4af@ixit.cz>
 <96673da0-d8be-4b82-9e8c-2263f752881c@oss.qualcomm.com>
In-Reply-To: <96673da0-d8be-4b82-9e8c-2263f752881c@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 19 Nov 2025 17:04:10 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VrB8FycxF+SFpP0-LBuRh00q6ecQ14fJj5fBKcFqsdCA@mail.gmail.com>
X-Gm-Features: AWmQ_bmyj5sGx4tyY9L7h2oSdpAiPgC3_696WJh5bzTVt6VHuCNSI8LWrwUfgrE
Message-ID: <CAD=FV=VrB8FycxF+SFpP0-LBuRh00q6ecQ14fJj5fBKcFqsdCA@mail.gmail.com>
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Casey Connolly <casey.connolly@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	phodina@protonmail.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Amit Pundir <amit.pundir@linaro.org>, Casey Connolly <casey@connolly.tech>, 
	Joel Selvaraj <foss@joelselvaraj.com>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 18, 2025 at 5:41=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> > Yes, there is only one firmware, which crosshatch has different, but al=
l listed in the initial bringup are used for both.
> >
> > To add, crosshatch was somehow not that popular device, so as I've been=
 suggested in u-boot discussion, I would love to keep blueline everywhere.
> >
> > One exception is LineageOS kernels, where they go by name crosshatch, b=
ut again for the both phones.
>
> Google seems to suggest crosshatch is the 'base'
>
> https://android.googlesource.com/device/google/crosshatch/+/refs/heads/ma=
in
>
> Ultimately if none of the Googlers (hello +Doug) care that much, it's up
> to you to choose

I haven't dug into this patch series and don't personally know a lot
of the history of older Pixel code names before ~Pixel 6, but in
general I wouldn't expect Google to have much of an opinion about
Pixel 3 support upstream. I'd say leaving it up to the people doing
the work sounds good to me. :-)

-Doug

