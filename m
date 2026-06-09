Return-Path: <devicetree+bounces-309346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BhQMO/mPKGo5GQMAu9opvQ
	(envelope-from <devicetree+bounces-309346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:13:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D846647A0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:13:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hvTmT4+g;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309346-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309346-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D27543010F25
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 22:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB53F3C819C;
	Tue,  9 Jun 2026 22:13:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA8C35203D
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 22:13:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781043188; cv=none; b=j7eP/fw5oANlULI8jvCVOAzIaH3+ciKqD56lMXAuRZpZb4PZ+dZfGb9fS2d+11/5gF1cyeSxAAVgK2E2Rqu0ZO+AlzW9DtVgswf+VfFRk/6UiPuBXf9MJymtw/v15a4xujJIMGuLlEcuchIgwhOoMEAW7jmZgLfy78A4qvbvtPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781043188; c=relaxed/simple;
	bh=qagFDp3J5fIfiyzBNIi1t4DhzgkTYU0l51sSsmyjYQE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=suzgM9llddjPTeLQwGrFrn4LCURWwoAKp1xMCLgaP26EUjR3VItsIQE4+EMRsSwm54Cn5JC63tk8qR+Mb3DYYkrLm92Tj4SgYFUSmA+Xzb5erpUg3uWFT421Gtfp9lc3vdywTHL3ICQskTu4WHKrM+0zCTAeUNoA1yp8UljeOr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hvTmT4+g; arc=none smtp.client-ip=209.85.167.176
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4854166e1efso6042683b6e.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 15:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781043186; x=1781647986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2SuYOT/HPXvKrCZtDe/qeMWaHPEqePbJHi5tDeXlEA=;
        b=hvTmT4+gEnDiH5ui0as01NC1roZS3n0EaARgy72wRnkbR5eMbnpE/jyfX5v8shlPip
         jYJQlr3fK2ixyqC1IJwS20BZ0Hij3NyWsR29OzksMCxhlTfEltc0gUUrMRCd2vctcb0h
         MHJ3BlA/8XgeAdTsL8VzS+7v12JfNUD5DegI5dGyM/D04CLFJGkXev1d/yVOcfjLMCF8
         hCbcQaKYkfAa6Lu2AixKt+zgJNfZSBT72Atpl6dx2i4CcE8qYHQ90vxK9sFnjgblKfcF
         kKghq3tZbcQg8+MFo2QzOGZa9eHmgwE6hUYU2RiV+XJym2ikPPW80Jx+0omexY8zMiOh
         2z8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781043186; x=1781647986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t2SuYOT/HPXvKrCZtDe/qeMWaHPEqePbJHi5tDeXlEA=;
        b=FE0O+Xzz7sUnEFJdLN0wh83/rsJAuWEIWIImh57q6Gve/Qp2PhP/ZLmUwgG8G512dj
         BidYo5y1vAjd+a9QaArj/NazY8PGqi0Ih3dABedkf7EUipMpNdUaTi4+dG5C4eYe5UnQ
         ZoKzfyKrL+VP+6O0pNtbV6Kiip6SUqblA/8pdwQHBLGjjb/stigJ9m/0neRyokJnrqjo
         eismaYSVfzZkpSi8unSTyiBPjpD4KNL993SxEQoLd5m3Qc4vy44PIypoj2XNw/v0Pcyl
         QhakkBJcQmNJgxwGjhZCndbOzkaN76o14nKET6F8xtAGM0YDzT9lKgHDq7XGic+DsjXY
         acdA==
X-Forwarded-Encrypted: i=1; AFNElJ8aQDAKvjNZGbefUtofydE9/vHLjAvWt7dibOuLLfxmObLR4dqSXYhTRuu/L9957rsyLGCNnn8lJT0L@vger.kernel.org
X-Gm-Message-State: AOJu0YyQT9EEhss1L7jBf9SErtXZpCfL5pK3oOG2jfoniU467Qrbjwva
	dRBGwzGLLcQPOB4mtU06JK9jII+2JekE2IPGRMP5T3MMQvjNe/62iZur
X-Gm-Gg: Acq92OFgODTRt4Ejx0rsGdmEJ89Nw4csvpCboWow64sYg5CaVIDfXNWgRbMhjaRSIbO
	ChGmz04nERHv2OXdHhdl/yS3ZKjferaFq3/kfNqDh/QsNAtSP6e62ldMLPJ+D9lfGONpa4WM8/2
	LzoheWlIbFnHgGVyOXej2ihg5+R0E+vLeBt9pa+b2SlJEvyMOEJvXhBe02YXYSrTtptETMu1qOd
	Kgt34ZZ75sgxO10vvhxN9Y5003XMfRJ0FB1Lt33/EoVn+jaS5aj/2SCvGpBuKSVbGPrAz2+zN4h
	xrkZbB3ivHlaLd0Bc30+6/WHr16BLWXKUwjtD+Nhjc89d/ydt0YtLADlj175gub7OtJ9ghcE7xy
	Mr/Liq2hke4+dMZPi4oGTd4VL7L3uZGUgYtfUFzwu4JQR9raRNDtjrNzdAaprsug8wCeSp6ZVkP
	E8rvacJ78vdbMtzJfvcGNvAvhQOxI+3iZ0IGAdg94Sy1x4u7U284ygeAHgkae/pIM=
X-Received: by 2002:a05:6808:1190:b0:482:4df4:ef5 with SMTP id 5614622812f47-4868dc826ccmr13806953b6e.3.1781043185864;
        Tue, 09 Jun 2026 15:13:05 -0700 (PDT)
Received: from linuxescape (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a5a64sm17105048b6e.4.2026.06.09.15.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 15:13:05 -0700 (PDT)
Date: Tue, 9 Jun 2026 17:13:02 -0500
From: Maxwell Doose <m32285159@gmail.com>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
 linux@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, Michael
 Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v2 11/12] iio: dac: ad5686: write_raw: use
 guard(mutex)()
Message-ID: <20260609171302.5764edb2@linuxescape>
In-Reply-To: <20260609-ad5686-new-features-v2-11-70b423f5c76d@analog.com>
References: <20260609-ad5686-new-features-v2-0-70b423f5c76d@analog.com>
	<20260609-ad5686-new-features-v2-11-70b423f5c76d@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309346-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4D846647A0

On Tue, 09 Jun 2026 11:13:06 +0100
Rodrigo Alencar via B4 Relay
<devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Use guarded mutex lock to facilitate code review when adding new
> attributes. This will allow for early returns, avoiding error-prone
> locking and unlocking in error paths. Gain-control support will add
> the scale attribute.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/dac/ad5686.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 

I agree with Joshua on this, linux/cleanup.h should definitely be
included. However I don't think sending a v3 is worth the trouble
(Jonathan may tweak while applying but I wouldn't count on it), so with
or without:

Reviewed-by: Maxwell Doose <m32285159@gmail.com>

-- 
best regards,
max

