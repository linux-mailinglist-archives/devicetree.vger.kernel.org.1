Return-Path: <devicetree+bounces-272355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAxRJ2lnq2kfcwEAu9opvQ
	(envelope-from <devicetree+bounces-272355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 00:46:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03205228D5C
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 00:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF6B63022635
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 23:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1EA335DA7C;
	Fri,  6 Mar 2026 23:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0h7AZal"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9C531CA4A
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 23:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772840792; cv=none; b=T0HoaoZFTmUqLOdcV44eFsPqC0qMxhy9FP8vzzSyXIZ9yvHppqf3DHaV8LSOGJ8gs9wIDv8lo8MRbGYJf1uI6oA3e36tGf0CgNl0iCUannZanNBV/NKQx6LF0mATNH1BPhBInkPhH5mh8Muoms5SHhZzqqftgLZPMD0h2Y8iiAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772840792; c=relaxed/simple;
	bh=V4xsdr2SOXxaVwr7h1gBMDOwXdTrlnqc/oGBb97215A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EBbnNhOrQ7tvduK01tLSMRHb7hLPmcTIjiO/SXpXX+pEXXYKs1XdNSGPEHNuckcdcH/ILCBYNn5pmM50gWRfMXV3NGSZ2m6WtkiN68/4vC1I5OF3kgMXypxIo1DT3wCVJNghuyq1kYp2yJYa3wBxWhc0KoTSV1jwRjVqX1Y1vqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0h7AZal; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48312C4AF09
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 23:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772840792;
	bh=V4xsdr2SOXxaVwr7h1gBMDOwXdTrlnqc/oGBb97215A=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=l0h7AZaluenLH656OAETKKyXCSFDSTj1tVnm4Hh15YNg3sXwVkLgjEjOCluh82ZP8
	 WnNLYMQrH+UNS/E4LG7GDj7njbm+ewuTqyP4n1aQ/FQUyKuRxhCwFJd5T+0+rH0/M+
	 WE2FTfs8G3AQ3yDB2BN4ZKRG6aAbgMxA+0/SKY+ujFHAmkYUDXJM1glAhTzjMnif+3
	 lQMaoPrbqwlFvGxEmEb5oFMHErrhTGp9O8lKfDglBdkELxhjYLssUsulAj2Flr31Hc
	 aygTJrpLYYnQiEyXYuf7iUhBzcHLfLuoHnrEuQyxl9T841UuftX9biKXgGPqDrIBw2
	 DDLwUY8eCjERQ==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b941d924534so202521966b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 15:46:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUm5SRqHIdlYvhuyR0+RNgagDQloTd7eHhSkArCXOFEeAHF71I1QUQuzGhGW3mfuk/hIgLIOJlHbLKc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8knYKCHz8E6VYnbHmIXLzC0BIqhBjUKnw1OiYpWpDez0XKcax
	xhZJCNZgzDXxaEx/83gTIxSkD0bAzxADP+K5s5hkYbE0NOHb3EAFHAU7010Je+bU8bWnE6WtwQJ
	bxFcfAT3avPGf6ql/WLhAf9ZoY/Hq1w==
X-Received: by 2002:a17:907:3f20:b0:b73:8639:cd96 with SMTP id
 a640c23a62f3a-b942dbdfbd6mr216720866b.24.1772840790779; Fri, 06 Mar 2026
 15:46:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122165923.2316510-1-enachman@marvell.com>
 <20260122165923.2316510-2-enachman@marvell.com> <87ms0qfd8h.fsf@BLaptop.bootlin.com>
In-Reply-To: <87ms0qfd8h.fsf@BLaptop.bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Mar 2026 17:46:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJn87FdJmh=4phLL+DRQk8dz1iJE7=43f-ObFpEPpB_Dw@mail.gmail.com>
X-Gm-Features: AaiRm50LdTsH2jqP9SzcYIinwhDACMAbrvfuHG6zjOqjPZa8N3B-Nx1hio6ZK-c
Message-ID: <CAL_JsqJn87FdJmh=4phLL+DRQk8dz1iJE7=43f-ObFpEPpB_Dw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm64: add Marvell 7k COMe boards
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Elad Nachman <enachman@marvell.com>, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, andrew@lunn.ch, sebastian.hesselbarth@gmail.com, 
	pali@kernel.org, mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 03205228D5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272355-lists,devicetree=lfdr.de,dt];
	FREEMAIL_CC(0.00)[marvell.com,linaro.org,kernel.org,lunn.ch,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,marvell.com:email,bootlin.com:email]
X-Rspamd-Action: no action

On Mon, Mar 2, 2026 at 9:44=E2=80=AFAM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> Elad Nachman <enachman@marvell.com> writes:
>
> > From: Elad Nachman <enachman@marvell.com>
> >
> > Add dt bindings for:
> > Armada 7020 COM Express CPU module
> > Falcon DB-98CX85x0 COM Express type 7 Carrier board
> > Falcon DB-98CX85x0 COM Express type 7 Carrier board
> > with an Armada 7020 COM Express CPU module
> >
> > Signed-off-by: Elad Nachman <enachman@marvell.com>
>
> Applied on mvebu/dt64

It seems the .dts files are in 7.0 and the binding is only in next.
The binding needs to go into 7.0 too.

Please pay attention to the warnings. There are only 19 (unique ones)
left for marvell since I fixed most of them.

Rob

