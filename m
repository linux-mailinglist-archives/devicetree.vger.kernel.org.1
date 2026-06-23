Return-Path: <devicetree+bounces-314852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W0BCDXySOmrcAQgAu9opvQ
	(envelope-from <devicetree+bounces-314852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:04:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C806B7B74
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:04:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CeKDgpca;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314852-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314852-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7657030166EB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E53F37C925;
	Tue, 23 Jun 2026 14:02:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10F337F8DA
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:02:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782223375; cv=none; b=TIouvLyGaYlE61zbqVrS/6OgCaRQCeLCz7pZS9JsH0MuxgGEhqYWKgx/7Zso0Iw2lBqlW+UXmQyMZbP8+eya0amlENfqmVxL/H5Nt6c5giKLrPu1GsZf1zqWoWuHXyLiI1Bv+dnD9HbngcLXl2KWOMY2XJDEoyAsXzRN5peeuik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782223375; c=relaxed/simple;
	bh=jh+uEuTwkH3T/NSqPTTmd+f9/dlDEQ6DOmOfFVq2m1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dr4GbAlsBkcLXaAXq7Tsv2HtwmeXstm4CND4ANguozWAfmPsXl/cdIrfJvLECJ9jrqdwdNnJVJ1fdFPePLsbNUYLetXTAgHgAUhmA5OitW122Y0FD9Ia3CzAmgwZR6ntTZZaQK4Iv9KJykICeMEx7N8ySiiUxJt4dWwDREuxPQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeKDgpca; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55FBB1F00ADF
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782223372;
	bh=1gJqQGyMHBR85BVsKfivTVP/l6UvFz79Emx0q7bw7R8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=CeKDgpcaWy8GnBxz8C/3kDDRctthG4xFG0iAzgOejG7LM7TjaxVDiGHKX99//jBlP
	 Sxk7K5tlH2fzz4h2k2TrGPAVc55LD+pSgbE4QyT984yKvehjaHyCDSl+1u3Vsz7y04
	 tw56RpbPWkAZuKtsTJK+7wQFuwGRlV3uVcqRfj1+byRN/owfaKVXds4u1IahiO82zQ
	 QAV4y3DF8uk7FxLdF04i9wFBc7DYYMM689U3oal7/BvYGrmkNwoK2MGs6w9fMoYykL
	 YdaC/HX+OmPUjia3AH6Pc71Cib5RZisiD6CKJByiq96R/kOH2RvdAgveoOkCzRaS0k
	 4vnPXGShSRkaw==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-697564cb69eso7581596a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 07:02:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9a4t349N4ufoc/3exe4sa6r4oeuylOEq4BxKoB6+0Odc1KEauJnRIAavk4SviUeQvf6qIHEP7x3E5u@vger.kernel.org
X-Gm-Message-State: AOJu0YztS5JEplybkDMpi55q5+UeTc7YsdLYYj/3qnr3SSB4WXEV8XR7
	XodLBklmxbX7+nAF2f8iSWw6UZ7CKWWnle3cUlhVJKiAJfNpWmq8N85ZfO1sLZ5V7HoZgBHpnoQ
	L6EeuuSQobQyApfB86TvjyM5bZ02Ptg==
X-Received: by 2002:a17:907:980a:b0:bd4:6c96:f87b with SMTP id
 a640c23a62f3a-c097c6c1a5bmr1194059466b.28.1782223370908; Tue, 23 Jun 2026
 07:02:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260331102303.33181-1-akhilrajeev@nvidia.com> <20260331102303.33181-3-akhilrajeev@nvidia.com>
In-Reply-To: <20260331102303.33181-3-akhilrajeev@nvidia.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 23 Jun 2026 09:02:39 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+bbYZnE=Asv=2VnvTpSsLfKtdpcLvfPzn85hyiyp85cA@mail.gmail.com>
X-Gm-Features: AVVi8Ccz5pQCOoAn6KUfbBzvG9H4BnCCBdmvpJiCWRoaKDN4ysBpqyCY7xc7-v4
Message-ID: <CAL_Jsq+bbYZnE=Asv=2VnvTpSsLfKtdpcLvfPzn85hyiyp85cA@mail.gmail.com>
Subject: Re: [PATCH v6 02/10] arm64: tegra: Remove fallback compatible for GPCDMA
To: Akhil R <akhilrajeev@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Laxman Dewangan <ldewangan@nvidia.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:akhilrajeev@nvidia.com,m:thierry.reding@gmail.com,m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:ldewangan@nvidia.com,m:p.zabel@pengutronix.de,m:dmaengine@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:thierryreding@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nvidia.com,gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-314852-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83C806B7B74

On Tue, Mar 31, 2026 at 5:24=E2=80=AFAM Akhil R <akhilrajeev@nvidia.com> wr=
ote:
>
> Remove the fallback compatible string "nvidia,tegra186-gpcdma" for GPCDMA
> in Tegra264. Tegra186 compatible cannot work on Tegra264 because of the
> register offset changes and absence of the reset property.
>
> Fixes: 65ef237e4810 ("arm64: tegra: Add Tegra264 support")
> Signed-off-by: Akhil R <akhilrajeev@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra264.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thierry, Are you going to apply this? The binding change has been
picked up and now there's a warning.

Rob

