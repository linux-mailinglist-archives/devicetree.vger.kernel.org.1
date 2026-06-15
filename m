Return-Path: <devicetree+bounces-311784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HJ5MOxK8L2pMFQUAu9opvQ
	(envelope-from <devicetree+bounces-311784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:47:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8514C684B38
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:47:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ihkxr7IK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311784-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311784-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F04D23004638
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69A33D1CB1;
	Mon, 15 Jun 2026 08:47:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F1137F01D
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:47:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513230; cv=none; b=B5ZsjK4MFtL/8e+3YFRiT0DeCWw2udLXoyLcSVn6+hhFLZngIYpZdElogSrMjiBaUqGWcNxSgPGaQ7wfQaDLbu6lcqGKyb64wTOdtJhHQfjdbBu3Nmc+5oUZ1uJn4fIztONP9erDqN/AdEql/xQSjPg0S3KUeHMF5qBIuU9ujro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513230; c=relaxed/simple;
	bh=36Eqe3P0lexDFT9WtRGkeP33r12T3Ldt/0fjyKtZHsA=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KK4DiEIzznxwV4E7sdw3nE7mhm3p1eTxgrWvHKp8VKy+3w+sSvG33hW3VmXpbnXGS/NR1wDlz25++wN5aGecF+4D6kAcMR7K6NPWyJ94ZvYCsyA9/nJHOcscfrO3T4G653CYOA8/ulP5eUrtQBz7HkLDeYciQbUycmSXPk4aX/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ihkxr7IK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4740D1F00A3A
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781513229;
	bh=36Eqe3P0lexDFT9WtRGkeP33r12T3Ldt/0fjyKtZHsA=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=Ihkxr7IK9UQqH9939NKfzpzZPtyXug9rksT7re6jcnEAjJ5KkJaT25gIZcDrDlryE
	 VXPdtnFAe9S1DUdHvYq42Vs2JIoPKGKlRi+y/GR4Bm4PWDQn8A7CQ6luRtmOnNFwNo
	 1wLlldKK/P9owFbjFGkwVFJKLDwjsmgJr/G+DouPALuVcN1YnCevUi4RuPex0AzcuL
	 eGzP8y/i2iID2lXwOm//y9IgLPAeL4JaWdKspPxYssTs83N+150FgJh/6ciYUtDlYK
	 8FPZmF7XqZ8AZteDJvJc11uWYhutkVlAAVTCkkBv4KNNhkWA9XJemsf0Er7lYpk77f
	 lhtzbwUDYaYSQ==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-396775c2720so25644291fa.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 01:47:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8sb9jgJ6+dLlkAInFYwMuuyfRJLpcOOM3oMMlboqvwWQb6TnI/FAe5QqSideITaZNaxsV7/TpRTha/@vger.kernel.org
X-Gm-Message-State: AOJu0YxrPj/L/jGLmCIgY0PvmcgxXWQKWnDf4kn+pn9tDlqw0a2LsBUt
	wzH6Yf3+/KJE03zise/MpMIgXyb5FedsrmyHwuz6854fTE7otFfHNc0Tqyagz+Gk0aO8HvyvEda
	BLyjW018hsfjSj7PkGf+B4azlD2m0yk/CjP/WZQWPQg==
X-Received: by 2002:a05:651c:1594:b0:396:5f6f:6e40 with SMTP id
 38308e7fff4ca-39935760c65mr24339471fa.22.1781513227972; Mon, 15 Jun 2026
 01:47:07 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Jun 2026 01:47:06 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Jun 2026 01:47:06 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260612-block-as-nvmem-v5-1-95e0b30fff90@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260612-block-as-nvmem-v5-0-95e0b30fff90@oss.qualcomm.com> <20260612-block-as-nvmem-v5-1-95e0b30fff90@oss.qualcomm.com>
Date: Mon, 15 Jun 2026 01:47:06 -0700
X-Gmail-Original-Message-ID: <CAMRc=MeNhR=30Q=gvPt0XwXbjJHgwjdC8gJ4nstwu2iKBD0x5w@mail.gmail.com>
X-Gm-Features: AVVi8Cd1V_fZoItE_I9KGUw7uwZ51MCBbXABRmFn8vXyiXcSneoYaZc7Se-syqA
Message-ID: <CAMRc=MeNhR=30Q=gvPt0XwXbjJHgwjdC8gJ4nstwu2iKBD0x5w@mail.gmail.com>
Subject: Re: [PATCH v5 1/9] block: partitions: of: Skip child nodes without
 reg property
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-block@vger.kernel.org, linux-wireless@vger.kernel.org, 
	ath10k@lists.infradead.org, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, daniel@makrotopia.org, Ulf Hansson <ulfh@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Jens Axboe <axboe@kernel.dk>, Johannes Berg <johannes@sipsolutions.net>, 
	Jeff Johnson <jjohnson@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311784-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:ath10k@lists.infradead.org,m:linux-bluetooth@vger.kernel.org,m:netdev@vger.kernel.org,m:daniel@makrotopia.org,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:axboe@kernel.dk,m:johannes@sipsolutions.net,m:jjohnson@kernel.org,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:quic_bgodavar@quicinc.com,m:quic_rjliao@quicinc.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:srini@kernel.org,m:andrew@lunn.ch,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:saravanak@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,makrotopia.org,kernel.org,kernel.dk,sipsolutions.net,holtmann.org,gmail.com,quicinc.com,davemloft.net,google.com,redhat.com,lunn.ch,armlinux.org.uk];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8514C684B38

On Fri, 12 Jun 2026 15:20:53 +0200, Loic Poulain
<loic.poulain@oss.qualcomm.com> said:
> Child nodes of a fixed-partitions node are not necessarily partition
> entries, for example an nvmem-layout node has no reg property. The
> current code passes a NULL reg pointer and uninitialized len to the
> length check, which can result in a kernel panic or silent failure to
> register any partitions.
>
> Fix validate_of_partition() to return a skip indicator when no reg
> property is present. Guard add_of_partition() with a reg property
> check for the same reason.
>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

I think this warrants a Cc: stable and backporting as well as a Fixes tag.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

