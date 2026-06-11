Return-Path: <devicetree+bounces-310435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z+bJABypKmpDugMAu9opvQ
	(envelope-from <devicetree+bounces-310435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:25:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1CE671CDC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:24:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bw6jNGKe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310435-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310435-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4283F3040C79
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6BD3F1ADC;
	Thu, 11 Jun 2026 12:24:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338B831197C
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:24:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180693; cv=none; b=ccOuXkhQXKX5TONnlk/deMmsrIV9WZk9/mPYU9P3Xklk9ee7GG3o8DS+ZEseZJfSLZ/bmHyPBQM1H+YNHIlk7iFmiQRtUmU8XjjN4YUejcowIe8qo7JlpLqRWkVz6+1YEpdBOKhd8T5UvhfvJXdHL4C+4cLkds16hnkzim3BagI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180693; c=relaxed/simple;
	bh=+GWDGGbtT20VSu+vCSgxyZGvak1PFsiVLn78RBoQ0lQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N3ytZJOILHa+Bipr8P5Sr9UchXGGpLcU4n2Tx3DMomBnwSY0zlJlmpbejyYlQEFnHm24cZg84Lnzan+vgx1ud67Y5pS2MdLGsPO69RdGdGvbjl3cIR6u034HabdWbmXfG3SE1ofWIfhNjgw6wvpaqDEidOjsmOCPPDMLcWFjZ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw6jNGKe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72FC1F0089D
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781180691;
	bh=+GWDGGbtT20VSu+vCSgxyZGvak1PFsiVLn78RBoQ0lQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=bw6jNGKeIFNH7sZFrP0z0Zagg9pDJggcazcxMJ8NbE8vziAoNbaCrOfA0e3ZKyFC2
	 fafdVMtkeaxth7FR7pxHJudDoa8v9eqzahrn2ThLI8OkuqVFeKiEpPv9OynXuMgARc
	 3ijHcIrcZo1vInJNsr0KHrVjYbCTquiRks5WovepWGKM/egsiOAJqqNmfIp2N2CJ9E
	 gs7HHB3nI2QEFyZmsvsMrF0mj8kFM7jdqNihg41xeTbWSDv/bRAAxUjPpOdPen8YCj
	 JFPPrnvTHshT0FDUfQcybTsF5jfSi1hvn1oD4waHt1SZ5ddpzvyuOe01+MbugscMeO
	 nbO48dKWEG+xQ==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5ad2ac0a0a9so108130e87.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:24:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ83OEROr6E3coojpzqT7Ge82sJF1Hcb4YrFndPPOgoCZxSt3RvTPeEL4L+q7C5gWYPBYu7lMntsKhVM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk+6DKbrsm6UoHXXVdmDJUM0CRNDlpAarLQNHdVSSHuPN58Yak
	WLayBquBZYdoPbM/YwbB01Yu1CiPy79B2nkCIYLIs4+jUhaU4tnRjbuHsStJ0c68xCF5oZKEKcF
	5sfAboTk6etgRgBSTB3oJA5SA331Iz8M=
X-Received: by 2002:a05:6512:3985:b0:5aa:6585:1ba4 with SMTP id
 2adb3069b0e04-5ad27fb5d65mr737232e87.41.1781180690702; Thu, 11 Jun 2026
 05:24:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260610-ultrarisc-pinctrl-v4-0-b7e9b2a8ed84@ultrarisc.com>
In-Reply-To: <20260610-ultrarisc-pinctrl-v4-0-b7e9b2a8ed84@ultrarisc.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 11 Jun 2026 14:24:37 +0200
X-Gmail-Original-Message-ID: <CAD++jL=m6++zOfq2gP4-y4N7U6nx1buVM5KMoxWJ_9PM6RVV8A@mail.gmail.com>
X-Gm-Features: AVVi8Cfk_Nb67GqHhEaC43czvNZSfeYaRUO8eNFAOjUIKcFR1-C3mQUmgjkvIvI
Message-ID: <CAD++jL=m6++zOfq2gP4-y4N7U6nx1buVM5KMoxWJ_9PM6RVV8A@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] pinctrl: ultrarisc: add DP1000 pinctrl support
To: wangjia@ultrarisc.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310435-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A1CE671CDC

On Wed, Jun 10, 2026 at 7:29=E2=80=AFAM Jia Wang via B4 Relay
<devnull+wangjia.ultrarisc.com@kernel.org> wrote:

> This series adds the devicetree schema and the pinctrl driver for the
> DP1000 controller using generic pinctrl bindings.
>
> Compared with v1, this series is narrowed down to the pinctrl binding
> and driver only. v1 patches 1, 2, 3, 5, 7, 8, and 9 (vendor prefix,
> CPU/SoC bindings, DTS files, and defconfig update) are not included in
> v2 and will be sent separately.

This is a very good looking driver so I applied the patches!

If there are any more snags they can certainly be fixed in-tree.

Yours,
Linus Walleij

