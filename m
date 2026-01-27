Return-Path: <devicetree+bounces-259788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEELOY+EeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C13B91AA6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A4443024157
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F7BD2DA769;
	Tue, 27 Jan 2026 09:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5B4fFTR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E137F2DA742
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505883; cv=none; b=BQZDjSj6FaZANYLO+bxDG9DiIL/r5Huh44128pLFnXrk9VHuSlapc3ct1sO8bF687KjiUHAky6tSIqN6eL2tEU6+shlZnTnshKgj7kYukjqmaAxFgMbtU9L6VJTe8vs6a2Kw4LmbqYBFmGP/I+QSllXOezfOs7Ib9gF/95B7MQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505883; c=relaxed/simple;
	bh=IAlcWCtQdB6zFcgT1AEpGn9kuon/qBctbh//4Nuyblo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MORrVFipV6DlnErb22GTZGqs7DroooN03jbnDcSr8oSv1+awS+9UkrgQq3pzuzS9hhniX6GaBeuQ+Gy2VUieYm9QFHPDQtQYvzxEnPFZGek4p2jQwMBhxDiM+wXyqsXQOvISEnPNyNFrA8S275qGRF3MER740Z3cIQH6uTk5mQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5B4fFTR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3AE5C2BCB3
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505882;
	bh=IAlcWCtQdB6zFcgT1AEpGn9kuon/qBctbh//4Nuyblo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=m5B4fFTRykSx1iXEUZ9o6PvTZRS69FB882HHAz9VKjMB4EiGb1+Sjpt4v1YU+X2sJ
	 iFcHLvFGJ9tcRarjXkzPGwmmgjOyp9eYPgR79CBtDuerf1x5yCMhvbnxenXuoi4CHX
	 67vgFROGS4FNLu0cfQsesjaP/DXhZImHOy7OxNrQnT0kII4qslvsA2WlY5p4ABnUta
	 O8KMX4J6OylXZehLVg0k/7CzLbM3YLqQQZ3KzO3nEeeHr4rzzugkF5s04CN8ENSv5T
	 Q2cL9PWH71aewyr5fDuTzxdfgDVD2F9COfFaTobjUz8lV9nL3+Wzgvpz1waiKBRMAS
	 YbI5GreoSvQnQ==
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6495d592c45so4081011d50.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:24:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXD3+5ACWeSsZ7zi2AAZCesufP9IupoEXLLRzNb8GucnHdn3LKQlVw01s7A70hKz4QSCTQ0Fd6z7ZUR@vger.kernel.org
X-Gm-Message-State: AOJu0YywpT2ugDP7kDjFoFczcSa0BW1YV6MIn6vFme37aAt3PrFCybTX
	E4DkAMcCSelBbfMkq3yPH8w1eveKXJK15DL1YXf3XI3ZPLIvtCNhBqjz3hR8gy9dqkYPNkCHfT0
	QeYDug3yqDScoMzn85ls6pbdT+JTz+1U=
X-Received: by 2002:a05:690e:128d:b0:649:6ae3:59d8 with SMTP id
 956f58d0204a3-6498fc1489bmr707379d50.16.1769505882102; Tue, 27 Jan 2026
 01:24:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123-debug_bus-v5-0-90b670844241@foss.st.com> <20260123-debug_bus-v5-5-90b670844241@foss.st.com>
In-Reply-To: <20260123-debug_bus-v5-5-90b670844241@foss.st.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:24:31 +0100
X-Gmail-Original-Message-ID: <CAD++jL=MPPM5HWYJzc3ckbnP5GVjfvSobmKE1xx=5Ud6964NZg@mail.gmail.com>
X-Gm-Features: AZwV_QhQdyIiz4UerqYl3hvl_Hh7MKvqx_tg7HoHtzwKBdCqkSeZ5Xn1a3ShfdI
Message-ID: <CAD++jL=MPPM5HWYJzc3ckbnP5GVjfvSobmKE1xx=5Ud6964NZg@mail.gmail.com>
Subject: Re: [PATCH v5 05/12] bus: stm32_firewall: add stm32_firewall_get_grant_all_access()
 API
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
	TAGGED_FROM(0.00)[bounces-259788-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,st.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C13B91AA6
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 11:40=E2=80=AFAM Gatien Chevallier
<gatien.chevallier@foss.st.com> wrote:

> Add the stm32_firewall_get_grant_all_access() API to be able to fetch
> all firewall references in an access-controllers property and try to gran=
t
> access to all of them.
>
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>

Excellent, just what I wanted.
Thanks Gatien!

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

