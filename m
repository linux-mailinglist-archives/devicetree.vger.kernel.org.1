Return-Path: <devicetree+bounces-259786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDq8D9GDeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:22:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C142091A20
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBE123036EE5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248822D8DDB;
	Tue, 27 Jan 2026 09:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbv6PsAc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022272D879C
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505636; cv=none; b=pMsymPDcPCCdpst2n/roB3ijq/aJ8qLLF8H+WOYOSiaRYAnr8sNuXvL9gnLjoIqAXEySsHe1aXJ8QXaMEHpJRX4a79OK/pStXyFsMtwGzAtUJ0BlvrB0ME4JB7wvh2p+WE5/BrzNhslRbTJefKA7jmHPxaaWRg3Jw4A028dM1VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505636; c=relaxed/simple;
	bh=p0IYKPvLat3QfnpDZR/OU3ZqUxwUEKvk7ycHfQxUWZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JfPgd17krkzW6pvM76SHOIJ/mKAsi0PaImKfn1rcppQbglFrOilXR761fysNX3bXV113ctlHb9xZrwkSBRNRf9xMSsTzciuZ1BxG5+e379VKhn63g3kWoJMrrXqV8Xk9jtWQNDU/EtIRz6txC+9OSn4/9ZqMdLzpampllVgWcM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbv6PsAc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97271C2BC87
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505635;
	bh=p0IYKPvLat3QfnpDZR/OU3ZqUxwUEKvk7ycHfQxUWZc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Vbv6PsAcMvUdBF01LOt0+TN5btOmRSbzCatgsMvnx4lfsrDRysDt16czedra04lJH
	 pDKAJ5n3pDEMgnCRArvyJCKrQ4jDXf5Rr3gqSKtbT3fmD+lHRtV2wj2X91POQj4Kb2
	 PSaKME6xYEp7yahOmFSxcwd5RfmHoR2PP9yjAzRrJ9I7A7AJHPrMqrJ+q4BDp1tjNt
	 kcwvt7SSEQo9t5zVKTmvvKArxUTvH4rOt+P/0iuGK6ao3+QWWeuI0TpgqyL0x/bwJu
	 6rhdMtxd/qrxtgv9AiHYW3hH+u25GNWozBWvp/sZ77G543QL1MAzMnSWZ3bbowoKVI
	 pTq55Djhp2y6A==
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-793fdbb8d3aso48183247b3.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:20:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX37PqMNb/YD+i0seYaiB58qItWx1X6NCPLPGhU6krdf/TDSrvQbn2jUqRUuE8iPF0b799ASBTMJk70@vger.kernel.org
X-Gm-Message-State: AOJu0YxGcBX/nw9wdDK6UMSJ8XdKsUnQKIXO9BozjWEUpuMlC6uo2VGw
	55oHasaqPmB0ppFUjWMSIHDjec6bEKlLupCEkbuVz18+ndXJAnMGklzonC0qZLjhm5vbm+s3HRZ
	BbI01ICgKB2z3xvuFe6NklEXbzPAFwr4=
X-Received: by 2002:a05:690e:408c:b0:649:58f1:6cdc with SMTP id
 956f58d0204a3-6498fc54ed4mr526512d50.66.1769505634986; Tue, 27 Jan 2026
 01:20:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121-debug_bus-v3-0-4d32451180d0@foss.st.com> <20260121-debug_bus-v3-2-4d32451180d0@foss.st.com>
In-Reply-To: <20260121-debug_bus-v3-2-4d32451180d0@foss.st.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:20:24 +0100
X-Gmail-Original-Message-ID: <CAD++jL=kUV4ApYB4xYRKK_qH4Z-i2PUuis+1pd+w+nbtWC-FvQ@mail.gmail.com>
X-Gm-Features: AZwV_QiHuD4uxcaT0lvjfGOgtaMK3IHUr5k1uRq3DPN_dABfrTBvSM80ZXPyZJI
Message-ID: <CAD++jL=kUV4ApYB4xYRKK_qH4Z-i2PUuis+1pd+w+nbtWC-FvQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/12] dt-bindings: pinctrl: document
 access-controllers property for stm32 HDP
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Leo Yan <leo.yan@linux.dev>, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	jens.wiklander@linaro.org, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-259786-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,kernel.org,linux.dev,gmail.com,foss.st.com,lists.linaro.org,lists.infradead.org,vger.kernel.org,st-md-mailman.stormreply.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C142091A20
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 1:35=E2=80=AFPM Gatien Chevallier
<gatien.chevallier@foss.st.com> wrote:

> HDP being functional depends on the debug configuration on the platform
> that can be checked using the access-controllers property, document it.
>
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

