Return-Path: <devicetree+bounces-295494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKQiFmi2AWr2igEAu9opvQ
	(envelope-from <devicetree+bounces-295494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:58:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE3850C628
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 984A13025F50
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 10:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1213D902F;
	Mon, 11 May 2026 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clqm0Ayt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ABD33986D
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 10:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778496975; cv=none; b=M9sQXBaDQsg+1a0bB/i+1n8oj+lsbAtOx+iZbkvLnv0peisW9VkA4l6bIHtps1PzLCobuVsqUuyiTrz2RnyZHJejrH/WliNPa7BfafiOpHHOXrokzYEa6VE3jVkVz3pSaR9fbe4pfEMLuXVsl8ZYa9Cvd9w7XqYZUckxnNPusyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778496975; c=relaxed/simple;
	bh=B5rcVpLHsTmSGJPaJtBEOANpM73Tb/5UpXJ/220E+yQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aMgT+Zt+RCM5amIhNa7DIlnIVCPdR0l4iJqor48nPLwZ8bg0Z3C7iTS7SseyiNuDxjNCsvrNiLYrvFl3BtI6wDR9H0MlP0OnNXuHSMrfPUNs4IGZ1lenDZm2lzl6xRvdLyOYv5PSA7VwsJoDZDQlre7h2mlehujjGpNJS2X7FWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clqm0Ayt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3EF7C2BCC9
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 10:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778496974;
	bh=B5rcVpLHsTmSGJPaJtBEOANpM73Tb/5UpXJ/220E+yQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=clqm0AytuzJpd1iKtGlBKHNq3IdXsbIxOYdpXyo0asK9+DLp1sg+MyqNNI/+lQL7K
	 v/MzPGch73FBxQQz+kJU0wvmWuuLydCulESUlOluFn4TPvdzPJSC6Uhhq2OhD38i39
	 cnUiLFaFwisyAqy50RWeiejD+5+zp1KzR3C2DSnvM7TRA858kLpbcFbk0Urr9L36wA
	 ESlsa0VgqQ5gZp8K69FUNNWqrj/R1+FjrbN4o0KANsEn6f7y927bUqWAA703mUneeG
	 dmyzm2dDVxzFZjyDsO6K6tcQsT4RGWKxu8aFeE69e7L0chBBeO32NXMNfIGg7kJQhh
	 NCcj5Afv1Agfg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-393ba0616aaso45006941fa.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 03:56:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+nz2pviCE1+zcNTJJ3V8wLc8g7N60icX/8qpnY9ZQlOvvmdOrQvQ8VuVEmOL1hx/8vjm/aOrI/FXJY@vger.kernel.org
X-Gm-Message-State: AOJu0YwG5gybITXosRYmKnimq1qjTqw6kf1bfXpiTUf7obrsyu1IfAYT
	YyGEid5mwTlDIJ6tiSMePFEOsFkXcFaMoUZ9IiBGDPe6OtMBV4cA4QjRePHkkPSeWoak5Vgtpcu
	7SbGlgF6BLxIcCUEOck4on0skDGwUZvK1tOIN8KGVmA==
X-Received: by 2002:a2e:bc09:0:b0:393:cb61:17e9 with SMTP id
 38308e7fff4ca-393cb612598mr76212181fa.17.1778496973563; Mon, 11 May 2026
 03:56:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260511-wakeirq_support-v10-0-c10af9c9eb8c@oss.qualcomm.com>
In-Reply-To: <20260511-wakeirq_support-v10-0-c10af9c9eb8c@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Mon, 11 May 2026 12:56:01 +0200
X-Gmail-Original-Message-ID: <CAMRc=Me7SDOm5Fqr+_m2=5UoOmR24u5+KwabOtMN-BXtMK-kHg@mail.gmail.com>
X-Gm-Features: AVHnY4I4FS4H2jeAaumSTCasprwQaeZndX-NNiRoFaNF_xkiOWzjnDuMdOoXvtU
Message-ID: <CAMRc=Me7SDOm5Fqr+_m2=5UoOmR24u5+KwabOtMN-BXtMK-kHg@mail.gmail.com>
Subject: Re: [PATCH v10 0/2] PCI: Add support for PCIe WAKE# interrupt
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Danilo Krummrich <dakr@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-gpio@vger.kernel.org, quic_vbadigan@quicinc.com, sherry.sun@nxp.com, 
	driver-core@lists.linux.dev, devicetree@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: DFE3850C628
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295494-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 9:26=E2=80=AFAM Krishna Chaitanya Chundru
<krishna.chundru@oss.qualcomm.com> wrote:
>
> PCIe WAKE# interrupt is needed for bringing back PCIe device state from
> D3cold to D0.
>
> This is pending from long time, there was two attempts done previously to
> add WAKE# support[1], [2]. Those series tried to add support for legacy
> interrupts along with WAKE#. Legacy interrupts are already available in
> the latest kernel and we can ignore them. For the wake IRQ the series is
> trying to use interrupts property define in the device tree.
>
> This series is using gpio property instead of interrupts, from
> gpio desc driver will allocate the dedicate IRQ.
>
> Bjorn,
> Can you take this series through PCI branch, once other subsystem
> maintainers give us ACK.
>

Actually, it's pretty early into the cycle, I would prefer to queue
patch 1/2 myself, I'll provide an immutable branch to Bjorn.

Bart

