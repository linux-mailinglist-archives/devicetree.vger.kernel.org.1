Return-Path: <devicetree+bounces-273987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBK5Bd1DsWm4tAIAu9opvQ
	(envelope-from <devicetree+bounces-273987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 919612622B0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D59AA316017D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C049365A0A;
	Wed, 11 Mar 2026 09:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AKLetuOT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2009F32AAB2
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222849; cv=none; b=gnw6ahhN/h22tHFUF+2rT38lOdFJOlBHSIRd5DVf3m2piZgDY48y5B5YEZa0HSmV3v5gQsjsYcrjF0R+uk3Mz5gVPydrW/ZLjKmCniY2gdqAJa9pwieUakdUzAXlJZyV4gZWRGc0ff/D6hNuTYAcVQGEy1MfCgWvTePyfPE6ZYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222849; c=relaxed/simple;
	bh=AmJzAwkpGNcbesSQbn3M5nVXXEHJl1Kd7Y1uVDI5uu0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JPfYUf1yeSMG4z7f+V49aURpsm8OzHAmlIc7bcckaP4WZx78gWCnxTceUp2qJKw5tZcprFie1Ugal8nI077e1CEm+Njzn1vDdO2QBWB1lgXUcmvFy6lF1G9XCMHxmCCLb1ymiR57P1NpCV+vLdbaalO93tfvDci8tcg9/QcxrBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AKLetuOT; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439ac15f35fso10326118f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773222846; x=1773827646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aw5gX3EdSpWwdEcJs/5ar7LileEwolaW97u1s2g+7SM=;
        b=AKLetuOTqnh4za40nbNK16XFxarXK3qmtnpvbQh4nfBFmGm5ZeF04UpLII6F2REYGH
         +UUctpA7jQ1DidixRMbrPnXGKp0jaQ/AHBp4fyBM2gcyaG4GCfopUs2LrzjiTm9ePEUR
         0CGFBYBbCuR241YcNMniV0/mrumfdwWvwT9dDvteQpsuJ+IMaKV1ZJh09CYWHh7ERA+q
         68KNjXwHP09VquIfebcNXdfKtBdVvxTVLPShsMc1YIHJRp1A2jgAdWrO4v3jJcXXOfI3
         dYL52phqg0ZGN+tcdvmOh2v4+lSapvUPgUpQFEwaIaVpAR8VXQSub3XBU8Ulh+qU4e8G
         l55w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773222846; x=1773827646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Aw5gX3EdSpWwdEcJs/5ar7LileEwolaW97u1s2g+7SM=;
        b=WNfPprdWY2eljvCyyiDjDuA/p37tXHSX34LJIhR0io7a5S3XE66jMz6qZ0b1Y8JNyD
         RmqahjU2hTbxkLgL9F76nocrGP4iRhhJ0qdPfGGVx6Qy5bRV9vy5maXYzt50hWeXTLsC
         QYXHUblPdKJ7RyatowRPr4wb4GWLTC8ZwkffKeYHvIUEx17zh9zQ3MhSEhFea8i45fk4
         rGFN2/NHIBxp2OJ/bThJ945MsGGbcgjvg7faOOD6yjhKNEC6daNMVP7iAK21t0shvp08
         hmCdON9pNnV1O4awZXrh8qLCbYhd3lhsQbNpv47RZXIB30HCskJpAUfWj8QMkY7Vp5OP
         vgPA==
X-Forwarded-Encrypted: i=1; AJvYcCUOQzi1uO9fVK1bkSrR12qRxScBTWg83ZIcqJZfZwtsNj2P7H4XM+bMCIqRad/r5bJpXQOKT4R1gOUM@vger.kernel.org
X-Gm-Message-State: AOJu0Yylnq4KEABJ4U+wwJ+X7oyKjM7aT4vQuDoek/P9jwNJQ2C8Z765
	ym92fsIyqKBJ9n3cQ4mssqXA9sCoozLUFH9wIq7ZVOJsVHMGuVDu4XrN
X-Gm-Gg: ATEYQzx83KX9sgaksliV/7pTtrE3ZaxEUF0WayJ3aawsAi7hN0zb2LB89inA7GimoQn
	IoooGTlG6F5V8DSJjTwPUtjcF5buuE91BWzJyQy0ENGMYr1lEQBiTZbdD4yAVG8AKP4P19o+qDE
	ujcEkVLsH0uKrkp1UZ/U7do7gawAHJIk+s9Vrs/QFqW0LEEX3BRwSecV/plSdXUJXRNiSGbc8Xj
	t5qyYopyNfzdcoUhO6QLIsqKZ8rP/YgBfaZcXz8GnpuEZEMhfWWiGC5vjWaHbZ1XiSn5z6QTjns
	yy1Y/fMJDso/L2aIUmC4tZzwBjHhcW+rLpOKmtRPFU/dfhzOwsPoV1gMRWooISr9Eb10v7q31Yh
	SCcEtHfRNtSxR/1NY/btHDdmGNxhjQA+NUZjKBpOfPTmn7hifxUUW1MRB0+blvA2kDbVTjvS4yx
	Dk/pikjcnDp6JsaN3gW05ZBEbOQW0sKPiWQUqM/ZT+F3Uug8VPXgEK91QiyQ==
X-Received: by 2002:a05:6000:40dc:b0:439:d750:42f6 with SMTP id ffacd0b85a97d-439f82050c4mr3857148f8f.24.1773222846480;
        Wed, 11 Mar 2026 02:54:06 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f818d61esm5693608f8f.8.2026.03.11.02.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 02:54:06 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: andriy.shevchenko@intel.com
Cc: 0rayn.dev@gmail.com,
	Michael.Hennerich@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	jic23@kernel.org,
	krzk+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	me@brighamcampbell.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v2 3/5] iio: dac: ad5504: Align headers with IWYU principle
Date: Wed, 11 Mar 2026 09:54:03 +0000
Message-ID: <20260311095403.9908-1-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <abBuAZTSeTjRhyZY@ashevche-desk.local>
References: <abBuAZTSeTjRhyZY@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 919612622B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273987-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,kernel.org,vger.kernel.org,baylibre.com,metafoo.de,brighamcampbell.com,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Andy,

Thank you for the detailed review across the series.

> >  #include <linux/device.h>
> Is this still being used directly.

Yes, it is still needed for `struct device` and `dev_get_platdata()`.

> >  #include <linux/kernel.h>
> And what is this for?

You are right, this appears to be a leftover. I will double-check its
usage and drop it in v3 if it's no longer needed.

> The rest of the changes looks correct, but still missing headers:
> linux/kstrtox.h
> 
> asm/byteorder.h
> 
> Might be more.

Good catch on these. I will add <asm/byteorder.h> (for cpu_to_be16()) and
<linux/kstrtox.h>. I will also do another general pass over the includes
to better align with IWYU principles before sending v3.

Regarding the probe function (Patch 4):

I will split the `struct device *dev = &spi->dev;` refactoring into its
own preparatory patch. For the scale calculation, I will restore the
`-ENODEV` check to maintain ACPI compatibility, use `ARRAY_SIZE()`
(adding <linux/array_size.h>), validate the range array indices properly,
and drop the legacy `pdata` fallback.

I will include all of these fixes in v3.

Best regards,
Taha

