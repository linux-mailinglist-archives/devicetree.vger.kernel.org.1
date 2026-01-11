Return-Path: <devicetree+bounces-253600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A34D0F06E
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67A2F300719E
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B0533EB0D;
	Sun, 11 Jan 2026 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QExsiGGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A21650095B
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768140299; cv=none; b=Mur7UhcLxhJzHl25HoUwxciYyhbAQQrnri1iroQLjNBPbo79MoKB35Vyp38yj75g6ypuPUO9k+cVd+8X3fMTLNsRVz06SiG7m1QbmB8RnlrfAh6hAZ5a+duc9wYzXB9rcp/me2NZ6kCc1RWZO4VyqqOEGd9B3salJdU4lHTgAcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768140299; c=relaxed/simple;
	bh=btyv13yF1O8eLHTxPRhdfp8TKAEfJvTKBJK1fYmI6Xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nb3Hgx047uv16cm0NAxxiInA5JEHjIfWkMGv4ylp1U0jh0ZuTJ2gf3poFjOtxK2b2wNDgV8U95bvfk9Q3uBVkpswqqVuQMnA15Qm7vwnp+koA4sM6M2XbevLa7/x5Sjx481yQEpVJrFmRhl66pBvIheO3ZtMVGJywEHWiVl2kAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QExsiGGl; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so7208219a12.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768140296; x=1768745096; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0XwABaHQba0TZXE5KSskxvkqQOly72ac18mmHR+qtCY=;
        b=QExsiGGlElrMbdLuVLF3vOqHwCf+WCT61him0YoQoIEWfiO4yNLyd4VPBUAKN40Gej
         x+S845X0jv6JN0VBlI7arOrMRZmUjNjdywGxqg5AZeDp411nr7Ct3jMkAyw9oGfZ80tp
         9peF5Nu7BK/4h9jjmebrpbIuSLELKFU7zvnFZqdA2gopeWLxeGHjMxwhymx3RIJ7uMfB
         hpCmIW4/qAYok/gFj8dEiDrfBxbl4cYeMBaBpOEfsfmWLMvsLKPHH+jcF56wU5GfMxNT
         Fk83jkyDvYSwRUyk76cF/DEUlxrfU34/Cp8JPQf9+99HmKUb0Ee91SKnRcSXxBM8h+ZI
         d3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768140296; x=1768745096;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XwABaHQba0TZXE5KSskxvkqQOly72ac18mmHR+qtCY=;
        b=wnNudi4yMWWE00+DMMCRT05dbrd9r+JgQb5JZcBXJmP5r3JLi0MBAblE9KFiEdEN0j
         fxKGc4Wt6cW/Y62qhbngqVuF71jJ0CQNe8XgcKRsU1hxaV1eRvwPZDa9iOkoM1222NUF
         eILBKkisbX5YJ+WvRVcnlQIReYCyeYettOTzQPunzLdrzslOtlSVh/inO1UPR+x6PtjV
         pBPS4utdH3jhDzxQl47fV3IvZ++1Uy+Thz2am8n0GK6Hlqdd0KX9ciMOD+2SLS0pCcKy
         45uCd4mJINtxhD2qfsfQUYDGePpZzW5vk2qC6jrgEJ2D8VmNqpWXoEWinImJlnhsN6xt
         i32g==
X-Forwarded-Encrypted: i=1; AJvYcCUuAHLpbVJb5tY0a6Zz+wwdpcrPLBVIL06KNAhDAD+0TaOrM9AhquWADoP/7wIzFQCCTgk8GGFEl2qN@vger.kernel.org
X-Gm-Message-State: AOJu0YwkiWeulBRk657mBYmNDRtvkYUj67Kg13OoSGpF8XhTliuEgLz4
	E0oR6Npig/WzfSG5Bdxngs/cialgWQEKp/tdKpaKr3CGNkL7m0ep8/b+vL2jb5jernM=
X-Gm-Gg: AY/fxX5ANSlEIRS6ZNvEr1LUDrIq5d3BtWvKR/k0CYFEg1IKTx652FeyJJP+TwuchVx
	rh2AnopcEsaHeAWoqe6H9/1r+DmMSbxPzvzB1nkBSdh/zZZtZuBctxh+foPwmqiN4QwIs6dcs9D
	67+pod7yPqpg5yCP1hlrFhbQ/XULowa29ahAjyqj1npfTz7xXEycnHvW+hgSYJdJoDxGbscCx9A
	kYB49XHiihMoyYEoKcmTq26iDVPP5Q93pcdmZ5blM8jVzcmX2ua6OHbX87JRvugxcu1SQZGo/ic
	3mM490KcJrDuzJsqY7untucNzI5shq5ncRnLML5BOpgc2N9kcWIoTh23t3oz+anGzi0R4o0g0/W
	B8rrEGFn7ALtGDUhySJfU9FQ83i1dPiCgP3o/htdzEIqIbryMSWm/xV6yUozL2lXvot70VqLcdq
	ZOe9huw1VJ9Nlc+VnS+4RiL1I=
X-Google-Smtp-Source: AGHT+IFH0IHMLB/e9VMPw+PNQvxklsKe4TmQmjkQDY/3vRiOU9XAUjD+Bmvv1dPy8Ir0WmHAJUU9Lg==
X-Received: by 2002:a17:907:a08:b0:b07:87f1:fc42 with SMTP id a640c23a62f3a-b8444f488f0mr1766243166b.16.1768140295378;
        Sun, 11 Jan 2026 06:04:55 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f0d6d7c6sm455055266b.42.2026.01.11.06.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:04:54 -0800 (PST)
Message-ID: <3f82d755-552a-4074-bee4-b2660eb6a979@tuxon.dev>
Date: Sun, 11 Jan 2026 16:04:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/15] dt-bindings: usb: Add Microchip LAN969x support
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
Cc: luka.perkov@sartura.hr
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-2-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-2-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Microchip LAN969x has DWC3 compatible controller, though limited to 2.0(HS)
> speed, so document it.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

