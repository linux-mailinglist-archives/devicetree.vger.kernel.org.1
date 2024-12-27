Return-Path: <devicetree+bounces-134368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB9C9FD4D9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B76B51883AE3
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54DD1F37C3;
	Fri, 27 Dec 2024 13:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="DmftGsC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561491F2C56
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305608; cv=none; b=sOKsy6EjhS4bsgQMnSGoMrNRVeUAifPC35x0zS5EscadbP6sko3xhIhyCLPRCSfErDADRovNz+IZcvaQwGyYJdpN8d5ycXjMBu3T7iQHS/8E76pZSgop8gTnDJbrHxJ5qMNK+l/7SGm5eHAaEHHJTNWIKyUBwTX3rAm3tDxsAfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305608; c=relaxed/simple;
	bh=8AKGn7nMK9/Ut/Y6UeXKdpxBcWZLRuzCPMCeYqx6bNk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OEtWKhjh2Ag1XxsDh5/uOJgxiFZi+nwZ7phwHIzxMHiFuwDZBCTrjhYzUc9AWK9esJNF0qNgOjKJ6nnN5wICqReS2/BAOCp10mq25X5mHIco8GkbLaaDQwhTT51lVR4lao2IQpgb/bPfQ1+f6cvDbVVUhBVAhe1yzEMwsClhn5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=DmftGsC7; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ef70c7efa5so7053119a91.2
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735305604; x=1735910404; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8AKGn7nMK9/Ut/Y6UeXKdpxBcWZLRuzCPMCeYqx6bNk=;
        b=DmftGsC71/9JlOvnL45VxLAF/Qte/6zqFvJD5BMq7rRml5o2/X3TCwKZq4RCEnBhqX
         n3etFhlCzYf2u5xkfpjMdOge0h8MPyqAsDX8xWRcliJ9LsO+H0H5Doobh/riEDlktIJB
         +Ece7gFNPPc/XXQyvJVM8pVeBSNxSCX4sVCnJQMulxtX12sytSKTQ8OEwK/j2HrlpW8D
         HdphJlF02GgYh7il42JW6v2MDuou5ciTCFa8utnNKpqwP7vsKk6DBGvTe6F7LPgbg458
         wv0HhLUNfa/bxaNS1ONWLTvHWJPWKi34xvpX0mMcWsToeuiNAuTSWle0VqItOv0BJhdo
         Q3yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305604; x=1735910404;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8AKGn7nMK9/Ut/Y6UeXKdpxBcWZLRuzCPMCeYqx6bNk=;
        b=Win/WI4dOreVNES9MW6zAqS85r1tmGqiSvzDnsybWCnBaChkU4aHSx+JxexdfATb0j
         3debpk2hBg+qMm7pksKi0coniXBjYT3XHto13HLEzRU2EI1xuR7dvaqaL6ibEB0nUifP
         jojwHfciVyarXKWdtIBba5/cjAJJAzBizpX3dUYOAK3Jn0AOdt6DmBCp2bhYp58LvasG
         7rlLaQvieApqz6V3DocNaY2fXJzrnzJStrINrAwGHm9/rauLuIyMhimOnTF89cwic4jk
         PsXa5Y8JztZQbYjpYyWEWigOFRA0349RqYyqdOrgH58IOdyuPkpWxLNwrXFt69V534Wq
         GTcw==
X-Forwarded-Encrypted: i=1; AJvYcCWC5ZMIhKt3bh4VPzLHPUCgwIQIEb0BFgsrvmXrRwNAD65AhqicEdqmCJYjprJ8HNWHs3D1wQdJUjMg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/8nJ4Y0AUxNRJKzm0dIdYIiinjOUGEcJEpQJ6Rq1vuct74ZTT
	+ySlsOOgpF+LdaKTdYXSBHlpkALf5876f2cfRQVSldtZ+S/6qECXYgue8ocC6HaOtwmdSqQr75P
	o1tZNT1V/ylzGfINtO/IxaXl9tsqKa3f40mJ6Sg==
X-Gm-Gg: ASbGncuJqRZAt+pUQHI6ie4h4Kpu/ygQvccPEEnqrZcpnK+3xKih0+DX+Prly9ACcLh
	dnQS+qv0Oq/4989VnchEVpuj5+Q0KO2N211er
X-Google-Smtp-Source: AGHT+IEGt6OfQFeUdl2dnCUTbJna90fZoStffuKdb/amHUvkirE0mXYEtS1dYZ+9PMXG96Ot/QPVwvp+ateTGZX9k4o=
X-Received: by 2002:a17:90b:54c6:b0:2f4:434d:c7f0 with SMTP id
 98e67ed59e1d1-2f452e22c43mr49131562a91.12.1735305604727; Fri, 27 Dec 2024
 05:20:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com> <20241211-rk3588-hdmi1-v2-3-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-3-02cdca22ff68@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 18:49:53 +0530
Message-ID: <CA+VMnFxFBxMXBCiTfJHuMxB1U-zAqBRxeBxMRQWWCE7drr9MgA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add HDMI1 node on RK3588
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 11 Dec 2024 at 04:37, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Add support for the second HDMI TX port found on RK3588 SoC.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-6tops-modules

