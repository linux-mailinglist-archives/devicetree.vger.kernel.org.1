Return-Path: <devicetree+bounces-308348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZeSKBrrQJmoIlAIAu9opvQ
	(envelope-from <devicetree+bounces-308348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:24:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 980BD657231
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:24:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qte3Vem5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308348-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308348-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DD6A31152E4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61DE3CF97A;
	Mon,  8 Jun 2026 14:12:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38C93C9ED5
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:12:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780927949; cv=none; b=otDxkBanauasoncVFP7jaUARxIoIgRR9psMn+gcU6q/DdeFrxLdgz21fFyNQRBSaQGepTI9Bl2G/0c6Cg9Msfw0TK10/+Dj+0Dhg5VNQXN+qAVzhBEFAACRT9O42joJg57majl1eMPA0+OritBtVB81XgQ7cDzpeWbSpt6zs7VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780927949; c=relaxed/simple;
	bh=Lbob2K3Ts2e5sRZZi5UxoNhGx/cdA/AB0mJwiP8BuPQ=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sc6ag3TrRQ4ts0Ec8h6iW3XADTEzDCN3b/38IcVJE9ve2J1eNbMeB9XGRvr93yfC48VQ0lxbdGYCS7JLBDNkBc5J5eLOcnEWUdRYdjHk70X7eQMZXIj0iYPbWQwYa0Tf6DWjoIRTCMyLqXwktE0n2ZGh6nkHWS+J6qIvMF9ZZqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qte3Vem5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA811F00A00
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780927948;
	bh=Lbob2K3Ts2e5sRZZi5UxoNhGx/cdA/AB0mJwiP8BuPQ=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=Qte3Vem5qHkCZ/OeU02dUkzYzKXO9Beo3dLTUn+ODVud7suQf+ESdEjtBE+hQrdDr
	 DGYf0WwesCyIPWorZPnPjtS2APp4PnYp+eDN+yXvnnchEZy5vtAmfkVrSQYckLd+Bt
	 +xOrzDSNSME82zsHlMPzsJ95gmdEhiYtb5YGUxYb+UHGun8QLjkhg/JwsG/DPjjKW4
	 BKAd6cDN37/SSuMSLdjHEEWzFpSs/CIXxS7QTfqZ/ZpAnam1nUB3oSv0FSWLafBq8y
	 s12wE7HFmwXkTJ90OiOYfUXqi5Tz5YvBj8rCKiyFzoRHAQgo0oGQexH86m6IciKpBx
	 /PL5r1KagXt8g==
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-1363e78746eso4641500c88.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:12:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/FSQnciH3HfJptLFTlAAoQQgQfCDU4DhudKweiWh8XYnsbkg8jkWH+42kBpmIWuZ0GBPn/r/d27DOQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7FuWB1Ajp37ojk+mEm+eoNZylZlYmVU5e4qDjbMEUm+Jg9dJM
	4Aegwq0sXGRrOcYgzH29gQ30L46DhTx/3VLWq2PDtsR0MfS1rmC5jYB6xFvm+vWS+1gTEpQsoJd
	iKcXjw2Hj0SQ3/NzOlskdD7/GFFgZ/M8hffthAX8obA==
X-Received: by 2002:a05:7022:b99:b0:136:b67e:93e6 with SMTP id
 a92af1059eb24-13806740040mr7144172c88.37.1780927947846; Mon, 08 Jun 2026
 07:12:27 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Jun 2026 07:12:25 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Jun 2026 07:12:24 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260602080132.3256239-2-khristineandreea.barbulescu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260602080132.3256239-1-khristineandreea.barbulescu@oss.nxp.com> <20260602080132.3256239-2-khristineandreea.barbulescu@oss.nxp.com>
Date: Mon, 8 Jun 2026 07:12:24 -0700
X-Gmail-Original-Message-ID: <CAMRc=Mc-61ttjn7x7VsVMt1Ph5ROsNZg=1g+DFcnJJsS4dmucg@mail.gmail.com>
X-Gm-Features: AVVi8Cck9OW-nRKCCNdyIfJxZ-U3bKbEAtBgDAOB4cLKxe6r78d2Jkp1R58NAgs
Message-ID: <CAMRc=Mc-61ttjn7x7VsVMt1Ph5ROsNZg=1g+DFcnJJsS4dmucg@mail.gmail.com>
Subject: Re: [PATCH v10 1/6] pinctrl: s32cc: add/fix some comments
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308348-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:khristineandreea.barbulescu@oss.nxp.com,m:aruizrui@redhat.com,m:clizzi@redhat.com,m:devicetree@vger.kernel.org,m:eballetb@redhat.com,m:echanude@redhat.com,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-gpio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:s32@nxp.com,m:kernel@pengutronix.de,m:vincent.guittot@linaro.org,m:linusw@kernel.org,m:brgl@bgdev.pl,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chester62515@gmail.com,m:mbrugger@suse.com,m:ghennadi.procopciuc@nxp.com,m:larisa.grigore@nxp.com,m:lee@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:festevam@gmail.com,m:aisheng.dong@nxp.com,m:ping.bai@nxp.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:srini@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,pengutronix.de,linaro.org,kernel.org,bgdev.pl,gmail.com,suse.com,linuxfoundation.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,nxp.com:email,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 980BD657231

On Tue, 2 Jun 2026 10:01:27 +0200, Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> said:
> Add/fix some comments and print statements.
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> Signed-off-by: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

