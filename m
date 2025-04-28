Return-Path: <devicetree+bounces-171698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EDDA9FDD3
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 01:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FCBF189F477
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 23:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAF9213E97;
	Mon, 28 Apr 2025 23:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dKl+m04V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45301211491
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745883411; cv=none; b=hScQeUrbaQIa3hTcGsF+V/alZDrtU4KqlDZkbHeKAmCIunDFti1ts+b+5LmldePhiZjV+Gd3qerrc3b7AIH0Bz/nPgSiyuMZ0h5QsCB6ELmTqgekuQF/sD1cL+RW+OVOWs8eJvf3iv8B3QrFcKOePze8cSKR6b8ee5qGc553y5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745883411; c=relaxed/simple;
	bh=k37WAKWj9MK4No/K2twFZKQRmU/o0AQNp+dOIiPpcTA=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eQWaSMRgVfYKhfI9RB+8FE6GNX8hfwm5nS1T9O4JIv3gccvv0fhiyaHlEdMEn1YNH5kpQndgCWk6bIfL3nvSzGF24ZWKoLhA78pKR18lHQO6/AMTigivH4xxL67gMvm00K0RfigQPv7ix+B97nw8gBJCezCJpMQXiCcpiwNMcFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dKl+m04V; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6e8f43c1fa0so74966966d6.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745883409; x=1746488209; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k37WAKWj9MK4No/K2twFZKQRmU/o0AQNp+dOIiPpcTA=;
        b=dKl+m04VIAsCnw77xxjQtHyVHuzckogaN9ELnisRtSE3j8OOpRmOVTL7iv7Eu5Ndrl
         lDEODEZ9R4msdpPltIBiBkKY7EmqtSMAJ3gOiQ4+duaF3gb4mXjmPA2oadoENXqnYeGF
         rEU4sDe7NsOATFvSyO/ugWgApdtgXTExOtRjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745883409; x=1746488209;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k37WAKWj9MK4No/K2twFZKQRmU/o0AQNp+dOIiPpcTA=;
        b=XB8/+cExTMZaXj4rWJ2o31beXzarFBUuemmbKBJwDg++f1LD/ou3++Gxbx6DOdBsza
         nx8XQRXGcL1xcYcNhoF+Xk6hVrFmR9JAGifOt1ojbl53yppicdpcJhZaoVuD2Ywh3QLU
         QXO4puTdz8Dr4u8D8VPCHjkGN3/HRAmlwEYTWC1ATfWBcIjXdhoeOm6rq2Pr3epwZMja
         18Q+DWF4s1NMGnDGnTrN0JfstzBzdObdEu1pRoFc38I0x359SybErFGQklUnLMZaLQ9d
         TMmdJyOfuGQO6Yj0Lvaj4BTGRhBRM4keIqKW5MUYPOtEzBNoOm75Ke12fskpwmRXAnRD
         caUw==
X-Gm-Message-State: AOJu0Yxasl+CSBeE7iXw9Ju+OvVAY4SODa5rB5Zu3C8UrqNBuM7/f+kA
	WpPicG+UcqG2wbeZ+a/P8vkbIREdcTSv2I1IVnI/a4cBA6U4xCHKlTa96apx7m5ZoNrBf8fgy8i
	0FgedgzIYdKJjRPQb7RXV77SpMGOD9x18Q7H7
X-Gm-Gg: ASbGncvSlkGEUjeIrVwo2+q5xQGcdAG2BTEgSgT8iswWEgv4SXC3bqskL3/fSharT9S
	ltam1ZbbVVRs7yNU67EV7HNIqMzeS0tz8VIC3Jctl2MsMpuztaYJX8mR0kATcOCAHNyuHhDaWpN
	iBGuy//tRVTLuYHFntoCp6D7+PvplAFdyas8kQ40C0vlc4JOnRdA==
X-Google-Smtp-Source: AGHT+IFAV6Dt5wFCfoA6cMOB3MpMn43GlHt9c/t/48VDjhtKHnzic+oww3lMsF+lLiVKsN5rQEhaV4NlaHAZGDqPKnY=
X-Received: by 2002:a05:6214:2a82:b0:6e8:f17e:e00d with SMTP id
 6a1803df08f44-6f4d1eff0femr191352106d6.14.1745883409038; Mon, 28 Apr 2025
 16:36:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:36:48 -0700
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 28 Apr 2025 16:36:48 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250422082957.2058229-5-treapking@chromium.org>
References: <20250422082957.2058229-1-treapking@chromium.org> <20250422082957.2058229-5-treapking@chromium.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev8+g17a99a841c4b
Date: Mon, 28 Apr 2025 16:36:48 -0700
X-Gm-Features: ATxdqUGecLQva0BYL1F9HfFnhP02mLVZfmOPIfqCxVFuGQnipmIIGxt7Bd3hSGQ
Message-ID: <CAE-0n51y0ZaxOe-pVdXqyoiBS2hA7JnrWLf_116dRkoMsiJvMg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] usb: misc: onboard_usb_dev: Add Parade PS5511 hub support
To: Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Matthias Kaehlcke <mka@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Pin-yen Lin (2025-04-22 01:28:30)
> Parade PS5511 is 4+1 port USB 3.2 gen 1 hub with a reset pin and two power
> supplies (3V3 and 1V1).
>
> Add the support for this hub for the reset pin control and power supply.
>
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>
>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

