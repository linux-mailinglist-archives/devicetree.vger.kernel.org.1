Return-Path: <devicetree+bounces-165993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA39A860B1
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F6E5189B96E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3BC1F4CB5;
	Fri, 11 Apr 2025 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="a9LBUVx1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77A91FA178
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381943; cv=none; b=sMFEwlQwVKUMgG+kG04B8G1/SQuVdKw5/YuU0+DnDDvbPOBvStS19zr++g4s2o0Tq/Kkm6JCfM2CoVAM1gSuHSN+lWY1yk3pVIwdNwRRGnZCwatkJHWgFBthUVLvqUkk9Pzmf4m8/BbdX2GefDE+u08dYOrDRpLBhLlL5DHx+sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381943; c=relaxed/simple;
	bh=ublN/3Ds8E1bcaRpmf15/4KXsLricmSPCFTTnyn1f0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ze51uqkNxnNLa+xQwlkJhYcwrJLFA11XEqx+wqDVWQ+b3hADKFjUOHzF9WUOa/rEpU80qXkSmTqys4sww7vLR+XapzzBnqJ6DrNSay2vZJGabssIrk7mCMrCtONW37ShFELtKiNl7QvcoaqstKyXtp4NT3WpviPRqRFNHpCJOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=a9LBUVx1; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso1706689f8f.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744381940; x=1744986740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=27/J3L6We80CsZl1ks+TbevRRjmRGKYmJIc0WPKlez0=;
        b=a9LBUVx16WNL1WVR0xVvS+LWf9tbd9bMBGmNzXoXKaYeWr6R+XkPJlHuU3tYHtgO2K
         ej9agAK1/vRQSlJloMXVmtYLGgolngVqJ+pZjg8nW1q+j3c+awFcp/2+xm+fvfUZnA1c
         q1r4Jjb3Ywv0j6UHifs22SwhjbGsGKmZDiagWtDAD1b8VhAKaphyvyoST9GAYu8AWlYt
         S3xwU2BrB1GvC5lOHKpQ5/4187WdCpxB9zH5a8mbgOfJyohKDYCM2B3QYcqwl6Xeuyvl
         36E8UDQmq4xv2U9btDFGxGPc6FTCaTetI4YqbRvc3PznmRigRgtWqbDTNjL738LkBjLR
         BhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381940; x=1744986740;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=27/J3L6We80CsZl1ks+TbevRRjmRGKYmJIc0WPKlez0=;
        b=cVTXeXgtiRJ7ZXKHzE63GC4QwKPHImfo0ndPRqLSIwGCeElMrBT1qtj8PfK9VqiEEA
         DsLuo6wKVtLtY364XTz9dRhzdJenaf+Bzwa+UaKKGYnsRKu25bwF+G6DWTqFn3lVdybD
         BVoeXV0kZaCTgP7mC9mCTEX2Knnzu6DSdRE/Urtnk1gn9Pw0ZNq8snelVEoUB6/rmrNz
         L1BdFXSlVCsJymZVD8E6fssx0wcuKXTlvW7P77wIw8ZM5ugzE3loo86xR7LIJFF3UW7K
         bFX26wdi8UDQIJcKphV4WPZZ1YiclKHHaLNP7N8puk3ZaBNquXx4xCcBrTt/IeokV++G
         nF9g==
X-Forwarded-Encrypted: i=1; AJvYcCW9d/Mjyx3ABXcHxBzMrsz78ZRAj8ov3GdKAHAG9QUcbbSgmArj1StjaKwAPiIWtHL2/0HTOE9T6CI5@vger.kernel.org
X-Gm-Message-State: AOJu0YwSKMqoMBJeRKZIrqqgb6Zg6CVAOeQwqyGxS6DrTD1l7AYJiZXJ
	9qe54WUewsFevW2RQEaCY1Czw51TUTV/x/I2TgxXzFUwJb22c1l4EZXYWSrRmoU=
X-Gm-Gg: ASbGncvk5yt6JqesbIyUHWeLE7r5l6JdFCQXRItgKXtiwr21ijYmDv5pe5F8zqt3uG2
	VdDzGK5qJMQMWklJHRnRlZJV0enx0jepNPX6LSC7yQR4XJIMNiaQa9Y/r+NlVZpAJ6wBeYjzsfV
	MfxSNXuhbBZ/Nlva7sly5iuGbMPUF0z8qvsL2r1A2dFziPYpJL1j4ecuGbDQf0VUi+OgOQxWXSx
	at3mTaCiQDiQiZGJZ8sooI39kZPFKQ6Bp6ZJ1EpOhjDYHMR+0zlCz/MIlMWOO9jtxdNECKum81A
	kdJJ/P3jFqZLHrli96RRXKgRJb3zdBMTKLv6o6164rpmSKcO
X-Google-Smtp-Source: AGHT+IFiPmSAQA1/l8+XG+twJ9qD+4efyKnzMGJ7ym/3w4dc8YRER5NaT5QIdLtlkZVox4HHWYFx1g==
X-Received: by 2002:a5d:5f87:0:b0:39c:266c:12a5 with SMTP id ffacd0b85a97d-39ea5201e7fmr2132511f8f.13.1744381940028;
        Fri, 11 Apr 2025 07:32:20 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae9777absm2145481f8f.46.2025.04.11.07.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:32:19 -0700 (PDT)
Message-ID: <0525b51c-98db-4f74-834d-a7cfce927dcd@tuxon.dev>
Date: Fri, 11 Apr 2025 17:32:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: clean up and remove
 usb_a9g20_common.dtsi
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh@kernel.org>
References: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 02.04.2025 23:48, Wolfram Sang wrote:
> Wolfram Sang (4):
>   ARM: dts: at91: calao_usb: simplify memory node
>   ARM: dts: at91: usb_a9260: use 'stdout-path'
>   ARM: dts: at91: calao_usb: simplify chosen node
>   ARM: dts: at91: usb_a9g20: move wrong RTC node

Applied to at91-dt, thanks!

