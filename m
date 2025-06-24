Return-Path: <devicetree+bounces-188865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65BAE5D80
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45E637ABBDE
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F0E1C07F6;
	Tue, 24 Jun 2025 07:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jsLdpTKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCEC1AB6F1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749385; cv=none; b=Z75S6vkcqWAKZGOyi7eNoauf23coxbKvZ6fEACCZn/osLj6XNFkC/1jFE5GSs5c2hlSIB+m+DqJl0zp7c/BC/AsPtS54u+629s0pVey45r1ijrCdFFU4UxV6q0jmEGPxqDdNQnQ6ja72xtaJl4MjRbgN+oH+qS7kedrbfJc1Z4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749385; c=relaxed/simple;
	bh=EKXE/aEKoY8XKlPX7rC8PqgN484fpbmZ3LMUUXOMWpQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aju1VVjUXvjWydhgUJwSEyQ1Ax0ZGzR6YIxQdXsfA7JmQRPbzbTMcG2+WQyZi9afwo2W7E5S4Wv3ixg5HgJjXEaXzI+DvEUhbhIb00b7jKxmL43c4oC+3mJBII5oH5XdyEg4L5dpd3jjUwZUNYUm9x70tkgzqlmAyo3iXCzWPjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jsLdpTKE; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ade30256175so887292466b.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749382; x=1751354182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kxA0/xODbA8Zs4oCf0F+FHwMb1uTOtVumOYf0CCHEfQ=;
        b=jsLdpTKEm50QTA/S6mxHI5doIKUR28V6+/z+JZRUWJPOfUT97T3B8zwi6jEBUwD87s
         b+30ko7SpbppOos25uf9amGXXrco8W7jCtgE+5sPaOGs0nlpU3dRB9d1p5g8/i2fMuI1
         nfvKAbwAdriDiL8duCYv/tFhzbtX3tPyYBWlHondxdlOP8r/Jp9M6/mnc+/JQ0XjOZtk
         cHga2H/m4UFsS9recMQJw5h/rw9I1VXV2X8sdPViWN3AUwLcxRFpzAdJTtKyGsV5Qr5O
         5sDWhjF4Zy71Wq4lFJl91PfTvsl3ACUKz3EzDIRVQpKXRhozEWrkfOV8elnQZhkKgbNu
         jVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749382; x=1751354182;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxA0/xODbA8Zs4oCf0F+FHwMb1uTOtVumOYf0CCHEfQ=;
        b=C+Yr8Qxd/XCsTqlekq7rWVwRJ13ZF1FKUIy6HZfeM8WXX+8QaozX+Q1+vKXx/OUThb
         uY6EJqmeuJs4UDk0pQN77W3aa5ECXnZjVkMSbbDyciJfgMKGTVkcnJLO5VhYm6Rtyaay
         6lKBmZF9uP7O7u3AojafAQd6dvpu7xvvkk6pYwOXyBKqWhK0E3AnjvoxXGfZ06si44i9
         zgdZ+vHMoM/bf4dOobikMSB+PvQr89sSSKEwaTAFxS+Z20vNoWIBAXQr46wR72fGvqiP
         d4vWc5Xjbw0Cgay5u15YCJzxquwOldnrTwQwZ8UFsNJrt39UScCbf8kMSL34BR/DiZxg
         IcGw==
X-Forwarded-Encrypted: i=1; AJvYcCWQzOb2m6hiKlp1K+nkQJ8oF/zc5S453Jh0CwmU2W0TNqAgJyq0YaIL6cyht1uqBqgFGDUntU0/LdfB@vger.kernel.org
X-Gm-Message-State: AOJu0YxJM+xNwVdyn4L793vSvCaJ5DjVZWUOBEmqp1HLVuNsbGvvhXHQ
	ObFrXVs/3wglIf6XDjWBLKgdpWT4m8YHKRCeR4bSVTB4RaChlZ/g7k+RESwSyI4L/Wo=
X-Gm-Gg: ASbGnctKgG8xmVC4ewirTNv45HJeX0zmhh58PNSWC6uRdasiK3+2p1ieViTD/XkWjoA
	0WJAA0IaVpuuFS0wL/LduvqAVzLAHvAWbieKJwoTXPV624ZslgXMqATZtnpIxGl9INbyohj559Z
	kQQKFTcCOQpHWS4wrncpJMRFz+HLNFU7bA7Ihgmb669kqIz/OVRd57XTbnmEK2mwrKcc3ATXYMn
	QnnjOL8SlgSXGPS2FqwPhxd1ILZFXZ4bf4KwG0+tVq9v7XNkxUBctN4BewfxPQ5caY6Sbw9b3hC
	ro6PCQtqtXKnqCJ1PL1nWYk7JfwVhi54VyuRWqynxmyjLnlhyrDp0rpdT62ag3Bkdd/PxMM=
X-Google-Smtp-Source: AGHT+IEIvoyLVExbsj901G5YecE0DTZmVKURSAooPNdScT//IubtDuruuFRqmIiyK2qZUSEs6b5sEA==
X-Received: by 2002:a17:907:c295:b0:ade:422d:3168 with SMTP id a640c23a62f3a-ae057b6cc35mr1350560266b.37.1750749381746;
        Tue, 24 Jun 2025 00:16:21 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b6e41sm821198966b.121.2025.06.24.00.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:16:21 -0700 (PDT)
Message-ID: <c99a0367-f948-44d1-a3e7-91f03327dfab@tuxon.dev>
Date: Tue, 24 Jun 2025 10:16:19 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] ARM: dts: at91-sama5d27_wlsom1: Improve the Wifi
 compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, nicolas.ferre@microchip.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20250617140502.1042812-1-festevam@gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250617140502.1042812-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17.06.2025 17:05, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The at91-sama5d27_wlsom1 SoM has a WIL3000 Wifi SDIO device populated.
> 
> Improve the description of the Wifi compatible string by passing the
> more specific "microchip,wilc3000" string. 
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Applied to at91-dt, thanks!

