Return-Path: <devicetree+bounces-120312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF8F9C2019
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 16:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67CEE1C218FF
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 15:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03891F5831;
	Fri,  8 Nov 2024 15:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bKnoG/0+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CD41F4FD6
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 15:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731078708; cv=none; b=TdDfoau9G66d3J2mPUWZxyBmpTkFK2oEyXQRN5WqyX1920r23Mig3Uv0MPgtDa3fj9tn3ez2Es8WRP5ORS4DckVAVjsBEw6CVybpXFNcj7rOb+G5Zg0TLFfNjV9bVBXTtve+/HG0Wr73PCQV5getbcbQA3tfAnAmHzoDjUEN9yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731078708; c=relaxed/simple;
	bh=7AbutvFdmgvjtotNL0xr9HRKPZ3PcvOcSlbj0hwvXMI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CvK6YPDw8Baq/0QqffByXzI+WVe3YUHIeRqGftmZZbP/URy1RSffabC0fFFLGakcJ28AnY5kvRvcOypBOXWAZ5C6FgU0qDhqqcnNAJpDm+/rMgTkOF4chaFYXkMLYG1jLSKCL7wQt7pa/T/TzBJaz0w6syJluxu+WHIQ/N0agcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bKnoG/0+; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e13375d3so2713322e87.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 07:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731078705; x=1731683505; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7AbutvFdmgvjtotNL0xr9HRKPZ3PcvOcSlbj0hwvXMI=;
        b=bKnoG/0+aarS9H4jOxRQDzKVK0A2JtgdqfOPhGlYK6VlSjdRv+DalLZi/BFFW7urW0
         kxZkrYCy8oVhnvllbTmG2xZ2d3VfFAkc5x+oO0nrGgTtITOX7jaXixeyoSitutCHLOm9
         yiHLQ5rICroz4O2IECtSFVvTsYdXhlgwLY5OE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731078705; x=1731683505;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7AbutvFdmgvjtotNL0xr9HRKPZ3PcvOcSlbj0hwvXMI=;
        b=XkddFUfDdReI3r+Opm7kTHPqVin3mwUnIqMTWiw4unIjwYzjKdih5IyahFiDd08xWo
         hI7KdPyLb+wDVqjZYzU6QSv6kQkGh735IgV5bt0C5n25+6USSPNBqTGiR/ZKGa5z9dAo
         s4MMMB5mphMVkESITcRsM7LX5Cg5EGDHfK1SeJGDtDBFyYbJebJkpit7a22z+LcqtGun
         ZkTjyrDCySRZHjKFfZI2wZ9pR5Zie3NJKimJUupyAdlNz3Q6P8mrPdChF2u3JdoHBT6J
         LDm4QWcDxO0B+BXUjjd5xjPtmBXrc7MylRsBJ0a1TW4lL60nqJQw70mOPyFi86X+N240
         mWQg==
X-Forwarded-Encrypted: i=1; AJvYcCXBjcR4ApFJl2cYF7nwb+oknd2aHn+IbGdqNsTP70fLONkRYsrg2+GquehPmGx3ficgjDI9guyJVcos@vger.kernel.org
X-Gm-Message-State: AOJu0YyIP3mzSb0MVnH+GHQI0ND8rPPSUQOjLYScStxB4jQmvK1A5hg0
	mkXIp6g00UZmVQH63SWZIihn4BWQmeIXz5BpVfJq5V2+cQsI0xB8FfqCMShWyZg8meRh0UhNCBd
	bQQ==
X-Google-Smtp-Source: AGHT+IF+3dPHDNXHKy1uLQiXBKSBqJ5CSNTQzqZbTDyN30LXz67zUfwiZVtB/fpVKkfT23W1upZfkQ==
X-Received: by 2002:a05:6512:3d19:b0:53c:74a7:43e1 with SMTP id 2adb3069b0e04-53d86230a01mr2105946e87.13.1731078704488;
        Fri, 08 Nov 2024 07:11:44 -0800 (PST)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826a71e5sm639982e87.119.2024.11.08.07.11.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 07:11:44 -0800 (PST)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539e6c754bdso2223822e87.2
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 07:11:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV/XU7nI+ilHwwTN710kU0bykHKPaSUR2YqUI06be9moMR8J/u1mpUeSG/CjFRxySln4NNkw+3/5YoO@vger.kernel.org
X-Received: by 2002:a2e:9a16:0:b0:2fb:3881:35d8 with SMTP id
 38308e7fff4ca-2ff201513dbmr19941421fa.14.1731078703279; Fri, 08 Nov 2024
 07:11:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241108120311.87795-1-charles.goodix@gmail.com>
In-Reply-To: <20241108120311.87795-1-charles.goodix@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 8 Nov 2024 07:11:27 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WNcdbdn4tzNyVWaZugma3RdqmvTPa2NsTyuhH4yA3Raw@mail.gmail.com>
Message-ID: <CAD=FV=WNcdbdn4tzNyVWaZugma3RdqmvTPa2NsTyuhH4yA3Raw@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] dt-bindings: input: Goodix GT7986U SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: krzk@kernel.org, hbarnor@chromium.org, conor.dooley@microchip.com, 
	dmitry.torokhov@gmail.com, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 8, 2024 at 4:03=E2=80=AFAM Charles Wang <charles.goodix@gmail.c=
om> wrote:
>
> The Goodix GT7986U touch controller report touch data according to the
> HID protocol through the SPI bus. However, it is incompatible with
> Microsoft's HID-over-SPI protocol.
>
> The patchset introduces the following two changes:
> 1) Add goodix,gt7986u-spifw.yaml.
> 2) Drop the 'goodix,hid-report-addr' property.
>
> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> ---
> Changes in v3:
> - Split the commit into two patches.

LOL, this isn't what I meant. You should have one patch adding the
proper bindings, but you need a second patch to _the "driver_. Right
now the driver (AKA the file "drivers/hid/hid-goodix-spi.c" in Linux)
is still looking for "goodix,hid-report-addr". The driver needs to be
updated and that was what I was saying should be patch #2. You'll also
need to fix the driver to update the compatible string it's looking
for.

-Doug

