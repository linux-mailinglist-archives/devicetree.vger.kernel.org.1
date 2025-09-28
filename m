Return-Path: <devicetree+bounces-222161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C013BA673F
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 05:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A9F13BB760
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 03:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4AD26A0DD;
	Sun, 28 Sep 2025 03:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cledOotc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF91EB36
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 03:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759031668; cv=none; b=cPwwb69pTQBhyUXu7Ak54sR+Jv+zd0Wui3KYngv+tp/AQzP6Prl0TOlTYrik9qPGsxB4+mfT2HK7xyH01Z6sgKUuypCw1eCzPq3Lr78uG0NOLHRy0QtRbNlDB/MjYOU3ID/s2jFqzYoqUW4ke552VoJ0Iwuh2lT5Scfw26tIrcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759031668; c=relaxed/simple;
	bh=T5jmWo9XYhuzPvKV3YL36+NTOrgN1gjDpTmv8EKVFbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Ir5AG2HcM/T3yejIEhjAslJ9G7RXmNzOVu5MrqwS/vfn3/zCwEgdUz9T72Dt4SXOn+SIY1uw5JplIsf1InM2ZFKw8XgYwbSE7yWy0xxqZMfqkel0UuOgvQA0sgwew4gaa945Yg5ArcqonnF0v6cGGF4+E0xjLlC22+LR4Cb7/O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cledOotc; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-782e93932ffso324422b3a.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 20:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759031666; x=1759636466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l1BNHEetSJWwyWmdZxZ8anoEi5BOLx/1Umxr1Rv4+CE=;
        b=cledOotcovrDFQNtH8tEucOtP9JHaKvyPbrkDS6H2zjeDFpavGsJ52nS04iVNhwapW
         f7vAY2HDFAyiMGWxMK0Sc4L9ZkKqwGIP/e3uhAtQ1IEULH2QdIEAVhECbryfhQwJoDHq
         Ju1sH731SiV3Eo4JsW8YnVIb5li2IyMX7qoKsPdV8OUm7jlHaTCchU1fQ1X72nvjulXN
         TFCq7PWwQeguG570Ls0MGcA63pw0syVVzK6egz8KErcK4R/2W3WvHsjCinysd9Y+lcyO
         4HLe2yhfoXe51W9+Xo/E4Lp2qbeh6UmHHb/NwbWyIYdZuOlbzHdkb/eooAMJyE9GMJX3
         YZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759031666; x=1759636466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l1BNHEetSJWwyWmdZxZ8anoEi5BOLx/1Umxr1Rv4+CE=;
        b=w2qklbtrVTyWsGoPEy1OjycQ0F7HXAfeiaAHcNzDR/tuJdSoUBmcrGhlvHTXvMp86R
         WWn95HGOdR8XFK0Q9CaLMGJcD7rCT7PuEGwR1A7yHqgkrMZ7M0mrbLQBhrUyTEEHYrtu
         RGicArg+YoX+u8wca009lWUciCfFV9FZ71t5ncwL298mv1oViJCw8AOUmpND86n/frX6
         ZKBOsDZiUWazdtX2Fdm2O6ayUX51Za63c5osBocA1upjOJW/r2ssHiJ4OZqp0+N4GlBK
         jKx3Vi8V6NzCGhInWPfff+Lh4u380fa3vkawhYp3mEeK46PLZNgKPgoANOoQSXwFGzmw
         IXog==
X-Forwarded-Encrypted: i=1; AJvYcCUohtHurlV+UN4h/twJTPSlg0YKI+wZKUYPjCtX/VaeNlRQdeVAuWzDBfjtNAFxODW2kDirDRhFwEwK@vger.kernel.org
X-Gm-Message-State: AOJu0YwvfEKLxAfLEbB9qz350M6GhvJ2RlYUkzaBpsUAglymD0eLo3E0
	bG3qdH8ICyLP+m9F5FLlGhkjMlqu0CfCeDy9T7svrc4lz4wdTz8TgWONNC4ugdCvZsY=
X-Gm-Gg: ASbGncvx3lWEotcXls0TzEFHCA2dmDrw/x3z6vlqmv8EUkc3elBKEEcJ52Ir9WERgQK
	uh8C6lNeGXBzW4m74PMHowyziEglNylTyJQJ1Y1KbezTtmj8R2nI8hdFmaLm4HpQPbH1C3aoX1M
	Hy0xHfnyIBggWnL73lmnMbUCYUDLsKnL2Hg4NoXxlo/CwlyXKNc/4YPMD6XsDGcOM87+eqIsh5+
	7OxbeymxFK0tM4p5xRIGMzmQoYcJpkTH4qy/pqlHaeYv9A+tGBx1qZnAbZWoZnDf//5kE74XMlv
	fsS4DUL8oS8Lp1lhK3Xi2ji+qq/S/DolQbfUByJDTCShX/kKiPub1rK3vEsZU3UEFKZx/OOg4VH
	YXE6XoFxDIZduiaHVRi/3bVpoVbLmB/KpULHcjkZcynvO1ZF7uMjjTZ6ji5P5buTX+DjFDGLrny
	+CUrFI6jFUCmFKDiUVznuUyQ==
X-Google-Smtp-Source: AGHT+IHNNiab72Qr90mrD0VFSHKiT7iwH2G/FUkrpdBr28ej5amRG5/YNJ5ToVKe35zmVyUx5bpQbA==
X-Received: by 2002:a05:6a20:734d:b0:2e5:655c:7f8f with SMTP id adf61e73a8af0-2e7d1751cebmr15882160637.46.1759031666372;
        Sat, 27 Sep 2025 20:54:26 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55752d9sm7979487a12.28.2025.09.27.20.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 20:54:26 -0700 (PDT)
Message-ID: <9fb7ac10-3966-4c43-b550-827108bff886@gmail.com>
Date: Sat, 27 Sep 2025 20:54:24 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rk3399-pinephone-pro: Add
 accelerometer sensor support
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-2-e6bcc6ca74ae@gmail.com>
 <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
 <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
 <kkxecpaatgeqk7ru4maqtbgftiqmdjjweam2zw6xrvbbzpqy4a@nz6llsm37qdx>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <kkxecpaatgeqk7ru4maqtbgftiqmdjjweam2zw6xrvbbzpqy4a@nz6llsm37qdx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Ondřej,

> Well, it's not clear this will work as expected. Someone should at least test it
> with some well working userspace sensor fusion program, that uses this
> information, (along with the mount matrix for accelerometer/gyro) for eg.
> compass feature or something like that.

I'm not aware of any compass app on Linux at the moment


> Also I don't see this matrix in v3 patch set.

https://lore.kernel.org/all/20250921-ppp_light_accel_mag_vol-down-v3-4-7af6651f77e4@gmail.com/

+ mount-matrix = + "0", "1", "0", + "1", "0", "0", + "0", "0", "-1";


> Did you test it? Any suggestions on what people actully use for sensor fusion on
> Linux?

Yep! I did brief testing, but I've put detailed testing below:

For the accelerometer, the screen orientation works correctly now. 
Originally when tilting the ppp to the side, the screen would rotate to 
the correct side. However, when the phone was held regularly in your 
hand, the screen was upside down. With this patch series, it is no 
longer the case

For the magnetometer, the command I ran was

```

#!/bin/sh

DEVICE="/sys/bus/iio/devices/iio:device2"

X=$(cat $DEVICE/in_magn_x_raw)
Y=$(cat $DEVICE/in_magn_y_raw)
Z=$(cat $DEVICE/in_magn_z_raw)

X_MIN=$X; X_MAX=$X
Y_MIN=$Y; Y_MAX=$Y
Z_MIN=$Z; Z_MAX=$Z

START_TIME=$(date +%s)

while [ $(($(date +%s) - START_TIME)) -lt 10 ]; do
     X=$(cat $DEVICE/in_magn_x_raw)
     Y=$(cat $DEVICE/in_magn_y_raw)
     Z=$(cat $DEVICE/in_magn_z_raw)

     [ "$X" -lt "$X_MIN" ] && X_MIN=$X
     [ "$X" -gt "$X_MAX" ] && X_MAX=$X

     [ "$Y" -lt "$Y_MIN" ] && Y_MIN=$Y
     [ "$Y" -gt "$Y_MAX" ] && Y_MAX=$Y

     [ "$Z" -lt "$Z_MIN" ] && Z_MIN=$Z
     [ "$Z" -gt "$Z_MAX" ] && Z_MAX=$Z
done

echo "X_MIN: $X_MIN  X_MAX: $X_MAX"
echo "Y_MIN: $Y_MIN  Y_MAX: $Y_MAX"
echo "Z_MIN: $Z_MIN  Z_MAX: $Z_MAX"

```


Tests:

# phone on a flat surface

top of the phone pointing north and bottom of phone pointing south: x 
(between -2379 and -2263), y (between 109 and 207), z (between -2340 and 
-2132)

top of the phone pointing south and bottom of phone pointing north: x 
(between -1079 and -956), y (between -54 and 46), z (between -1831 and 
-1621)

top of the phone pointing east and bottom of phone pointing west: x 
(between -1587 and -1473), y (between -448 and -339), z (between -1850 
and -1602)

top of the phone pointing west and bottom of phone pointing east: x 
(between -1426 and -1300), y (between 554 and 661), z (between -1917 and 
-1706)


# the following tests are where the phone is tilted at a 45 degree angle 
and the top of phone is pointing up to the sky:

top of the phone pointing north and bottom of phone pointing south: x 
(between -1300 and -1189), y (between 117 and 227), z (between -1819 and 
-1614)

top of the phone pointing south and bottom of phone pointing north: x 
(between -539 and -422), y (between 23 and 143), z (between -1160 and -922)

top of the phone pointing east and bottom of phone pointing west: x 
(between -1038 and -915), y (between -408 and -313), z (between -1570 
and -1345)

top of the phone pointing west and bottom of phone pointing east: x 
(between -965 and -849), y (between 540 and 641), z (between -1542 and 
-1336)


# the following tests are where the phone is tilted at a 45 degree angle 
and the top of phone is pointing down to the ground:

top of the phone pointing north and bottom of phone pointing south: x 
(between -2345 and -2237), y (between 80 and 189), z (between -1207 and 
-971)

top of the phone pointing south and bottom of phone pointing north: x 
(between -1805 and -1691), y (between 5 and 112), z (between -1896 and 
-1651)

top of the phone pointing east and bottom of phone pointing west: x 
(between -2127 and -2013), y (between 460 and 563), z (between -1621 and 
-1378)

top of the phone pointing west and bottom of phone pointing east: x 
(between -2158 and -2054), y (between -376 and -264), z (between -1540 
and -1262)


I will put my testing in the commit itself moving forward

Thanks,

Rudraksha


