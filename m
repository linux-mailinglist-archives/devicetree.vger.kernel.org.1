Return-Path: <devicetree+bounces-80400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA9B91880A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:59:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4977428201E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE60618FC8B;
	Wed, 26 Jun 2024 16:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NspoOQ9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341E518FC69
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719421170; cv=none; b=mw5iKgUP6jyMjLQlTGCrzBCfHKo9uuoisQr8DsTwkIWSWt2d9tdLTYG3wKXa8flNXbjp6deyCsyksaplfA1zPCkQXhcB0/dSOveOoEjOL1hB7MydCZJ8t5Rpma9tWXBUcSn8gko9gcvmsy+L+qCj6Ug5UQULeoGhSfh8JmppGro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719421170; c=relaxed/simple;
	bh=L+mMvxoK8DGVSuXYCGPYUXIzL3qUWCLHFwujl02Z4bs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VD7xOaY4tZZb0awJGHz+n1OiOIF34wU8r+O9JyXsrz8byt8VwR2DzV1jvV1TRVjXvdUME++idD38ucGIP2G6tH9KBIdxBrQ9BdVb+PAVXl0URkHMHufpELu9x9bT6Vz8s+EE6PyRvBE3go9qhTOFOj3vMfk+BU7DM2htzqpOP50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NspoOQ9A; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so6733138e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719421167; x=1720025967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N4uh6FzkMN3Alo254D1I9aTL6aO+v8LxggyPl/98hkE=;
        b=NspoOQ9A5hDavcBjwUj4P3bKh90vPYTmhzOpz2yx/pN4Ktq9g+G69eJmI2kIJNVde6
         aeBgncP+b3rIkmrTwX2A3aPwe7Oiy4PZdL2dedzY9fqLuSlLeAD6z+xbQvu5a0j/nI1m
         G8sZ0xRBAuLnNo5rhhx6IT9iQbZftusjnw5IIHYvr/bZzdJm23HpG/sUzjoN2mAvIpP/
         iBqypI7sSOGV6XbkhTKdhzoqz6yc5mp4/D9gqfEY5/0q7TJgVnnFpOCvyRW0Hy4adGnO
         ZtjqjwhDEYUPc9PFFANlxsARX4rm7cfo86/Ab7AvJRZS63xpOkvdDF7wkyRro/5G+JWg
         pcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719421167; x=1720025967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N4uh6FzkMN3Alo254D1I9aTL6aO+v8LxggyPl/98hkE=;
        b=rXfXzuvj2Aqt+Ws6yp8gm+li3UncfOSsmY8/31N/9tpafhBJNh7n4Lfy3k0/8eOvzz
         7FETFvozUyYKwUeR3h3GtLDuO79YiuB4f5rl3c8WT+bSl3PeVV3xeej4YSB3bURaCGKA
         Qu3TNpNSZUPJ5O1n5Zwi4Z5kLdaUYNIGFaUpuUURul9c1uiNFYWgzHuZCPyuVnBCFff2
         XmNCdLNYrUd390HaMshO76ZmaD55/mb2Uk+YG/zsEdAnWzmydXbkQ3st/aUZPNSMnQ7/
         uqyOe5502jSyKDx2jmS/sWM6ydE2YKMpuKVGugcu6sH8Gz8PdfOCA3vrSIxfV2umvg5e
         dO6A==
X-Forwarded-Encrypted: i=1; AJvYcCV/A3N4ZnghqGcURD/LaZq982rzNlWI6+kr+y3lC3cpaRFyKjNKlnT2/nuu/uxLxfwX1fDUsWA2nfMbyQhfLc+mNkoeqSUio6SLgg==
X-Gm-Message-State: AOJu0YwTtLjqz1V8HTwim0At8xCTOrim0qCntCwhVh0f8Cd/Zmoj8eJL
	Ca7XtePpuLCPSslQmeZ6/wxVGXQQUb+PYPA9oTzPkXH1uA6118pc0LQBX2Bah6I=
X-Google-Smtp-Source: AGHT+IHKS0Oy7EGmBkzpSgZQUkBjP5zaFeMObNDzMd6ijSCSwDLEDPli+swV9bOJQtP305ZpYfsWXg==
X-Received: by 2002:ac2:5e31:0:b0:52c:da8d:799 with SMTP id 2adb3069b0e04-52cdf8209a0mr7308481e87.55.1719421167289;
        Wed, 26 Jun 2024 09:59:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c825f752sm32291145e9.20.2024.06.26.09.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 09:59:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] ARM: dts: omap am5729-beagleboneai: drop unneeded ti,enable-id-detection
Date: Wed, 26 Jun 2024 18:59:24 +0200
Message-ID: <171942111215.79257.17064615370726033621.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240615174904.39012-1-krzysztof.kozlowski@linaro.org>
References: <20240615174904.39012-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 15 Jun 2024 19:49:04 +0200, Krzysztof Kozlowski wrote:
> There is a ti,enable-id-detection property in the Extcon Palmas
> (extcon-palmas), but not in the Extcon USB GPIO binding and driver.
> 
> 

Follow up to:
https://lore.kernel.org/all/CAOCHtYh8YucHNwV6+S-3vfHvygs=5_UGVwPt6R+i+qBTc3eOTA@mail.gmail.com/

Let me know if someone else should/wants to take this.

Applied, thanks!

[1/1] ARM: dts: omap am5729-beagleboneai: drop unneeded ti,enable-id-detection
      https://git.kernel.org/krzk/linux-dt/c/90b6de4550aac6ac97448d3d26429a0a55dbaa34

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

