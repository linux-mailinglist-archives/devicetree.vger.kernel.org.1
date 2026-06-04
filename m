Return-Path: <devicetree+bounces-306976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oRnjJViqIWp9KwEAu9opvQ
	(envelope-from <devicetree+bounces-306976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:39:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 049BE641ECB
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:39:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=LYizWBKw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306976-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306976-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40BC1301DCEE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCAE3B52FA;
	Thu,  4 Jun 2026 16:31:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4423B4E95
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 16:31:12 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780590673; cv=pass; b=QABfjEdm0Z4aEoHdObvTaT2ZGh7iCX+dhrCOqT4wPOEYYMpJ8J8IPH9DL/ueKmDb9cJk6D1OGaxL5KKU/gM7yxOtTDwdLkhPYeamPFzKbwgmRySUCyi/iCFhcegQqLnc5IZNseOPd+dJGAV7F4ooJYOLxXGoUJikrEI9fJuHz/Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780590673; c=relaxed/simple;
	bh=bYQz5WGjsDPNgjJtpHPvb9PJr7MMreR1r3TlgYR8Xgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fkgbFLk3DVtywS4kzGMjTqAv4ZFHwdy6p3zqx43HZKZ4ywMMp66ZF0rmHn/Cpr8YBseNvBxtlrJ0V2CODOK3sGXEuumVS7mEZladRWbDJLphlc8jOGlQWj0nYXDLDvV0u7QbWAIkg3sZEH7Th37Xiyup9WyNZ+f3Qr7DSwGludk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LYizWBKw; arc=pass smtp.client-ip=209.85.208.48
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-68cc6c7df99so1310679a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 09:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780590671; cv=none;
        d=google.com; s=arc-20240605;
        b=JTvmXemsOMzyTwMFP3CxyKxgkKbnm7ha3QSPck4KM60qP3W0CQAeKk/ZoEXEUDTR5D
         MDEdMG7MXvtPQAbxXAZtCh8aQh9RC5jU7OBJ1jmsVqRTELuLBzaryBvPG8MspV5b5isx
         UfEb8r4zXfOv1eUcSsHx3WB1mpQd4gJ5bxEjCJZi7VrwuYXm6BRpgLr6yqpChpOnPx+1
         TlKXk7JQsACL5h1fy4UPSo5TQugd1b6ffEGS/2svWnxiPYVV25ZIUiHLSLaLGU5awi4F
         e3udLyYR6xRzmGW5qyUfa6woW4xBv2wce64G5xOG1yw2y0vb4Y65gqpb2EGzc3gflBIi
         wLWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bYQz5WGjsDPNgjJtpHPvb9PJr7MMreR1r3TlgYR8Xgc=;
        fh=JNbcGu99Ng5WB9STYhKurqs6pxuf3NNBWzzIdxy6644=;
        b=VY0pBw5VXy2JfLgHkgtxpkpRIzRCyuOjNUvEFeH5JA9NCX+2BOafn6ST2UWKb2BpAv
         FNJJpAUKVb5//21/Gjxx1QE7BOsme9n8+q2MAF7BPie54DAwW6p8DgWk7NF75Ch+cqkM
         MWPHF+wXXP9cU3MLHiQVouYHvhy9wPTfrP52HyktuqQYwAj9efP6vGQWrjkOD3DwP7NP
         vkKuqAofkcHY7NPv859vgQpowrMj+Io8wxOhY0rGwwq90zDsLbDyY/dWDXiuae3hZ45B
         AVa79fZfHpIjerFzZ7KrDtsJwgCmk9uhpkTm4V30TF93AvHNzD6ImovObFeq0njBj58I
         uu3Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780590671; x=1781195471; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bYQz5WGjsDPNgjJtpHPvb9PJr7MMreR1r3TlgYR8Xgc=;
        b=LYizWBKwjoen9RbPlZkKqVX9HO4ohwNYKnGU+2Q+9RjwmmNdoOktu4fQ5uxRDDajqB
         JqvjdzC53gLKc+JjhUzLqrcRERtB4d1WOkPgm/YeY18fypdqw8x4vfGp30qDadQFg+mz
         3menY9qVtgPdGY3X5rl6F639jENH31rWDQQcJzfsLyqg8cD+EtYv7kKJliuvNEbdZqhS
         aqdvEPZY13QDBE3KtMnin02ngDuXdHXs4Aj/y7mBKBgixCgVmSKkgsEs9z/tSMDYdAN5
         PZspOYoGtFfvUL9v1bvQSMq9dXRTaon4BybuK0CmCpAfUFbHN5URmAZ835d3n0w9JhWf
         3i6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780590671; x=1781195471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bYQz5WGjsDPNgjJtpHPvb9PJr7MMreR1r3TlgYR8Xgc=;
        b=oy9CGmYwYOO4zcoT0Pf5AEsftgkQuWF0zmAm8NRYnFOwn1cTzBwoDA3+/Oh7uzIk9M
         aGyT9mESwi7NpLCwJeIyvSJiFDQZIZXAOPS+r9ZobukO3/H75iRbfIZ0bYjtv3gzDkEn
         MfcuLZQTagQiQ7Xo3QL77iOBhS1Af+dN2uI+iozkh85CvG75D8/HDs2j2045aYjLUW6T
         axngWazQMMOmZIfVvAqb9pm0xMSS2GWxxnkknWLsGumz68ZQc0TdfzEcKG+eEN4wWdFI
         egNE+ufckuxobKzIXdOk4mc42o6Xfv+4PuGwVqcBe1dAKH3j1XDBEf7Taa4fc/KUNXhX
         PLgg==
X-Forwarded-Encrypted: i=1; AFNElJ9NiC76uzsoQnwoR+gpsEEROIVxqZtoYLq2kmhWlfNRkI0whnQ9aYGlZWK6mo8I25n3GwzO7Jzj1ToO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7D1FQm5cFcgeSRpSQAmQPqShtOy2JUvOZN2RSIleSDhmprJiN
	1PJYgT17tE7K3mggZHygaIaLwJ+cHlJLiuBhvB0Jatqd1/7NB6sGAlX5LOXY0atSN66l8XGhUnK
	UfPcpYQ1zdTxCyaI0liOEu6pPQFwCLhPTRqkVMxgEcg==
X-Gm-Gg: Acq92OESHHO5VmNwGAE0sBawWrm4ejkGcNMNv6ymZSFa1YqH7zex5uu0MWXcMrdbSw6
	mHYDPxno1f5W7X39royfT55rXVr8r5Qsc0+Nb67LFQML6JidukmsPOC8N6K72yw21kbNJ4Fn8xM
	FMEB9M096e57naer0ooUi9zFrqgGFzT4JTTTQhA0E6KSrCWLE+Xq2Le6eFSpD9z1gRibvWP+LKQ
	JGEjkxeMr+1FMW7DXrICSKlEqfyLJkEsVOah4UxI7GNp8TsYbSjFy9I7YLJDzYLTcN+AGNd476Z
	LI4X2pLCFbbSkhrwv+RCQTPD54lXbEN4PZP6WGA0Tmpr0EL8
X-Received: by 2002:a05:6402:3215:b0:68b:539c:d269 with SMTP id
 4fb4d7f45d1cf-68e710ebc51mr4808114a12.12.1780590670971; Thu, 04 Jun 2026
 09:31:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603-acpm-tmu-v8-0-0f1810a356e6@linaro.org> <20260603-acpm-tmu-v8-2-0f1810a356e6@linaro.org>
In-Reply-To: <20260603-acpm-tmu-v8-2-0f1810a356e6@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 4 Jun 2026 17:30:59 +0100
X-Gm-Features: AVHnY4Jq-Cm1FpMQ9NjMzo61aJ4t188OLXQIR-HELOPptilenf70Fcb7QJeV21c
Message-ID: <CADrjBPoHXi5hp9T=z97k4LKNKQUEnJdN4sSz5g+NgKAGC6jguQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/5] thermal: samsung: Add Exynos ACPM TMU driver GS101
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, jyescas@google.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-hardening@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tudor.ambarus@linaro.org,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bzolnier@gmail.com,m:krzk@kernel.org,m:kees@kernel.org,m:gustavoars@kernel.org,m:andre.draszik@linaro.org,m:alim.akhtar@samsung.com,m:jyescas@google.com,m:linux-kernel@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306976-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,gmail.com,linaro.org,samsung.com,google.com,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,linaro.org:dkim,linaro.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 049BE641ECB

On Wed, 3 Jun 2026 at 14:00, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Add driver for the Thermal Management Unit (TMU) managed via the Alive
> Clock and Power Manager (ACPM), found on Samsung Exynos SoCs such as
> the Google GS101.
>
> The TMU on the GS101 utilizes a hybrid management model shared between
> the Application Processor (AP) and the ACPM firmware. The driver
> maintains direct memory-mapped access to the TMU interrupt pending
> registers to identify thermal events, while delegating functional
> tasks - such as sensor initialization, threshold configuration, and
> temperature acquisition, to the ACPM firmware via the ACPM IPC
> protocol.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Acked-by: Peter Griffin <peter.griffin@linaro.org>

