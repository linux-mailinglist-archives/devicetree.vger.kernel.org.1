Return-Path: <devicetree+bounces-269585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II/8K4j6omkZ8gQAu9opvQ
	(envelope-from <devicetree+bounces-269585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:24:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0231C38FB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0FE930CEC1E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569E03EDACC;
	Sat, 28 Feb 2026 14:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OugeYL6x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C7F2D47EF
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288578; cv=none; b=WhD26sduiHSLpBh7F5J/vRU1a387G1A3BmJGB+I6dMyhBOzKv7SJz0kVel3C5SMv0pviPYwnhUOJMeSP9UQYC7kMTrslqOTR97nNMnxCTZCOo3wJPzTDYd0W0avZg2dkocWghGJBddIY/7cyBrQ17UhifsrgRZVeDH1a2uqkRGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288578; c=relaxed/simple;
	bh=EthGt9zGCjg6PpU2DVgy5FLlAZ6di1E5duvnEOFfz38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PANaMOtt3sWAKFEuuBAYQkUe0oyRMVFBODP4O3L4AI0nq2SKq7AiaXbsWjlfY4rFKWkUguWlU5YmxakTPB3tU79Vc9qIhnvhi+IEQp1RvcSyOgqHQZYws1JEiDkUpmrA9OGa35Xk61MYA2sQFNUJ3ZHwXVMVngSlj6a54yhaanw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OugeYL6x; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-483abed83b6so24320645e9.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772288575; x=1772893375; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hPjdZsZGp98bzXhzTSlyBYqfNOAXOQtvUQ//D9HXBng=;
        b=OugeYL6xpxlbEOQeCp3J8kPcVKQms7N4st36mP1m+MCDOaWX7tOiHbFd3dkJb2h/wd
         KbFebw5UgooX97Pa5gOchUtBkieokOC93+Bbq2yyY8fZWcrnImMU1BGTqn6JcXDOPUV+
         DZ0PAagDm//1ilCWsYqK7jwydVNPgjyaFPMnzWJYInYoLvh7LAYeN4RhlutLixOSuNPO
         TumzKefKvj9wS1p2RPJCTlZ8cVS6D7YBU8DH3+HRykd0sVuRgZKOD8XZH9rCTjbnJWC4
         y7rYZamp4+HpwIGHADizPr5XeAPkQIym5c20CqUpnCcX0RUSDZ5qqrlC52Sca3DZ0CxG
         B/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288575; x=1772893375;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hPjdZsZGp98bzXhzTSlyBYqfNOAXOQtvUQ//D9HXBng=;
        b=e71oXOWt8FAAJ1eBxMaMR2m4JKEbp39+iwxKBJBog0yCYTVTgRdvXJXQHbFV2zpJ2s
         Aods7iSaUbE5Q05xyud/OlyPrG/ODYQufzfRROgL8WPn05VJDYwMGrKiQzmvITg84mO6
         uTVIgMD3Cc1/OWkiniWd83J1ZcVpyC21ksuwOningbyXAHtOzR9I/PuCzEO48ugCH6tY
         fAc8xa4yRX+KMwsFYjZGZ1+7s0skomoVesrTa6T9zjRWRxwkrYfRjV9suIhOK5ZvsAwu
         pMqC9StCPhoPjwEW1+1ERf7QQTHnSRtlPk175KGsZi6aPGBo4Ni9sX7IRmVYEi6AjOzY
         3SPA==
X-Forwarded-Encrypted: i=1; AJvYcCVDc+QzXGGoN6q+XZKtgBO5uHJb50U5ntdGW7ReaI+mQVLNDA9iaBOBbRkNia+kGBFBjppk//Nd/vdZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwrcShPbBFNls+AX1IyPMT0oIvIuMFfYtgMVjxbnqRXzQINhXQN
	9AvTFXLGtjVXPymxot6c16tRI4nwD8Qk7Mud3hm3knFllAG8/tisjcvVxuCh0oTSveE=
X-Gm-Gg: ATEYQzy7BtgWsiTcz+GTxm2T8WbG1dTVxcbWNENK8ksePcFV8/XYqzETTmoibNY9NRd
	vdzounMhIcpUcyCA/4QmRXGu4qps7Dm1A7Uawkk8n0QHM7k3ZEj2Q3oHSWTSQVvHTUbdrjJx7b1
	Qhnk0Zuid4Q3oF1TJXgVojZ0rv06PlpZbySkn9Xz3QR2BLFHIalESYKhpzcZgZoSF0zuYLlsx6m
	hso7Wg2UjSkibnZ6cIJpzJl6Rm62m8uS178Ovqxw1frzlFvP2wpSHRJ7GDSIjOdi/6VS3zjz1UG
	1OScZ08CyjRMZIZKKFvSeeEc0xUTiBmiVT9hZDsYYw5bchGALz20Lib6100Bp+rxg4lUj9u9eax
	ED0cz6hMvUS0bJC5czJdKxDroBXSuO7N1vTVmpTTiycDv7FJel4FLBMqV3u81OE7UyuCR0zMkB9
	LZd5/N3Y7xQkNGexwPdfhDDSWxgSFBUQ==
X-Received: by 2002:a05:600c:6990:b0:483:7ce6:1efb with SMTP id 5b1f17b1804b1-483c9bde843mr102315835e9.17.1772288575503;
        Sat, 28 Feb 2026 06:22:55 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bffc17dasm159284865e9.2.2026.02.28.06.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:22:54 -0800 (PST)
Message-ID: <89e2618a-a0e9-42d5-b82f-eded1269bd9e@tuxon.dev>
Date: Sat, 28 Feb 2026 16:22:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] clk: at91: sam9x7: Rename macb0_clk to gmac_clk
To: Mihai Sain <mihai.sain@microchip.com>, mturquette@baylibre.com,
 sboyd@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, varshini.rajendran@microchip.com,
 cristian.birsan@microchip.com, balamanikandan.gunasundar@microchip.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ryan.wanner@microchip.com
References: <20260212100147.5007-1-mihai.sain@microchip.com>
 <20260212100147.5007-3-mihai.sain@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260212100147.5007-3-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269585-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email]
X-Rspamd-Queue-Id: 2C0231C38FB
X-Rspamd-Action: no action



On 2/12/26 12:01, Mihai Sain wrote:
> Update the peripheral clock name for ID 24 from macb0_clk to gmac_clk
> to match the actual GMAC hardware block present on SAM9X7 SoCs.
> This aligns the clock naming with the device tree and avoids confusion
> with legacy MACB controllers.
> 
> Signed-off-by: Mihai Sain<mihai.sain@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


