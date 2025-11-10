Return-Path: <devicetree+bounces-236797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EC1C478A6
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A35CA1882FFC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B105324679C;
	Mon, 10 Nov 2025 15:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Eah1SoS9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC09C242D90
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762788425; cv=none; b=Yr3uklho6Ph7783Y3wdU3FqXMkqylBPkDKb1oPcS3QZpqeF5adF+DxPpgsdlK4O9T80FRFpOENLODuZp4dAQ4ueJ2Ga2ehLgu04og9BsUeJRzhISkF0zSZbVmqo+WafYEhjeX6l9lARWCdkE4IYx2c3PoEH5pBUlrFY8aRY0JJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762788425; c=relaxed/simple;
	bh=2+TwJQ8oA9Lyx9ApVt+VKWFMh5SdFjYczHAvYgBcGSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uUSe2i4r1WO40kXuJUMvyoU3k49ffhyMoFCjuZZ4D2eJ+SqX1V3yzc7w8CmmVEwJ0iMzBXxT6Zo5UtgTpoz5cO581SjrdMGay+tSsjt4dnwFHAqT8DajKXYKSkDvY6onm/vZZqgMH7VZXz7m1/eJRmECATWOwl/xlvubNOG0NRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Eah1SoS9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477632d45c9so21125215e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1762788422; x=1763393222; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sU4Vu+5Nhcr+sXRc68w+sgESrqt+otDbTB/fX8fU/W4=;
        b=Eah1SoS96coR8VnG4Wqa6NTOPARugIiuddHN51RcI8DEVg+8iy6Znbeq3m0juLUfQ4
         TXU+t2xlBk1YuQh2t9modn0swMr9n4pqFDbizNK7gj00hLE9nDQKFBMA7y70z14ANH5F
         n60DIPoIuOPDci4DFBELSwR86PvkVj+rFiL4CUCTL2hb6AOmo0VxqRM+WW/xYaUgFMXc
         amVIeKhwTU863j2JWIBZb40B0fsuiw2Mwr65uNzfGsPwfrKLc27NcjmwqwUmYMR3VWdU
         rpgi/HYd8ZTQc+siTfWlPcwZ6kH1Dje7aKHpYGex17qG6vgS9zJmGr3fBi0GZhxVAgtk
         8Oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762788422; x=1763393222;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sU4Vu+5Nhcr+sXRc68w+sgESrqt+otDbTB/fX8fU/W4=;
        b=rwxe3pqlk+rw+R3sA5407bk9BmTcXQ2ypQHW1mQ0D1Z6iEvu6FYnx35joWoDRQsi7M
         3CxtyJrx94nKfNv18SinI4oZDHlGKwO6/5d2U6h6AeXYSPap5JhgbOf0hxW4UbGXJHs2
         2mtBgxVxC0L3HxCyBMuPARf7CTwPpFXnWt0mIn02eqklivZ+7CNyBZj7XghTRYlglawi
         0Ak9+3adVp9JcO0kfiL+KUnO2BIimq/s3OSTLHOlgGeqHI+OlugJbMzqJSWuA4GqvA4J
         2JyfYBf2GhQEaCEIOwjLifTm2nDlj0TVlYTHSL0pca/WRYNVcIhLNy5fhwK2GeQpa24z
         sJ4g==
X-Forwarded-Encrypted: i=1; AJvYcCWcI7S5en3yvi7HrRyrKHd+YkGnLpven7y4tKDow1sVLYCMFbO5tDj00/6aFIeXdnsKgx4+b1LCebBm@vger.kernel.org
X-Gm-Message-State: AOJu0YwwC6TlmHiDPQLGepTWlAnI0KQIn15hkz/9Ar9FBesyz+AODYwY
	HXo8JOzrjqBHGk3REE0EkL9mlH5Xfmdt+RpCXYAJmg7zgeuVfFlfAaRQRq4xbHvVYNU=
X-Gm-Gg: ASbGncuoCWYhtoSQ6kElAUd8HZ9A81r7XBQ68rQh7SVnXw1YNrQx/7ZWL6ZuWE586Dz
	OKaNU6ekW8+iWHKo+nHevOwwVVu2HNC7gtmGRcaa1btG581z6G8U6t79n2DzHbp9MxqoybFiYOa
	wFDNzmrCsgDv+fx8dNc6OHJLe7WFmVkN1ciaT9GliO/9V2ya8kjzBJnv4W0HZLn7epIXx6gTfDy
	AlKIkeNeAyZsJw9TXWEdD+U9YtAUB+6bop2DU1P9+KxSp+dxZ6uJxMv/qzkIbHDAu0CygGRF3uc
	Pn4Sxo2XJV/rqxFuC+ctYcTU0VfLGFiUS3SVu7Cb1fIhuAb+FExdBps57kliiByOhHHNoTWB7Gq
	/yRg1URm7l7V+kLXwC/IYLXUoEDzlHuGY9/ltI4mBK286HwVF6AeGpjiMv5JJOXgvC1pp54mn1w
	Fujv23tXwz
X-Google-Smtp-Source: AGHT+IGKa6znPzwKr8w/TiVXgulW73+wNboeJt9rzEOBoA6V/J1joYMMoFHr1OJr0Wko0CzJFczvYw==
X-Received: by 2002:a05:600c:45d4:b0:477:1326:7b4b with SMTP id 5b1f17b1804b1-4777326eb64mr76072995e9.19.1762788422160;
        Mon, 10 Nov 2025 07:27:02 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775ce2cde0sm329772085e9.15.2025.11.10.07.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 07:27:01 -0800 (PST)
Message-ID: <fecb65e5-f434-43c4-9132-cfede05eba0e@tuxon.dev>
Date: Mon, 10 Nov 2025 17:26:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 10/23/25 16:58, Claudiu wrote:
> Christophe JAILLET (1):
>   phy: renesas: rcar-gen3-usb2: Fix an error handling path in
>     rcar_gen3_phy_usb2_probe()
> 
> Claudiu Beznea (6):
>   dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Gentle ping on these patches.

Thank you,
Claudiu

