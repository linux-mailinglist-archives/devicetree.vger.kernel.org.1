Return-Path: <devicetree+bounces-134719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3239FE5DC
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 272493A2045
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA431A2C25;
	Mon, 30 Dec 2024 12:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="REn8Y2/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E033C39
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562087; cv=none; b=TGGrsDrxly2k3+cYHm7Xe7gIvjVO2AR7v24vBt+MzAv/MJIyZUIPccP/iJIIN4L+3ZggMKMLyiHloEitlb0JOmEz80PJjw+Hz7/CkOPLm9lSZurpS4/SJT0ReRwlTqJ9ZDF+HkxTNNFkkwHmIvGHKtQ+WXcDTJHlCgFE115HHWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562087; c=relaxed/simple;
	bh=gBV2WS4ZHzZdqK6Ci6Vy4Yz2C3tqYaPFiNZVSD6ZTK0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U3u0d9RmkqXe4nqCRlFDg2/cAk3gqDCKoiNvl8vHp5QRhSpzsQPpeI2zvVpnwGQNg1nWcx/OLXkYoaisi5ovwg/poETjugeo+SYG1o83n2WWw0+25PaeyI7RHf8PecfDmjGyMdn/gaUjLuIcnlY3rdkLSSFsF6r+toV58qdcSd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=REn8Y2/v; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3004028c714so103895351fa.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562084; x=1736166884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=REn8Y2/vesXx84x5QgLGlAupl/eIYuoyEqsoz3vhgegv0AhPJloVgy3vz14dQwRbeT
         /WRdW7GGrN+r4rz52IrAPJie/UIY+TZCnVTWC0jrMxtk36MuaWrDYhDvu6TNIC+umM6T
         i63Pw/S4xCvZ1Wg2Bp83D0nb5iXhg1Tnyxlj9RJGsubf2HGgLafjSxG/QrOqHTecYKbn
         XntqVgdHaBwfIqvd67jN7aD7oAr0MVQIJi3irQYlWsG0gl8rUu0HKq/YETBGONhW4Up0
         hLUlQAQNchxhAjICeGaJc3U3w6/bdOHSVH1kMhVnQNMAg+KAvBRKUhppg4woa0iXcJ73
         DuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562084; x=1736166884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YjXNF8u6gFmP3bof4Qnz0c0Cqvunc1cPgbGWTZ/EO4s=;
        b=thRkxT9Hz3V3cH9IItXndrRdwLf69tnnjyZ2JacJ8hxB27y2cQ7xvKFsDqgyYQQTke
         GUNJm+2+AL5aNNpkp/NiGJXM77cpns+VRONvrhkWp6LtUpG/ox9P1oiH6K/qTuKws11f
         6Ts/QGKKIq5oXIMPwojIFgrxWcAEXyUQSbmIIuDmTVWU2mV71L9FSJbwwssILEBPSi5Q
         tMmF5/PNy0LchXx39snFy3dCqPXCayS7syE4BC7YZ7EeOr/TQGUYvckI/n5EwuRVwj6S
         8M5Wdlughy/gWKQHAOE9MR1OUxqb0yTDi8fLWIlgAxmWz3hff1S+rBHnS9ofLTFGPWfL
         Qu9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXMMh7Q3XCDr4RYP74ehMlsdHu7tskyQQ0t98I7KZ5iyT+30VsT5SdKJreE97p3ditQbgTX4xu/H7gT@vger.kernel.org
X-Gm-Message-State: AOJu0YyRxiQAnoifFd4SH22lCxspT7GTmCfnBppHoDqgrRosnb+h34Er
	0Io9l2VMjqKLEQp91TKXoLNgcc3kUVSCYfUe12G5hXlx13H4CYhiCB8j/79CaPk=
X-Gm-Gg: ASbGnctBhV5PnxkcHK8iy4Yl8lZTHw24FrZxauk5NR0Is989Xt3FqSWObMPK58rrl8o
	hwFskYSI/3AJJzyB3aF+37LAsUA9khSoowDaOURvAH64+iZUgTJCwLvUzIIgd55yoiD5zvhYdH6
	hqJhslK3NYVRLfcVfTyasI0R/P3AXs2u2UB9DNTFO3bfDaBln1ZwNLiBFHE1VQo4hdVQmbfpI3P
	m0Kzk2PjLD6qkfGeTQvhiD3rcuMDjaG2lTY1P/QpJzr26vejzEFRkdXDAMKEyQDKUCjY0AwXbxT
	knnjmnSW+MKzjqWmzIKHaZERwIkx0xBqoMPQ
X-Google-Smtp-Source: AGHT+IGALgVEuR6VwAjmraqK3t5VKz84isdY66XsU2c6gkzu6ybhJpLRqnsbX8hjceGwE1pfjHVNsQ==
X-Received: by 2002:a2e:a69f:0:b0:300:377d:2c36 with SMTP id 38308e7fff4ca-30468630934mr83167351fa.40.1735562082309;
        Mon, 30 Dec 2024 04:34:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9bbdesm34304741fa.44.2024.12.30.04.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:34:41 -0800 (PST)
Date: Mon, 30 Dec 2024 14:34:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 06/17] phy: phy-rockchip-samsung-hdptx: Add the
 '_MASK' suffix to all registers
Message-ID: <3dgfsscqpvlqzajjeav6oneeyae2tpc46av7hadgon5uwqibg5@ubziqwztp62m>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-7-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-7-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:02PM +0800, Damon Ding wrote:
> Adding the '_MASK' suffix to all registers ensures consistency in the
> naming convention for register macros throughout the file.

Nit: usually it would be "Add the '_MASK' suffix [...] in order to
ensure consistency [...]".

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

