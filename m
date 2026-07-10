Return-Path: <devicetree+bounces-324633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R2qQJzxJUWqWBwMAu9opvQ
	(envelope-from <devicetree+bounces-324633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:34:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A8B73DD31
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:34:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D+cj1EO6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324633-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324633-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1B44304C909
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 19:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF175380FC0;
	Fri, 10 Jul 2026 19:30:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F44A37EFE6;
	Fri, 10 Jul 2026 19:30:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783711858; cv=none; b=IHJMSeI0VaOhNCKcjW+7hIwBbiL/gtsEbuQHQqfIZ83LIIs4E7i9tzRgwvhaKD6manGepMsbp0ckESypN6r2EjPqlPnltVbL3/GJmvyl4Y0063IXg23sNAoDQfWiSqsVLO1q/dyFNKXI11qpw45e8GqdHE9UqFceVmHVFxAm7JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783711858; c=relaxed/simple;
	bh=c8oheqlH0eb/TTGfWmOZgw9NJmh42cr/7Bm44vzz82c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fHaqMTr0B5o1/KMlzooprAT/npmNFVQ6XPbRMjg/8TKB35m/kLZqJ+n7wMsWwuGjsejlo4FpP4jLkJ9wvMpUZjVFQ3lxyqKnCTkxS75/xgRe0ZqsK0ofNAzxtrg+I5QhlyYoq8yVQFHiU+XgnpcOGZh2IXNw4RF/eXJannkQrEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+cj1EO6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDC191F000E9;
	Fri, 10 Jul 2026 19:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783711857;
	bh=c8oheqlH0eb/TTGfWmOZgw9NJmh42cr/7Bm44vzz82c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D+cj1EO6dzr9k4cXTgxBqenoRHq/xj6GJ0805aBKzC30iTm6AS2sxgmd4flSE90GX
	 VMyQ/GPnQ/yo7pv9Fl4Ku18phjF3953dGJxMmvS/aTAGvkqjn5QStGD2iOlvQ7ZNjz
	 iO59L7RdXDs033tBOpOqp/qDgdIKVhhClcs113Nj3z3uhoh2JWXdG7bBminc9fcP+z
	 J+bloOMGOsUdhWemzqRJZwVyL5wfto0GhLDt/QFy6u3JH5J9YbJt5c15w6LbMRR3hZ
	 DkfT+c7/3EGdPafLLBU8KBNhwhKevSYqmk+7f8tiXeG11O4kNzzGpn1K7z1/k1K9Z5
	 gTsPOOdnZ4z9A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Hawi
 and Maili SoCs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, lee@kernel.org, mfd@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710192737.1689453-1-mukesh.ojha@oss.qualcomm.com>
References: <20260710192737.1689453-1-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 19:30:56 +0000
Message-Id: <20260710193056.DDC191F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324633-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22A8B73DD31

> Document Top Control and Status Register (TCSR) controller for
> Qualcomm Hawi and Maili SoCs.
>=20
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710192737.1689=
453-1-mukesh.ojha@oss.qualcomm.com?part=3D1


