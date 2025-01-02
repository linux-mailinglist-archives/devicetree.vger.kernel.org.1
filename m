Return-Path: <devicetree+bounces-135117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C469FFD0C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ECAE18836B8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A0718FDB2;
	Thu,  2 Jan 2025 17:45:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A84D187FFA;
	Thu,  2 Jan 2025 17:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735839929; cv=none; b=ULu5ydCNrZSOGAUxKUXy9/QDfYOLgr+gq+ibuKp4L8yedhDQ2Se1xjMWEQkD8Cmq7Ki0oyzEofqEUZw+QuAyj4bjzdeY7JTQ8IjI+t4BA3nTifRW3Q3V4gmWDAujxwGCR0q5tGmn0rUQ49WqMlf3Ji9rPScymD+jK+jzIGKo/E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735839929; c=relaxed/simple;
	bh=+rX76GSNyzHVSRa8e7aEOxdkbuGL68TpQgt8jW1PURw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MTOrs+q7PmgOiqY40tnNyVL6969ryScbxv+g5O6gM0gwYX7eJTPVUv5kBum4eygl9tpWze+p5XvBG9+aGFwvmR74Ubh6Kpz8ydaxAPvFaRHjY1yuYyvlh+vN5wUiHtwsL1IWiWtHbGHBu8Xi17SBD8wSybFT2wZA7mY+z9JC5BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5401b7f7141so10501240e87.1;
        Thu, 02 Jan 2025 09:45:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735839922; x=1736444722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+rX76GSNyzHVSRa8e7aEOxdkbuGL68TpQgt8jW1PURw=;
        b=sXkZsDiHsQd2gu8JV2QJv01yRHGO8/b3hLaLU2veAgLM2Cp5ZrunoPb4sd31WhGN9/
         rWmX3x4mf+D4w/HgrstTojmT0LXzsEYc2OTYcmQMMORWQXoLwth2LVPwZlLPBQHrJZEu
         XxjcA5qRs3NN7/wXGxvxa0etrWV7K2hcFhcEg6wOHw8ngc5l3obe21Ejsnft6ua+SsXc
         wr4DaxYwGZSvt58cUywY3qFxpDCUVSRhi0p0+Rlqzfh7OAx/aLTgtxAzBFz0Q3k/G+fw
         xXPO7cCxGp32o5K4GkeQFpuAW/5X4OZTN8WceAZzpzHCVfYnwJGPKZX/Mpm7L9enYXiL
         ObLw==
X-Forwarded-Encrypted: i=1; AJvYcCUTukbxGi9YxxQNVkIjS2EaiBFgzPPwKF+sSTTx2e1/obzs5WhjMqMQj0oDRlkfIv5XT1UgL6IO3Enxzqch@vger.kernel.org, AJvYcCXmsDJDfaCZSXyebj9pqsbqyqEoiD9UcHXqbEiAA+OXLC/q57BAhTknyHqaifVbCAgxEVT6lALxOm+M@vger.kernel.org
X-Gm-Message-State: AOJu0YzjyqclIqYgr1FiYiQyZDYNvPRORLEiCsWRKmvJIb6zJpb0PQot
	5CCJm4VBV//9IB43AktqGIaXtT+vcbHzFnCQQKZFo0lwK/sKd8NFvD5thH17
X-Gm-Gg: ASbGnct6g+Hxqg+iF7N8Uxe0ZeoXTWYoDMlYky/bA3SBjUnzgCkUk/wBJaG8POqlp5x
	M88Rjzv8G0cRwZ0fnQ6yOBMoYY5QDRJmXTo0YZsSHrIfNcSuDbWPGBqBoKstCHqi3YKlBD5OxXI
	UFRHcKKKQWpjmCvzDJCip67IK36ZBRYnzAVQ1skUwryKsoo/81OxRcSO75W8YChi/TCdGIwYg21
	lWuTQck4WOsyheb66lz0bvtHmmqyj+vQvmJbHFWFWsW7W18HQUw1UB3P/zWq7k5paudu0fSIndE
	MU/qZu0BJzIxRw==
X-Google-Smtp-Source: AGHT+IE5UQDEPZmz9zHVg1HexRPw+nX916MaL0af3+b3Lwx4zAANpCwguQCO+mTtQcI5HF+B/XEwtg==
X-Received: by 2002:a05:6512:acc:b0:540:20e2:da6a with SMTP id 2adb3069b0e04-54229540257mr12191849e87.30.1735839921815;
        Thu, 02 Jan 2025 09:45:21 -0800 (PST)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813877sm3885853e87.149.2025.01.02.09.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 09:45:20 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30227c56b11so135006131fa.3;
        Thu, 02 Jan 2025 09:45:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUa6XjzltjgkECwvsUlUm0pr4tYxXsA+P7VuZYO1CBuiew9waESSwatVXnmg9boIVXzqDhjPrmZ+36w@vger.kernel.org, AJvYcCWqS9+YMHXZkFYCUGU7rwqJYfiqIKp1bBqfujYPI3N/9dRnmlTUFFxmesK2K/QTCimXNxWPfIaZ/8osvH+y@vger.kernel.org
X-Received: by 2002:a2e:a546:0:b0:302:1861:6df8 with SMTP id
 38308e7fff4ca-3046861cce9mr148699451fa.33.1735839920320; Thu, 02 Jan 2025
 09:45:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <32b5c286-9457-4b93-a93f-c8aff356ec10@kernel.org> <20250102171424.3644-1-lukas.schmid@netcube.li>
In-Reply-To: <20250102171424.3644-1-lukas.schmid@netcube.li>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 3 Jan 2025 01:45:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v65FutJMLr8siH4LjUHVr8AconH59Y5JrVCWwgH9DGDP0w@mail.gmail.com>
Message-ID: <CAGb2v65FutJMLr8siH4LjUHVr8AconH59Y5JrVCWwgH9DGDP0w@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: sunxi: add support for NetCube Systems Kumquat
To: Lukas Schmid <lukas.schmid@netcube.li>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 3, 2025 at 1:17=E2=80=AFAM Lukas Schmid <lukas.schmid@netcube.l=
i> wrote:
>
> NetCube Systems Kumquat is a board based on the Allwinner V3s SoC,
> including:
>
> - 64MB DDR2 included in SoC
> - 10/100 Mbps Ethernet
> - USB-C DRD
> - Audio Codec
> - Isolated CAN-FD
> - ESP32 over SDIO
> - 8MB SPI-NOR Flash for bootloader
> - I2C EEPROM for MAC addresses
> - SDIO Connector for eMMC or SD-Card
> - 8x 12/24V IOs, 4x normally open relays
> - DS3232 RTC
> - QWIIC connectors for external I2C devices
>
> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>

This seems to be a new version. Please tag the patches with a newer
version. `git format-patch -v2` can do that for you. And please
include a changelog listing the changes between this and the previous
version.

Last, please send the whole series, not just a single patch.

ChenYu

