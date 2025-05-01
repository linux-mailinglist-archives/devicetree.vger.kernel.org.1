Return-Path: <devicetree+bounces-172744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F08A2AA62A5
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 20:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65C7B4A7C6D
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 18:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3EC221287;
	Thu,  1 May 2025 18:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Z254Mk3u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7F021CA1E
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 18:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746123088; cv=none; b=f0db4HcCmAkzWP/iXhA+4KwHpI+kaPyaFNFcIZ1FXdNS2kMvVdaaV1ZIyPt5+Ql5/ueggpMnVCigfEKhz8Rqx6nb+WUY0ZR4sCgB3CKCLHPEMmAxVn66UwO35bQaKgmTItsawHQzQ/t2tonBFPfnaRqCZMKgZOAi7SK4lkFUUs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746123088; c=relaxed/simple;
	bh=n2hdrzkozFdUt75+CFb0KwrxNnR9IhTGVsPXZ6VJ5AQ=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=u2FzJ3pBad8nvQ+VOR+yAeN8NV0yUoX7ryNxPCPkRqlf+XK5yxCUvLGQJVWBQxDHERvjM70mWRF9xfSqooOpkuY5tKnGOLwp4/6EAUT6lVYi1h7BAV9F98k3C8NV1M6E1K126Rispf5MTFCgYYsmK3Vi8pkhhX+kTIJZ/QPHhVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Z254Mk3u; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-22c3407a87aso19008475ad.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 11:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746123086; x=1746727886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9t400dGVqKpa0aJ5NF/wqCMTUOEugJbXa0Ak07h82mM=;
        b=Z254Mk3u/zSGMbaP17a1gwGX7Qdl9VC6nX+mkYtasNPHNMV3pMncjHl7X7Y+f0q13t
         O9BsWhcyp1DP2DIjpZfxfU+rgVDW7vIWkhsS4moraAyu/L9AqFXOp1KrGqjYrEAHLH6I
         +O9SB+sO9AIDtpLJQmBXXRbz2SXjvNaB2tWMQD7KwTbLZgDHr4ROxtTGIuwknXnPsB29
         kK88O1MiOop6HUPYHT5Y68UvHTg4UCy5vO9W/rR9l+pofSY37zocqYsXv+LDcpgjEboL
         1GsZNr00hOjL3jLJHohjNuB0sdQGsASGd/LBFZa26ehY2Luy1vsurXdcqnHzqVZC0xGN
         wRjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746123086; x=1746727886;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9t400dGVqKpa0aJ5NF/wqCMTUOEugJbXa0Ak07h82mM=;
        b=DzlOoo2i0fs8tVzjBfKH06W1S/Y11ZsDQrj0OzXBUld3acVrSiHMPXHS+15civA0Qx
         MhjeM672Ul4Dtz6e2yWo1C6UkR1k5cRW2gKAgnTZhYbENUC3sns/8ZHUrUFBcoQM8gKU
         CbvOOw8eC07OarT1OqlVTz27xE7QCSgf6UiwWyz9qSnc2Q1N6MGMF7mET2MMVumHtpN2
         QiFBsXtoIbuDbWdjNCt7BwxLZNEDSN+M5FkcKo3iukG2tzrocstwoQgRlQ0iO5cUA1V+
         5B9CedSbVC1VUswqECQDnPhLGu0wzyvz8t7Cy/jFWD1Go8TYO8LSmlMO/pDbq3NGmVTs
         R71A==
X-Forwarded-Encrypted: i=1; AJvYcCWXAYPFnvYE7uFLZsfMlkKtUbYmDJcoGuLsz1H46m3Ev+0ttQ7WZdVd9kppx3q7rHwl3EevYjmK/a3R@vger.kernel.org
X-Gm-Message-State: AOJu0YweZybYjzTcPGP26v+mlL5ULGLeV1lv14MTpVKfVxSK8tqcjVcB
	PdHIkDcDZdIe8OsX6OHmR94AEUmUb/Pa1FbdbsRTovh6mBokWDANnGIsNtS517g=
X-Gm-Gg: ASbGncsFSiUu/GEwwAl9V39Vhgqz9eCyLz5coSOtOT8NYPF12IA1tlHgdpt2LL2UQOe
	+MC9tNyxq25yKav9cs/s1etL3VvWG+YxmXCiUjYKr8yCAPbx0KsjMcDVQefzu5yWanuA5fdXDPi
	g81ZmCQvkn7XcUT5J1AxZIM/wIewRReROJihupjNkBHYlmnJ4V/fh+W1MrZR60quB72gu3N6c+d
	Ycf+COoXQo//GdpXbxNukFaemHnwCaEfYYgfd3YM+6l7awjxVcR/NhfflalTopIG4qVsmehcTwa
	fmxFflqPkNPfNfmpq/6Pd7WKmYgOerAmPUUgTnU=
X-Google-Smtp-Source: AGHT+IHS7iGdpbnvZSPtibrutAPiNsrIFRXMmGkTFO74ZmAaMQXJuegvR8E/cjr6fvB47F0IN/BmvQ==
X-Received: by 2002:a17:903:1b2d:b0:223:f408:c3f7 with SMTP id d9443c01a7336-22e102cd9bbmr970795ad.16.1746123085925;
        Thu, 01 May 2025 11:11:25 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e0bc6d528sm9783865ad.137.2025.05.01.11.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 11:11:25 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-omap@vger.kernel.org, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Conor Dooley <conor+dt@kernel.org>, Andreas Kemnade <andreas@kemnade.info>
In-Reply-To: <20250427052735.88133-1-andreas@kemnade.info>
References: <20250427052735.88133-1-andreas@kemnade.info>
Subject: Re: [PATCH v3 0/2] ARM: dts: omap4: panda: TiWilink improvements
Message-Id: <174612308508.158405.11020603792617275281.b4-ty@baylibre.com>
Date: Thu, 01 May 2025 11:11:25 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-94c79


On Sun, 27 Apr 2025 07:27:33 +0200, Andreas Kemnade wrote:
> Add proper definitions for 32k clock and enable bluetooth
> everywhere.
> 
> Changes:
> v3:
>   - better commit message to describe what the clocks are for
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: omap4: panda: fix resources needed for Wifi
      commit: 1132bb4df2375ae4a2303068c6f5fc62bc63b870
[2/2] ARM: dts: omap4: panda: cleanup bluetooth
      commit: a2db9bbcf64a43c8347625dca9ca0927bb444d43

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


