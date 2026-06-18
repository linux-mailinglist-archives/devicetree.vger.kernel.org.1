Return-Path: <devicetree+bounces-313637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BWzBHoBrNGrGXgYAu9opvQ
	(envelope-from <devicetree+bounces-313637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 00:04:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D64F66A2DB3
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 00:04:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Fyb9u+0Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313637-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313637-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92DBA3003E93
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 22:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C45925B0B4;
	Thu, 18 Jun 2026 22:04:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1590E40D59E;
	Thu, 18 Jun 2026 22:04:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781820286; cv=none; b=Bk9a1gDGkkTPn22/5MZPA4ypqeXwIjK5h9A3fxe0NegexmfQr8TCHkRq2Tkgt+HoC2iR+LeHOkjej0roKaK/XSjYoM5w6mGWbKa+Ibxyaeh9wtJQP+f+SynZmImNgFVGqiE3kkEb0HMYM4ZiMOfFrfwe92wPPVKhM8Op5ZPUhkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781820286; c=relaxed/simple;
	bh=2ik/9Dzth8p8mMFYQFTL60M6pYmTTYp92u7kp8vqa90=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nROZjS53humJKYe6sD0bXV05CNODYozUJL8sFSyVKr6e39mIz6W6xd7u/N2nWD4NEMNoY37Fs2b7Ier+PmBXSvjA9Sm2Pan2oh3u9m0chFZ5qPKRtu78Uisxvc0lfEnqmzSr7pvQIhdhmInJVaK7eEm2SZvUMoHWVR9r5oLjtlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fyb9u+0Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F3E01F000E9;
	Thu, 18 Jun 2026 22:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781820284;
	bh=2ik/9Dzth8p8mMFYQFTL60M6pYmTTYp92u7kp8vqa90=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Fyb9u+0ZKksiMiDPKmsnTP+8JdoPO8/mlUVf6RlFtS8IOd/cj6WqlaT/U5C/8zbEB
	 2g+pTwcUARIOysBqbCQAsS2GTgUZNl0CoM3fy4rrAZ4upLwVhKqKyz867fxlHtI+aJ
	 NMf9ar2g25CTdsoAbyM1iGyccaN7x/skXIasGnDS62juZUgCJTLaLvPN3ZfhkwCq9r
	 qZEYOr+g1qccHVgTW1Edq3zsXGq55ykILenOtqQc3BtE48P6yvSlMWCFt1MKx2gv/i
	 Rnd1b/aNS4kwyqQID9Q5sWHsBWGnKcAnUDaH17jmg7fjSoAOS4xQephD+lROTd+uiW
	 sC/npfVP2J7mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] PCI: qcom: Add support for Hawi
Reply-To: sashiko-reviews@lists.linux.dev
To: "Matthew Leung" <matthew.leung@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618-hawi-pcie-v3-2-f31880bfb3ec@oss.qualcomm.com>
References: <20260618-hawi-pcie-v3-0-f31880bfb3ec@oss.qualcomm.com>
 <20260618-hawi-pcie-v3-2-f31880bfb3ec@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 22:04:44 +0000
Message-Id: <20260618220444.6F3E01F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313637-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.leung@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D64F66A2DB3

> Add support for the Hawi platform which has two PCIe controllers: one
> capable of Gen3 x2 operation and one capable of Gen4 x1 operation.
>=20
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-hawi-pcie-=
v3-0-f31880bfb3ec@oss.qualcomm.com?part=3D2


