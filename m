Return-Path: <devicetree+bounces-256541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D600D3970D
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 15:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5074030A27B4
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 14:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340C7337BA6;
	Sun, 18 Jan 2026 14:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AU1u6WOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D465D332ED1
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 14:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768744996; cv=none; b=qXatoVi+a2J3v9I5KdeTgwKo+qO5brjxGur2Ito50NjKjwAtjIuIluTfs0iztC1EEnAVoTD0UIx1gsxip5JGMOra8BhPnpcbiG3OxpVrfOjMBinJTXKX1S6YpE7AHpsb4kkFEU6Di/4vLaXZRInsxgYhd37suBvJ0/lk37qJWlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768744996; c=relaxed/simple;
	bh=/GsF+Uwls1Cn2yinM71Z8W+ioXcZeW9vpkl4szRkNjI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rCr+PFVmVTXdP6iNVRwfmo+6v8uYtOQeWqLCxJirTyfWHoOLmglZTdsO4tf4QPJGVela79cFt8wkGqiCQQbGSwsF7f2a+GJS1i4kt+OVChTVrmQmeyozmza7Wa2F1CKewQKNWtnn2klvgwuvBcChkpUP+b1JNGJzTUK9+nRkeSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AU1u6WOt; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso22473005e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 06:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768744991; x=1769349791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IMK1YqKVaUf0IoyRsQOMCKJ4gS01F7A0JEX5JckEMXs=;
        b=AU1u6WOtLoi8xhtxE3eZH2de7tMEOJBbWbxjQ3yhiZkjPT2U+TxzYsQSeFKocZiPFp
         AfUR8WeygLNHXiE9Viiw1RtzFAsj1KyVxaWitGd2d8N3ANyj+Y7kO43+hm5JZhbBq+Lb
         lPvGKm4ZddOA32TKUnbLjuE3F06FWBpu3jNeWG8PxL6W7eEJcdrnLaI8SrtPWsd/V4W6
         +EAvlq2BKqQ/VvftFp9V9f78dx1EN5wahowO2gdSHzutwK6Z8mTGZRreowFvAg6oCWZ7
         I8ZU60NADPdABqce0/chNtZRxbKpG3J3sqT37gvVSYI6RT6C+EjRstJOaUfYQFkChaEz
         m0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768744991; x=1769349791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IMK1YqKVaUf0IoyRsQOMCKJ4gS01F7A0JEX5JckEMXs=;
        b=wrbKM7hhjXiOTgSpAtY8euNFcFiXr5N8lJwmjN0B5gaLtsLAnF4oAGpWZADAvV82p+
         Db065RK2mBTqMtgu454nJ3ScgjBbTkNmn3AIAqLJk8VJuIxZlR6InqZS25B3jYIOLajq
         xwkgpdJRHeQ6KjaYIVKlJfhipdW50GYEBDlL32F+uTOML7UVU2C15mhCSJT+a2tPGAtw
         faxv24PkYCQJqgX8brrqlFjEbnXl6SHGi43crWk7YEyzruyMQOyMJu9eB1YDmAU9h7Ph
         oS+TkT/r4WL7zICuxBzGwQn2MThGGMyic0qYFrYf8gtYq6tw1RaXZMse1O5WB7b9Aqz2
         OuqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXStNsFfIAHkYA60Du7zTRmXhgPf649LnapdxygVCBsSbiQtsrED54nCf4ly3abVtEwDYa+khiMEgYR@vger.kernel.org
X-Gm-Message-State: AOJu0YzYX1RMpagSyS5ijzzQ81cW6v4y5eyWq86jcVVN6vjWBIok1MXm
	Ex7ovGEkqKeY5v7cPP9IXoZNEf4pLvXqd9BKF7fTfxTSo0YWdZ1YFcSnYRUyHNFCtNc=
X-Gm-Gg: AY/fxX6Wrdv17G+U5054BVONb6wDjV2HB3LIz8KyyAdjOTFbarWWm73ufyXhAF8IjQy
	5XmWQRYKRoQjQ3q/eUTxs2cMS+r8n6Zddq4uV6pH0OhLZeynTVN8TDO2rnDHsoAXQ20C6BGtkiN
	akCF7BHzR0qcfn74s2btpT3bisOpLbN/5moWnYDG0ihunwNhC9+KzmwGDO5vi+SXlThp+JtObWx
	/kGoclO/FOQCwJvQtj7oVaFrp25XzpSIRpCOiRHuBxrBW2UReGP0O0YdUvr1sPk5vQbiY6AxRS5
	tOWLy3hKjkmGeR5WlrAbfDLsH+C6D+3uLdoPY1UZOECdpx87CJuE/EE/OFt98svYcTGeN66ELEe
	reZQwgDbRDEXzK6r3cEvGsE0lRAIHfIpH5GxIZZQMiOPejE55pfmhIg8WDnK3juS/rWwd0olyPu
	gAhF5hnSKX5c76GCwTcQ==
X-Received: by 2002:a05:600c:4da3:b0:47d:7004:f488 with SMTP id 5b1f17b1804b1-47f428f5e9amr84049025e9.10.1768744990847;
        Sun, 18 Jan 2026 06:03:10 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921df9sm17725892f8f.3.2026.01.18.06.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 06:03:10 -0800 (PST)
Message-ID: <9c34b805-8c6f-4711-9718-6c39a141d451@tuxon.dev>
Date: Sun, 18 Jan 2026 16:03:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/11] arm64: dts: microchip: add EV23X71A board
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, lee@kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 Steen.Hegelund@microchip.com, daniel.machon@microchip.com,
 UNGLinuxDriver@microchip.com, linusw@kernel.org, olivia@selenic.com,
 richard.genoud@bootlin.com, radu_nicolae.pirea@upb.ro,
 gregkh@linuxfoundation.org, richardcochran@gmail.com,
 horatiu.vultur@microchip.com, Ryan.Wanner@microchip.com,
 tudor.ambarus@linaro.org, kavyasree.kotagiri@microchip.com,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org
Cc: luka.perkov@sartura.hr
References: <20260115114021.111324-1-robert.marko@sartura.hr>
 <20260115114021.111324-12-robert.marko@sartura.hr>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260115114021.111324-12-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/15/26 13:37, Robert Marko wrote:
> Microchip EV23X71A is an LAN9696 based evaluation board.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

