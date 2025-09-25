Return-Path: <devicetree+bounces-221472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C197BA00B4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E25916F282
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5232DCF46;
	Thu, 25 Sep 2025 14:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lSPse5+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136C42DCBF1
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758810860; cv=none; b=ozzNXW6v3ePP/jUHmLFPsHN1CorBlRaISoVnCdYZIhoJJiQdQzvqcANhgTSRGNi70hXiW/oAb6TubS8Ac1XVtDttwwLICXi6mPITQqmB5PUX3QiY/ZfiYFnXgpkz3OKu6Ovuj2vAob0hXlmWndR3V55hmuJbY7qR2R/qtHgSsUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758810860; c=relaxed/simple;
	bh=Bafperz37KGVRRgmYq3qAN2sQBrGyfvc4L8Phv7qEY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GP3uBoo0RCKJuasRNvS+6kN5JRE89En5Rot8xJiF2yB+NIG6G+owKVennRAttF6kB2plQz191O32SNBWFXq6/m6Ri5IuFbBWQB+mJj3Zy6R5KcaIb59TUEJoqxsj64/75f2RQodWCNxQyog/eSGOr3uu/hMh30Q+VF0qiXeB8QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lSPse5+T; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-77db1bcf4d3so810616b3a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758810858; x=1759415658; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQHQjEm6KdWL1vc6/aoJqmYvJIjnRA6W3fpAuarwDrE=;
        b=lSPse5+Tdllu8IB6RKd8mwCho7Jzr2BNMiQtn3ePa2U4wNaexa6er1AmeAek5g939W
         gyvB7vgWFzf7ZkHBT3x2DX9tveHGALynhCnRPPbi+xUh1kWySYwcbeeYhr5aEUNliHXq
         NAWc56rFraP/a6aV8yK2igbBU+ZI6q1fQPPyKg3iMdSxRpL0eRmq2Iu/xiERaSRmvDK+
         UBrvWpOWrUpYAIuCLjRIEfYDq/XQIFKwvUx5tugZqwvnvQdSG+ZM8ayCtIpkmD501oWZ
         rA+zUD7zyp/BKdxR0JsY+SJkYC3emI5S2BqeuXSDMAxLA2UM2MPHbU6A8nkQZjpzbxIC
         TMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758810858; x=1759415658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQHQjEm6KdWL1vc6/aoJqmYvJIjnRA6W3fpAuarwDrE=;
        b=oEPSWqpvZ1aoRhx5wnMPhkGQFVjzTK1WppAVK5JGmS9v+FyiMuS8H6wAGJH2MqL8qA
         EvO3+F75+oEiH0H3jbIpUUC04d0TdvZziDfbN1e7NHnJlz0y0iMo7wJrCWxLKk6Xvg7P
         MTozu447H42Wi2+UZWD14bsjssPSMxEEWcTbb2RB2j0Kbj7OQkq+ybQmteZVeymoNMA/
         0F8ztN3Ky3ccYpp5O5k6h56723v3kar8vJnqveQ6ucJBt2Q6CODDHuu1uU8113sVCLpK
         xDGYsYKq2RpH6BHBZp5sKtOOi+aPVpFaKi2jgWrcoRINt2RN3z8a6JK5BprPEDMEVmaS
         kpqg==
X-Forwarded-Encrypted: i=1; AJvYcCWh7gBkuPf9JEqTND7k7uI5eSntCQj5vLme1wEy1JrFUU6zUcvvVwcvs/UMo5xrPGHK8yr1ysp+zXfs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9yjBtxIez5exwR9AzrDJgLyXUer3LSENJmM9dmCwYdp04AYAJ
	Y3QgSb5F7OIeXmU1OnBLPWtJJEz1T7Z71ZAbXF8MA5Kg+BsNRIYFZw0l
X-Gm-Gg: ASbGncvoLJ5E9OxVd8HLxBueKMMIZdZT/n+e3NbK0XJOxGWUKu0WATlGp9cWS9oULfZ
	g9vXLVjWUhZEOHMKBwPjP8ISvkj2Qwc4aVphc4oObg3sWjBfIV4J22QjZs1FCVCjrj3jTfMv/Fj
	KJI1msMpA2QUlNvF/BxwOdnyrFGUGZJgIUwsf2TSQhPbFcYJMMIvWcD/TW12FuTv5lhVgWgCwb1
	Wlom44twUx0Aiq7v9PBeyea3eAv4LIES7nc608JMzhKcI7Td+Wk/e+re5FsL/yb5v5aWoIWuIYU
	XdOA/ds7+uqZypaVJAe9gAGWlR5NzlqegTJaxOBVjV1cYL/zm+R/mqSg+oX/vhX23CcrCA7UWHD
	apZwnQH5VDv6gxC6wBxg6TBZwfqYyQQwLtsQ=
X-Google-Smtp-Source: AGHT+IHtHAEv8pJFUOuDFi9x9lY6fvRX5HRt2NaxDvCZUSfir5HznJYK8VHavo8T5HJ5S5KcaigutQ==
X-Received: by 2002:a05:6a00:14ce:b0:776:14f1:493d with SMTP id d2e1a72fcca58-780fcdf4cd9mr4319096b3a.2.1758810858249;
        Thu, 25 Sep 2025 07:34:18 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm2193140b3a.15.2025.09.25.07.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 07:34:17 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 25 Sep 2025 07:34:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Saenz Julienne <nsaenz@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH 2/4] hwmon: adc: rp1: Add Raspberry Pi's RP1 ADC driver
Message-ID: <3f1295b0-b637-4fe0-b141-67f086960072@roeck-us.net>
References: <20250925000416.2408457-1-svarbanov@suse.de>
 <20250925000416.2408457-3-svarbanov@suse.de>
 <d07158fc-678e-4ae4-8943-168146a58fe0@roeck-us.net>
 <e53865df-7566-4790-9214-0af875950742@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e53865df-7566-4790-9214-0af875950742@gmx.net>

On Thu, Sep 25, 2025 at 07:26:10AM +0200, Stefan Wahren wrote:
> Hi Guenter,
> 
> Am 25.09.25 um 04:42 schrieb Guenter Roeck:
> > On Thu, Sep 25, 2025 at 03:04:14AM +0300, Stanimir Varbanov wrote:
> > > A five-input successive-approximation analogue-to-digital converter
> > > with 12-bit (effective number of 9.5 bits) resolution at 500kSPS.
> > > The ADC has four external inputs and one internal temperature sensor.
> > > 
> > > Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > > Signed-off-by: Jonathan Bell <jonathan@raspberrypi.com>
> > > Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> > I just realized that there is already a hwmon driver for
> > Rasperri Pi - drivers/hwmon/raspberrypi-hwmon.c.
> > 
> > Please add this code to that driver.
> could you please explain the reason for this?
> 
> Yes, both drivers are for Raspberry Pi boards, but they don't share any code
> base. The raspberrypi-hwmon uses a mailbox interfaces to get the sensor data
> and works for the board generation 1 - 4. This driver works completely
> differently ( MMIO ), doesn't depend on the mailbox interface and applies
> only for board generation 5. Actually I don't see a benefit of merging them.
> 
Ok. Please make sure to add this explanation to the patch description.

Guenter

