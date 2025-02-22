Return-Path: <devicetree+bounces-149895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D8A40B89
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 21:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7838417FDF1
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE18203719;
	Sat, 22 Feb 2025 20:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="syts4TYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902A3202F9E
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 20:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740255246; cv=none; b=kpEykhoudxtO5tcY/GWyOlkPM4dB6Vp08YStkj6RasAhdQf8eBQsjlI4en2kEWIwMoSRHNYleGiyHq1zmr89GA6fZKT8XujjqWP3YxzEGOiDSSyJRi4D1T4MtqWYJX1WkITs5KW0QS2HGMglCzgq4ojuvZ0kpy1kIehpFq8lbLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740255246; c=relaxed/simple;
	bh=ZQft/0d22NqpoXgXm2URO2X4e2IyHeu0n/gvFgu1Za8=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Cc:Content-Type; b=ZLTYhNGG66EBBN1e7EwHmVHZZC5eJ42Trds8SRx6nWvf4WoHJaOFUuVRrwXznEbckbof7qW6HEbN2Cop11/ytIEZF7RUG49tmXZtkYCKj2lFiKVZPtwxiBV4T0UypUOW+MOyjnw8ebUbKR5BR1hdId/0Kn8l82U5NU7ZB37bGSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=syts4TYO; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2fcc99efe9bso5012369a91.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 12:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1740255244; x=1740860044; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y2abN5uza7S/dEMZm2tHrxEYtuytAiWzE6B1mv8hILc=;
        b=syts4TYOx21o6tfUpRwxEjmj1949UviQDBHq0BHbbO93pMVFduuoa7en0hqB9Vwry2
         WuKEOtLqYUHTHmtfDCSK/naiecpJIVNW2a0TNIroEkn63BtlaQ4XpH48YrPuBOOnOmVT
         7HMTIGhYK4mOFC/NovMakl75HQfz2BN80OyNR5+JM5tvYk5jass9i1fM1IyzH5KNo5Si
         gQ3O4kImnsyWMv5vlTSvX9h1fJilRH2dd0Vt/aGAhemackMYew0Fe/HhiIIbO1iebzBW
         tcnTYHsAGuigdJnMds1ap5NUEZvYjsOxXhMGg/1lVrjhayVrtf6jw7N4GlMnrVYW1Qcf
         aRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740255244; x=1740860044;
        h=content-transfer-encoding:cc:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y2abN5uza7S/dEMZm2tHrxEYtuytAiWzE6B1mv8hILc=;
        b=Oy1/6MXwGUWcyHWQ1aDo+3zs8VpMOp3pkpsQMthxAVCyt+JNtZLb02MKXevEwNrz/M
         S1ZZYrgJ2++GGq553jc5PL8mL+uXcrR2O8wN7XpC2xJM+9ZpcsypsQRn/7bi9XKEgUxo
         uyUmS6q252bcmh2DZB1ZybflJ0O9O+vJWgpWNuUSeijeJ6hUPLhVRVhC7BALjg9Q6bE8
         0kwVT6XZ2eeTntGIO4HCyetkjcrpjGl3CIWASyM5G/ntoEQ+DRTj+RxfO/di0lQ8W7Ps
         G5YB3SaZVF6VA0VEnk/XhF8jWUeKzfYf297F2pccM41OqoILn2MIRVXiZTRgGGpByebY
         c16A==
X-Gm-Message-State: AOJu0YwToTfy4Yd9XvKL71diWScWyyt+tn2tbrRkULCysn0RHGAHFuPJ
	5xPl5jtR38RDz+WggImlw87m2t3pW1zVn9tFb5lAkfBQndCYrFzZIFwmfkCaXA==
X-Gm-Gg: ASbGncuoVlDhWsQ+cjI78mqeSmbnC+okr8dObelrxkZgVi2jc10lcJpkTkd3MPyYEze
	Y9Gj4vMVJDT1Ch4/zFiCVbvo2CHP39yKDV4qgNYfLGDiT7ybDyPrsMqgE9qKCm3wZMFKzmBRARA
	yBBaugOaGz48r/2kV42b64DAmK7VGa0Oqqd/pd8FE7CzbGNrjWFGx5Vf3966aG5pDNGXvFqz3M0
	pH4UJ8YQXJ8hUPo7ZScTJUgJa3mSfUdkgkxO8UkZObVqEY20nCB5G/y9pcEPdeD8rNzDH+meVq1
	bVyi3UmxlOvrgY9eTn0oKMEeyje6E6jwfA==
X-Google-Smtp-Source: AGHT+IGNKlJDWOBYTbYqAmiJNwwLmAuMB6sztdxkvopEMuWeuRDxJhFwJ0/1wxNPNUlJFX5hMcz7Dw==
X-Received: by 2002:a17:90b:4d0d:b0:2ee:8430:b831 with SMTP id 98e67ed59e1d1-2fce868c84cmr13144652a91.2.1740255243700;
        Sat, 22 Feb 2025 12:14:03 -0800 (PST)
Received: from [172.16.119.211] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceb04bbd9sm3943066a91.16.2025.02.22.12.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2025 12:14:03 -0800 (PST)
Message-ID: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
Date: Sun, 23 Feb 2025 01:43:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
To: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>
Subject: [Question] Status of user-space dynamic overlays API
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone.

I have been looking at ways to do runtime devicetree overlay 
application, and was just wondering what the current status of the 
different proposals [0], [1] were. They seem to be quite old and I think 
they were already rejected, but due to all the broken links, I am not 
really sure about the exact reasons. Also, maybe we now have the 
solutions to some the blockers at the time.


Let me fist go over some of the use cases where I think dynamic 
devicetree overlays can be useful. I am mostly interested in their use 
in single board computers like PocketBeagle 2 [2], Raspberry Pi [3], etc.


# Uses

## Dynamic Pin muxing

A lot of SBC's aimed for creating hardware projects expose headers, 
where each pin can be used for multiple things like GPIO, I2C, PWM, etc, 
depending on the pinmux. I think Raspberry Pi has it's own solution to 
do userspace pinmux, but if userspace devicetree application was a 
thing, it could probably be used for this. Additionally, being able to 
use dynamic devicetree overlays for pin muxing would allow much easier 
transition to use proper device trees during production.


## Dynamic Sensors/Devices

Using devices such as sensors, external ADCs, EEPROMs, etc are also a 
common usecase in SBC's. A lot of current solutions seem to be designed 
around using user-space drivers in such cases. This is a bit of a shame 
since Linux kernel already has drivers for a lot of these drivers, and 
they are probably going to be of higher quality than most user space 
drivers.


# Challenges

## Security

The concerns regarding security seemed to show up in the other 
proposals. There was a proposal to have a devicetree property to 
allow/deny the application of overlays in some nodes, with default being 
deny. Was it insufficient?


## Memory Leaks

Currently, updating/removing properties leaks memory. Was it one of the 
reasons for the rejection of previous proposals?


Maybe kernel already has some solutions more suited to my usecase that I 
am unware of?


[0]: 
https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t

[1]: https://lore.kernel.org/all/20161220190455.25115-1-xypron.glpk@gmx.de/

[2]: https://www.beagleboard.org/boards/pocketbeagle-2

[3]: https://www.raspberrypi.com/


Best Regards,

Ayush Singh


