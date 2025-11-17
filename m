Return-Path: <devicetree+bounces-239523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1D0C65DE0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A3A803491A7
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0BF1A9FB5;
	Mon, 17 Nov 2025 19:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bb7vhjgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968BE30F81B
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 19:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406054; cv=none; b=tahMVnHvji8RYzvut8bfIiJPwP4fMWzjMdxb0Er6+f5F4JlbFTHq2EOFyVKg5+n1l99alFJ+gn69scYU+UG2VJeHHxap9Jfe7fplYzaft65136ja7bnHSvOzeLysBGuJI6hpD1NXFp9JOwj9DevhyvP4F2LN1GSfjFCNiBA26o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406054; c=relaxed/simple;
	bh=9LwQ8cgiBx+GR9gi4Ze2NRYHzMsmpVYF+u+bBwx5cCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TFBSjh8mEy+YV7055T8gGxBuXku7D4cIBHZR1UHMpIRv2du3ZHSGxNg3AtiKIZacUVK2zmN/5jwzjKMaWMqtTydd1ZeK7i8CQKAmebCc5B8+P6MlAn+gbXJyMyv+0i77gx7odKT3GASFNfrTF47TdYEwbsnvtcSQ8KOlHNPILmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bb7vhjgo; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2980d9b7df5so48415785ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 11:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763406052; x=1764010852; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0lS2cED24LXASEO8Kaw1E9xKUmdy8WEPj1E8PP+Wtk=;
        b=Bb7vhjgo8i3MdNxVG4EuzsP0kY56sHhKC0hWXy3SNDE+0Ky7g2//Vfq9gp+Z3YGBG2
         kEV2VMszuPQ4nQazsSKgdPOTiRGD1zm95jdORpTJBag6XwmEn5c2/HvrxvuQ0/2Y921F
         UvQBWH0YZMZjhyeFp2YU/N52BH0iW//+scsr+miVtegB+9hZP+42GsqTErMJdr37zFTf
         YF7gzWQjdjmNsm/SlxP/4ZKN6wnkOMpf8uEmxEjzhHoPjE0GreCvD45hd39nEQskXra/
         bg/GnRKMnZp3vn2z/u0j8s3BNDcw8sZ4BbHamAFyvnzIlSksGSxQ/4P1O7k3ELztEwXd
         9h3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763406052; x=1764010852;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H0lS2cED24LXASEO8Kaw1E9xKUmdy8WEPj1E8PP+Wtk=;
        b=OJcgwY1aYNWUCGuszmoLXESy85KaTrOzxqAULttM0OCacd0qGB8pfIDYUBWrNlSmXm
         bCrQW7/+IY1nglI1JR+2RVWH6exGaQ5RF/IPnyYbxvx/msAqpTKDuhaqczHnsQhhAK1n
         TES+1gQ4qwS93kWqcFInhBK64Qw+Dk2GilgCwKAgPRNka3oMHaeoeH7dTYuDfrMQjS4q
         b8Qf+v7ksLNfmp2S3zq0QMOwx3aiSmlD8tMTv28eRWVYtjFCosbojwawd1Y/8/J0xtld
         s/27PrRSc8m8YCazY8gjS6CwISQ8Cnk1VX/Fego085j127fzyD4XseVVCvo0RAuG1p9P
         h1xw==
X-Forwarded-Encrypted: i=1; AJvYcCU37YDd3dWqBin2VA1ngmyOumDVEsFuxtW9cIZI38O7so/Uxsp6lFaYcdUETDjblQ/HHrE7rZtiAYDa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4auWYwHqemIcigCCVJOMPVJMEWkb0a5ZIcgvp2H4QZVSnST1R
	EX+b4VVeITRjEvdvtGfIdb2CkCqjVMcJeq8oj88Kqd+UZY7Bcx0jw+C0
X-Gm-Gg: ASbGnctGOMBEBGtKKXVR7ZOWMRril1j3LAS+fwC/VYMIJhVJ7Kho0pdCsB85XDGF1MH
	/qnuvk1keb5Xsz6JSLdf9YnfinVZEX3IGH+yLp8n970+l6VGxeouNq7R8RWTM44IWVtAo7GLRr0
	QUr5p2KcoqxWGjxJx09Wc7TzpmOvH14yZpCkh2ci3cLYD1KANu3Vhqm5p3RGPFWzfWAd7hDYyqr
	ghXnLNNfzMzRNkfukG6hBR41NH5am8J8kQfNbAr5tJYyDmqjzSYwlGJKxfYr4GTfcExSKNFQl1j
	L/jNgNgQ/7nqtaX2cpJbz3E5573DPRscKvS5x9lxswIofaooSyhtw7YjZ3tDDuvHhCYL+K8Sh35
	GxBgPGGRPasaKt1xHXVgg8jhT43Da3L5ooRc4ckxZLUQ18Wt6aNhbO4jZD9wmv5pNlPOpkW+Qir
	i0N0x4Ab6c0l21rdmkm+rUE1fY+QFy5CpyC0REdOA6aFjj
X-Google-Smtp-Source: AGHT+IGDVNZOalPoeGLRx0StV1WyF6OuSXplI/tFFH2YjaxRb6M+ZouwxCgXlyJ+r8uHMpC01NlQdg==
X-Received: by 2002:a17:903:198d:b0:298:2af7:8d26 with SMTP id d9443c01a7336-2986a76a26dmr169206325ad.54.1763406050080;
        Mon, 17 Nov 2025 11:00:50 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2376f6sm146281525ad.21.2025.11.17.11.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 11:00:49 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 17 Nov 2025 11:00:48 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: James Calligeros <jcalligeros99@gmail.com>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Neal Gompa <neal@gompa.dev>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Jean Delvare <jdelvare@suse.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-input@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v5 06/11] hwmon: Add Apple Silicon SMC hwmon driver
Message-ID: <7a445358-ce9e-4180-99dd-1a771c8ffa98@roeck-us.net>
References: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
 <20251112-macsmc-subdevs-v5-6-728e4b91fe81@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-macsmc-subdevs-v5-6-728e4b91fe81@gmail.com>

On Wed, Nov 12, 2025 at 09:16:52PM +1000, James Calligeros wrote:
> The System Management Controller on Apple Silicon devices is responsible
> for integrating and exposing the data reported by the vast array of
> hardware monitoring sensors present on these devices. It is also
> responsible for fan control, and allows users to manually set fan
> speeds if they so desire. Add a hwmon driver to expose current,
> power, temperature, and voltage monitoring sensors, as well as
> fan speed monitoring and control via the SMC on Apple Silicon devices.
> 
> The SMC firmware has no consistency between devices, even when they
> share an SoC. The FourCC keys used to access sensors are almost
> random. An M1 Mac mini will have different FourCCs for its CPU core
> temperature sensors to an M1 MacBook Pro, for example. For this
> reason, the valid sensors for a given device are specified in a
> child of the SMC Devicetree node. The driver uses this information
> to determine which sensors to make available at runtime.
> 
> Reviewed-by: Neal Gompa <neal@gompa.dev>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Co-developed-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Janne Grunau <j@jannau.net>
> Signed-off-by: James Calligeros <jcalligeros99@gmail.com>

Applied to hwmon-next.

Note that I can not apply the devicetree patch (2/11), presumably since it depends
on the first patch of the series.

Guenter

