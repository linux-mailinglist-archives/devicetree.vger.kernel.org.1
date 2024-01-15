Return-Path: <devicetree+bounces-32153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB5782E2A8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 23:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A949B283B3D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 22:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1441B5AC;
	Mon, 15 Jan 2024 22:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hsxhlQVb"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9EE1AAA1;
	Mon, 15 Jan 2024 22:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id B8E7AC0004;
	Mon, 15 Jan 2024 22:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705358293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5auHx9DYHJPVJ9izlukM3hoB2x8mqeFcR3vULkUr9Yg=;
	b=hsxhlQVb8MALXkBic/eVmpBd1bWEMqsPKv+4HaFZ+3q8DoEU+NyUHFIHwKa+sW0nrQdsQn
	DRDuogRocSjCxzVw5Nv43lG9jAyGcpcyouFzYZUT083ZN1IkcIqfduDqj7S7mdTTozGR8e
	Mcq6pqwKdcURylrDmkgvrAxndRs5D6nXFbmWtJvQnZYsCPh5He2gCyNL6eAt8cK/0qJ4Vh
	5kz2ukyKCPAtDPcljXQjnfqwU/LxwXf6Kz5Ermfvef0+SNOqaVpEhTtYtLTPBeEzXvG0ay
	rH4Tj7o8h+LrCBeSlmq1NMBlpvtID9Uj44uvXw0qMir/O969LzmMK9fQyIodCg==
Date: Mon, 15 Jan 2024 23:38:12 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>, linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v9 1/2] dt-bindings: rtc: max31335: add max31335 bindings
Message-ID: <170535797925.264018.6746571257440757031.b4-ty@bootlin.com>
References: <20231120120114.48657-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120120114.48657-1-antoniu.miclaus@analog.com>
X-GND-Sasl: alexandre.belloni@bootlin.com

On Mon, 20 Nov 2023 14:00:16 +0200, Antoniu Miclaus wrote:
> Document the Analog Devices MAX31335 device tree bindings.
> 
> 

Applied, thanks!

[1/2] dt-bindings: rtc: max31335: add max31335 bindings
      https://git.kernel.org/abelloni/c/5905777847b5
[2/2] rtc: max31335: add driver support
      https://git.kernel.org/abelloni/c/dedaf03b99d6

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

