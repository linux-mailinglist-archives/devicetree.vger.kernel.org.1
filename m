Return-Path: <devicetree+bounces-276821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJrhIB+fuWk1LQIAu9opvQ
	(envelope-from <devicetree+bounces-276821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:36:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 885692B0FDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B1E23006835
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF0938F25E;
	Tue, 17 Mar 2026 18:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="08tgcsxB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BD437C0F8
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773771984; cv=pass; b=E/6IITfqapMpyPdbRy3cHLpHF0PhrX2risXftedmKnqpSg/K2EJbP6CwzavEVfAd6qJP/1jfpilPAXm2WUV7p+WrdsIiog+5OtFLhStKbfRXSRbNqI9O1FN5RsxpluTXi5yrU3FVaNWHlhAPnjGX7R7z6rWcEbDzhIXv3SmtZnk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773771984; c=relaxed/simple;
	bh=uJ8SKncTVpS3Tl7xSmBTPvmJd/DmUmBR+sRT2wqL8mE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j1R2yd+jkFBpOOO35jCSDJfUVDQwgk75gIRipe1BGjsh7Lqb4Y7old2+rupW1L1tmkS8upN5aStGFfGsqblF2JXFZ9nN2qFBw7siJpYRPgkFCvdTkKGyo960e2OQ3bSr8XlenWB8AgkdyfM3wypj+qOu20QivDcP6HWG0WP4uUk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=08tgcsxB; arc=pass smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-66732a99928so1969634a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773771982; cv=none;
        d=google.com; s=arc-20240605;
        b=TviCn2LcNWamwvHF2mkVTpDsTplh5guwCJv/ZRSeiObOiekC0oSlVYoYXO3yVHC5SD
         ji/LOCxTVpm34quFwyiUtxSic59XlDBEcSttaOoh0b02mQ6JtlIzUsgcd0DFfT6QtPlb
         ebtlJPzVyq56EQdvmbW4RWpEq7pyjTOsaForHh1TMTvrshz7AsvHTBLzR5gWQeD9TvWT
         kh6vefCqHF0b3/Q+CPe+w728XG0g+FeT+5IuU38/6U3RF+uHS1ZexFHiTQV6DEFIDoze
         WuUg7bgipulzczR62uRe55/s3M2KdkXn2+ZL3P1K5ZiYIkka+ueXKa/5/wJxwo0odUNa
         fXwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GR869RoNS13LgEOS3n88g+nd04mb0AZjtf/yAKe2QY8=;
        fh=knwNCR98KQzV08Rry/7WLZ+Yx62L2GuvK2QnmriItzI=;
        b=acUdhprU1663Ox2luWbclwNTJRHQsJu+8FEu5AuFH6/Zey2vzpsz5IyAGAoS3x9lO+
         lncRVaIzV4SUZroPIHwBQiDB7Rnrxfzdkgg1LAiaKUF/dlxZFJLrVUlLqjJqzzjW0tTe
         9aW8lY1sZKzTfrkQMmKWfPSKq+j/8ChTY/nJJ1nbGFgQQc+gCs9d5qh8Xiub+qxpsPGA
         wHNSIvFtn/CsCOLDuQSbi3aL8z96huejDx367CFh1XHXJCYPK4gVLJ5scD5fgEmogQ/K
         7Q7ZPEaXx6ssCF/xUB8X/hmWhqI759MYxAYu8A41qByxWDERperfQeOlvKc46Tuo6qkh
         1d+A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773771982; x=1774376782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GR869RoNS13LgEOS3n88g+nd04mb0AZjtf/yAKe2QY8=;
        b=08tgcsxBj/WktNNqL3QHrzHq6bFmPl0cunV3szSv3bU04mcfed0KcxFPfWpI5JS9vN
         d8/HKzCSzEpULfwOvmWR9/IrdeX1WW8kGIpTfh3wG/eWyu9R1FjWywkaoLpTmGk2/pE8
         Tw7FhjSndY75NnbgpmmqLT/lIK7cdiSIA0logXTYV4CRNfgwfdgfsedplB8CeT0qYkAL
         gv2QGh+3jmNbFmKqiOsM2lpL9fMJeBFx4Hb5U3vyBfO5zoh12UBoWv8DSpzBFUi17lvK
         nvmha09i2/eRrAcbes9imbHPqXwR9NA6l38dlqxSGXXZT4ciqul56ALrXKCPvHjQiyk5
         96hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773771982; x=1774376782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GR869RoNS13LgEOS3n88g+nd04mb0AZjtf/yAKe2QY8=;
        b=aH+rHtP/rTGnu7ENu3XIsJIiMsh+M/N1eZKi4J2uFhOHKRJZq0mAY2yTlJSxuG5O7+
         ekznA53GrCy2auXWD/wg7Q4ReKv6O9iS8uojS8Yt8wSRo2lMDhFrjqij1IFZkhHp6ynN
         qnw/IOjOuwhbCswm4kCn8Wp9Na4FzZqLS4Vm1gHXqS93RR2q/JPPcWGQPTTGAL21XBWt
         0Tj/P8molIc289YQeyBPsiH+12sm5OhalW4Piilxw1reUcQ/ai9Rq3kN/OHhCWeHSM0z
         q4oG3dextp+8LmrmJlae+0TnhjEFcLi5kM5vhu3Z4bTX43oGv5axGs1Vq64ck64P13bH
         Ws8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnSJ5+MIG30CvFTKmP9rnWA1EslfFy8+Vaq637vH4IuSxGatQAwtc3fDofzv/HB9qIZehXGEspzHrH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5HHZFfbC7BjVAKJ4M0CXh3xueE1BW8auSnaGDnrv2C59KWde2
	+KrJqpydWVzivTJlDJrD/0ygmyPEtIdJ856ckaaSpPaiKx7wVoU+ZOF+kjPl/AUFe6tTfXSXV27
	6bS/sY3SYmNRHnIST2DhQ4eIzGfAdcHXQoC9efw5Pgw==
X-Gm-Gg: ATEYQzx2zHkQPPciN+ibTFPcXjKggRrT37KrZZqy59xZZfN1+KCnq4Uo47WZyFEYoVT
	0OIB2zkvdWgNhgNPEvTF/sc6/DnpxKy3rSqCwXli/iaZPwU7Fq/sOPXZgPSp3s5Wpf0j7SXeda/
	926qQieMllxaFeCHUaPrODaUYLmGqVfKgXKFRDqbn1jRtAiYJtQinIvN5IW0CwA0e0GGueltIK8
	KdT7TPwb2TQKwUxO0KXAXe1pNFLe/YiGDA72fk5cj3f3X33vGsmjNU8ek5OPK+tSNN924/YDhBD
	GM3tuZc=
X-Received: by 2002:a17:907:9622:b0:b97:b3bc:f6ba with SMTP id
 a640c23a62f3a-b97f4ab1584mr15626366b.39.1773771981874; Tue, 17 Mar 2026
 11:26:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-ina4230-v3-0-06ab3a77c570@flipper.net> <20260310-ina4230-v3-2-06ab3a77c570@flipper.net>
In-Reply-To: <20260310-ina4230-v3-2-06ab3a77c570@flipper.net>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:26:10 +0400
X-Gm-Features: AaiRm50SxHUa1Q-LFc3UN_pckObV1Gd_taVdOY_hKO4zUofz-f-MzaimZJIB4IM
Message-ID: <CAKTNdwEvy8jTO-106RvVi9zW-vR9hTkfgSmK0MTH6-g39EQpow@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] hwmon: Add support for TI INA4230 power monitor
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-276821-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[flipper.net:+]
X-Rspamd-Queue-Id: 885692B0FDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 3:43=E2=80=AFPM Alexey Charkov <alchark@flipper.net=
> wrote:
>
> Add a driver for the TI INA4230, a 4-channel power monitor with I2C
> interface.
>
> The driver supports voltage, current, power and energy measurements, but
> skips the alert functionality in this initial implementation.
>
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> ---
>  MAINTAINERS             |    1 +
>  drivers/hwmon/Kconfig   |   11 +
>  drivers/hwmon/Makefile  |    1 +
>  drivers/hwmon/ina4230.c | 1066 +++++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 1079 insertions(+)

Hi Guenter,

Would you mind giving this one another look? I've addressed your
feedback from v2, and no other feedback arrived in the meantime.

Thanks a lot,
Alexey

