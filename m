Return-Path: <devicetree+bounces-221103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDFDB9D384
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 573564A34B6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C52F2E172E;
	Thu, 25 Sep 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JXtr+l4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953F82DECD6
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768173; cv=none; b=F5FEfZCGK1vxiwbeIU3giJbkmPqYzU457SoqZRLjeqNW3peojTsMG0GAHjgdy8TA9l8KZ2wtKQKHef1c6pEp4Uiib0t4UkUyLL77ygOLNyZK2QOKHqtj4Fex2qOK/JUGtkDvHysYWkYOqxthHCcVls0dRHWraEZ71trDZG8tKlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768173; c=relaxed/simple;
	bh=6ha9Kr3cHw1wO1FCl7TwD597fRof4tQ/XQ20AsKCc8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=um1Mfs5ZZrwTcep4oPIZhd/A4Xnmh574xaT54pXfQDe/6KwYUMJT6D/FLIE/7QCZ8A9TFXC+cwuxIkQNzqqwzwduYaoGPu9JX8g42QucT6xh0P6OGqWZURrRIt2rqvUT1EBjcIdQC+h5c647M6dhaa8gcz63VPbKVNavuTF+otU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JXtr+l4R; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3322e6360bbso502415a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758768171; x=1759372971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H2hXuCp7EQSu2VY5F9OuSum1bbz+fDfBhTmNsUc96kw=;
        b=JXtr+l4RpD9JpQLtHRsUf+3yPB/CAR7v1G3esQ24HZqo6FfF3JIyUtKQuVG4Y0eWcg
         OjpR9OyXwSsu3dSnKumU3fkeNDV9yKRAEQm7joxRqHhUKj5lMx0Qx6Rxhd1dzNXWDF5O
         wKZNpte2zmXZkJF5k+zKznjqD5mENwfp+uFhGvv/XusbmgVszwjhQe7mnJIzRjJKm5up
         lFN+5Z/AEUZd6SFgC0ERpmVrGMVgbwHJKujoW8LAtZ6QCkLbjabRUlneGx5tBuDuON1E
         zAeWSJ4jOqZLQEu+QIHPuMPUBLkmGuThxMEq5Z0X+qfGJbZzQ/ZHL6flbHG3lwaLCx4T
         lxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768171; x=1759372971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2hXuCp7EQSu2VY5F9OuSum1bbz+fDfBhTmNsUc96kw=;
        b=tuPhAkeGhwiqo5/Ka+V68qefvmMHjfZJlUrETcHT59fn+7dpC0KO3h2JQBQjcOueZA
         li3o1bMIttO59sJMT0tBkc6e4KS46FC4kf2h16mZy984aIOWB2HWGEU3dOc8nWYPp+mE
         G0g3ZG2dENHIYa6Be6xnFZpcCJmQVnEj8JEKqhtTCBSdTq63NmFp1GlLlfFI8SLUuVd9
         1boKvp/nOSMuhflVMjF49Z+vBIBCr7jhLP3YJumskyMsnxHTclMZhmyIUcpDOqW5wbT/
         rYg7DSLbWiAGd6hT0eaCn+3yDIsRF1gwjZIK9eDhzAhEkeGKMxlWiifqzn3qIm13kFm7
         6Oxg==
X-Forwarded-Encrypted: i=1; AJvYcCVMPpraqqkVQyTU8xydA/ppKGu3CYip/eWLEa7a8zMFar1a2oJVLwOufH9WrrY+g83zaO4jdOY5bQKw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4i/XSv6qCXGsoF9dJT1tN1kLt+L86AniPnozRS+ia/QscF4fe
	mGXT137tTXzqSLf+znrRTpRUpQDj+lAqa5jhWwztAj4nidztrVuVgOqi
X-Gm-Gg: ASbGncuewYhNmRlYjVxfupvMYwsNZcNrZ0fxinVHmCSNiKuspdpfRLeyqyGqCfFaEax
	jzKUgTtL6qH/I6DperbeZnuXV6QJd1HodoVNIuf78UQdtv6wPWGW6S76JDBxPCOOxE50SRifO0W
	iSjO2b45fTCdyQ0ALg4twoz66c/CfwNvEu+KagxLBqIr3gmmzzw7hrWlPF6oJhFie1hgM0hZPYc
	5vVbNa3y1D9rpcnVYhWGnHbjX0ttsOiGJq+8b+U4iv89AV6NU1IhW1+v+BxtTdxG0nBDoUE3yy5
	MTlMnOqu3FelMrFkohUgkEMTqu/ebD1dNvhqCw4LqnEhsoPJCOaoiGqLM6QKBKxqEyG+5RBNhSY
	OIjycClFaZAqOmjDWfMGQ3c6aJNcXPSrRqmQ=
X-Google-Smtp-Source: AGHT+IE0G2axEK95LZpQCj1blNLHLFhQYEdYLjR6DblWy6INXdm/D+7lSNoW57qRiV90T5B2V8ID1g==
X-Received: by 2002:a17:90b:380a:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3342a306014mr1784771a91.36.1758768170707;
        Wed, 24 Sep 2025 19:42:50 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm525656a91.4.2025.09.24.19.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:42:50 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 19:42:49 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>,
	Saenz Julienne <nsaenz@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH 2/4] hwmon: adc: rp1: Add Raspberry Pi's RP1 ADC driver
Message-ID: <d07158fc-678e-4ae4-8943-168146a58fe0@roeck-us.net>
References: <20250925000416.2408457-1-svarbanov@suse.de>
 <20250925000416.2408457-3-svarbanov@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925000416.2408457-3-svarbanov@suse.de>

On Thu, Sep 25, 2025 at 03:04:14AM +0300, Stanimir Varbanov wrote:
> A five-input successive-approximation analogue-to-digital converter
> with 12-bit (effective number of 9.5 bits) resolution at 500kSPS.
> The ADC has four external inputs and one internal temperature sensor.
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Jonathan Bell <jonathan@raspberrypi.com>
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>

I just realized that there is already a hwmon driver for
Rasperri Pi - drivers/hwmon/raspberrypi-hwmon.c.

Please add this code to that driver.

> ---
>  drivers/hwmon/Kconfig   |  10 ++
>  drivers/hwmon/Makefile  |   1 +
>  drivers/hwmon/rp1-adc.c | 301 ++++++++++++++++++++++++++++++++++++++++

Also, this needs documentation.

Thanks,
Guenter

