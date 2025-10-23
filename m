Return-Path: <devicetree+bounces-230265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE8C00FBA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:07:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 009FD3A2533
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A6DB30BF6F;
	Thu, 23 Oct 2025 12:07:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC86D298CA6
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221268; cv=none; b=swKD5BSiGYVbwDQr/fv43KPdjVk0DDDFRvGwH6JkqDZSGD2sCY8tY0KnX+uoUHzX2bP+rjh2fpMvzyQvJSglV7i6zvHvTIDGeAqwi9bHrp/yCS2birAvHmBBridEQJ0V18OdmsHfhtw+Wt/ZJq3hqKN6DnbzVDqVzxGeZCJu3WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221268; c=relaxed/simple;
	bh=QhbN8r+FeVInBIo/fiJrSFPH7EhpLOxaAVWY0WLSBSM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qRJDXj3KX2OO8ouTC3rQ0aaZaJCXz0Gkk/gScKnUwejwKWXpLFZ10AjmNC+3ptdAsolRcb41p9I5btvCpsd++OL5CO+i+al97z+HhK/Tdf27FxF1ZjOoKkBu3197KnKzkU5U8kZqzIExRQeyeSugCSm1drXs0lWQSipWIyuIu+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-557c75fe551so158017e0c.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221265; x=1761826065;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oBc63QGd7BXhtM+lMELJZmBYVxWnaM+uPvhZT/wm8AQ=;
        b=CTc2QggFmUPP8jug5a/yTpgOMZWUPeteoJ9UOnt4EsBxRRc11KJIYgBUzRzsgO+D62
         62eYCpE/e3b+y2zLvEZHJ3Dsscx6RUm4S3bqX4cfOJji+V4TJTuoYBl/SozV9rWRDrme
         ISgKjK9Pd573l0/VwgS5h6wg66y5OdjWK/P68r/xS3K5VAC6cFPVZCOKJSbBwtxkfSPd
         144NtOmP87uvCjvwxnQtqKXedfOnssX7KQhbfoC9Ofoce6uzPSAfzA54rJsnXJIl636T
         GRfJGJZKSb9AzG8a/n7sAjjxAYcFgwuvbaTC3QbA/wwKZZAeWxocf1xi1b3CdRIewzT4
         zs7A==
X-Forwarded-Encrypted: i=1; AJvYcCXQ5BvQY6qJ39I/ufpH6l4FRFXb8SxFqQaKky+xFeRVTIjf/p7/0IQ/h52NoDnp20xQgNfSpXJoq1Hw@vger.kernel.org
X-Gm-Message-State: AOJu0YxEcCKjvQOCDHnVFd1AITBJdgplXGv02Zb+OD4mi8c4VMR9/9jz
	P++di5iG8+XfwJ0ALL2SLUrCx/tDyBDR2WxDZ1+6jLfHON+3x790YtnAUx8R4g6o
X-Gm-Gg: ASbGncvDJNb+8NiYx5jSWy/Z/PMaKWyV+KyrTTYQNStxhPFAN3yUArMPWXg2wjwv8M4
	4c/Le4J4/BPJ3vWPgr2qmyZ76z5PyN+oxZYfJMYst4ydqvO35xYgsOLfMRyG/5TsOZsMaRgf03a
	txmCVI+CuhrFxOjtsgdyV+BwuNGJviy6ODHvrlNxVfP478WfZGobDE7JZXSovU9Uq8q0SY8OZji
	wDinSqsXYSGk4ttdRbtthgk52xSoA5fY0itZ1jkyA7rNQBiYAgugny2jq3U5Oip0Z0v215QaOPR
	0Cek8j7TVp7HKfwQrC6JWTOm8IKgBLf9ljtZiJpU4Y4/X+PvGbgIbhoVcIM40BrAxEDj1vGXdXs
	2M9+yU46lnL8kxyiNRKuXwirmh/qft4kEiuKpmJ+1roZokz0zPE1ivWZ8wlq7NbOQt3tFVUtaVw
	cCqGNsPRGrju6qz394O6FNSKinHpAnmnHJD/WocuA67sdDYtkt6Q1S9EmmzNs=
X-Google-Smtp-Source: AGHT+IHAozV4wXfwyN2htW6mOHoNOE0K1XZIX6A6rWOTB7EQdtTpDgV3jidHcI4+rKGFHGptEy5Nxg==
X-Received: by 2002:a05:6122:510b:10b0:556:4f54:5303 with SMTP id 71dfb90a1353d-5564f5458a9mr5708746e0c.5.1761221265458;
        Thu, 23 Oct 2025 05:07:45 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557bdbe3bc6sm684003e0c.18.2025.10.23.05.07.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 05:07:45 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db2593c063so526664137.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:07:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJTI/qywfz7Msqso1Fsk/pRx/PFRgvpNLeNpHkSOnvTzmYQlvse1eXrWHfkPIHM0s71mNGdk/TnJRZ@vger.kernel.org
X-Received: by 2002:a05:6102:292a:b0:5db:27e9:934a with SMTP id
 ada2fe7eead31-5db27e997aemr1516331137.42.1761221265052; Thu, 23 Oct 2025
 05:07:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87h5wsa3h5.wl-kuninori.morimoto.gx@renesas.com> <87ecrwa3fj.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ecrwa3fj.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 14:07:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVuyDSS+zhQV69MK_SXfDpJRrKYvxsdgB8Qvuz+Q8770Q@mail.gmail.com>
X-Gm-Features: AS18NWCv1q8YpauasJP8nKtI5LMvjuBV_rVOoXFhH4VLXbtRUw8eyo-JmHWN1v8
Message-ID: <CAMuHMdVuyDSS+zhQV69MK_SXfDpJRrKYvxsdgB8Qvuz+Q8770Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: renesas: R8A78000: Add initial
 Ironhide support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 06:18, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Hai Pham <hai.pham.ud@renesas.com>
>
> Add the initial support for Renesas X5H Ironhide board.
>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Khanh Le <khanh.le.xr@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Phong Hoang <phong.hoang.wz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

