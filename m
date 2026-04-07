Return-Path: <devicetree+bounces-285425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOzcKE421WmP2wcAu9opvQ
	(envelope-from <devicetree+bounces-285425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:52:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7933B2147
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AA92300A5B1
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 16:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D48533CFF41;
	Tue,  7 Apr 2026 16:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6+DhvL3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A262BE641
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 16:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775580553; cv=none; b=Rb5rMRsR8oZttqAdPTtWpLGqqYRGw8NGvLYdWZ0xexLZqYZ8P0cRRqRLWiNtUSEqRjXFJq7YYHdTMW8X80ArHh/SlKPrwBy5wBUCL9NtiFguwb5GzWkjACswTdOToJcNugo3dhW6WXIyP+TPnVZtHjWO+idHaa+aNP/jYGqkPmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775580553; c=relaxed/simple;
	bh=kPolnohOxrr8SgWvWiEer6L1AjEt4nvDVyLmTIr0Oyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eH6mwWPRV98pKlCcMdqls5FhurYyjZ2xulBy+bIZ20WBG29tgvHqnwKw+eGz4xYUJAX2gXXU0MlI3NFGgQKNuFyExjZ/Pad00AUTcSPQjkbn8YWYmi3o5rrN8LCUAbaGzlTzzcHX7216RqRN/HN40q5YsSW2D3Npyv1pVsgyTfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6+DhvL3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 701D8C2BCAF
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 16:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775580553;
	bh=kPolnohOxrr8SgWvWiEer6L1AjEt4nvDVyLmTIr0Oyo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Q6+DhvL3nhwt7YA2WtvUcR+tRcLMEkCJq7nVx6divKrvfJMfwA2N2lfw8TjMs9b7n
	 3gxIfUhpUyH35U8PukhyBfPVKvotsZU/kLtwZky1NUAVPiTvNooO19eKi+Rvvc/deu
	 dCl2Xg0q2GePUIDQ0Y+yfRBEVR5tGhvjrI7R/GrvKSsUg5+kSfEYMX3jIvD1c506bh
	 DkmPNv9WDssp9r6hWgCsmM0Z12eCeuAhox1JR0+HpLRW/otsA31V5jmhQRxIilK30x
	 ljMorYJ1jyUXqwx5A3sJm3YNbt5A91QxsFY/zCsStcIBwAF865zCcXtNkv7OwSRhgh
	 PCf5ktAwCBNTg==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-66bd3d05e03so5594901a12.2
        for <devicetree@vger.kernel.org>; Tue, 07 Apr 2026 09:49:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXOwg8QutVlexAnirYDQ+QIMl0R13iHFkNkqL6N0Eh2r13nkexw9BEd0blzU+UsP/dgE+vH5hIlZzDp@vger.kernel.org
X-Gm-Message-State: AOJu0YynSAFsFnF3p9YSB+S54ad74CrIOAA0PsACz2fAoUrVzGGe1ciI
	1n8pwECGZKTCGOoZ5CMGV2P1ZanLf2cTj02659N8pWCH3s3P5X41Cbn7rTKRGEb3PywDLtoql4D
	6eKJ+LOs/zf/xCWOT/b/0nC207mQrag==
X-Received: by 2002:a05:6402:501e:b0:66e:3786:1eb7 with SMTP id
 4fb4d7f45d1cf-66e3f87a2e4mr6974252a12.27.1775580551971; Tue, 07 Apr 2026
 09:49:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260330080108.24294-1-i.shihao.999@gmail.com>
 <20260331-invisible-certain-albatross-844cff@quoll> <adDRQbpl1lBinbij@fedora>
In-Reply-To: <adDRQbpl1lBinbij@fedora>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 Apr 2026 11:48:59 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+0q8Wb==Xy_bi-j2D29BzZEN81tZr7VPGikL4AM5rbbQ@mail.gmail.com>
X-Gm-Features: AQROBzChQDn2xfmyVETEP-hRApK9BY897Vlxqv40CE1sFuIVMWCycZsU8K_6MUc
Message-ID: <CAL_Jsq+0q8Wb==Xy_bi-j2D29BzZEN81tZr7VPGikL4AM5rbbQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: gpio: cavium,thunder-8890: Convert to DT schema
To: ShiHao <i.shihao.999@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, brgl@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rric@kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: AE7933B2147
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 4, 2026 at 3:52=E2=80=AFAM ShiHao <i.shihao.999@gmail.com> wrot=
e:
>
> On Tue, Mar 31, 2026 at 09:30:56AM +0200, Krzysztof Kozlowski wrote:
> >
> > This binding is odd and not used, so you should follow guidelines I gav=
e
> > more than a year ago and updated recently and NOT convert it.
> >
> > Or rather answer - why this cannot be removed instead? What is the
> > benefit of this binding? Is any other project using it?
> >
> >
> > Best regards,
> > Krzysztof
> >
>
> Indeed this binding has no active user and i think it is good to be remov=
ed
> entirely because no driver no dts sources are using it , it seems abandon=
ed.
> Please let me know if I need to resend it if it needs to be removed.Thank=
s
> for your time.

Please send a patch removing it. Thanks.

Rob

