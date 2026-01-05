Return-Path: <devicetree+bounces-251676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCF2CF57C2
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DED83096D9A
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7AB32ED4E;
	Mon,  5 Jan 2026 20:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v6R/x0n/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01C122097
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644159; cv=none; b=kvz8dSKFhlafIf/37/RpHsaMJQtXAB0gwmoHxYVnvsD6YT9FEvbM6+F6iJUtAPF/ZWlq5XhCdctHHXzNM9FfrNoLG8Z6gJNGy8o/c94xwb9qxceMss/UIcARsiRPrV1DTXAUEaiJmWldDi5u0lxijrRurKHfDEJLtQsreGx40b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644159; c=relaxed/simple;
	bh=PWuIy+WsUlN+W7DmSo/pHhR2+QAndo6fSWRuIjHhlOg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nB5m9j5224VUaWEI7pqY6TiueXopBt2AMd6r6/HMVWnPuVBzfoS+K4aHqKOLPXww4aqj0kGGowOxHFMsgvAHDUAsdbp2QF45EAvR0fpZhHAy92QNhE6QWZdBmWr86yF26zw4tv7h7OAEQIhsC4PIwdnhLcbeOurSkEp641eeM2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v6R/x0n/; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a12ed4d205so2778205ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644157; x=1768248957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJ4pvYMRzKvn6d9TmERsN5GKYq+cuiUXOIc17FaP20c=;
        b=v6R/x0n/cIgGZdLDynbncHJuvYnCfJkR88CfgPk7B9DUbvGGY9CToKeUK/+wDs0EG6
         vBJg3S0QV71QjEYWe0c519k7CnkvFqhescP2C1BW90sceYtQsoJqWfitraqYI8HE0oHj
         MBfiQZAI0hZt4ZQBSgxB4rnC4s3n/JiWw+JES0dlsTrDPALHZ/t58qPAdvoLqPkEKzrM
         pFyCAec+aWCzEEhjXnZ2BfkdCaZNOAQyUuSrN04u6t8p7SilLZnQnGgmJzYfyz9+vfF8
         2dpieibcw+y1Kj+YUGGLt1URqWuI6TD24IHfWrNlrO5SPxU1XM+jG9yJjiUaxSOcsIVu
         CRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644157; x=1768248957;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SJ4pvYMRzKvn6d9TmERsN5GKYq+cuiUXOIc17FaP20c=;
        b=c3zw6ytZrKQTbklcAJ1qgkTs7wmOkir74hEQtTQHEpzzIzv2k6Fh2UA9kyvDxNpvBm
         r7YMqnG4ipqEqAEp526MT2Ojy/BwrnNm053CQr2SES6zdAwcc0dXzHwed0GLucVpRlWI
         71S82eDfprTvLamADKBqGtHjmoxEo1RHQn+20E4i9mVxiSq9hw3QGxIO9Ewph2lCFJcx
         rVnH9LqS/wCkMUvVDP2DeenqyJrx8JkFZrhCPpZl6zxpSX5JYu7MqL08J0s/6e3Bfucu
         pwt/erAwZhpgdz8sIuHNxURUSdfPc0+//RMY6HbfG2iuiIdqGQwOCT+uHzcdPJT0+TjT
         yhNA==
X-Gm-Message-State: AOJu0YzU1wy/oH+SxQSZE72aO1gbAGrFVBokRhkC2F64EGVAJuwuRgWJ
	N3sVM4VxebzGdJwZwjF7VFg7PSb/t+3PoUfz5gX1cE6bVwJWl/gWi1i+yRa2/U0zXDM=
X-Gm-Gg: AY/fxX7bIbIFjqpx/QRgJF3x6R+JPFtRGyL5Emba6PmS/yNdsIqghRowwKp/zAoTkfz
	aQH4ipj08gIlwU225lAQMPxeRRFxEt2aReZ23x/3LgRQ8i7idNjQdBpI9YWzMB1aiYvx+fUQZCp
	XR8tdcZiRgZtvPbgoZAzaVKWgxGZzlOGT1sfWlM3fYXJC5fNc5QreTUavhYduD/OeiGFfZmEF2K
	Bt2iP+n/BDkHMKRExck0IZwALzckEc1+J/txycDL7pcWaP/j+ct/wODwPmcqbm4Yy17ZwxlgxJJ
	heQLSCoQjCNw3pNmq4BR9KKmoIhneNoBJPZS9LRw41xPuzpiODKDC0dpaxJ4BkDDzZGYHhn4KXI
	cl3kFhVxqcLs4R4ZaRYxTuI8afi5Og37NkRK/Z8Sp1lZx/Ob+u4xzv+12oEn70iADK7GDOssgOH
	8MAEumRlUj48Gn3bUY4Kw=
X-Google-Smtp-Source: AGHT+IGjBV37hjEyetgmadgFLSJu/2Cv88meimdst9anRhrcUUNmQ6ZDaJddTlwwsnyBRUMebPcXfQ==
X-Received: by 2002:a17:903:2384:b0:2a0:9a07:f8be with SMTP id d9443c01a7336-2a3e2d9e1dbmr6999515ad.22.1767644157206;
        Mon, 05 Jan 2026 12:15:57 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c4795fsm1020725ad.33.2026.01.05.12.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:15:56 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org
In-Reply-To: <20251118154856.2015184-1-alexander.stein@ew.tq-group.com>
References: <20251118154856.2015184-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: tps65910: Add gpio & interrupt
 properties
Message-Id: <176764415635.2561401.10050045806328999741.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:15:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Tue, 18 Nov 2025 16:48:55 +0100, Alexander Stein wrote:
> The binding document ti,tps65910.yaml requires the controller and
> cells properties for both gpio and interrupts. As they have const and
> fixed values a default can be provided for all users.
> 
> 

Applied, thanks!

[1/1] ARM: dts: tps65910: Add gpio & interrupt properties
      commit: 25332069532ac030b1185bb8084c1a5298c12bea

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


