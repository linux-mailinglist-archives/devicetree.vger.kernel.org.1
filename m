Return-Path: <devicetree+bounces-251675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E42A1CF57BF
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1B76305D9A8
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 728E4322B89;
	Mon,  5 Jan 2026 20:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qU0FNubC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E463431D36B
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644159; cv=none; b=aRsEcKqIuLvRKJo6Jh2dG7SI3eVLK3ZkD59/NAobF4WTC8goKH2b8khFmdOsYgGwUw/ODaY09wPH6uZu9nIgO26pOjAIgYkTGqVgh0cwOrRA1f7xkhxV/fOWfliWDGnwAVL+MyQeEDiD8m5mRNQRo3QLqJb4LlyQmqJL5iLb1IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644159; c=relaxed/simple;
	bh=Ceyg74x6oDwAJ4y3yE53O3IVmIFKtQCfQE7i8MwWJcM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NFLESFG+dZrMIcenFkp88IcwEAYLZT4zQqzJPCkf96jgNMvMbNlzvWxvWqcvONiNXeGMoRir0Ws/edzBBuMnheQjfkiTvliBldsnCNJG+6Gj1prskv7Im5s2L7ilJgFvYdyxCBGbmtb0JOue9uE7YyVKrE9NSg4hW/DW0W0ZURs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qU0FNubC; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0fe77d141so3479415ad.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644156; x=1768248956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VU5TLhvER+Rj6zCPwuh3CTXDDY3GmgBOzs42Vt9i/u0=;
        b=qU0FNubC40DKqcnXHa7ljSY8ClQouQU3xq6kPg/IMT2lHNoLiW70H0kJXo8KNLKjEH
         6x9TvyQtFPd5EM1zSrrxLq3Qgw3H0jNlxIKj9TqDLYopL8L4Bxb23UUTtxBuPqYFspV5
         qvOhgYSHrVMzo/DBnyXu4nZX8EwKi/6NASBDOY9ZIx407WyiMNSu3ZxHASna5mIf/2oS
         HzUBCMJmhfeOqgdR0km3LCMT7p/GLkYKi17xYfMxSdLvKcyrZCcMVrHf5cMhktrT8PPH
         oSTflRETBzdPyaJ/jiRA344RrVRfJs/cRZYn5zwRnYO7FkX2381K3Ffv9RfF/wB91e4J
         xzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644156; x=1768248956;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VU5TLhvER+Rj6zCPwuh3CTXDDY3GmgBOzs42Vt9i/u0=;
        b=QKHk3zzEkVXdzLffl7ZeX3k5eGeJXx0exiswO0ViSq5PA5F26qxSZXX6vTDTQkXBjU
         3qX/i1pufwqwec2g1oONhN9r6+4kme1bOSkQaTaw8dvY623d8xjEhHP6gY6OZD3gONaJ
         OP39WTDXcln1W8TKVCGClldfWUDRlTzEjY/HDK9RlVWof3BrFvvQMQt8Fvged1pGWo38
         yTwFTkPPx4Oc4KjUTP4rMQY50RYCQ5vAuDNAj1WC0nSlEvZD0hYOMP2aNqIuqH8pHScd
         x/cGPNXxJSgDIPS00JXxleSvBXigMGZbrUAgsSx+T3+SoBTzmQYRekE2lln2xZ01gMZL
         38uA==
X-Gm-Message-State: AOJu0YxsRgStYhogKxqzHOOrKhP8MWzcSvewZwSYcC6unkqSgW4n1ICN
	cMZx4LbatNa4ou2gQ6j3ESN5l9enIfyOx+A9452xB/3n42Zp0e3+4Gp0wMpX8mwLOIw=
X-Gm-Gg: AY/fxX63ZA3n/CfMDlAB4twn5GVklAGVaOMmyO2NnVNR0WsB6F3ozSsQxFpCSw0X6iK
	DzyX7VQlqUDBIHEfSVsS7wB4wVxvpO/Wi+M/BmXCrnU98ortxxaxuVydfCFLUGPgEEGtfSPN2uU
	d//Sq52fH8odymQ/1mkeC4nTP1aJ5aI20BNPsx+O5kYXKO29VOiUbmCCWtgxPL9rbsmY3LEi2xR
	wkmJt8y6rIGSWUDU9kxUVNWbhjOHKCXOSdmgmijwKk3NElxwsPwKGzchOk13DbJnhJ8Eku4Y5h7
	3wMcvgxhkcMKiZR9ApLzlY8r0lceYXYo9hU9dHLVxWXD0wYsXYADnFq5b20qTWgyEKHiQ5C3o9o
	eYltCaCM2ZOMEDg0jh8aTx89ej9hs0COFzBsBmdN7YbstwaHpBkGHiSTchQo5Q3eg7Szn6yGwQd
	06KsjpidNc
X-Google-Smtp-Source: AGHT+IG/xH2I7GCpScTbO+Om1Cde1y/sava63npVuRLVWenpmlABf3gdIOxHqsqPOhghWjQRt/IEgQ==
X-Received: by 2002:a17:903:2d1:b0:2a0:f0e5:3f5c with SMTP id d9443c01a7336-2a3e2cef6d7mr6398625ad.34.1767644156217;
        Mon, 05 Jan 2026 12:15:56 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2debsm909585ad.65.2026.01.05.12.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:15:55 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-omap@vger.kernel.org, yegorslists@googlemail.com
Cc: devicetree@vger.kernel.org, rogerq@kernel.org
In-Reply-To: <20251117113535.2248177-1-yegorslists@googlemail.com>
References: <20251117113535.2248177-1-yegorslists@googlemail.com>
Subject: Re: [PATCH] ARM: dts: omap: enable panic-indicator option
Message-Id: <176764415513.2561401.4701332618728332974.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:15:55 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Mon, 17 Nov 2025 12:35:35 +0100, yegorslists@googlemail.com wrote:
> Use onrisc:red:power as a panic indicator.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: enable panic-indicator option
      commit: 60884f7a982770b1a64d61be7f96214538756390

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


