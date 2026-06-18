Return-Path: <devicetree+bounces-313392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QbREElDIM2riGAYAu9opvQ
	(envelope-from <devicetree+bounces-313392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:28:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CCD69F503
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:28:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="j/BgnExs";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313392-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313392-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D97C30972D5
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7D83C2B82;
	Thu, 18 Jun 2026 10:25:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126EC3EE1F1
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:25:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778318; cv=none; b=dYYuTz0+AEziDPgwwIODIVY5HCvbW0DJM3g9yT7glpxA6enfwiNH1+ARlRpcBWCHldrzdMKIQcTlE4ed6XIL23l+p6Jr8e/hUcBbT3wmHQayQlvz3j/BASz9y2T9pKMb2iLs2HZ0ziS62xGzwKfpmrKSL5DUrTWj1heocnZb42I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778318; c=relaxed/simple;
	bh=8SQCb6STTNG2LywVDhUUEgPW6PPLsD8oeBoP2R3qkvY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uf5vk2mo0Po98xi1omiqsdg2GYBRuOMMMWdhBjeEEwagAqWlMtfP6k7JrA5o8mFpm8VPE++UL9zK8RTdwR+aGZArKTHfAX6M085b8Zp7lkbjHzbJATYsg9daSHWuxq33ECUOn6OAs0f7uOSgR+pW8NC6Ukw9t5A5rCByWfOU7Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/BgnExs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 855211F00A3D;
	Thu, 18 Jun 2026 10:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781778310;
	bh=GMb+Subsb1IUKfwryice5MoH8LaaZVEQmspHbbN1Il0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j/BgnExsIsvgs8E9THDUOUjIlBp5PWZM/3sH9HACCt6SFPHhgUVMi3RFB8OI4W8Kt
	 NOu2yeWm2sBpiVvw5EFOX/cjJ6UnTuvVDARWHQbBJnf9TblDdZFpFlPMSEyG87DPVJ
	 YKSoFZQdNo9cBlc2xB2mpGxeCGtIYXG3FVVIaJiK/1VSILFT5GDh1zp7SuM6bVJ8KF
	 7g2xsUaJpUdz1ls9oi0r8XFOOdyMCRAUMCV/O4mag8D2EW/jovmkF1tkhm688kOstz
	 7lUe6+aAAp//TdKd4TSCAADVP6T8opLYU3PsHlV884H5Z9J3x7D4V5ux3cic/rGiFw
	 ifIlLSKOKql6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 5/5] iio: adc: versal-sysmon: add oversampling
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260618101414.3462934-6-salih.erim@amd.com>
References: <20260618101414.3462934-1-salih.erim@amd.com>
 <20260618101414.3462934-6-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 10:25:09 +0000
Message-Id: <20260618102509.855211F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313392-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90CCD69F503

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Hardware and software state desynchronization at initialization =
for oversampling ratios.
- [Medium] Temperature oversampling sysfs attribute is hidden if no satelli=
te channels are defined.
--

commit d8019119cd29dc9ea31ce2a445e3e2be9d478438
Author: Salih Erim <salih.erim@amd.com>
Subject: iio: adc: versal-sysmon: add oversampling support

Add support for reading and writing the oversampling ratio through
the IIO oversampling_ratio attribute. The hardware supports averaging
2, 4, 8, or 16 samples, plus a ratio of 1 (no averaging).

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 50b5228aa222f..bae229f27c6b3 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c
[ ... ]
> @@ -786,7 +931,11 @@ static int sysmon_parse_fw(struct iio_dev *indio_dev=
, struct device *dev, int ir
>  			.address =3D SYSMON_TEMP_SAT_BASE +
>  				   (reg - 1) * SYSMON_REG_STRIDE,
>  			.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW),
> -			.info_mask_shared_by_type =3D BIT(IIO_CHAN_INFO_SCALE),
> +			.info_mask_shared_by_type =3D
> +				BIT(IIO_CHAN_INFO_SCALE) |
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
> +			.info_mask_shared_by_type_available =3D
> +				BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),
>  			.datasheet_name =3D label,
>  		};
>  	}

[Severity: Medium]
This successfully exposes the oversampling attribute for dynamic satellite
temperature channels, but does it miss updating the static temperature chan=
nels
defined via SYSMON_CHAN_TEMP earlier in the file?

If a device has no dynamic temperature satellite channels specified in the
Device Tree, will the static IIO_TEMP channels lack the
BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) flag, thereby preventing the IIO core
from creating the in_temp_oversampling_ratio sysfs attribute entirely?

[ ... ]
> @@ -833,6 +982,8 @@ int devm_versal_sysmon_core_probe(struct device *dev,=
 struct regmap *regmap)
> =20
>  	sysmon =3D iio_priv(indio_dev);
>  	sysmon->regmap =3D regmap;
> +	sysmon->temp_oversampling =3D 1;
> +	sysmon->supply_oversampling =3D 1;

[Severity: Medium]
Does initializing the software cache to 1 here without writing to the
hardware register or reading its initial state risk a desynchronization?

If the bootloader or a previous kernel configured a different oversampling
ratio (e.g., 16x), will the hardware perform averaging while userspace
reads a ratio of 1 until explicitly updated?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618101414.3462=
934-1-salih.erim@amd.com?part=3D5

