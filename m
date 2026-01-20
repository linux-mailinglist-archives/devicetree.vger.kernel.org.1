Return-Path: <devicetree+bounces-257426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFZ8GRiMcWkLJAAAu9opvQ
	(envelope-from <devicetree+bounces-257426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:31:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFA160F4D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACC33909F53
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A864426693;
	Tue, 20 Jan 2026 13:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ngKGSC5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EE8344025
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768916592; cv=pass; b=TGlKCiE61n/G69WvgE77CXazaXP6wHfYB2O/oqj//0WdhTlVOQ3bJfwA0QrMJk9Noii5vr9QAdruBjGfC0XIV1gP/+fjt0fDkwm/YimJXj9MkPNZ+mOQLENL7/niS9oFlNMBfJ8dAsJ/r1BfgIG8KXcty7JbfnyFdFv0EXI38Zk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768916592; c=relaxed/simple;
	bh=x9mgi3TL0eDGl2pTGxPI5X6I1yeHKcio4o8DKGeuzng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rqgXGnZ7DYo1i2a2MB4dnKmTS9nDl1hqM7mSHCvtsQWkwNzkDbcxEEZnlIPesZ2lnxmf0DQiBXBkWhdSko4VR2WAvszBo1qTZdPdxyQhYvVKhThTUIrJ9KqZycUTOYeXEFVbUWsTt7T2yy70l83et58R9t2ULlwn0lee0lUbrRE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ngKGSC5x; arc=pass smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-121a0bcd364so6728988c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:43:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768916588; cv=none;
        d=google.com; s=arc-20240605;
        b=dEFQ8OtyEZSXXFP+nrd9KhpI1VEsYAXNAXhs/WrVnlJExrLrf5tFM98PvO0ARotbqK
         1v66dq7I4kucDO31+CBa/Av+THgis5s7hzvUwM8RXlmxnm0Izf6tj1yb4MZoK9mSznCc
         5ayG0R53NHyTNUcN4wuQ1MFrBnkADoOz3vMAHTSguRXExsTWICu3qgHxJ+PvF/Br+O9R
         LPUbEHYzTZ0dZPr1A9uCHVLvmht80DQvORgcN7U5EFOIUrR7pSEBHuS69SBoBtRLnquf
         ZqfNIInr6b6ABN05m09BEVmTRZsfxQExBpdEWrJM9xAezgYszM5yQpq6XCI8omNiFGWz
         MgTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=x9mgi3TL0eDGl2pTGxPI5X6I1yeHKcio4o8DKGeuzng=;
        fh=XBO/zVyrFIXLdcYUf9SNJCSELWXXFLfnKGSRES26ztY=;
        b=LEis/EPi6DVTZB6TQX/nvt2DcrxBQZDFtuXYIouzKL2IuVxbohCzYcoy/b+tbw29SG
         5HarvRlZp+4MDeKiNpjiCZ0vTG9pzPsvvcu+XQ6Cy5zeinXxqN5XJZwdhSSsnXZ0wP1X
         Qslycqlrz9EzhA8QW+IbPoofe/Pn64hryZG0hKJ33MkpZJzo+iOCsiygJPgRzIoqF+/V
         n988q53GyUO/G7QWfI9Zl+JeUSFVWckwQOoVQntFnsFn00cypcmRL42E+12C4ay+0DV0
         29IBm6v07FNSpxiREnh5+hBVrGwveCkBaQA0zXRW/z09Z7lfoJghlwcjfZ3+JZZmh+/Y
         jdtw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768916588; x=1769521388; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9mgi3TL0eDGl2pTGxPI5X6I1yeHKcio4o8DKGeuzng=;
        b=ngKGSC5xMF8tRwT2TwE0rPr9Lgn0cmAkq0DyDfJEAlObFu3edAjs+bcOn7C6C2f4NN
         DgfVfn7aeLCsSWjEIm5Dlg6XPhzVgs+qcsW5SjO78SfsdsBVondNdOaM44EYmQ28v9Z3
         bw4XULFKtdi81TxrMX0s4+W5i6oisJkNQHnHgZS2Bbg03fg7iXTaXO3dKp+V8gA9nr2h
         yiiwXKNgDLkEpJdMGrzWIR6b2y3+8X6ZjBbvDNwWrSYFZ0FK3TtSuvxXzsen6JHu7KGc
         aDJzE5v4JHmXAsjl536ADCT0oHQ65D0hf0gCgeiwM3YrFE2HMaOWFRtM3/QtSsKE9Auu
         N/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768916588; x=1769521388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x9mgi3TL0eDGl2pTGxPI5X6I1yeHKcio4o8DKGeuzng=;
        b=srnLQlzjdTnCmwRyTHhNEnyU0qgJ0j1eh1OMyTQ2oqYNNrxe5XZOIGr7OK8yvWT8ea
         XoKRFQPaH1o9VBQcR2mElp4K/yD0gLiuzkDKHoZhEqUXEhZqFC67+w4zaH841SUj+8cp
         ADDlnkMzngp6V2az5wr2sAHrvd/sNkvw5liGjfbb6hCvAU7nZsynPGNdZyThbczts+bV
         oTixdM4tfjLux2Si59dl/7og3fOwSUk1UpTRj8rl3atf1OLFyJwYJXjgzzhSKP3SIwn6
         41zx9kxXEIZPOqHJi5kjF4G2V//SRNo8uNNklu0jM15w+ObZXr6KMWh6sM8pQq775nmt
         BFNg==
X-Forwarded-Encrypted: i=1; AJvYcCXHyV9MMo/rX949NP2xCCFyAHvqXEYEfQrTuaHa3dYRZpJYNdA50pcfDGkPnY55rLmDJcu00jKSx0ju@vger.kernel.org
X-Gm-Message-State: AOJu0YwVFduMbIT+Sfd+D/pE9nAfQocEWFrSuI8AWFY4IQOCo9h1Iso5
	ceeA1AHK5SgUp6VdzxI55P8wYLjK1SLGwN2nVdggp1pzWFaMsMafIKJLkh/WPWwarRb1jeBkpcg
	CqbMbcHLa8jmWtY4eyOtMQcjqmUI9tWk=
X-Gm-Gg: AY/fxX7SDwlphf3PPd6roAi/7QZV6tngGWlYeQ3gQTcd3IN3xHTzoyQcveLNhy00Z0a
	/pblWZm+pfIpLGsCz7jq/PbUUKEpuPIp5Y8D+bc9T9yWj0thB/y+a40kK+mc3VkS0cmeC9R+s8R
	g3nK87y8cx0mTphu93Ln6LytwCf0vDegAl8tdv/+WKkG89rASkhjo6meYzWdGxM4Jm5nxDiqJxq
	OiZ4wBqEygX5d0HTfyiBME+pwsj4CiqF9lO20tQbGfbcg1JXGMQalA08SSaDxPwCHZzeKhnHpAx
	uKP8peOEoaID21vs4nHKDDgvSoinPjrS0kXLDHfbK6DFmIGC1b0+zvjP+mySxW8LfHBPUJyVofQ
	seELbr6n3PA==
X-Received: by 2002:a05:7022:6b8c:b0:119:e56c:18a6 with SMTP id
 a92af1059eb24-1244a7257a4mr10880097c88.14.1768916586232; Tue, 20 Jan 2026
 05:43:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com>
 <20260120115923.3463866-11-khristineandreea.barbulescu@oss.nxp.com> <CAMRc=McD0cRxtb3RCzzYPewFisto=4OjvA4gjaTcOk8ghTw_qA@mail.gmail.com>
In-Reply-To: <CAMRc=McD0cRxtb3RCzzYPewFisto=4OjvA4gjaTcOk8ghTw_qA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 20 Jan 2026 15:45:46 +0200
X-Gm-Features: AZwV_QiPrjYIgkrWuZvZ77hO6EmYEBB8e53YvqXAvD3NoIb32l_6NmOignEguN0
Message-ID: <CAEnQRZBNKBpwhO2Pr9Gb4cPPBwXf0bMYRuQzshCMJgOkOJEKVg@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] pinctrl: s32cc: set num_custom_params to 0
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>, 
	Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, 
	"Vincent Guittot devicetree @ vger . kernel . org" <vincent.guittot@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DATE_IN_PAST(1.00)[36];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257426-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[31];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.nxp.com,redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,pengutronix.de,linaro.org,bgdev.pl,kernel.org,gmail.com,suse.com,linuxfoundation.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nxp.com:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 7BFA160F4D
X-Rspamd-Action: no action

On Tue, Jan 20, 2026 at 2:26=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.or=
g> wrote:
>
> On Tue, 20 Jan 2026 12:59:22 +0100, Khristine Andreea Barbulescu
> <khristineandreea.barbulescu@oss.nxp.com> said:
> > From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> >
> > The `num_custom_params` was not set to 0 and the pinctrl_desc structure
> > was not initialized with 0. This would result in errors when parsing
> > pinconf properties from the device tree.
> >
>
> Shoudn't this come as first in the series and with a Fixes tag?

Hi Khristine,

The entire series could use a better patch reordering to arrange the
code as follows:

* Bug fixes
* Code refactorization or API changes
* Device tree bindings
* Driver implementation
* DTS changes

