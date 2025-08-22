Return-Path: <devicetree+bounces-208226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5EB31E17
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C317B66A71
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F272EAB6B;
	Fri, 22 Aug 2025 15:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KjzXfUhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8F92E2DF4
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875848; cv=none; b=HzkXTzA0sMR5rr9HR4RAVMQ+O2NqehOPBMUY9YU7JHw0s0sHtddJKogTGnXsUaKgsyO5rFDKbwYLV+lk0IHLYfpY3Tqn8hS6EMZqSFcCRzUDOgumQphloib2ghOdmIkLSlHp4M08mi+XWDGLanL2tF8KgrGYlCs9ll1z5BB0wtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875848; c=relaxed/simple;
	bh=qs9a/XOifb3gwYxzXNZ4bFs+sHBqoJ0U3hM8MkBb7is=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L7L4wbmmLdnwkpds5jxb2YNY3jfPwHRX79620sWBpr4mJcjapwypwPNL7vDS5NR/sq3gANHcusa+xrg26GH3Rpk+IU+tt80edeXZpRm8nvPMgv7T0m8j0JjfFNxdLYHgZDlx7JBHsqTZJmVjscKvIRHvzxTbrpervZLxHC5D9iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KjzXfUhE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso12759845e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755875845; x=1756480645; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ls62rn3dMHOmB2VTWdVw4sYol0IkmBDufKybVQiodmA=;
        b=KjzXfUhEwkzRqI4MztHDFwC5yCjTC3ygY5DcSW1hN18UpGjjk0cs8NwgfCybd4OKb3
         8IvlLKKv9NUARrbJtVzSOSZMhKc1Hr8dwqM5+bg0qGpvbC4iILFQHM35w+VhceUTT49M
         kcZQ26rveiPskfbC22UjgNLrqwTAPBM00HxJz9ujfy4F5x6PNUCL1/crkKTDjlUPxlcA
         CQkDsifuhzWcAKMIbJ4uj3jfRbQEKxXD/xtyEQcgQdZQSrQ/CINaU+EXkJiEn+b6nqEp
         hS45+/kQ+B6i6SAbGRpU0Z12IuLGKP2IXCZCRjZ8+7hGAa5VQKC8/TMuYGKyFIzNI7n5
         9J0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755875845; x=1756480645;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ls62rn3dMHOmB2VTWdVw4sYol0IkmBDufKybVQiodmA=;
        b=haTPXgF8CwEzsu8imlyXstblKp3+sLD+S4/8ZYDN0tMQaAJv92USd/WUcwZHcs+HMn
         LmaptkHDCmhMnrSM+6beIXC2H6RpMl6QCbiuSvRxBBz5S6uw8wZ/q52BPF9b92r74WZj
         8BEv2s1He4098Hq+WBk4MXF3l7NPGo2UZUwKPXRr5ciuZYpvW8o+ets8NE0tcFdAmgdZ
         iC1xoOrrRe0IRySa25VzbRUQIWDtZOPdsOOYuD3GCWlyKlltQ6sihf4Pp4USbzOT+I6e
         KD9U1/ZJ8Y+7RmU22DIlCNmWixaveUQGEgY6X6bslhl7dHwuQj8T27KRpdlwd1Vfr35Q
         1bQw==
X-Forwarded-Encrypted: i=1; AJvYcCWqUpqr9eiHTduKQQlypB1I8tGw3a1epMfFiHlqVcmMjflQtu9vNv9TWWlo0TJzQX/T5cw/u8h1KIOG@vger.kernel.org
X-Gm-Message-State: AOJu0YyXdyN7wqAfkbqUx5xlElQFb2v7qjoVIPJwOCjonp1oFwf/3qth
	LXTLvwadUl2jks7/uLXvLdIEU8EozXYNQQi3LDVDViW/ssh1TF5p7md7axIYjN95PHc=
X-Gm-Gg: ASbGncsStPbXx4CWd9avwkFqPk0SifN/AI2tDl2LWmgh4aqtZcjCRN6qR877Pwfpu1P
	Y3jr7YDMcuLI+QPoIBix+U60tjiURB2QJbzZP+Z2MfS4mm8eJITE/72ofI6+3Wu9VzRz94791wq
	0FW0ovpL2bpxJos0FhmEQaWKFd59Zh5lIn45qO4MR3Lh4lwRCUm3fO+wRqoctSYV7xPRgEE5mZt
	tMHEZpZtVdHvj9JZ4/u1Jt+veZCVgnavaZr6pN3PysPooJHyUy953+F2oh+gTNzLU83Gr4H+XpQ
	x1mRiYI018K3St6Fa9uHQyv73rT71j+9DmrLoxkOu6RJv2s28UVpSipm4itW5MWb64ym1s7wdf7
	3eOOGckryIg7d2sXYpAtMmMF6j71fIw==
X-Google-Smtp-Source: AGHT+IGNN9Z5/+uibhBqThaCgEQTDyJjDZ11Ocq8PmmFMqWdJekg1NPHuZJvr7YSISbg9lI0H3tDRg==
X-Received: by 2002:a05:600c:4fcd:b0:456:133f:a02d with SMTP id 5b1f17b1804b1-45b517cfe71mr35761285e9.17.1755875844711;
        Fri, 22 Aug 2025 08:17:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.81])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e877e3fsm38312615e9.2.2025.08.22.08.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 08:17:24 -0700 (PDT)
Message-ID: <93f182c7-572d-4cc6-92a3-3be48fbc3848@tuxon.dev>
Date: Fri, 22 Aug 2025 18:17:21 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] net: cadence: macb: Add support for Raspberry Pi
 RP1 ethernet controller
To: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Andrew Lunn <andrew@lunn.ch>
References: <20250822093440.53941-1-svarbanov@suse.de>
 <20250822093440.53941-4-svarbanov@suse.de>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250822093440.53941-4-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.08.2025 12:34, Stanimir Varbanov wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.com>
> 
> The RP1 chip has the Cadence GEM block, but wants the tx_clock
> to always run at 125MHz, in the same way as sama7g5.
> Add the relevant configuration.
> 
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

