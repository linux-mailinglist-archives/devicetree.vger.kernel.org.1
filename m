Return-Path: <devicetree+bounces-267926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SH6ZNhmsnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:48:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 75834187F8C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF1F130101D6
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E98C39E6CA;
	Tue, 24 Feb 2026 13:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maWJnBIl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC1339C65F
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771940887; cv=none; b=HGAze814dqaO+qV5qKbK/LtlumfynF/PbfIXwrsVAKgr9ZCMsff9vdelI7ko7Bl7cWFV7tBB+BVXSaR/BwI2i7zrvdJNC4Ozbx7B+x2OMOFtsfCAUfMCr8GY7iLPN8+CUloIHSb24t/Z7kHD+/+xdtOSJnYIEWaspBUPusN6ioM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771940887; c=relaxed/simple;
	bh=CObB27JMxovfM8wyNCjWJgmKAirbBGB/9n12INFjL+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SnpxNwZeAFV9Vm6UukO42m21k67lvBOGqrimCIcFutI2apHLCZDR0idZC0lyYY2IqlnNNW0233yGNm/TlLqRTE3yuffmeuj6mgVTvHnrEt1rK077Vp1pSf9fCqXGBJxYyNPjQLfbGoc7GuKfpsuc3N74AhO9J4sBREAMrgO/73w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maWJnBIl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22C68C4AF09
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771940887;
	bh=CObB27JMxovfM8wyNCjWJgmKAirbBGB/9n12INFjL+M=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=maWJnBIldOGiH8Ni6hMPjlPJUA4qpPHV5Ae/+uAq91UF8Qtqv9iCcZ+1yKSwvilWi
	 Se6Q9yq2OXiLTksTZ/fvAU2qIWviuqaLguvdMAO74n9+KWvJlWz3WNmyjPXojgy5mk
	 Cjnb4qr2jcEUBlEkgT4QAoghY5KiBC/K9gCnDW0npmAhIFoSZ2x0bo/M+yQgVk1gR+
	 Zz0O8zu4OOGlslv37HpNZJMgYif4x7b95N5bXyL0AQ0IiFaHy+tmy3WBrA81KzyC8J
	 b40CIoFsT7PXLu3GJ5IDfXZ78EBa+i7SBG1Q1NobfuuVX5u304iu9eULVfDFEecSCp
	 jpIJp3Z0swpaw==
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-79628fb5c05so42339787b3.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:48:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVw/yY3wut3pRuNiUIY5L39opIwl0iTDR19Dk7rJXbdsgfyAvpSjiTgL9btdWjasb+Eq+tsBoqZsk7w@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9MVmDJny7PC9kfEjeJRH8bRQDFBPclGayIoUX+E7js3UHJ14o
	d/nggCuhvQ6VhfG8h8//G6mPJT5pNKYZ7BGQ6dxgXCAC9QAw4IWuCOORTO6S6Aw22ApF9d2er3+
	uR04uwNYqyHpGAIshgNS2h9Id07dKKjQ=
X-Received: by 2002:a05:690c:f06:b0:797:ffb6:fd6f with SMTP id
 00721157ae682-79828ff36admr100103757b3.38.1771940886307; Tue, 24 Feb 2026
 05:48:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223152457.155392-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152457.155392-4-krzysztof.kozlowski@oss.qualcomm.com>
 <aVarmf5rlHWzNZ0Q@bogus> <739a4379-5be8-453a-8ff0-780aa35c9b71@kernel.org>
In-Reply-To: <739a4379-5be8-453a-8ff0-780aa35c9b71@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 24 Feb 2026 14:47:55 +0100
X-Gmail-Original-Message-ID: <CAD++jLmFkS2mxXxj8ds+wYtGyB_9ZuCmu9+wvMeV48Eypn-Mmg@mail.gmail.com>
X-Gm-Features: AaiRm53UUlEOLWzGiaL2z5SgIqcCNTYT-VjRsxPH8pu0MbKt5Y1jW00kb6mGSX4
Message-ID: <CAD++jLmFkS2mxXxj8ds+wYtGyB_9ZuCmu9+wvMeV48Eypn-Mmg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: arm: Use lowercase hex
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267926-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 75834187F8C
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 12:54=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> On 01/01/2026 18:15, Sudeep Holla wrote:
> > On Tue, Dec 23, 2025 at 04:24:59PM +0100, Krzysztof Kozlowski wrote:
> >> The DTS code coding style expects lowercase hex for values and unit
> >> addresses.
> >>
> >
> > s/arm64/ARM in $subject would be ideal.
> >
> > Anyways,
> >
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Linus,
> >
> > I assume you will send it to arm-soc. Please shout if you want be to ac=
t
> > on this.
>
> I applied it to soc tree with subject fix.

Thanks Krzysztof!

Linus

