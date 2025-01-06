Return-Path: <devicetree+bounces-135974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 338DDA0332B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 00:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B55F91885341
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 23:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018FD1E0DC0;
	Mon,  6 Jan 2025 23:07:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD7C1DF73A
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 23:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736204872; cv=none; b=c22wMTKx/ac/MN32WoIkp6+OZedrWmAjN0Scr75IKb822u02GcNVUKrgOz+x3WtjBv6rkYERnpAENJuX1xAtJ94AcqXrgu/QlfvST+ECKWHweTJArzXSBvoQHN6VZrZgY/f0/lxTdMYr2eGjj+bKieLcz2oJjKKGosJfLBzJARA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736204872; c=relaxed/simple;
	bh=QPKVwuyC154yrpGKNKQiqD7N3ttReF7lRwttSQAv1NU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tlS8cR3oQzXMsAEvfi/epyvgi4QlOteZoOGFSRbOjBYZpzoABo/E+cZJdD7oDXBrHlxYbADVkaj8oAtuAsZBYCmmZlwa8HIHZbT/RCj3wBoaX+g8/GvH3uHMfBEOTHOQT3QJBVo7MxD4lk45lzXa2gFOrHRQLRTRDXJyGPW9wnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2eec9b3a1bbso17065016a91.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 15:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736204871; x=1736809671;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPKVwuyC154yrpGKNKQiqD7N3ttReF7lRwttSQAv1NU=;
        b=D7MPI8bQoTlEJkejkniaUJlHzSMTGv07IwThJAguFeH/oVhqBHCf6Y24nn2VIBqFLb
         XX42VJbC1/OpMzcEuHmNNDdv+82Rd0SYfxhZQhS0v3vUmPR9VXjwX+Rr9vYS7moO4vum
         16UlSX3xF8XIhWzjCikw0hrltNKsjEXWlY4cdZm/uQpyI2kg8LbkpFp0lKSXfAOubWBa
         N/aikTQnTLzz/8WLjqXB6+Yy2C07H9PBihNTEgWm04eZYdMR3vJwgzVDfInYVeNDLhq/
         0jBMOqYV1OHOnli0wRYxH0XQcvDNKjrfWVxUM3/d9USQAq+IgJyLvk28hx76QhCacXsC
         Meuw==
X-Forwarded-Encrypted: i=1; AJvYcCWsIUehMex6BY5HW3teGGsVwbWtrHFq8g0Ezl8wf1WAOa/0xhQhOChCOwYcE6aJ9g60ThNwj7QqCtDc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu/XpCcWrxZgVt1l/iyTbTGp/sqIQ0XksYeHQ/yKfQlwROyBpC
	4a0wd5avxAiaTWE0E4CKEsQFyUC52XJm5kYgAeZxxAxIcJiiNbrH5XwO7v4wiS0=
X-Gm-Gg: ASbGnct/0NSeNrceT83XGwZDDxXlS5MI88e5TobaYDwuF2y58Q64kpcf8+dP1NT15Ic
	BVrCZfK9EGJrtXFlbXePZjn1WnIQOHqSD1smu+mjCe4IWYa7Yeai4i0sCJQpj/c0AG7d2d/K+Yr
	FdWsYIW5MRRL+Fgu44wEYarY3u22E+vDLqrnfpnjyymbt9RJNJg4cpTShvtS75ofxIngjpedrcN
	EmFWHWYubt4aSu8GUvsLkcdRvI4tl57LaiwSo93uvZdn63z1VeDq+Y=
X-Google-Smtp-Source: AGHT+IH6hRaGsYu1THr8tojXrvILWNkdfCnHtGTAK43r47Oj1S9W+uktWYkoDYwwa5z/K2tskk/kYA==
X-Received: by 2002:a05:6a00:8085:b0:724:d758:f35 with SMTP id d2e1a72fcca58-72abdd3bf92mr89596823b3a.2.1736204870809;
        Mon, 06 Jan 2025 15:07:50 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbb4esm32945990b3a.124.2025.01.06.15.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 15:07:49 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Judith Mendez <jm@ti.com>, Tony Lindgren <tony@atomide.com>, Kevin
 Hilman <khilman@ti.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sukrut Bellary
 <sbellary@baylibre.com>, Bin Liu <b-liu@ti.com>
Subject: Re: [PATCH] ARM: dts: ti: am437x-l4: remove autoidle for UART
In-Reply-To: <20241220223523.2125278-1-jm@ti.com>
References: <20241220223523.2125278-1-jm@ti.com>
Date: Mon, 06 Jan 2025 15:07:49 -0800
Message-ID: <7httabbkxm.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Judith Mendez <jm@ti.com> writes:

> According to the TRM [0] in 21.5.1.42 UART_SYSC Register,
> the autoidle bit should not be set for UART, so remove the
> appropriate SYSC_OMAP2_AUTOIDLE flag.
>
> [0] https://www.ti.com/lit/ug/spruhl7i/spruhl7i.pdf
> Signed-off-by: Judith Mendez <jm@ti.com>

Just curious, does this fix any particular usecase for you?

Kevin

