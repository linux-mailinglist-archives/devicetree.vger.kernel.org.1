Return-Path: <devicetree+bounces-317844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3ER5B4jKQ2pPiAoAu9opvQ
	(envelope-from <devicetree+bounces-317844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:54:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA5C6E5165
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:54:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JxGtVFxE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317844-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317844-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2402E3030D2B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C13234D4D6;
	Tue, 30 Jun 2026 13:54:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171EF2F549F;
	Tue, 30 Jun 2026 13:54:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827653; cv=none; b=ODOz+oN01ak0GItDPFW/OjYPAeogQw9hdUf/gjbtF+c7naE6Xy5mY7LNdE1f7cFHyJdkdZrolDz4lD6rudMOmjZBMYXKWw6iBF97ugEdXj0aGEHqlbMEWJuh9aWQtDEOicbaUhTVoOi9XS4os/7VVM/A0JgTFMb1JjPft3E1WqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827653; c=relaxed/simple;
	bh=NxVC72j41uPL+tI1Aj2Q6Xf57UFf9x2HMej7fgmMn5A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THSnS+vuziKPy1ycHbrYFO2OSXh5msoJFGRS+inMtHrvTg4W7cxvX6Vxc1PRAnxnTbnKuURFTsBkwbab1uHyOno6dspJxMlMZUr94jmzz9PzUun/OMBHI2q7W+oV0wro0BqJHHVGGK694tKFSLe5BclFwm6Dx49f4VjsfHu1/3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxGtVFxE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0625D1F00A3A;
	Tue, 30 Jun 2026 13:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827651;
	bh=ENHSujfSW+4v2CmIMIlvxia/sjQrFFZFjN+o8GUkyIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JxGtVFxEw8vaMhnYcCm+Cuq5e5W2cCsEJv7juEB5WY3jF7MEuDgDFV5eOxo+/XeFz
	 ZLv7D8eIpZCd2z14gLGNUzLnGi8UcT+WVI/A/UPlaNoZjtnWaZTRlQ0gPpMNZtmJGy
	 HgYnLXoRggBGE8lSDrlwb9eyJpsImD8KYjUl4uBOCEdq50OZ/hYpElxnGiXHM4vWaj
	 UEvTRTvJix5t2my6yHIsHifqnjUm2UUANKAyUUuWYfirY5u/XaBjYVhKgvFEm9azwP
	 EpgWQM6wMVAggjhqkSlZxs1mhWQq4DDPDhb2h6Ad3HjP0dhI3aTfZsQsFuctlD4MQO
	 2Rrxlpk9MOMcA==
Date: Tue, 30 Jun 2026 08:54:10 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-tegra@vger.kernel.org,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	devicetree@vger.kernel.org,
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	Thierry Reding <treding@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Aksh Garg <a-garg7@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kevin Xie <kevin.xie@starfivetech.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: pci: Strictly distinguish C0 from
 C1-C5
Message-ID: <178282764964.2982344.701815323079264876.robh@kernel.org>
References: <20260617-tegra264-pcie-v7-0-eae7ae964629@nvidia.com>
 <20260617-tegra264-pcie-v7-1-eae7ae964629@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260617-tegra264-pcie-v7-1-eae7ae964629@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317844-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:kwilczynski@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:jonathanh@nvidia.com,m:thomas.petazzoni@bootlin.com,m:linux-tegra@vger.kernel.org,m:pali@kernel.org,m:devicetree@vger.kernel.org,m:m.karthikeyan@mobiveil.co.in,m:linux-kernel@vger.kernel.org,m:linux-pci@vger.kernel.org,m:treding@nvidia.com,m:mani@kernel.org,m:conor+dt@kernel.org,m:michal.simek@amd.com,m:bhelgaas@google.com,m:a-garg7@ti.com,m:krzk+dt@kernel.org,m:kevin.xie@starfivetech.com,m:lpieralisi@kernel.org,m:thierry.reding@gmail.com,m:Zhiqiang.Hou@nxp.com,m:conor@kernel.org,m:krzk@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,nvidia.com,bootlin.com,vger.kernel.org,mobiveil.co.in,amd.com,google.com,ti.com,starfivetech.com,gmail.com,nxp.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAA5C6E5165


On Wed, 17 Jun 2026 18:01:28 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Instead of using the ECAM registers as the first entry, strictly make a
> distinction between C0 and C1-C5. This is needed because otherwise the
> unit address doesn't match the first "reg" entry. We also cannot change
> the ordering of these nodes to follow the ECAM addresses because that
> would put them outside of their "control bus" hierarchy since the ECAM
> address space is a global one outside of any of the control busses.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v7:
> - undo changes suggested by Sashiko, should've trust the dedicated tool
>   rather than the AI
> 
> Changes in v6:
> - add maxItems as suggested by Sashiko
> 
> Changes in v5:
> - rebase on top of v7.1-rc1, make it into a fix
> 
> Changes in v4:
> - ECAM is outside of the controller's region, so it cannot be the first
>   reg entry, otherwise we get warnings because it doesn't match the
>   unit-address, so revert back to oneOf construct
> 
> Changes in v2:
> - move ECAM region first and unify C0 vs. C1-C5
> - move unevaluatedProperties to right before the examples
> - add description to clarify the two types of controllers
> - add examples for C0 and C1-C5
> ---
>  .../bindings/pci/nvidia,tegra264-pcie.yaml         | 75 ++++++++++++++--------
>  1 file changed, 50 insertions(+), 25 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


