Return-Path: <devicetree+bounces-322324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wjKDEH9TTWqmyQEAu9opvQ
	(envelope-from <devicetree+bounces-322324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:29:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C154471F360
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:29:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UvALe7hm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322324-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3C4C130065EB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DA8138887E;
	Tue,  7 Jul 2026 19:29:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4463B36DA0F;
	Tue,  7 Jul 2026 19:28:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783452540; cv=none; b=ZPJUZwbPhrrhUiyN1fVbmmQwV9Jq2MF8JF2PfbuBBXalOifidPGip9CQJ/hvGj6CmT6TIUjhBHN2gtTF4GW/pBEA+qOjRBHQaFjduUjRHCKznojUB+O5vcQMcKGXaPa2hrHtRdQLSudm1LKdV3avOAkFzdD4qlFPvthMKH52jO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783452540; c=relaxed/simple;
	bh=0hxCHjqOVvmXO1u0zYMNquu/0hl2sy06FykdksBZ1jA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RVDfiJbcT5WT1XIKNVTJywd0NG8Khm7A8U3bvKejwnNipaKHKA/PdhYB7dJ7jXf/OspUddIM/Pj4PM6RfMerzF+legET39vumnT3XWXGpodbKAeANQlfojPQb+DC38L+ByzHvWvbcJMIBXP6TQWh3el5Lvy8VOPBOMdRUxwGBD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvALe7hm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57501F000E9;
	Tue,  7 Jul 2026 19:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783452538;
	bh=0hxCHjqOVvmXO1u0zYMNquu/0hl2sy06FykdksBZ1jA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UvALe7hmfAknV6DE+GdIAFCsB8o3z/Phdj/hvpomQS2N6YsGAv2ab7GXOuz8BcJ+s
	 Z/EZDsrGKWKELotE007Sogqq9dPKAvpEZ/TTT+7L4tXQ87p93zCqNlUXyt6pbUsLmz
	 n1u2BkmPt/S3/Iq0SFE0Xq05Ml7NPWXerKe+ClsES1mNvse2iMhTPnIvjS1PvWTSrE
	 do5S4lK90DVpPMmx+kKjwGturgBdgg1/RjN0ABz9mH7MC/7anxtVkJhfr7IEtBnAaN
	 S+fQJCWurpt5AJjEeQmST0qyOcPBw6LiSS2CIlmbA+VPmAJUgtSuCEywP/9veZlj/0
	 S8/049OIQH05A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/3] platform: arm64: lenovo-thinkpad-t14s-ec: Add
 hwmon support for temperatures
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Lezcano" <daniel.lezcano@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org
In-Reply-To: <20260707192228.14647-3-daniel.lezcano@oss.qualcomm.com>
References: <20260707192228.14647-1-daniel.lezcano@oss.qualcomm.com>
 <20260707192228.14647-3-daniel.lezcano@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 19:28:58 +0000
Message-Id: <20260707192858.B57501F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322324-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,intel.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,linaro.org:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:daniel.lezcano@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-hwmon@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C154471F360

> Expose the Lenovo ThinkPad T14s EC environmental sensors through
> the hwmon subsystem.
>=20
> The driver now registers a hwmon device providing access to six EC
> temperature sensors corresponding to the SoC, keyboard area, base
> cover, PMIC/charging circuitry, QTM module and SSD. Sensor labels
> are exported to allow user space to identify each measurement.
>=20
> This allows standard monitoring tools such as lm-sensors to report
> platform temperatures.
>=20
> Reviewed-by: Ilpo J=C3=A4rvinen <ilpo.jarvinen@linux.intel.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on T14s OLED
> Signed-off-by: Daniel Lezcano daniel.lezcano@oss.qualcomm.com

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707192228.1464=
7-1-daniel.lezcano@oss.qualcomm.com?part=3D2


