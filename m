Return-Path: <devicetree+bounces-89577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BBB94221C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 23:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6E2E1F25B30
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 21:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9DD18E022;
	Tue, 30 Jul 2024 21:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RBeqcwWR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4B18CC16
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 21:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722374356; cv=none; b=VUfd2l+kOFeaGV5zccQrGeDz62Ib+wZxTYbfItL2d2p2rz0RRS0RYcaT/srpvhnI/5UkLCOjkuwoZK349WpnV8MXZ1/A7uYS+uQj6Vv9zNhdGMOSQaQuqO8KDtMIfZ1N2Ws9FGxrApzoZxbj3Ri4YCUPNyOXQc4Me4bK3yByL+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722374356; c=relaxed/simple;
	bh=DIxMarJsBAsZLWNoPUxc2mcliNrW3Qg+0wlavW/inmI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iVEleGuqihxohkjCPRSZ5/JJ4gEvbSZSycU7ZxscOpBd49/Tx4T2fxWboOnqHUMLB8S+mIxrkFkk3ZPxfHKUnUf7rXDeQeRCnDChDw3mFVcS9hyxJJ0RnhwGAbo99rb7WvoQuGULFgyzm7GRwKgQbSMuN7usFSKyB8SkZW4CdSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RBeqcwWR; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2cb5789297eso3142007a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 14:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722374354; x=1722979154; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MdIkd2pe0a3xGWOfFhFwChwsMO18vyV+cxJRBo1n2IQ=;
        b=RBeqcwWRNnMl5wsUmcDKe4ArFdAKg0IZEwUvRuK4L8TyDd9DGYYcxFcPOj9YEE++Pw
         6OIFqJOHUcVuzobmgQzP0LwbxmOpCdCFnQ2Pq4f9UzZLU5MbZ3/1mTDyHk9Kpoz9q2EU
         +rShoAaBcsAxe4Wxgxu6XptBn+JYXc2G5+BLxmm2fT1bHqQsj+ZkzgJYTw+A82QLAx+t
         VW1Rzyr8E0MsfdhUMsy2e200GOfqv3Z+V5iXdJVDvvf502M1n92+rEC/EEKt9Qal2NrF
         YSsOn7q+R4qkTlt5w7R6PrwlII4fcQ0qT66pOIFilqVyhr0giDP7G+RkurqU3tWQ4bj5
         oNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722374354; x=1722979154;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MdIkd2pe0a3xGWOfFhFwChwsMO18vyV+cxJRBo1n2IQ=;
        b=Rj14Shw//IXMRotw4korXaxsENLPnQNjgop7RkOnIQzOtWE+Ur9ZeQm7Kdc0aLxQLQ
         DyzpWUwt5UvZn2h/+fIRWARd3U1+yJ1EbVjGtp1DWVR3ATkrSNHs6lTIYATKVea3y30Z
         kofA/qqdvXQ0mDoWL+aZq+YuAv6BVBwgAbnXQp7HuuJ93zW4QUYvCa0V7UdzAFBwyn0y
         ZjQ35IrgrtKK97CLfsu76in8gdVQFcywX2mAXxt5+zsigkDyq+NNFcerk568nCqm41A+
         t8sJxsMWVfBvhJlWvD9OK3TalAGEj05anxwU8UIbCozbpHUKhRu00BAzy91JtShC/mm3
         txUA==
X-Forwarded-Encrypted: i=1; AJvYcCWWvBJmvxgSfC3IwQ6B5+qh0dt58rkqVsNmWnTh+wxWxQ8Q/pNPDjCaCzNatanS8tbFyV15O9TOUZSgm3Tt64EY+qp6/57kEBQSxg==
X-Gm-Message-State: AOJu0YxfSmAlzF8zaM2j/RcUncVyHL3f6ARx50Lpit97d51xnLweRawq
	5m+2NgG4nIvnowibHEtZ+bC3BbolN2I3XCMmiy9Wit1ohiBivjW3Rz1MGrNPGMo=
X-Google-Smtp-Source: AGHT+IH0pxifqw1gkvDTkAWMSwQ+9XO630EomiwDVY0jejimMBKfIGwo7NNOWI0vlmyhGje1eiqcgw==
X-Received: by 2002:a17:90b:388a:b0:2c9:679d:78a7 with SMTP id 98e67ed59e1d1-2cf7e2073b5mr10869519a91.25.1722374354603;
        Tue, 30 Jul 2024 14:19:14 -0700 (PDT)
Received: from localhost (75-172-120-197.tukw.qwest.net. [75.172.120.197])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb738bb33sm13295415a91.4.2024.07.30.14.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 14:19:14 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Tony Lindgren <tony@atomide.com>, John Ogness <john.ogness@linutronix.de>,
 Markus Schneider-Pargmann <msp@baylibre.com>, Uwe =?utf-8?Q?Kleine-K?=
 =?utf-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, Ronald Wahl <ronald.wahl@raritan.com>,
 Thomas Richard <thomas.richard@bootlin.com>, Thomas Gleixner
 <tglx@linutronix.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>, Dhruva Gole <d-gole@ti.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] serial: 8250: omap: Set wakeup capable, do not enable
In-Reply-To: <20240523075819.1285554-4-msp@baylibre.com>
References: <20240523075819.1285554-1-msp@baylibre.com>
 <20240523075819.1285554-4-msp@baylibre.com>
Date: Tue, 30 Jul 2024 14:19:13 -0700
Message-ID: <7hjzh260j2.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Markus Schneider-Pargmann <msp@baylibre.com> writes:

> The driver sets wakeup enable by default. But not all uarts are meant to
> be wakeup enabled. Change the default to be wakeup capable but not
> enabled. The user can enable wakeup when needed.

In addition to the user enabling via sysfs, this driver should also look
for the `wakeup-source` DT property, and enable when that property is set. 

> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>


