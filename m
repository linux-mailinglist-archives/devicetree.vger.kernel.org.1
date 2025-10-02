Return-Path: <devicetree+bounces-223391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A3BB3E59
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:33:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02CAF19219D4
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6436C310763;
	Thu,  2 Oct 2025 12:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nt6BcQ8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D742310624
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759408379; cv=none; b=lMC9e6yxyVBvJOf9EryVTjb/xTHUtI15AMmKQBnCdIS1qTmsPQuOq3/jpZcG3L/KYVhO0WfrBvuqlz2LSyusktD7g5admF/sCd0wR6ROh3hGxAeKnaJRB87V6S/gRsaA2YXVwhxOsJGn9+VXT2UZ8YGAdEZPgooZ1lv7i56dkpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759408379; c=relaxed/simple;
	bh=NQfmquux42wuhxo0BQMxiOBKNdj5p01NoIvPSKU6GnU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RxLO3ckzdHIrB/OS7wLjUzHHP+elXm6jt4KUEbh/qD1pXrl5E9wF8v0zR5f1Q0/6ODth6bAscU4jS1IbqM23QDg+zxIP0i2mZCEN7IUqMmmhKbc2jSTV2H24Ur311+eK8duzVXKWpx1Vb1gfW7rqcezYBYbujLNJeGgmOrCtvOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nt6BcQ8s; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57b8fc6097fso1273450e87.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759408375; x=1760013175; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JfNC3Xb4lpD24hJLVxldrPKbuiKZxGen+G2CEMgTUcY=;
        b=Nt6BcQ8sMGj5OM919sNRN5ivkFshbSc7BLLgaW181Q5WwXooVwW2r33rRN0QTu7OJm
         8t0X5tOcTUuothf/DCnZIFMvySy3v0+G3++bx++9XbDuvDz+/9jB7mtKnt5xtf7irFyK
         Y2FeZA5pNEWWSOMzejXFreqM9DVsSiP0TMCjrLvoK/GStXaoGtF+AOWQ+0dn8Pe/sdGr
         HTCttIqI5FSDqC17IHWL3oxn0eJbws5ZbtMqwuk7EjOyxaXqnX8ASUVqX4md9G+Eijn4
         oaxjIhqUNXXAO8NT+6NoNFfAds+suAu4MYCiesOwJQ6/ru9OAcJt19qEqs9/g9RkW2uI
         RKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759408375; x=1760013175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JfNC3Xb4lpD24hJLVxldrPKbuiKZxGen+G2CEMgTUcY=;
        b=Ztan3X7WNok1QXOD10wdC980C03noqudHomIyL1UiQ0CG2l/Vl8f1WoOWeD5VTJcD9
         V46pzTFBcS+Rdm3FxSiAf76ml/Am+JdxjzXWnxHysnirXiQ0U6pdat1I6qq9aBStV69O
         OnGd9kgFyGiJttSnYh23cW0iXzJq4a+BbSeGLQBFMsMNkMd2SthiifuaNbFsauJVVCLT
         lb6cbbAv623f4gl2qsoFJ1kMwEi8reBuRLmKj/yQec6l6A4Fw4kwSPiuJlwLXg7SQkX6
         AB1PkbD+7tuT/j5n23nEBqc7ZPabhzvKjkg7qOQ3AGCs8jJOeNFNI5NVLNTWLRwadyXS
         v9EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyCHQkXJ/g7D4fT5aAcTtZC4Sqd9yg7KJ0OVY1+h1MmDEmKQdrByn1umLTHgdlDSJCR/PCeMqRfM5h@vger.kernel.org
X-Gm-Message-State: AOJu0YxbG6fTPS6a1uXVZhLW//yj5CMftpmuSIiEdWp8mNUbUniq+/+D
	8/GuvJ0bPW/W8dZahYuC3WQG8RdDql+bpEp7ztUads2WacKQko70ZmOv
X-Gm-Gg: ASbGnctkKSEYc3RWcwarnAH5Bp2TH+PT/zVF4IshP6CpiZpJhHrd8rfav8Sa+I5CeAN
	t1/gq/09CD6GJvi+yNUwySHeWTKyod7pHAvPtEwPogOkDgNR028P3FgWD2sez0V6226axapmxNL
	xpXnknK0zGXxWU5rkxsrFohfGkddXW4VTcB213hvO1vZ5N+XNrKSPPWYsv36OI3LZaFyYD289La
	vxzHhij1Y7M2GRo05XoDg/Gv4vQBFJNExneByIXE1GzKbTEDrXhswlFp+0RQSvQo0Mf9bePCo0e
	BQyN48eLkV1+SM4yE4VQTFyrK8WtOTHtzXouHa3/SHmiw95gMxdhGuuhlvb9QLMXYDom8FP4tgD
	Q7YjLWm54nMTRSEdIHRXbOjX71NG7NYq4O1iHOf9PwengvP+pfo21Xnd/OKPYS/9pPDpjHYgIO9
	SDuIETF2gNBOAicuRl9By+2Z2aquG6NxNCdc/WTBE=
X-Google-Smtp-Source: AGHT+IF18yTu4umAkjA3/Qx9zPqlomJTIYHVobYviXEIsSwMeDgT8lj+VIPft3Jjzw5OnhnlzajAlg==
X-Received: by 2002:a05:6512:3d10:b0:55f:5685:b5e9 with SMTP id 2adb3069b0e04-58af9f0e54fmr2524260e87.8.1759408375230;
        Thu, 02 Oct 2025 05:32:55 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01134a4asm802635e87.37.2025.10.02.05.32.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:32:54 -0700 (PDT)
Message-ID: <609ec2e6-c877-4fc5-95b7-935ae2549b3a@gmail.com>
Date: Thu, 2 Oct 2025 15:32:53 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: am33xx: Add missing serial console speed
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Bruno Thomsen <bruno.thomsen@gmail.com>,
 Judith Mendez <jm@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 Arnd Bergmann <arnd@arndb.de>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2025 12:53, Geert Uytterhoeven wrote:
> Without a serial console speed specified in chosen/stdout-path in the
> DTB, the serial console uses the default speed of the serial driver,
> unless explicitly overridden in a legacy console= kernel command-line
> parameter.
> 
> After dropping "ti,omap3-uart" from the list of compatible values in DT,
> AM33xx serial ports can no longer be used with the legacy OMAP serial
> driver, but only with the OMAP-flavored 8250 serial driver (which is
> mutually-exclusive with the former).  However, replacing
> CONFIG_SERIAL_OMAP=y by CONFIG_SERIAL_8250_OMAP=y (with/without enabling
> CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP) may not be sufficient to restore
> serial console functionality: the legacy OMAP serial driver defaults to
> 115200 bps, while the 8250 serial driver defaults to 9600 bps, causing
> no visible output on the serial console when no appropriate console=
> kernel command-line parameter is specified.
> 
> Fix this for all AM33xx boards by adding ":115200n8" to
> chosen/stdout-path.  This requires replacing the "&uartN" reference by
> the corresponding "serialN" DT alias.
> 
> Fixes: ca8be8fc2c306efb ("ARM: dts: am33xx-l4: fix UART compatible")
> Fixes: 077e1cde78c3f904 ("ARM: omap2plus_defconfig: Enable 8250_OMAP")
> Closes: https://lore.kernel.org/CAMuHMdUb7Jb2=GqK3=Rn+Gv5G9KogcQieqDvjDCkJA4zyX4VcA@mail.gmail.com
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>
Tested-by: Matti Vaittinen <mazziesaccount@gmail.com>

(Tested booting on Beaglebone black with a config and kernel command 
line which were NOT affected by the issue. Well, prints do still get 
through the UART to my minicom, so things seem to work for me after this 
change as well :) )

The change does also look Ok to me.

Yours,
	-- Matti

