Return-Path: <devicetree+bounces-91157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F80A948168
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 20:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6030E1C21FA1
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 18:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB17165EF1;
	Mon,  5 Aug 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SSCs4lzn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570BC15F3FB
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 18:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722881303; cv=none; b=FuHVy3seq5zLOCcjgrWCC8xUqkNtFf3PeNV2OREtB0ZxIygJBzCF+fQg/ftz4mfV/MJl7gs9JyFNipwJ1AbuajG8DCMd3J2+av8giktdB9HGfHZEXDZC3QUUYQeSLNvY6knaMT1NVOqEIPUR5aZcXApaZuzSS4NkE7fhB1FZye4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722881303; c=relaxed/simple;
	bh=ex9sBU8+XcVlEm6Hd9Dn0bMTj3eYGBPFMvK5O/6QpcM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uQc4SllHIu6cO6TQq4L6QpfhaXaWjWM+gw3nebltq6wu7tR1+YAkFmqTdoAfXbXSxTRXMPkfSzkx5UH/ar1SIAdL1amzgphu9eddPBBQeCt/hXnadCf6zBB8n4sitvDItPjPo/mtxMnHMreruJhDjsch1nlkVQgbJIeK/NgcEUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SSCs4lzn; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-70d1c655141so8016891b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 11:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722881301; x=1723486101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCzUM1rBigdBY+gC/XBYAT7dRPZ12RALycpgAtuA5TM=;
        b=SSCs4lznCXOCiTc2k3tcr4WsAZAtSZ0zymBQbA/WjDQyuSySycL8FKgL3hpwr4gY13
         IaV4SpcDRC99xjJCfMaierFOxZdnc/nSSHBKUzutoIxyxm+PoMh2uFNKOZ9BRLBjpUUr
         SW5TSIIrA9KM5dC16dH/zafiezglGBptP8w980csHgBzkkTY03NMMdAihyfAAgou0PYB
         VIl/NMHnHBerbBFb2jab0eNDgjf7PQDmaKPQomj3HS2oUBHdm0QfSDqKxR9S43jPQDQ8
         3CoA1KsTW7rOwIwMNsNvN3bzqKJ28Q54SGs6z9FlK13cTgizxxa6x6SkjhdFuid+PBfW
         u7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722881301; x=1723486101;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lCzUM1rBigdBY+gC/XBYAT7dRPZ12RALycpgAtuA5TM=;
        b=BYLjXVHksRx50tpJe1/sBJg0mkLgc3cC+wqQ0u+SWLtQclKwbTOt8cDoBxnwQqKrsx
         dicb0XGe5WHo4m0v4gT/Dlh3pbfqjf5fp+zpXMkGGJNUpsDTaamd3dpLIXgcbmk9QGjX
         tSC0t8kORYF/mErLrRDS6d2sQnyP1a6AoTb5WqKX48/3I0ZAdJk78yDBXa2rpElVnOOD
         HHGqhJiNclnVdMXWSrpBg/+JDlYUzr9h/75i2B+2rhVH1mbfh9WyI7L69N1pB/hKw7Vc
         0qFTk1HuzPigOqq8GnbGZsvFcvlrNYuqHPX5MVmddFP8VX8QBqg/ewX4U5cN3wjMWbAI
         90YA==
X-Forwarded-Encrypted: i=1; AJvYcCUCA5ERymc2YKueTcSOFAP6+ZU1RUr5bnlCHr0Y3yiKKatOJLz3ybjakxvqUSNQzCqbcoIj6sLD5tCgw6ZJ1in4T7KhLzG3WZt2qQ==
X-Gm-Message-State: AOJu0YymoEJNqajUkUv+UAXDJ3ari3Rz01lqYlH6XVT/Kq9nas4Daju6
	Q+uXPA8wfByaS8P8yNMgcpts4u5cs9B+mE7cLC7twrxukMMNQ2zSGSXZ/qYah4Y=
X-Google-Smtp-Source: AGHT+IHapSxScv2hAxzYbUrvZzDgqNHTuyG79pbGtSxB0f6I8HdmyxGYQhsQh3jQYYr8CQUoAAQ7gw==
X-Received: by 2002:a05:6a20:430d:b0:1c1:61a9:de65 with SMTP id adf61e73a8af0-1c6995510f2mr15157373637.9.1722881300731;
        Mon, 05 Aug 2024 11:08:20 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ed151basm5669445b3a.169.2024.08.05.11.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 11:08:20 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, linux-omap@vger.kernel.org, 
 "Sicelo A. Mhlongo" <absicsz@gmail.com>
Cc: maemo-leste@lists.dyne.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240722113137.3240847-1-absicsz@gmail.com>
References: <20240722113137.3240847-1-absicsz@gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3-n900: correct the accelerometer
 orientation
Message-Id: <172288129992.415194.13472157516748911125.b4-ty@baylibre.com>
Date: Mon, 05 Aug 2024 11:08:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1


On Mon, 22 Jul 2024 13:31:11 +0200, Sicelo A. Mhlongo wrote:
> Negate the values reported for the accelerometer z-axis in order to
> match Documentation/devicetree/bindings/iio/mount-matrix.txt.
> 
> Fixes: 14a213dcb004 ("ARM: dts: n900: use iio driver for accelerometer")
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap3-n900: correct the accelerometer orientation
      commit: 5062d9c0cbbc202e495e9b20f147f64ef5cc2897

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


