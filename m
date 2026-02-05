Return-Path: <devicetree+bounces-263131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDckEJXdhGkV6AMAu9opvQ
	(envelope-from <devicetree+bounces-263131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:12:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A76E0F661E
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 670C0300DD61
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3ED3081A2;
	Thu,  5 Feb 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bBCEQ+f4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF133016E2
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 18:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770315152; cv=none; b=HqyJMA3gkombizIq0ZAU1WaTGWaQqT6bH2iABMZwy/Q/3DILyj2RS3k6qrRMi3sLeY6ItlaryLSXCgCfCRxcgeIXz71/lwVIz6coXtUCXdy0/PCXHRehXdHTbi0EfNtKJPNrGT/zplm8Wcx5SFreE0po93FSWpDE044sYDJLgW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770315152; c=relaxed/simple;
	bh=XXS3QVcIUaUSfcQ9ULhT3Ej7GXnyl+nRy5BEyXYzciI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q8Pm7O/qyFeY+PoHMzeoLIBjrcbgxbIeABwEZN5lvobYukdEzF6zcS+IgNUMwIMKUGkuXCFhxsnbuCfleKo1upl/Wiz/eahDGMgERcmcW6L48y8DO0GrCBZHCTJk6J9rLGWL+TCaWO5ovkUb5vPO5in5FOpRiN5SnV+Mi9BWX1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bBCEQ+f4; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee07570deso11207435e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 10:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770315151; x=1770919951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xR39UmjmxyNbJqgJNfJ53SYTqnUt7hECaIRgM57CWoo=;
        b=bBCEQ+f4emlZgmjefzuynVqaIUfooaWip8Phg0hCvBbeQ3glnlLNHavZW0pFVT4Fk+
         56cGnQrjPWYd8Gm+oGcNT4xQTYdv7X73UCpED2YCZZbmMaq6tsUf2hMAQeBtex9b5btX
         t37YWwivMAlFRJro3AIhFYHKbKakOz5oEi4pXfIkLzhGrbfa2ZR17dhwBwbzZxhVxufH
         pwst+yHpRd0ggi3aDc/EI1nA7I92cT9ik0iQt9RjF2Xln1R8fTex7TRmflwmeNsoeCp4
         iY2AHn8cybQ9u2yjNHQ5F0EzoDlKiOzh9EUenXb03qjyNBYpEmNo0mXfMJaGZXovpiJy
         /i9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770315151; x=1770919951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xR39UmjmxyNbJqgJNfJ53SYTqnUt7hECaIRgM57CWoo=;
        b=cVrtFisPLSBbyX5yXLZA4NL1VzwUksdSBLkYZB9+yc7Slwv8IY83r4s+BeVY35vCKi
         CuJeyPpogNwLtoDbvtHt4chla39YQh8MQbRjetE2RjAKwEGojKRzDqHOCnFGwRr87RAO
         5BIkwXDceyyKgvG1NXG5lW5wVsHKDv/QhczY5UalLyfamNcnww2MT8gH73o8DmNElpm+
         mdeDDqkI0I8jq31qNWt111dpmjgkqm88HcaqYk4IuSS1m+zcsbVKU15IWe+tuhyc2IJ5
         LuhNS6mQVa/ZpZBUVo5MtVoc7yQoDhrgmdApaTTk8owlzihjHVY+urA4mo19hQKU40K/
         7SBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXev0OJtT0bQp8WcHRJmRuldKIhfKkFlKx8q2s9Be3taYZSF9bso6pqNbOhqkzvY0aznKWtqecbPav3@vger.kernel.org
X-Gm-Message-State: AOJu0YxGhYdVJhYEiWfcqO9sNFbZUPH9jr3lh8vezI/yVH5EcGgq7CDx
	ZwXbcZsKkXh8mdW5oUiB6G0gHyuy+1mABDgKsyyojchN8dxFvfGmdYcM
X-Gm-Gg: AZuq6aKPH2ATC1p4MrU7KpE9H/UdIkmLoP1oChesqcrANh0sYm2PED2Je+ZrXusTCY2
	F/ORIcXeMRX3Mv4x5LEKY+eVhnhd5JZRvjLzZWKhRQxuyzmWqzWtYN8oQkkC3apLj8y6sMYgcLI
	2ujiZUCP1Ka5Y2BVJARX0mTIcY3OX30aVDhc39QlhjcofkbkFM1x15RvFzMp4BJNxCRmd5jgni5
	3hRTHVG1O4btevyHEq6YnRtbvIUayOWjsSDQjh04irxFlop4wYWvvMs5rriSAdZhNxPD/4UZ7sW
	RzRVb16obSQ+4o7sxXodojMBbL3fvWMcrPUBeUvH6zaDOB/ky6wtqtpW1D4Q/MoUFllDNWrZGYT
	iQQNnontynUs9TFZR07PEr2ZvtKk4io3pkCrrByU6VcdtaN6oJawXmUz6Apu/SUcNXxJcndqA5V
	yUw6jJN0fOwTLWvQOiCpmb91ThoXOwZgM+Y35DqJ2hgOv5O9j6FD3oTRxzjbXGDbrlfdptsAc08
	UKS
X-Received: by 2002:a05:600c:8116:b0:480:1c10:5633 with SMTP id 5b1f17b1804b1-4832021c74cmr3672795e9.26.1770315150969;
        Thu, 05 Feb 2026 10:12:30 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d57009sm63665465e9.14.2026.02.05.10.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 10:12:29 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Thu, 5 Feb 2026 18:12:23 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 4/9] iio: amplifiers: ad8366: drop reset_gpio from
 private struct
Message-ID: <rp62czb4n3ag64cgluwsodubnqxecod3cuu2agyedqed2vwi3j@qs3e7xhf5ksk>
References: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
 <20260203-iio-ad8366-update-v3-4-5d5636b5181a@analog.com>
 <aYKnIjBS5OT0MxuY@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYKnIjBS5OT0MxuY@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263131-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A76E0F661E
X-Rspamd-Action: no action

On 26/02/04 03:55AM, Andy Shevchenko wrote:
> On Tue, Feb 03, 2026 at 11:24:10AM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Remove reset_gpio from the device state struct and turn it
> > into a local variable, as it is not being used anywhere else.
> 
> Why not switching to reset-gpio driver to begin with?

No particular reason, consuming it as gpio was already there!
Is this a suggestion/recommendation or a mandatory thing for
now on?

looked over some examples, some are not updating dt-bindings with resets,
others don't have Kconfig requiring POWER_RESET or POWER_RESET_GPIO config.
Those things are necessary, right?
 
-- 
Kind regards,

Rodrigo Alencar

