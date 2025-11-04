Return-Path: <devicetree+bounces-234994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B07C33533
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 00:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ECE894EA4FC
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 23:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4081A2D47E6;
	Tue,  4 Nov 2025 23:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZrTTXPbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2789A2D23BD
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 23:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297615; cv=none; b=R7vhkXc8+OIiQb17BskyXtinxf2uzVmlpZmOmmCofpkAsCQwV/fY+Qa5ISY0oFPV6BrmmscsHryMf8N24US52NZHsw7+NPS+cvIBB/lBjX6YMTD/kByiJlkq7xQ/pwN3yoZheJHnH9Bmja8D52LJtNn6+Ou1gj+S3HGY6RcPieo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297615; c=relaxed/simple;
	bh=12vGFUcZemOMh5QBaAJfQHOdmFM8hY1UyGUKJ7JDXKw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=J2twhDkfz4mFN+kB6TvwsEksvitLpNJSFqLhquipxg222zxagTIUw4UH9W5FYcuiXkvDsadAP6KWOLZehlXPHUf1Gc4XxxEG201kSFYKw9W/2Sh6AnP1vNHqtUsuWAEBXKuiLOtDg1xtq0fhD0NCa8lWvIlTMho4bUfVJRNOikg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZrTTXPbJ; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-28a5b8b12a1so65245175ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762297612; x=1762902412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rLeRaREaYFNIk98QRUcTfCmsFgqK+8yNycFcHOEqW8=;
        b=ZrTTXPbJ/uPRGAhHaD/bwiMG7sKuU0zhwATXvdgry+h6V0uJI75VDJbxn8St53ZfKi
         0nc2tSoHLXSV6Nffd7l+gMCEmtbgKrDml9aQJZZ/1tVaK7qrQOOTmAvEFqkWpwrHcSZF
         Ooso+7fwEkvyw60Icat7XGXDmhhJL9a1MhMG2Gcc0ATJw4Qfj5hW7tCxCv6vEP1/JjbU
         Szr23QIHqkVTDig+DAAIsEgoJMG3xRECwIUkqj/XgKmMrLmdI0sOTm7Pl7jNxGfmNa0X
         kA5wK1VgilHTgms6Pi+V++YKUEk5QIs4u9cFH11EGp9zAg6CDHhAzyibYA0HjVETQeIL
         17PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762297612; x=1762902412;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rLeRaREaYFNIk98QRUcTfCmsFgqK+8yNycFcHOEqW8=;
        b=I6AkreUMVjQ9l9K97bYtSzkFQjULtU+g2HUXGgsEU8FOMIBqDSLw21L/8+J38iB6tP
         ZT6xhRHgjY0iLWglVoh9GSvNzjh8tQSz0HAIKNfum53r+4m7ihCY3ueJh8rCR375u3Jw
         4HDKhFXFM6GNQ7ohBjxjZI9bUckAd4ERM7vSL6TlmZKbRjIaAfXeYZtzJKvWj7pZ9Pcb
         EGJw/AybRQU7/M5BhFJNh5CyDmq6IWp4H4uwhDedO2Xjq+hvCXUHsnn1AChwn+pT7DSh
         J3zoR4mIYcobK6BacHn8gERYen+A6knheGFylNtAtbxB+j3G3nhQG5oy0QzGtE5faOuv
         FptA==
X-Forwarded-Encrypted: i=1; AJvYcCXbJB6Br9lwvFqTZ8+PfTjDJYZbxS1zMeooCyZdpO5OdZou6EDrJx+ECEpkc6ErH+O1Pqx9Pfa9q3p8@vger.kernel.org
X-Gm-Message-State: AOJu0YwbfkmAR8FGlXyavN1o4rL1Z+rxpUX/moq9sqkSGAq8IcePxV+1
	eNGhOReCmz8kwGAbthMiFbHA2Dl/BScoXe+0QiG/3RQfX1xZPzBJmnGTOKAWSbkE0AA=
X-Gm-Gg: ASbGncuoSdCwHgky5sW4MUBZTlA6LEDXUupAKinU1VPCmIMoZr85TkJNM+pN1NRJjNu
	B4KNI4PGJOQ2P9qPGcz4BNxc+1t7192AFpign3BPB/4hMvJJSVeTHPYyVFM3Xpl3zCw5gBILsQy
	5454l3lhkepUbsWmDAhljQEgld3yviHEj/lfr5beA4x8TAWwo3sJhpLtBWiy4WEOZbAvzxq2GtK
	nAGRIZSFwpZFiHnmgRHd5zyoxVS5/uKSO0cLdpLpqFB3qb0UunY5GnzvkAXzoSuRuVppRDoC1vc
	YnXji4qo5DYwin5cvaPHqYp1ZaojaQLtDkw7OxXQTIenQ5+pkiAINC56fKVpYmeqtxFig8tOQ3h
	1j0qbSpE8qFbkWAX2Bik1/W2u/oFJUmXIDyqtm54Ml/Q0XtvbbQJeFYVXFNnCUGTjhfw3Hzh3bX
	0/0uMlMDmW
X-Google-Smtp-Source: AGHT+IEqAInSq7/OcKAz3KBjMGwdkltgrZQ5n2MVBtC0iSVzd8WVSTSxnKY4wAu8Z/1kBaGkPjKa7w==
X-Received: by 2002:a17:902:d2cf:b0:295:c2e8:dabd with SMTP id d9443c01a7336-2962ad3c9femr17882525ad.26.1762297612348;
        Tue, 04 Nov 2025 15:06:52 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a50e8fsm39573235ad.79.2025.11.04.15.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 15:06:51 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, 
 Bruno Thomsen <bruno.thomsen@gmail.com>, Judith Mendez <jm@ti.com>, 
 Arnd Bergmann <arnd@arndb.de>, Matti Vaittinen <mazziesaccount@gmail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be>
References: <63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: dts: am33xx: Add missing serial console speed
Message-Id: <176229761135.2840692.14067519312360759831.b4-ty@baylibre.com>
Date: Tue, 04 Nov 2025 15:06:51 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Thu, 02 Oct 2025 11:53:05 +0200, Geert Uytterhoeven wrote:
> Without a serial console speed specified in chosen/stdout-path in the
> DTB, the serial console uses the default speed of the serial driver,
> unless explicitly overridden in a legacy console= kernel command-line
> parameter.
> 
> After dropping "ti,omap3-uart" from the list of compatible values in DT,
> AM33xx serial ports can no longer be used with the legacy OMAP serial
> driver, but only with the OMAP-flavored 8250 serial driver (which is
> mutually-exclusive with the former).  However, replacing
> CONFIG_SERIAL_OMAP=y by CONFIG_SERIAL_8250_OMAP=y (with/without enabling
> CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP) may not be sufficient to restore
> serial console functionality: the legacy OMAP serial driver defaults to
> 115200 bps, while the 8250 serial driver defaults to 9600 bps, causing
> no visible output on the serial console when no appropriate console=
> kernel command-line parameter is specified.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: am33xx: Add missing serial console speed
      commit: 9c95fc710b0d05f797db9e26d56524efa74f8978

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


