Return-Path: <devicetree+bounces-216019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FF5B536E0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3849E56504D
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A09C3112DB;
	Thu, 11 Sep 2025 15:03:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E70E2D130A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603032; cv=none; b=cQwgHh8+aQydUZ8i7HbzX5E5RamtNU8Sf99YWTTfRjYe2jp9sckjBPQnlFT6HA+KXalOjnloXHJWbUfLfWCOQ/FlCn0mrn3+PP4w+zFxPqW55wLa4GlkbMjzXGrT4CDRdpmlKvdJhkiicJEqupxwJX7HX9gku3PF5rswe/pW0ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603032; c=relaxed/simple;
	bh=VK+yX4yUN5G9R/8D2B0MkkDOAv8caId0UMDP1bmocVY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WD+9/ys14qq6LI+/iQYcObPygWubvOI2O3y1IhpoRsJ40ysnwYpC2iUOPdAjd6uDkcbKNeoUCfawY9BIrvOq+duEGGF1SKKqhgSODelp+90vh/VjacYyj3mXJ//48X/XXyndLsWJtf/xGuu97XA0nlO5kPAVLeKXf80CmYaM1EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-72c3b247827so6915527b3.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603030; x=1758207830;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTNgjelsWWBoJtttLAeKmJNO9c1orKalw5k8xm7NVNI=;
        b=mNNhyDg+PUAWrSR1i9zVIZayJg480SHI74tLYyM+RJbO222aLseiP4hgo3UTfAH7AO
         ruMZG483KzpIRxmUd5dyzNBCcyYFCA+tQrMoJRjDq0k+E1ZVxldwe6o3m+sFauf6+kkL
         j3K9F2GwYGxgJQUHR5oWMPvhkdNt/2poMI7ntbuA9lUsmKAkmqmCZtHLf+D6hfk7Lxte
         Hci3T58I50EsbWZ5VXU0gnCtGf9XXmHZXkBnxQ4+ZQVs5ciptLPOQ6UaXrXwfGL6vMID
         qSR+clqRLsWxv1lHNZTa2uFJ02eeKwRxd2wqM8q1awJl6vViMjGE2P+LeUFocfJDydj7
         FCcA==
X-Forwarded-Encrypted: i=1; AJvYcCW/GJ3gG0WiI0azO86V/j10draz5QFZL8ZdhBEL6rPuz9+Ln/rH1B535B7N0pGbVD3NdCSGluMSLe1M@vger.kernel.org
X-Gm-Message-State: AOJu0YzUzWcOkstObmtiID5/Em8GNkAug80KGphJ2FJK7JL1mifxI2k/
	80pLqxrCF8slB7oDqRiuRn1D2SUAo1wNJN/ZgZJllIpmGbbgi9v2DuonW7xljdbWRcI=
X-Gm-Gg: ASbGncv37b5rvo9gApzB86/OOC+JD0gl48a/JnvzPzEEhGFVeq40zRr0Wpd40zOgU2E
	SZtxZPwmC7wY70GYwLwcqduB9BBc0k7nF+4Zlc7XsrstNYmBsUu5a9qIVg7KDaPKHfCgVYccp9m
	9+9PW0aP7kqAufGgfoWFeyVjMt05aeokPLwaRT7ndcsqhATHd+egHArj4J+oAd51ClpxP93MMZs
	GBYjpfkXiGhtvey6hfyVeQ8BH9h3eYcmskUtHhxmrkxJWu0zNhyob5WCgOyDqf9opJD/zifjxBN
	mb45TTY6HulVWqJ8NrB4KfIl3mhgc5QrTQHZ2cQeEWin5BuGm8bt0cs+RlHi0nBmxZ3MedYZMXF
	nm5XssqC9kMURak1ddwnd507F9+glGy/a+/paK0QpMP7wqjf0wQCNb3YoF5EXqYPjxFWCcFU=
X-Google-Smtp-Source: AGHT+IEG3SFBi8tyfQL2mfCzO6VW79D1xUyd2JBvvHyjyh2FLtMby6eJ7Lzpk3dCTdvYbNLUf7ujFQ==
X-Received: by 2002:a05:690c:6e08:b0:724:bb55:27c6 with SMTP id 00721157ae682-727f74f90d1mr191816757b3.53.1757603029530;
        Thu, 11 Sep 2025 08:03:49 -0700 (PDT)
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com. [74.125.224.42])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-72f791a452csm3868287b3.34.2025.09.11.08.03.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:03:46 -0700 (PDT)
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6241ab7fc41so343479d50.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:03:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV8gNnlhm17lqPM6S4AKhHfaTRhOCmyLiTY7CMRJGBgcwJMmrNUKkj5PjGcXOhE+bUK8C0WyuxGAbId@vger.kernel.org
X-Received: by 2002:a05:690e:1555:10b0:605:fbc5:b898 with SMTP id
 956f58d0204a3-61021bfc79bmr13662319d50.8.1757603024792; Thu, 11 Sep 2025
 08:03:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250905084050.310651-1-niklas.soderlund+renesas@ragnatech.se> <20250905084050.310651-2-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20250905084050.310651-2-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 17:03:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWLVNOPb7=fySL-Bq9VT=mC6Gk4+8mtpTVigm_EOpbu9w@mail.gmail.com>
X-Gm-Features: AS18NWCeiScPKVZBDvlUgXS9lgGLH_qD3xH1xsE3ioS_GcU8mUut7ilUHLk7n4k
Message-ID: <CAMuHMdWLVNOPb7=fySL-Bq9VT=mC6Gk4+8mtpTVigm_EOpbu9w@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] arm64: dts: renesas: sparrow-hawk: Add overlay for
 IMX219 on J1
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 5 Sept 2025 at 10:45, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Add an overlay to connect an IMX219 camera sensor to the J1 connector.
> The IMX219 utilizes 2 CSI-2 D-PHY lanes. This enables the video capture
> pipeline behind the CSI40 Rx to be enabled to process images from the
> sensor.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.18.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

