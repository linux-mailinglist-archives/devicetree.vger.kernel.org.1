Return-Path: <devicetree+bounces-51079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295D87E212
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 03:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 915471C212E7
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 02:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BA61DA58;
	Mon, 18 Mar 2024 02:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b="by/cq4iX";
	dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b="ak2fGyJp"
X-Original-To: devicetree@vger.kernel.org
Received: from gw2.atmark-techno.com (gw2.atmark-techno.com [35.74.137.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82BBF9C8
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 02:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.74.137.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710728159; cv=none; b=KXwZJuVZWEmuIQDqqqPLCQijgDLeGfabhKK1p7lghjJh7Y6Moi1/s3DeJ+1PjOj8q3t2Y3O/E6T9M/u9ZulYY3w4CsbSG5CJidDCbdyh6BSIQFKlFZRWE3cl88+FpsiPfLX4mXuDVUf/nr2T4QLzEuUfraYFyepJWM4r7Gt4pf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710728159; c=relaxed/simple;
	bh=jIv2QeeJVYaC9+Bza9LsMgEwMk6QP2pxph52rQ3Solk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O6OXCT6GNXUfM2OTd2aW5jfWNXGXxST/BB1bE1qj/vwxY0OqTtYNvWx0ybCHYU+Vyxevrq8vz8CCKrFK3HuTMHT+5F7yiwKNuREjVNFFMrIDZcEfU9Sw8/DafUfCUk+CGJxePx4TC0TuPm2y+7jJmRnVbkMDKVg6fzdpWtI4d0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=atmark-techno.com; spf=pass smtp.mailfrom=atmark-techno.com; dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b=by/cq4iX; dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b=ak2fGyJp; arc=none smtp.client-ip=35.74.137.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=atmark-techno.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=atmark-techno.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1710728151;
	bh=jIv2QeeJVYaC9+Bza9LsMgEwMk6QP2pxph52rQ3Solk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=by/cq4iXu+dCYTw8ZSEZjaQIFZZEBsLF5xZrkcpQ/iNsAWutgfDYN3LhH1ZiOrU3p
	 tSnHzl7COUUtwFOcO4s08RSopgeN75+0Vbh5CjMaRYTRVPz4tbaOUjnYDVC08Ud4AG
	 WXtw6qyFhVoVBAYv8wYDPLYfM/yoXVexPDBBNCGgcqRcIi3pWpiBp1bmF6CXFO+xCK
	 P4r6RBPu+3+AIFjE2zd9ci1oKCU0jMIMVkC4vIgQ6dBNEhYlGQ5gEEfOBwBHpV2HHA
	 L5/MLmLGf6wx5OBtU8BU3SiX6bU65MlZPxLUIt5tOT8hlijCCNq1lgORg56ky1GzGD
	 n3yFh6waS7H/g==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 65F7647A
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 11:15:51 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=ak2fGyJp;
	dkim-atps=neutral
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 057CE96A
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 11:15:50 +0900 (JST)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-1dff9fccdbdso13138775ad.0
        for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 19:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1710728149; x=1711332949; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xZRLjO7yES26IA5YTCwawjya15G39VD0oILYUFB1uhQ=;
        b=ak2fGyJpDNiFolycHx4ogCk9+RcToZ+fydmfJL6ykRf/l8AzWhyY8bDUjYup0Ta0DW
         U7cq8t8UUqUiQSuBT9wEQ3fGcP4VeX1GsTUT7LaMGFJEYX+nNNawE4H3H7THruucWjT2
         /cPO6bf7QlYvbgY1UaJS5CwQVNjBGw/BPNLU2HJZSBpxYhty7OWCVs1zi8gAhRSb256o
         XZgqwXavkPtuhLc/hytEAkbpQWchp52zcOAJhkq1yVo0re2lMxZwNE75gkRUyNORbLEm
         kopiUHcSiE16ls1h29cGL+ErH/j3qnz+YdEHkmeTxDU+kNLPW/M2KLUCU0qVB3/BKaIk
         YGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710728149; x=1711332949;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xZRLjO7yES26IA5YTCwawjya15G39VD0oILYUFB1uhQ=;
        b=C3PcGurDa7iHfvH9UgL+nQRdLOYo4umnygoA9LkfcjeD0NnexZqYvwiec9k3yQHBR9
         IAgxvbT8+K2PnIl6pHp1uxxOpp36gzW5frwX480fbwO+pvHZeZVJ6Wt0X7tv87rCMpKi
         U+zdwn0R8ax7r2gRNseHzovtXc/vuwTAYEzm4WPE0OBwcqwi+Mx1X6W8bhgDMLhtEuh3
         hyFIzVkcEGSzW5ZUupjNBbYgPWzEj74CKURYvj9hGOOJC7meSxkBYZI3trSUyMA1xnVd
         KF63nla/wXh/OnDie0HpfN3x46Hp64nGCeSuT3uUH6H9q07JR66N971cUD8BdKYBnark
         LHvw==
X-Forwarded-Encrypted: i=1; AJvYcCWjaCtIvg6u172a+lAA1GeTNSdw2l7t4lJ0whUEVoLwFTNGFpswKhdIG22Z5VElKh6Q2xOn0Z6L3PC0GYy/7xXUhMKBNJCc+mPLlw==
X-Gm-Message-State: AOJu0YxicbxKNmZ5L+6wMOVT0EhXXDUFQ63cE5uc16cob4sONut8FnJj
	DlrhMEhIxS/ooumcsfLpYJ+dXgSK7nWtT4/QKDgq/MupAGvdX/IyhZYxIiT8X9GHWQVerjFda+h
	LBYhUBzysC5Z0oiouNWOsw0kL40Ea0jd+fkB/vXM4Lot0SwFihvlnYdjZW22Hbean9Ts+q0c=
X-Received: by 2002:a17:902:650e:b0:1db:4941:f703 with SMTP id b14-20020a170902650e00b001db4941f703mr12482658plk.15.1710728148949;
        Sun, 17 Mar 2024 19:15:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCfH8jMO/aZB8DOpQyNXjy2tRo7yh1p/1BZpESd2N/XQNCV+0cg/uTQfDxBRcLSP0Q1MAffA==
X-Received: by 2002:a17:902:650e:b0:1db:4941:f703 with SMTP id b14-20020a170902650e00b001db4941f703mr12482649plk.15.1710728148480;
        Sun, 17 Mar 2024 19:15:48 -0700 (PDT)
Received: from pc-0182.atmarktech (76.125.194.35.bc.googleusercontent.com. [35.194.125.76])
        by smtp.gmail.com with ESMTPSA id mp16-20020a170902fd1000b001dbb6fef41fsm7918365plb.257.2024.03.17.19.15.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2024 19:15:47 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1rm2XS-005oGb-2I;
	Mon, 18 Mar 2024 11:15:46 +0900
Date: Mon, 18 Mar 2024 11:15:36 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Syunya Ohshio <syunya.ohshio@atmark-techno.com>,
	Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: industrialio-core: look for aliases to request
 device index
Message-ID: <ZfejyEvPIncygKJ9@atmark-techno.com>
References: <20240228051254.3988329-1-dominique.martinet@atmark-techno.com>
 <7f03bb12-0976-4cb7-9ca9-4e4e28170bdd@linaro.org>
 <Zd7hSOw3_zosyrn3@atmark-techno.com>
 <daed8ada-9e01-41ad-82af-5da5cbbc865c@linaro.org>
 <Zd7qz1Qte8HWieF_@atmark-techno.com>
 <20240228142441.00002a79@Huawei.com>
 <Zd_zB_ymxkx0HB3q@atmark-techno.com>
 <ZfPg-nMANUtBlr6S@atmark-techno.com>
 <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>

David Lechner wrote on Fri, Mar 15, 2024 at 10:53:36AM -0500:
> How about using udev rules to create symlinks for each device based on
> the label attribute? No changes to the kernel are needed.

Right, it's definitely possible to make symlinks for each "device" -- my
patch comment links to such an udev script "solution":
https://git.toradex.com/cgit/meta-toradex-bsp-common.git/tree/recipes-core/udev/files/verdin-imx8mm/toradex-adc.sh?h=kirkstone-6.x.y
(the script is launched by udev here:
https://git.toradex.com/cgit/meta-toradex-bsp-common.git/tree/recipes-core/udev/files/verdin-imx8mm/99-toradex.rules
)

My conceptual problem with this is that this makes symlinks in /dev to
files in /sys and it feels like we're crossing boundaries.
As far as I can tell there is no way for userspace to create arbitrary
symlinks in /sys, so I think we could have an interface more
user-friendly by allowing paths to be static for users with multiple
devices.
(I guess that's a weak argument given e.g. disks etc will also have an
unreliable name in /sys in the general case, but simple programs don't
interact with them in /sys and can use stable links in /dev so my
expectations here aren't quite the same)


Ultimately, the problem might run deeper in that we're having userspace
interact with the device through /sys and not the /dev char dev... As
far as I could see /dev/iio:deviceX only allows reading buffered values
and doesn't have any ioctl or other way of reading immediate values as
is possible in /sys though, so that'd require quite a bit of work to
duplicate the interface there...

Perhaps I'm just thinking too much and symlinks from /dev to /sys are a
thing in the IIO world? I've not seen it done anywhere except in that
toradex tree when I was looking earlier.


Andy Shevchenko wrote on Sat, Mar 16, 2024 at 10:14:35PM +0200:
> [...]

Thank you for the review!

>> +#include <linux/of.h>
>
> What about ACPI?
> Please try avoid hard to use OF-specific code for the new features.

Given my suggestion here relied on users giving manual hints in the DTB
I'm not sure how that could be interfaced with ACPI, but if you have a
suggestion to make paths static that'd work with either interfaces I'd
be more than happy to give it a try.

I'd also like to add that in my particular case it's a problem created
by the OF interface in the first place: devices are currently created in
the order they're parsed from OF, and it just so happens that this order
doesn't work well for us; I'm not aware of how IIO interacts with ACPI
but perhaps the way the list of devices processed from ACPI is "stable
enough" in practice?


Thank you,
-- 
Dominique



