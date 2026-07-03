Return-Path: <devicetree+bounces-319940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3L9WKUR8R2rzZAAAu9opvQ
	(envelope-from <devicetree+bounces-319940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:09:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8179970075D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:09:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wq9BKctp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319940-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319940-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA19B3006D45
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25087381EB1;
	Fri,  3 Jul 2026 08:55:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC61379C40;
	Fri,  3 Jul 2026 08:55:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068951; cv=none; b=iwE0EKHePloGPDrHpGJX/oThchaEWcTWhBSP37CIh5K8zr01IDrK3dNfy+vqa2WanasOTc0dICjAAH2HcWxlZyIzzxilMEjD0sWbplXy7Es+6kbXdRUEpAU0sQSHoV6XbOh0M0jnRgBsmGATXaNQQEeRGC8LTM7hc8dPTXRsbCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068951; c=relaxed/simple;
	bh=Eocl64L1wuy8xakOj3o5tS8XwWokxM79/at9+oc5X1w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mJT1vl9BDys+fNGgcglTOnTuiLGPCynILSigih9rmdK/6VOwDEKXfmzJBNymKKKTCj1viv72ViKyjO3SX7QiQBnQBLHGrV33yHh0ZL4v52kz0yTZFcczhWGL1b0BCx7ZANGEYYYfJLdp0d9jo3UyML+t0qcRx8Gl4dc20VqcdSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq9BKctp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBFF41F00A3A;
	Fri,  3 Jul 2026 08:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783068947;
	bh=Eocl64L1wuy8xakOj3o5tS8XwWokxM79/at9+oc5X1w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wq9BKctp9pQsMZ1RnxaEoHIf/yXdwhxt+dLZrcGsTgSMB2voUqVg3DniR6Er0bZdB
	 Uqi+imGbk4pYVh5pRh35mzR6O/vNq3je8AIhBSZ7YwtsbONM+EenDh9o7ynsom1QQD
	 v/NBv3vZrmjsgJ+n9eTU9kmK6qksfuTviQ7AE6LArE2fUgmFCPZc58nLDCLTcyJZTD
	 4bbqRDtMgnAjAm9oEWxXbLjBgqj1ApeGREGB8LkgqrtoKdTqYagvbloWKlrfnSDJc+
	 Q3KAVCNwg2HVs3ZtycajsDoDjj176yZkexZ2ipRDp8fRN/4U/1mPD0V881jn6NbVON
	 LraeYNVBXeL/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 05/15] arm64: dts: freescale: imx8mn-var-som: Add
 support for WM8904 audio codec
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <126ae03f37ba587560ab8c94b7833236d97990de.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <126ae03f37ba587560ab8c94b7833236d97990de.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 08:55:46 +0000
Message-Id: <20260703085546.EBFF41F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319940-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8179970075D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to add 'I3C' recovery GPIO properties,=
 but the patch actually adds standard I2C recovery properties to an I2C bus.
--

commit 460d6d4855137d91e75cf4e76f05f397a7d5bb75
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx8mn-var-som: Add support for WM8904 audio codec

This commit adds support for the WM8904 audio codec to the VAR-SOM-MX8MN bo=
ard.
It enables the I2C device, the SAI peripheral, and exposes the sound node v=
ia
a simple-audio-card configuration. Additionally, it configures the I2C bus
recovery pins.

> Add I3C recovery gpio properties.

[Severity: Medium]
This isn't a bug in the code, but there appears to be a typo in the commit
message. The patch adds standard I2C recovery properties to the i2c3 node
rather than anything related to I3C. Could this be corrected to say "I2C3"
or "I2C" instead of "I3C"?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D5

