Return-Path: <devicetree+bounces-213725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9612CB4669C
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 00:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D6BF1CC1B13
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 22:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DCC296BC8;
	Fri,  5 Sep 2025 22:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v7ddbdkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4417284662
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 22:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110939; cv=none; b=en7lbJ+TPHhgoC+UqyCwKGMx/161demDs4c6ObKS/zENjGbcFhQnuht6H9B/UTKfot/k/C3Q8E6f08t9z/PRgbzsgMSBDAevUDVL4H7HjwRI4S/OkANL2YTRxMHvN+WnV+UBlq8atXce/xV5WrqwJB/Db/zcnTZzKClfKqKmq2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110939; c=relaxed/simple;
	bh=UafuaGrAhNBYEwWxu5zY9t7ThR2R224yKWDpl0S0AY0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=cWcxCLV50vEtifsSDHVG4r4D5OMRJSxJPk6TRX6t1/CKA/agYZTY0YH2avguoE81Ej5ku3t4s7NaxurcXFsrBh4TgGXqM3vUMV7sk0zVcbe/aYd//L5Md3A5WmtgrcRgkIN12M3GQZucT/giqFagGEeRVDuiBfY/d0BR3RbbZNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v7ddbdkv; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-77238a3101fso1904364b3a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 15:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757110937; x=1757715737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXGZ7pRNDayxxoqb1j5l/r0hwWgUTmCUu/koa8CrTTs=;
        b=v7ddbdkvm8IdCaG2ECMkqYPaOL/TwEtaQJ/dTX6lnDinPf8CcNUbTm3rECWeoYeX+J
         i+Px0TVk5n4yXAXrTSoacAmOxnO44yM2uyMyZHyBFMnEqww2jInHLtwA3/69OccEo2Ia
         QUubtYLrygHBOx4/3nEytD0aOsoOGJe2qIM4cvAPRVzXf0GNMaIC8/tBipWxtUYujVBc
         MGk7Dhbi9k2Ogqdzf5Q6PArYp7oEVdWnOm9l/z+eqKwwltkCnrBPe0XZLo5vjTkj36y3
         yJ/nGJOTEB8Sj5OPfgKL07MjwonLWQqVrbXNLSXxG6ABwD4EuXj9Mnf7VHJlHkrRp9Vn
         inFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757110937; x=1757715737;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXGZ7pRNDayxxoqb1j5l/r0hwWgUTmCUu/koa8CrTTs=;
        b=K0CN8+ObUEjNA92knUzYDWKR8KxZCm5HCXk6ZbpLsgf4v0UQktZ58eAI507nddtrmM
         KaMu5NPONK+eHAq7PUg3zlYxl/KoU6LQouZCsnm5QoyUkH805mBVCiIONFj8DrFRBXHK
         dRpO2bV95ObxEpQquPscnVzdSExNdzhnL8GZfCV53HtJ5GomkcghOcJBQQyHAGmPGVUf
         fgT3hu8bLGdYpw6kTS+bcosaPMDJKQIcu+sf0kgmYbsxabHXmOI/YJPapFemOXgT26NK
         +dXqz3Txim5zIDi5WWJZ+1SjSc4Xpt0NePryLtXbvUZKXgzaaFxlwrwfgDi5/IT9c5jm
         U6Dg==
X-Forwarded-Encrypted: i=1; AJvYcCWiNalEtC8LurAb74zR04vIg/xJ8i6q2coxSBKLolQzyCqtsTPfYYUH2+a1GozpUfe39Mjic9ktpvLb@vger.kernel.org
X-Gm-Message-State: AOJu0YyETMDLgvBKXlhgbEwe2EfGAQLyPWssgMueBFI5biwrVMafjhM2
	wcNVZHcS+UFIVpY1RC/Mqoh3oO3AI5CUQ/4hZ8MjQ52aWkjPxCDd5yZQPpkgGffcdRI=
X-Gm-Gg: ASbGncu6qWA12Zp9Hq677DSXliJtFtIi9TGbOBG5dOr8KIc2IMtOJDHFYb4L+6hig/E
	pyQsbpQps+7wyUAX85mXViyyXykIyF2gcSW3MiQFIGmoIfPUY9PJvAJx4JnU/ifxDKvKMB/jJt5
	xQZ9K6BktTzDzjJkNtZhJS8Vou+2ZUrK8frWq1I3ITUSV0rSSaxmCneOlmfn/s50Ux1k6NSBMzU
	r6IcBKk7O8kA5L9EqqtHperYfWgoPYWAvKviewxX9htNjrDLaUp/sZd1JANIDc5ymr3o1ywLRW9
	4pd9pvatgB0eaI8Tn7ZD4nHPKknNRctOE3uBeBrxhcHYCPom5qXp6v+w9BLDQwYOv9zbgIxYosl
	iT0CPxMDojH+92WDeuIRN
X-Google-Smtp-Source: AGHT+IGjknjH+FHD6rSrXSEZYpl+gZ+/zeKgcNJWJoULCQXwNQ0Z+EpholtI0q8+4gB9kMf0VxCkKQ==
X-Received: by 2002:a05:6a20:939e:b0:251:5160:f6c4 with SMTP id adf61e73a8af0-25345e324ebmr515972637.50.1757110936974;
        Fri, 05 Sep 2025 15:22:16 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a3948sm12694052a12.27.2025.09.05.15.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 15:22:16 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, shuah@kernel.org
In-Reply-To: <20250822225052.136919-1-jihed.chaibi.dev@gmail.com>
References: <20250822225052.136919-1-jihed.chaibi.dev@gmail.com>
Subject: Re: [PATCH] ARM: dts: ti: omap: omap3-devkit8000-lcd: Fix
 ti,keep-vref-on property to use correct boolean syntax in DTS
Message-Id: <175711093617.666031.9922081579342524783.b4-ty@baylibre.com>
Date: Fri, 05 Sep 2025 15:22:16 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Sat, 23 Aug 2025 00:50:52 +0200, Jihed Chaibi wrote:
> The ti,keep-vref-on property, defined as a boolean flag in the Device
> Tree schema, was incorrectly assigned a value (<1>) in the DTS file,
> causing a validation error: "size (4) error for type flag". Remove
> the value to match the schema and ensure compatibility with the driver
> using device_property_read_bool(). This fixes the dtbs_check error.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: ti: omap: omap3-devkit8000-lcd: Fix ti,keep-vref-on property to use correct boolean syntax in DTS
      commit: 5af5b85505bc859adb338fe5d6e4842e72cdf932

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


