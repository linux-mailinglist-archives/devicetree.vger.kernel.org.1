Return-Path: <devicetree+bounces-259789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A5mOoyEeGmqqgEAu9opvQ
	(envelope-from <devicetree+bounces-259789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:25:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C39091A9E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AFDF830158A0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4053C2DC348;
	Tue, 27 Jan 2026 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CltF9RKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF392DC332
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505928; cv=none; b=NVFloaPMZABvns1m/GjndjUFisCxjdl1fTOAFd5ZVSPqYPHid3Z9QKZQyqAnMpXMSbdukGzY21pQ3EAcvIRp/7leDozz/o6Nx6y88T4/0u31IP5oYcSxiNYW72P4rCixkRing7eCYj5A/YF9uNBOYVDoeGoITKprUgR91HYk+Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505928; c=relaxed/simple;
	bh=4fhNaoxeEqHkgipGOWq15FtPWpaf67z94Gjy73GwHac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sjfJTpNxmnG1SVGbGOgFUtfMX3Sxhgp28+C1DbN55uCmuDqbaZhhqJ6rHDi1wGT3ShFVt8jk1XHjt4G26SHoIaIwU3hz+imHq1u19LUAKdx7xLQwlk/ilysS93lGA25bxZGgHMGkiqKSaa0kBy0cWcMJcQ//q4k/JIht0cY2Kh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CltF9RKQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01176C2BCB1
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505928;
	bh=4fhNaoxeEqHkgipGOWq15FtPWpaf67z94Gjy73GwHac=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=CltF9RKQl0SnPNeYeUbzFQ46XRkqzlLyrrTInW+OitRz2g+k1cuAO8oUUhr68/9t2
	 r2ne5cTYxo/zxQmTF0j3H5Y3HQD/z4AvTj6lBj2Po1aLzSDKgpdp98Yy1P6DhftoM9
	 BGAT9ZR7e0smMQvtd5RjOAgy734oz/8vLBPWGNg5WGam1OQFxHdAwA/97DQSGj+JKI
	 EnIAVYnZnWW2YuSmnCCyve6YpYpMdMvpok5SsAv/7I1J5lrNbe8B9krgG4Rx3wSq8u
	 W8O0lrN/fgAB9u843sUIbSOHJWs9GImGBJWoYiHPKChTk9Su5Woa1Wwm5si6puLdcQ
	 1c7ibtUxGYRgQ==
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-64960418d46so3475177d50.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:25:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVodhw05d9uJnnBaIABWPgIULTwqSsZGkxEgW+P4hhgYIhaAKgjvqaHKUByON4ci7GI90UPg/e5EDLH@vger.kernel.org
X-Gm-Message-State: AOJu0YxABZ8uuhGGM1XHk3r6oNVEKb67sWLjL6ywNNY3OW2lZWUGCZRh
	lXg+G+S/F9n+afvuQTN8DxVLUy/pf1N6PALganBQ5DSImLFPYdW+Con2+Xw4yQo8Yrzh7Y+jy49
	VOwPstu+CAQ5Jy+6kE8VGCUWF/UYOn1g=
X-Received: by 2002:a05:690e:130c:b0:646:5127:9d14 with SMTP id
 956f58d0204a3-6498fc68930mr540909d50.79.1769505927330; Tue, 27 Jan 2026
 01:25:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123-debug_bus-v5-0-90b670844241@foss.st.com> <20260123-debug_bus-v5-12-90b670844241@foss.st.com>
In-Reply-To: <20260123-debug_bus-v5-12-90b670844241@foss.st.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 27 Jan 2026 10:25:16 +0100
X-Gmail-Original-Message-ID: <CAD++jLm0vj7ODP6xq=YmCbF2WomKSnY7PAMiSL2zQ-DNUdKfYw@mail.gmail.com>
X-Gm-Features: AZwV_QjVWNP4X4nR8KbNY0bXRJ0Tx9Nx3_diLL7W3D_y2HIVAXBmR108tXoT0LI
Message-ID: <CAD++jLm0vj7ODP6xq=YmCbF2WomKSnY7PAMiSL2zQ-DNUdKfYw@mail.gmail.com>
Subject: Re: [PATCH v5 12/12] pinctrl: stm32: add firewall checks before
 probing the HDP driver
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259789-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,st.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6C39091A9E
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 11:42=E2=80=AFAM Gatien Chevallier
<gatien.chevallier@foss.st.com> wrote:

> Because the HDP peripheral both depends on debug and firewall
> configuration, when CONFIG_STM32_FIREWALL is present, use the
> stm32 firewall framework to be able to check these configuration against
> the relevant controllers.
>
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>

Lean and clean!
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

