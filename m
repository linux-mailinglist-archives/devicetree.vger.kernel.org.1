Return-Path: <devicetree+bounces-253612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F96D0F37E
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 818EE3095650
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8219134AAF3;
	Sun, 11 Jan 2026 14:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZFz5/xt1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BD33491C9
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142769; cv=none; b=Zo++OWr16H2CvxrUCveSxF9SS+AvGIiI4d8H7whhlVon+PQudb7sRactg3aQ3SHF7yLZgFeK4c4ngxaVULvWP9i0OxETGoVMfkNWwUvUqz9GKF5kqm7jWJI4zcfw+PbJsELQ5ewk+YV+uZYb7OlJIxGyoujpL6G/CUglMs+aJCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142769; c=relaxed/simple;
	bh=E3fIUBLPFnEXAfwoSTB7dOLky4Cj+/epBMllkCL2GpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NJyCma02K/uJNIdjhloUaE25xeERabXieNdRzbLSkZHLU3pjKYL/VFm0050ATEd0X+xFiaVUhEIszsecVnZYdRNtSnpC9Az7LuAYyCg430VLFauFMG26gr2AETFqUT8lLL6jjrsBv/QMLNCOxQ1POHUb9O91B949vnMkcScsewk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZFz5/xt1; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8710c9cddbso52233766b.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142765; x=1768747565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xSh5A9C/ikcooPDg3GNmd0+fIcS/l8zoJ1QKaA55bnM=;
        b=ZFz5/xt1R3RPg0IfhqILS6DeIcAi+Q7dknvvl7zujx9QVOvzKxPv6PbFWkA+xsWdwy
         q4RvbDBtR/HjlASIiVjVE8AqQ+cFMmSpSmHz/9zLrH9twpLhuoDOp2ifbX2+2rz35r8W
         EZggkt2Z25Ce3wkYydKW1eTb6s6zNkVGI4+qfKwk56y0v5hgCqKDZMbRcQU8iiV6WcXD
         bNlH8BXPaurlSjuMuJ8jWyp7GKnMkFz+dHJmqtCjFfpct6Tch/J1+bYJfTm+imAjQNT4
         bYlIO26xS8CbA20ia+8l9ila1DeJP0BiFxQQHuZUchuSBxxfuj1eBGaY4zansROWmVws
         ybLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142765; x=1768747565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xSh5A9C/ikcooPDg3GNmd0+fIcS/l8zoJ1QKaA55bnM=;
        b=SwRZ/pHHxmuZCawlBl9NqmnKPzE9XxQt49Iesysc61jCUv9bmLnp0m7YmEJ772Jkb/
         lopxvwYo00zWhhu6Y3XdzIhyU2yV4YRy6/5CyXKRlQQWZ2XZEE1TTnKnwrDwj0txhAnq
         qVOeW907p9XDpgp6HFc5NpjpZIMjGxF9wptTiNTaSmX3zYf4C5k+4I0VoJm4v7RWuK+Z
         4evGp+2EcgNMsvwgkIQoIXi/VRD/63u9hhw9UOoISd4xEApK2Vpap3BAcZ8Vpch0Cb5i
         UB7sDREPZ0VeT5j6cWOBXImDsZ9jJVVTWGMCgKuiWOC3Sn0yhNtxEuHOqb9IgA76CFQS
         xE7w==
X-Forwarded-Encrypted: i=1; AJvYcCX77jmyKBJUeryMAonAuJbTiPrzjJmrJyfR5LA0Mu+sExclgmuu2RjnhUYouRVW89ImWGT4vMfTu/NC@vger.kernel.org
X-Gm-Message-State: AOJu0YzDoKmb4RtZ2Pyuf9M1pD2V9rNa3XqqqZDxTpR35Weze/DL2vV8
	rnW50aZUwj9A/lyakiu0qCKBaaQA3V9s6TVqnHmoDDmeWT9B3obOSuQbCpupCyO+0Pg=
X-Gm-Gg: AY/fxX7D8fqJesLmzgYZIq2nDdVZL7ve01alF6vHXIexT36b2euwwjxpGeLqguwrz7C
	S3KGYnzWFlyoFFSuPHik/OqkIvo9RPbvys0kyN7b84Eed81+H/0mSr5nnRq7Z9wy9WHp4rWeTfm
	opZYt5xfoT6L8ST7T+hXQ9n5/IlJlufpGUp1EFyGuMLYBRfrB7B3MiTyLrtUMYWk5JwL8fHxtvI
	gGLW4gE6qM8n87e5IjBF/Sa/mB5d5moyNBV9lZvVz+cjarEALNkNp/Xtnk/9xd2rsD6PPlPQxa0
	WgMRjQYkXcXPlULJO7+cqZSChXvOHZgqzlN02SblHy1f0VPgOS23DmaLJGwy2wxNmjgLZk6z766
	HcJGWUAFc3WHjvdEHYBoqqkhg6oQbjVnDrkXBxuHktuRR+eQ1mkRS+TXTMeSlDHa3xMBGEbBGSS
	0nP1zn4Rqtr1cw1B6j2JxCigo=
X-Google-Smtp-Source: AGHT+IHdSgN1j5CfCwzzuZuuUE6k4oOsy7A6FyHYN7fpU3s7QMByt1Yrcz5j8phSUL1uwYAKt/FfvA==
X-Received: by 2002:a17:907:3c8a:b0:b87:1b2b:32fc with SMTP id a640c23a62f3a-b871b2b3d67mr52172166b.0.1768142765029;
        Sun, 11 Jan 2026 06:46:05 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b870b0dba4esm216046666b.17.2026.01.11.06.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:46:04 -0800 (PST)
Message-ID: <dd70bce6-77c5-4d73-96ae-6a0bd8ab7b22@tuxon.dev>
Date: Sun, 11 Jan 2026 16:46:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/15] dt-bindings: pinctrl: pinctrl-microchip-sgpio:
 add LAN969x
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, vkoul@kernel.org, andi.shyti@kernel.org,
 lee@kernel.org, andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linusw@kernel.org, Steen.Hegelund@microchip.com,
 daniel.machon@microchip.com, UNGLinuxDriver@microchip.com,
 olivia@selenic.com, radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.org,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-i2c@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr, Conor Dooley <conor.dooley@microchip.com>
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-12-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-12-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document LAN969x compatibles for SGPIO.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>
> Acked-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

