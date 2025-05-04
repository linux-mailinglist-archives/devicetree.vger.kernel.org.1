Return-Path: <devicetree+bounces-173425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8EAA8681
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 15:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78530177030
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 13:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AA91E522;
	Sun,  4 May 2025 13:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="0jDVD+kR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B26F1DFF7
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 13:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746363646; cv=none; b=DSho+LzFWhou5HX04HkAx9RzCiwBQi5mJtUv1xhbnQ6W+Ks2KBgqRu+X7PzBhOvEPTeJZo1aGhjusekt+lSEP8VroSkZaBLZqIPP1+gv6dCHTLgkMwX/9M2W2s7sHXKZDHhe5SBhMyr0iV2OFSLxc9KPIfUeRP4D2N13LOTNFzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746363646; c=relaxed/simple;
	bh=WhCaOz6jcicX+6N2YtzrpBq9eyqhJQJR9jbv9xN6zBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sgDFbcG14qh0/t69ZhS6JX1wj/EJIHndVVGFFDEmNkFubioxgVi7lU3QokUIdzNL5FcO+cTshTPMNlqD54bcDOREugLCXdxKHgjachsZe7en4lA+wrPyrA+s8m0+fwl16cZr1qCrSxOURZBAq69P7v9DL3NHj6WVSXKw7+68mtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=0jDVD+kR; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22928d629faso33391155ad.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 06:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1746363645; x=1746968445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jS3S85yWYKE9BiMM6JyeRwngIa9xou7BGS8osDSvO/o=;
        b=0jDVD+kRMZCM3NCJSGLw0OjHBQN+tTDdzjBXEOI9waf7ODH9Jen4bL4pxJgNVa17C7
         Fdue6/arp173lBz+NLsc3cOMshXKuWJFyzkShctYIznpkRXLLQg1AgE8C05n4odfKAMQ
         jOfLf3LIUAKicSH7f2RYRuu8/9jL+wRas0AJz3cNYWrW0R+50vJDEXwgFYEYlQY6R0In
         vimq5DDmMadscEt+iie00cWBYHYnPjFVtgWf89NKplpf3nPU6g1fQiK6C9pKfngwUquv
         8LMCDIui3rAIZH5K1EoWAsztoOH2au8FJ9DAcCZgNNxyvK1Oy+Cgqmj1XCPapCx0cwlY
         HJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746363645; x=1746968445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jS3S85yWYKE9BiMM6JyeRwngIa9xou7BGS8osDSvO/o=;
        b=OzsnbEb6r/MgDReKamuLsipsZfNzL7xhe2eao5gI7daaTpttP8tzBr4Ju6DmHi4hBn
         BKYEJNy87Qe4N+s0fW2+RCbBcZaCQlmOxpb6sKz1STeYPGU4fcTT2oTbhL1uomJw2wz/
         oxhh2vN4HxGVGHz7SA1zxYEJ0XyoQ/wx4o/mbQTjOZ5VjP/xZuI+zqXizPNBA3UyJuVu
         2cD3iZH0AETSjGXRUFyykT8D/iw34OD3I4X0ymc9mMtiu4fvEZsa4q7HOaMHlfCBrWYx
         AVTm7MFILQG5g2VbMRm+ZFH9B9PKzTiisMDUBApOwHR8jfargyjGGrE4LYCn1oAM9wHK
         X4OA==
X-Forwarded-Encrypted: i=1; AJvYcCVJTtrediJJWJDZUvCo6t5r7zKGEDa6pmH8lxyGjUZZ63CarmBybPzctMx85LluuKFc30kkwfKs8zP9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1vo/R5X7xx2Ui15snvfChMYFtjZfdWvaSHxqDswGXIoAWGk27
	VP3lJHynAZnJqJFHzkkWxJkVAuiQ8W14Fb8LNQclTJznlUMRkLCHaBtIV01fTg==
X-Gm-Gg: ASbGncsFsWgi0BeObn9GqJ0xU1QAQhPz0z5NrtvNlt+/ezDiQg582N334P4yJsb8gp4
	n2L/tCeo0SjmN/k+vCcXxSgpRdFbZy4WqwQfXUwP+UbJHZs5xskl+QyXnb9TQPLriqytOCS8WF9
	t0Tbf69imC+EmXZevBoihozNKBisOuY2tGL3r0Z1w1KkvhYNFyAoOwMry/esmCxOOlddCRDhYDR
	d1twwQwvkjgEg5U4iOvGgm7wZGLH8x9L2ZI+AZ9zpoXNi5UYmusf6CdaYUISNq7Ezf7XyJtUBiN
	eAsqR/haKWdPq7JCOUZvNd4l0K8WdA6xxWn0O+OeUKcbk7M=
X-Google-Smtp-Source: AGHT+IFNMZE5sxuG1Fe0BSoVzrUb9V9JyKSlE7KuhSsrfBJU9zedZrumL7AGO1KzShU6tPkWsbHkXQ==
X-Received: by 2002:a17:903:4407:b0:223:fabd:4f99 with SMTP id d9443c01a7336-22e1e8d30a2mr58915895ad.5.1746363644604;
        Sun, 04 May 2025 06:00:44 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e151e9452sm37517015ad.59.2025.05.04.06.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 06:00:44 -0700 (PDT)
Message-ID: <eefa06c1-478f-4670-80c7-4bde8c808e1b@beagleboard.org>
Date: Sun, 4 May 2025 18:30:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Discussion] Global vs Local devicetree overlays for addon board
 + connector setups
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Herve Codina <herve.codina@bootlin.com>, xypron.glpk@gmx.de,
 Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, Dhruva Gole <d-gole@ti.com>,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <b1990c97-8751-4964-a3e8-9598f4cfac2a@beagleboard.org>
 <20250430160944.7740d5e9@bootlin.com>
 <e05c315d-a907-45f0-8f5c-1c106b05f548@beagleboard.org>
 <2025050448-snipping-flatbed-2752@gregkh>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <2025050448-snipping-flatbed-2752@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 5/4/25 18:20, Greg Kroah-Hartman wrote:
> On Sun, May 04, 2025 at 06:03:26PM +0530, Ayush Singh wrote:
>>> It depends on the bus the device is added.
>>> when an overlay is applied by the kernel, OF_RECONFIG_* events are
>>> triggered. Some buses handle them:
>>>
>>> 	$ git grep OF_RECONFIG_CHANGE
>>> 	drivers/bus/imx-weim.c: case OF_RECONFIG_CHANGE_ADD:
>>> 	drivers/bus/imx-weim.c: case OF_RECONFIG_CHANGE_REMOVE:
>>> 	drivers/gpio/gpiolib-of.c:      case OF_RECONFIG_CHANGE_ADD:
>>> 	drivers/gpio/gpiolib-of.c:      case OF_RECONFIG_CHANGE_REMOVE:
>>> 	drivers/i2c/i2c-core-of.c:      case OF_RECONFIG_CHANGE_ADD:
>>> 	drivers/i2c/i2c-core-of.c:      case OF_RECONFIG_CHANGE_REMOVE:
>>> 	drivers/of/dynamic.c: * Return: OF_RECONFIG_CHANGE_REMOVE on device going from enabled to
>>> 	drivers/of/dynamic.c: * disabled, OF_RECONFIG_CHANGE_ADD on device going from disabled to
>>> 	drivers/of/dynamic.c:   return new_state ? OF_RECONFIG_CHANGE_ADD : OF_RECONFIG_CHANGE_REMOVE;
>>> 	drivers/of/platform.c:  case OF_RECONFIG_CHANGE_ADD:
>>> 	drivers/of/platform.c:  case OF_RECONFIG_CHANGE_REMOVE:
>>> 	drivers/spi/spi.c:      case OF_RECONFIG_CHANGE_ADD:
>>> 	drivers/spi/spi.c:      case OF_RECONFIG_CHANGE_REMOVE:
>>> 	include/linux/of.h:     OF_RECONFIG_CHANGE_ADD,
>>> 	include/linux/of.h:     OF_RECONFIG_CHANGE_REMOVE,
>>
>> Well, if some bus does handle the event, I guess it is a bug in the
>> subsystems that do not? Maybe Greg Kroah-Hartman can clarify the expected
>> behavior here? Maybe we are in transition phase here.
> Perhaps those other busses just do not have OF devices and so they never
> needed to add that functionality to them?
>
> If they do, then by all means add that code.  OF devices are not
> possible for many bus types, so there shouldn't be a need to add this to
> the driver core, right?
>
> thanks,
>
> greg k-h


UART devices are pretty common in both Beagle capes and MikroBUS. So I 
think that will probably need to be added at some point.


Ayush Singh


