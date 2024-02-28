Return-Path: <devicetree+bounces-46968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 724CB86B701
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 19:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B29F2844A0
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 18:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9F340853;
	Wed, 28 Feb 2024 18:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d0uY8R12"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4984084D
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 18:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709144302; cv=none; b=Z6Pbr+Tk2izvVYPzINqOuprsR3vpy3K2jxu+m76wdSdOgEorWw6kYntcQ1A7t74WmAbp+Qic9gGuXh518kkQGrPgD0WUo/O9PH2pMH9iKwTqIVmPydK/zjof66RWJzggHGXcLi30Z/ntmOtQHJtasEnWqXirfer0lMLi4ZqhDls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709144302; c=relaxed/simple;
	bh=gN6UNzSImlDquC10b3CWfwkTQgabC80ehaNwnV3SeC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U57f+ZPNQ/zBhSXb48a8dHVGYLf/PpxYuXJtzBa3ZllP+2+MygmcaEfT9bVrwINqlMTw3V4HSUKDyogg9Q9HRjrUKOUtzqNalyMvCdX8fMIliXR/BzwYEY9HynF+mwtUaXKYxVS7R27vpJZIgXS5HK3LgWMIeDD2h0gRHIUyr9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=d0uY8R12; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-365169e0938so159265ab.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 10:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709144300; x=1709749100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yMuVBDlnhpO034F2/q+tE22z1XBw0OPkVpUXz7Iw1ik=;
        b=d0uY8R12ZimQWLvKQoWC1kwK/RPVOYYFcrNTB4AakyXjepRS8H1ECQCXpAMxGWhzqr
         hHpPrpn1ydb0c8Y3BZVLjqjDp9CNFyZdXREe3Wc4OHev1yJxU/Od5JZxeZqWJfw3qzv7
         TTI+6cjPghR2yCRd7ODK2z9CjTL/vpS5HK7ZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709144300; x=1709749100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yMuVBDlnhpO034F2/q+tE22z1XBw0OPkVpUXz7Iw1ik=;
        b=lvwInsSRHS4+xCsvKYL62YRxLHClJWrHEFFQhhoCrkDTx8wTfl7YeU3F1YYMbhkUBY
         +ztWFRzxaKVFZUj6kfVlmMYGTbbLNA7CIZL0Ij74ewk96TPzvmdC9dl6c/ieoiIXkc+1
         PiYV7w9fTvlVh9fXBvE63/CjockwCYOn6mTIXoBcwzikZEuJOWH0USgBjN/sclp/PRVy
         J0aWmZqI7HvLzxZ1GUHenJH9vdhgumnw9qXQZD+1WWKInZiCAuguDG7CAhVBUMZyhqIE
         i/MOEXrz/bXFDfNoEfkm9o6yNL6kvECgPhfOrywWCM3bqKasepVxvyS3669abGoDgJEB
         Q48A==
X-Forwarded-Encrypted: i=1; AJvYcCVlr5vLuSwpAmTf/9VmheqYazHmuGlgUyoI/nP8zeIDNNofqYgX1ZbVB/xddX0OBg7xjchBqedZiRQd9UE/rjzbW2y2hYCCszW9ow==
X-Gm-Message-State: AOJu0Yw+LDB3gBly4UIroi7R1fmgndkNmRJxtocibLQ+GOZxbhlX/Jpx
	dVifyq2x63oqSlePflXF2MuNgezcPk56Sk5lGCJHpefx9AOlKIigxdKQe35xyQ==
X-Google-Smtp-Source: AGHT+IHXEHGYeHKTpMNJ+KuzBh/Bght5BJMrKbIQmxnIMu1FTfUkGMBXH786Efps00aZM2tFe5bRbw==
X-Received: by 2002:a05:6e02:1e07:b0:365:102a:ee10 with SMTP id g7-20020a056e021e0700b00365102aee10mr154842ila.6.1709144299900;
        Wed, 28 Feb 2024 10:18:19 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id a24-20020a02ac18000000b004747f3fc39asm1951147jao.160.2024.02.28.10.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 10:18:19 -0800 (PST)
Date: Wed, 28 Feb 2024 18:18:18 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Helen Koike <helen.koike@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/8] usb: misc: onboard_hub: rename to onboard_dev
Message-ID: <Zd946sKywJNvIJq6@google.com>
References: <20240228-onboard_xvf3500-v5-0-76b805fd3fe6@wolfvision.net>
 <20240228-onboard_xvf3500-v5-2-76b805fd3fe6@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240228-onboard_xvf3500-v5-2-76b805fd3fe6@wolfvision.net>

On Wed, Feb 28, 2024 at 02:51:29PM +0100, Javier Carrasco wrote:
> This patch prepares onboad_hub to support non-hub devices by renaming
> the driver files and their content, the headers and their references.
> 
> The comments and descriptions have been slightly modified to keep
> coherence and account for the specific cases that only affect onboard
> hubs (e.g. peer-hub).
> 
> The "hub" variables in functions where "dev" (and similar names) variables
> already exist have been renamed to onboard_dev for clarity, which adds a
> few lines in cases where more than 80 characters are used.
> 
> No new functionality has been added.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  ...-usb-hub => sysfs-bus-platform-onboard-usb-dev} |   3 +-
>  MAINTAINERS                                        |   4 +-
>  drivers/usb/core/Makefile                          |   4 +-
>  drivers/usb/core/hub.c                             |   8 +-
>  drivers/usb/core/hub.h                             |   2 +-
>  drivers/usb/misc/Kconfig                           |  16 +-
>  drivers/usb/misc/Makefile                          |   2 +-
>  drivers/usb/misc/onboard_usb_dev.c                 | 519 +++++++++++++++++++++
>  .../misc/{onboard_usb_hub.h => onboard_usb_dev.h}  |  28 +-
>  ...ard_usb_hub_pdevs.c => onboard_usb_dev_pdevs.c} |  47 +-
>  include/linux/usb/onboard_dev.h                    |  18 +
>  include/linux/usb/onboard_hub.h                    |  18 -
>  12 files changed, 595 insertions(+), 74 deletions(-)

This does not rename/delete onboard_usb_hub.c. With a rename there would
probably be an actual diff for onboard_usb_dev.c instead of a new file,
which would help with reviewing.

