Return-Path: <devicetree+bounces-143434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEB5A29DE6
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 01:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FF311888D42
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 00:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9084DF4ED;
	Thu,  6 Feb 2025 00:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Tgsh/zjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F0A2F4A
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 00:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738802233; cv=none; b=QPeY3xWdD9dg6jGzFaDnkjFspuW6ddmV1UPU2PCUxuIKqAy+UVCyhFL+Xp7TwuVrz2ui77rjQZG1C7X2JfUbSe6aTVX7LS5nMrNJnrpfJ3Ni42ocFF++j1m4XBuq2gD14wbuC1+BbPrsYtkaaefUCC/CzQsIF5TTlsfDVo17f3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738802233; c=relaxed/simple;
	bh=anb12FOBAqGcVLb5Az51960fmoes6Cw4isJ5CZ6Joqc=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=inibuexNyUKIyehHVtTJCPVxxi0SW1th6W+evnzPEAH7jZGyX6RCm9xIbvxOVWyAsWUiqJ3VdYHQof+LAIGGeM8Vk16wvq5mqGRRiJ9HDRK7EU8HILn+BIHQPx6DH4SIRxSTOfXiFjGCLfhaXTkfzeHQ4PvIF30ILW5XjIjqCcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Tgsh/zjS; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2163dc5155fso7551545ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 16:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738802231; x=1739407031; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9izPoeemfLEYBaxGdMdJG4p8441bu8sme8NZDVtqdAU=;
        b=Tgsh/zjSVKsAd8c9x55OQh4nnAmFSSDzifYsm7kWuPXpiR67EJbgfEiyqE5AZYRgru
         xBu2PASjD2b43tZmKgRsMBaHmZzVkVx6HSadVc4h8LJmhZIhksMhDev7VlmudrRwz4Y+
         cUxAv95WBsC+slBzNkHRkAS7JkZUxf1CHVvZaXxNg9eksm5aZWlFjlhVtnrlLKGNjM2d
         3UsPSr2lBW5g5LqiULrT6fqfDmtiQGDLOqqKxvZiZtP3ACwIHgldeghxPux14k7SqynY
         80/f0oDx+6qTnDgQ3iXimg4HuKE7h5EBv9ZAv7AaGbqa9T8uAJCREBXuJCb3/UL3jhka
         On9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738802231; x=1739407031;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9izPoeemfLEYBaxGdMdJG4p8441bu8sme8NZDVtqdAU=;
        b=XfiPAaOmGdJLfwUonWyFof5vixep7kLzhhL4XJ1B55+zoub+172mii4nmSzDpFr55p
         qdt/LxZgxedgb3Hxs7N72QbIx0JgCS8VN0PfhgnCJtm67DUMQviop5HEqoeCDWgnljE/
         cLPc8EfoCwU5+sh5wI9s1uo86tNw+I7GRUrUccb73728UgBt5NCZnmTc443PthrZ6/ey
         tVbCCWyMZYy1jQLrKWM+0yQNZIkYRTuCjsPkKKlPYKWI44b4JAEQSaNdBgFwXcXk/XNT
         hQ0mDs2s+SlH6P/moXcmQtfl5iGFwUuAELfsV9pnlvpRNBvpMR2/96E6yPw4+2NRwlnP
         nRnA==
X-Forwarded-Encrypted: i=1; AJvYcCW3LXMjPUv9GLxprEzp8SRAZM05oaqNtUt4b16t/j20o+tlQOj9CQdiJq/iGSJnV12PSe3dJn71DuGi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3e0yKZGlajCMhWt2ttBmLkzO0G7nbgCw33vrapuYKq4JSUpZD
	+ZH6hZfaXH9rchevrJYPhuTyxO/FopLJRlgaZGXcYYymp+RpdWInC4OUs1PFDn0=
X-Gm-Gg: ASbGncvZqeI4tTsMVEwEvSLEVGZ43p+t28Pw3XcV1tVCHFGN88IjVVKBFjMeOEhXHat
	O2ErVMgOmU7GtDRRijEmNcS0QoqJZZqJavHCjrMPLpcEPz65b1OI7VfrwRRda/Bl3EbLJCWjGFo
	wsIysf03XcKnrGM295RvZ2itNKpJDMZcv9vTCBB2c9mlGmnaUUZQWAEOAuGVlrvWfmUZGe7zsbP
	aSi96Tvy+DfO4AjF2UDv3djCQ5YHNsWl3SzSSnOfaaJnaDXRIavO3OCH+Yirbf5Gcv/FsS5i4Lq
	GhyZdYF9YlLnAg==
X-Google-Smtp-Source: AGHT+IGSn53uXUdVxoPImTMW1Zc25hP9pmoBhFU5FbDj28SoJOJPEc2Twhblt5clw7+Lqm5iorPULg==
X-Received: by 2002:a17:902:e74e:b0:216:7ee9:2227 with SMTP id d9443c01a7336-21f17ebbb5cmr82697035ad.36.1738802230802;
        Wed, 05 Feb 2025 16:37:10 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3683da71sm50165ad.115.2025.02.05.16.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 16:37:10 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250115211648.194016-1-krzysztof.kozlowski@linaro.org>
References: <20250115211648.194016-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: ti: omap: Align GPIO hog name with bindings
Message-Id: <173880222984.2488567.7281427251846547425.b4-ty@baylibre.com>
Date: Wed, 05 Feb 2025 16:37:09 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-94c79


On Wed, 15 Jan 2025 22:16:48 +0100, Krzysztof Kozlowski wrote:
> Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
> to fix dtbs_check warning:
> 
>   omap3-evm.dtb: en_on_board_gpio_61: $nodename:0: 'en_on_board_gpio_61' does not match '^.+-hog(-[0-9]+)?$'
> 
> 

Applied, thanks!

[1/1] ARM: dts: ti: omap: Align GPIO hog name with bindings
      commit: 10a71ea103249d3aa800552595a90ad55932c781

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


