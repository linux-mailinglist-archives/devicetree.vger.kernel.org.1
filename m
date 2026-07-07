Return-Path: <devicetree+bounces-322326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bumoNjdUTWrQyQEAu9opvQ
	(envelope-from <devicetree+bounces-322326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:32:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDA771F3DA
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 21:32:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CiidqUme;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322326-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322326-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 46467300BC58
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 19:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267E337E2E6;
	Tue,  7 Jul 2026 19:30:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9CC1F7569;
	Tue,  7 Jul 2026 19:30:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783452648; cv=none; b=XJ7nOgYNE0HlRnTe7SrCxwBK54YUdv+eYdszMeAROlymIKJzHQsCeFXa7oDePA6PshbFCXMADYZpU8VPOFFR0JdRnlFpZfgQ7ySulNkIah30tSqbQ/jAbAt5dgqjsi5sEvFV0uLPpbwTz4HLBm6IrryJag92Cnj25SEFuJALlUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783452648; c=relaxed/simple;
	bh=QE6xOwkPJpFPr8J80BaVj2EFL6HzCTojUjxwhhiQpvo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DWO1ex8klUbP99lZx5Pp2dvtUtThe9qssRXSfCji36jHNocQKTe81nkxOUUvCaBzkfKDrW+l2d1L8h29baG4WQtY4l7qX3n7/ofFnL6AIACad/EXwyCExoguKITM51NNvg0dwDNLtj7Pa9MZY4ifr0ZuDznI8C4CiuCxiyVBqVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiidqUme; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D4621F000E9;
	Tue,  7 Jul 2026 19:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783452646;
	bh=QE6xOwkPJpFPr8J80BaVj2EFL6HzCTojUjxwhhiQpvo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CiidqUmexCG6pNsOQzuDzcXFNlmn8X5rZ6IIV1/Sq/BYGames8+80jU6xQzf8vyLM
	 pYt565n7cBhOp/vNNySVCf1c2n4qJ6dB6tIiJpeFJP4nGZu4JjuWC0qa+0y/PnF/VV
	 Bx14HvcoY0r1cT3+zyNFO0/HACtEB2GIZ/97+cR8nuCLd9QTG9QI4ittVppgzc9WRZ
	 3+ERoGxQngPOZtpUjdfWfRMytZy6ECXmTu6ox47qUAZK+X4Yau846uCQDL3gbfubhB
	 CslcdSt5zkigcfDxKlY3sl09AkMK1ZOIhyfLgRZb8EA0psH9Ej/ItVQj/vKpKFFI46
	 2lSW/1u6i4pUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: x1e78100-t14s: Add thermal
 zones for keyboard skin and charging sensors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Lezcano" <daniel.lezcano@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707192228.14647-4-daniel.lezcano@oss.qualcomm.com>
References: <20260707192228.14647-1-daniel.lezcano@oss.qualcomm.com>
 <20260707192228.14647-4-daniel.lezcano@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 19:30:45 +0000
Message-Id: <20260707193046.4D4621F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322326-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linaro.org:email,qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:daniel.lezcano@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDDA771F3DA

> The Lenovo ThinkPad T14s embedded controller exposes several platform
> temperature sensors that are already used by the firmware for thermal
> management.
>=20
> Expose the EC as a thermal sensor provider and describe the keyboard
> skin and charging circuitry sensors as thermal zones in the device
> tree.
>=20
> The keyboard thermal zone defines passive and hot trip points, while
> the charging thermal zone also associates a cooling map with the CPU
> clusters, allowing the generic thermal framework to apply CPU
> throttling when the charging circuitry temperature exceeds the passive
> threshold.
>=20
> This integrates the EC temperature sensors with the Linux thermal
> [ ... ]
>=20
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on T14s OLED
> Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707192228.1464=
7-1-daniel.lezcano@oss.qualcomm.com?part=3D3


