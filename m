Return-Path: <devicetree+bounces-315864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BqsaJvuoPWo15QgAu9opvQ
	(envelope-from <devicetree+bounces-315864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:17:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC236C8EA2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:17:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="IQjv/q6+";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315864-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315864-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C63EA300C919
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9883812DA;
	Thu, 25 Jun 2026 22:17:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A1937C900
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 22:17:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425849; cv=none; b=jDDCjNtncPzkLplaOlnBRewVMZXQQinv7GEtQKCmhkKirDMOE7IEIoyIEOycU//Z/bVZV6jtZJWKPUf6wmGZ2+ZcL3wPCe+PXMbLh4EwoSQ9n2jYr8ZJxy0v7Szx+cdIs3yzequ1KkPRlizsZLRzTat+e2+CJHoD4CdbTorWJJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425849; c=relaxed/simple;
	bh=I1cXCOm745RXm5RvaDuUdNXcHFBmJV3+a5GoFtpPT64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZOJX40LUDf6k2tCMQlONtvhrduHq5NW384tRl9W7bhzc/gwGXuFKaraCqhUCr+yo80qwTn1SXnL3R5lDxV/h74k8XqMRLBdh9vNs9whOoaH+BWLJzU8CtoE8Snf+YKYzW7znz9ZvSMxW9jqyvoZnVhDMgiVPzCqvMFqnypwTObE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IQjv/q6+; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4923fb1f095so3204145e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 15:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782425846; x=1783030646; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=k+3GoXf2mrfA1KP6AU6rLpBytQHse5+WqLmVOpgycR4=;
        b=IQjv/q6+cojMJE/yhxKTyVcvV93ZMis9dlZnEhA6/LoC2VDkWG0ep65QfyfbesVY2D
         bf4bHOa0IIWUCD3ELozuhDHKqMtv4+afGNAH/FtyVonBA92mPuEf44PcB2HczpgUyITx
         CgrO8yO36NX0Ca/0SfeDEPbjvBfICOO/ZdJWduDTAeaYGxCBnl6+x282fQSCT/8azcZr
         JLZf6cei5Djr+O/CWi91js1lVLAvUfBy9ffDIoeB8i2VuwvLvsIsDw1ZFAdj5AuOSz95
         5UCS+qSnPXl1GImqtCw/ePNbkf9EO/4MZDmr/IbKNWH223UgOmuqBXLEDyROZAdhIPIM
         ih3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782425846; x=1783030646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+3GoXf2mrfA1KP6AU6rLpBytQHse5+WqLmVOpgycR4=;
        b=tDe8AwpWxoxXw39tzHjNxH2vpcgr9OF6kLD9+Ls8T/jUos6ov7voYhUV1u1YAHklL0
         xfZItOaX92FervOa4y0YE72/4D4LFjWxMyCutHj9bnyoY+aBiK0alPXyXxSQb4N02ods
         rNpdbkMG6VHgG6uW+l5sIpKdUUH8TbbgNzZU4UOozW1HVMs7++q5riUIGqDRjLJdvD8r
         rhmwV8KdtsGRxnZPAU3p5QccpjeUFaZSIDDxkfOu5r4DS0JE/AD2LGtb0sWmUHTiOYrU
         mExWShwytzsEDmZsKdk5Ik6qrEZ3MtFFgH/4LFn2lA8PZl4Q+nPW2YkLSXOTN8FGPFYR
         hJYw==
X-Forwarded-Encrypted: i=1; AFNElJ8eA1pW9EUubIo79rIt7Ffy7+0dG91hnJ+zTVNJ9wladnd0MhdGEH77VvRmXcODpnnm7lCYMM/qAS9N@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzd+p0B0XiRQ7HsJWs7o6+h1fW3uWxGfm5m0YqZI/+6IwvxYSD
	cq73HKGDoXiHVWJqXv/j4gBi4g6xHFBr7nO39MT1XlP5V0ywOSwugJuH
X-Gm-Gg: AfdE7cmXTdoU5bbBgX6RGEsXn6Zq3+PY4CtYXWf951xVDgdN6Lp6V7okZXCOQpuFk92
	50bu6tY9jpPDzuuUnDAdyVWzoL9A+ncHs+FaEJ0qoHLBI54OUXCKQ6PiYZoW0bTaWT5NKYJJlP3
	W3f4K8l+Lv1EldeQbUqICdEbMiLxl2DRTkt1hseMt8xv6kQ/dxAeSdh/eC/XR5t9Kub8VqKyiSs
	HDHtcG+JMvWsQi4iq7Qr+fsFNwpWvd+cZUxUjUAjkM9wr8YdaSQZesWIjvvQsSn2GMuyaNQrBV3
	nDaIKRjwKy23r0kXEcj1Mq8R/MC9OJiwUbRcsr9/4BXaxsZtKC5m1wSaRohGl1xHWnyAaI5kL2U
	EIniaZKcixRjbQvpLRNKPsR8HnPCeiDV5KIwfFpA9nnFedlKKOy+5oac6r6EzInFY6/Qu0yAKi0
	juGR7ih4Zxl8M0JFs0KoKp00/MOgKRQnFaZMrLzu6rr9jHi88KZwwDL/bVE+2DVk3Reeo3O3BIu
	3P43qtd
X-Received: by 2002:a05:600c:3549:b0:492:4363:e7eb with SMTP id 5b1f17b1804b1-492668acc8cmr62424645e9.32.1782425845982;
        Thu, 25 Jun 2026 15:17:25 -0700 (PDT)
Received: from [10.128.11.131] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49269071e49sm27961115e9.10.2026.06.25.15.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 15:17:23 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <4a35af81-8dc5-4c13-93cc-52585f84372b@gmail.com>
Date: Thu, 25 Jun 2026 23:17:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 4/5] gpio: rpmsg: add generic rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@oss.nxp.com>, Linus Walleij
 <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shuah Khan <skhan@linuxfoundation.org>, linux-gpio@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, b-padhi@ti.com,
 Andrew Lunn <andrew@lunn.ch>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <20260625155432.815185-1-shenwei.wang@oss.nxp.com>
 <20260625155432.815185-5-shenwei.wang@oss.nxp.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260625155432.815185-5-shenwei.wang@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315864-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shenwei.wang@oss.nxp.com,m:linusw@kernel.org,m:brgl@kernel.org,m:corbet@lwn.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:mathieu.poirier@linaro.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:skhan@linuxfoundation.org,m:linux-gpio@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shenwei.wang@nxp.com,m:peng.fan@nxp.com,m:devicetree@vger.kernel.org,m:linux-remoteproc@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-imx@nxp.com,m:arnaud.pouliquen@foss.st.com,m:b-padhi@ti.com,m:andrew@lunn.ch,m:brgl@bgdev.pl,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linuxfoundation.org,vger.kernel.org,pengutronix.de,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org,foss.st.com,ti.com,lunn.ch,bgdev.pl];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AC236C8EA2

Hi Shenwei,

On 6/25/26 16:54, Shenwei Wang wrote:
> +config GPIO_RPMSG
> +	tristate "Generic RPMSG GPIO support"
> +	depends on OF && REMOTEPROC
> +	select GPIOLIB_IRQCHIP
> +	default REMOTEPROC
> +	help
> +	  Say yes here to support the generic GPIO functions over the RPMSG
> +	  bus. Currently supported devices: i.MX7ULP, i.MX8ULP, i.MX8x, and
> +	  i.MX9x.
> +
> +	  If unsure, say N.

You've got GPIO_RPMSG defaulting to REMOTEPROC, which is also a
dependency, so it's effectively the same as using 'default y'.

But then you've got "If unsure, say N" in the help text. Usually this is
used when the default is N.

- Julian Braha

