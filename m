Return-Path: <devicetree+bounces-269573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NwnFU71ommG8QQAu9opvQ
	(envelope-from <devicetree+bounces-269573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B91E1C36BB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8BCE23024417
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6442FE595;
	Sat, 28 Feb 2026 14:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dmkp3l9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649E92D5408
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287301; cv=none; b=s6l97ESy1x09Qi4Cs93E3fAsghcRAz0/0YI6VoKyOlct6LCRjPouqZEdUsNNDOHkKj9iibaQXqONnSF7cKAC2qCBKgXZqfrji4wmnvQLkonlYfwY2iQhSjCayQIhjUFty28RZjFzolRmjMtDPF2Vb96lSIOTQBFt8Il6XwqX1/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287301; c=relaxed/simple;
	bh=xzzIVt0cM2X3pKSseFG7s8WCJOXdgLFwT0h8rOgOmt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MonF5EltYiLAogRfHhsJmY8uTsOrODUTvgQ7477lDHH52YPoZRJ39LDFZ/hUTdOC9MMDDDFMLgM6UnUUuyMsZNi3QGE4c0M2+GOmLnhyG/rpkU+6iOiRSV/rhoYESD5n0W2xVH8thBLhPX3pymlFFvDGSUn8IXb+q/q7cdZQEJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dmkp3l9E; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4837634de51so12495945e9.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772287298; x=1772892098; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4DsAsZ47Hy1YLfVUDttBLQyIVj8duDK0V23RicKiO8s=;
        b=dmkp3l9ERhWwQVvs7/lzKqun2vulL296ffAmTdn437YJzjHPb8Jz9LYzDWwNh2DMah
         JDjZRcz2P/tZ/NenaqEBkMK405m3B1eNLxHSUGs8CbBW2bnaJrA0dxugQbSG+7tydIwk
         WY3HPdTgWbR5oy9Wdd24uVxpAVY60ZiLXQi7YbnEYIfv0p8jX7SZVvyOESgR+RcNTLRt
         EsxwCA/8FaRLJKInaMnY0AVWXPCJg6Ao/nbJTPw6uhKmdDVT+qDtDMwAfCngMBExS3Ed
         ExWrylcFJ3IEQN+11k2tQ/dC5yRZnVYLwvWtBzog1Xsvl6Tv9nTfGyUH0+qFbqm8cswA
         chag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287298; x=1772892098;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4DsAsZ47Hy1YLfVUDttBLQyIVj8duDK0V23RicKiO8s=;
        b=MyH//U5/j3HZcd6ABAU5oiC+m4mQKp7BaVOtQFlpyLYSCz4jFQL+VgJzzwGQHAbiV7
         rFBJ/FECCTwzIIloc/k8iYC/ZVgGm0VPwlcC27rXUWVSvUAqud63pgLaTdXOBwvWB9vI
         K6rO+tu6ODcs3AdbOInn1G28eByGKIa2o/LKEzkbqmIwKZ5LvD1rk8MTo8+J0TilGJRW
         JCQehQsuhdCT2We2TkvriCbQUdcJp27rdzjzVAHa29BrscFi+C3XndFD0hZGfslc4B+i
         fiXuDmEg7GG90xQ93M+FVlBFPykJWbOBbZxVYKed6WrG7TShG4HkRpFxkR+fQm3/KHIf
         tIeg==
X-Forwarded-Encrypted: i=1; AJvYcCXdNsXLw4DZLXgRqlAUtkDh6Y6M038zsAocGPmNv5MCB4W5fnYN19SOGmvVxh57hw3ryI8EoGn2eHrP@vger.kernel.org
X-Gm-Message-State: AOJu0YzlGShxqoFFiL9VTujyIZ23rYYhvxsA9x9Ua5pWhSnjsJNtE1tP
	s5UxFAs4l08XBTw6NNV13lviNYcbv25H/tmXmVl0mkzHQdZTYgApJIYDKODNsLVFbpM=
X-Gm-Gg: ATEYQzwAHTS42ZBd6oO1gtPDr2BekZFwBb0HvQJnD9qkSKN/bPzfCivaP8AmkeTRcuj
	Ls9LLVoAw8b+4UE2dRRoEUVobVhQZIwwf8EmNjAijT662gmGgUHqTaVqTD3T3wh2FOVCepxhqDt
	KFFPvJ3fs6aRFJpGkTA4TQ+LWDkNMidhuITwIc3FH9qy3TTNRvzd76nokmt0D3tfY6FPh959XSm
	n83N8abT4Ljz2sbK3kumhSroDIX/a/GSn5pc2KiYQERDEoAsYnUkiRo21juuOUK0XdExZmY9hMy
	lyKQGTlDbiBseE73M/0fFoTJUPJeq+zdDAAkfFblnN/G4CB77ULAIjfsmllpBSjNJFoDWpiGa01
	ghAFdCJeIY6G8F0GDgAvZc38PD5fj+s0MAo9cmLhubJghyz/ttLPU4nqGcKhUGgHEEpfMag8Ilr
	Uj3o4wG7Vno5/7wC+uBl4eLOtlLwwQ364/kBuQmPvu
X-Received: by 2002:a05:600c:3110:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-483c9c23ffbmr100960715e9.24.1772287297776;
        Sat, 28 Feb 2026 06:01:37 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb84e4fsm81020975e9.8.2026.02.28.06.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:01:36 -0800 (PST)
Message-ID: <49e7865b-f1e4-4e7f-88a3-31f2b05c9072@tuxon.dev>
Date: Sat, 28 Feb 2026 16:01:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] ARM: configs: at91: sama7: enable DRM hlcdc support
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, ebiggers@google.com, martin.petersen@oracle.com,
 ardb@kernel.org, tytso@mit.edu, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: Ryan Wanner <Ryan.Wanner@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-5-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260225085430.480052-5-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email,microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6B91E1C36BB
X-Rspamd-Action: no action



On 2/25/26 10:54, Manikandan Muralidharan wrote:
> From: Ryan Wanner<Ryan.Wanner@microchip.com>
> 
> Add configs for DRM Atmel LCD Controller, Backlight and Simple Panel
> 
> Signed-off-by: Ryan Wanner<Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan<manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

