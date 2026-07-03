Return-Path: <devicetree+bounces-319724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sWMlGmAbR2omTQAAu9opvQ
	(envelope-from <devicetree+bounces-319724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:16:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD826FDE15
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:15:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ffKaEDSu;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319724-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319724-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37267300D55C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869D8222597;
	Fri,  3 Jul 2026 02:15:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F491A6807;
	Fri,  3 Jul 2026 02:15:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783044955; cv=none; b=Mfh3VHiKjyXOq0FRDENAi3l54td8yXrwP/+WHnrfaTgtTzmhNY+iNVe4IuLNt4cjSErks5+pobLnfSN6WzjwMSuTg8fZaxU9df0wQ59TiO6gFTwdR8M+wt/sn4RtM0kC4YznjfsdRFLwRuCK8qsGtqvgwlgEQUFEBoVCFhbbFOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783044955; c=relaxed/simple;
	bh=OyPFk6SZmDKqRawa0cPhDvxvr4ffYAOOXhJqLN8X72Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=skpGRexTyHiGKzYgeYf5DQ7a1rer81EseoPIkYsO9BcJLHJFn/gmD3/UH8BUIcQHUW+H40WsBBc0g1j4Zdr+K27V03brW7ZX9N1ak7OVhroYePcGZicsexNw2/A6s+jKLZ1jLByEyhjLzX5ZNSEt3HKAfWKudlrSWdAVbvb+mu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffKaEDSu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFC641F000E9;
	Fri,  3 Jul 2026 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783044954;
	bh=OyPFk6SZmDKqRawa0cPhDvxvr4ffYAOOXhJqLN8X72Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ffKaEDSuyJIT/CxcdEZnI73R/AkZdo3BndIPjOrHRTumFOMhfbs5FA50tElREdsXr
	 eoC2de8pBJ/asZtayL6Ux3TvG2/2MDxfHAvJgWQTnkOW8feOJlr4hIcYe23WXTPvIb
	 B19lw4W7vzjXZHQwLf4sV+NvYRNc8hhXwZuEDkMBsQpCrEOlit5jXldKkwxYeEpzJH
	 FWt1yrtiZQv+/CFyvvfh+lFfzLbpFzXcw3Ch6MzseOmlH5VrF3np+gAwxfqO7rQXdz
	 aUlm2c7S1i6MtgSZjnei1BlSMcsMqNenEGHlvLYu5cFDy+Vtuq2+AVVlqKditvX9P1
	 ZWHNtCYAXHq5w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/6] PCI: spacemit-k1: Add device data support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703020003.485436-2-inochiama@gmail.com>
References: <20260703020003.485436-1-inochiama@gmail.com>
 <20260703020003.485436-2-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 02:15:53 +0000
Message-Id: <20260703021553.BFC641F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319724-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CFD826FDE15

> To reuse the K1 PCIe driver logic for K3 PCIe controller, add device
> data to handle the K1 specific logic and make room for the incoming
> logic for K3.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703020003.4854=
36-1-inochiama@gmail.com?part=3D1


