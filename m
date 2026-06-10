Return-Path: <devicetree+bounces-309527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cq9QIHAfKWoiRAMAu9opvQ
	(envelope-from <devicetree+bounces-309527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:25:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE246671FE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:25:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jt9VnbM3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309527-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309527-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7AC79303609F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B5B3A2E33;
	Wed, 10 Jun 2026 08:19:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719E6399CEC
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:19:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079586; cv=none; b=OcuAerwFjF//y16c+AA04Ez733tbWq4tP9SXlTnk6bPHu3XT67wReFCEhPgSrPQmZmC1HvAlgEEt269dZX6Tg2SawEt/3IiK3Lsc3APeu+TM3YEl0Zi3advav3u51VrpRZWtym0gata2IEv6puZDEAXVK+bbwik7GcnSyQmAgF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079586; c=relaxed/simple;
	bh=oM56RiJDSAg8V40bXibHxHgCTxMGleBUXFfUJ2TUM98=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uPrglVpDgtjljMaJfGe+erB98ScKjUiceIp8xM/KAPTDO/ezEL74CC24AMVjhYiVQWuxp7jbialL1W82pguGc+yCkjKi2PXI2oSgcZBq0gzifTQWugRCqDyS/myhVgktpu6S7dbJrkkPW3TNuMM9S4NgJF0QLpmQm9lPlPT53WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt9VnbM3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6A801F00893;
	Wed, 10 Jun 2026 08:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781079584;
	bh=/3sSs+7Efw2Hn1TIi5QXhNdBZJQacLC/eEnXWa2GBEI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jt9VnbM39XLVQqG7inq2SiJQX8ExCLyF50fbdxiLwmkMMkFennfCNlt3Q49maJpgj
	 4MNOVtg4ivyBEnliS57dlCNAr774TRe+MUvunbkYIbuFRdynhjIsNY1ndzBftbv4LZ
	 erzvISMQSJo35zHu/VtiyTtpt56B7THZBZAghoJUoAt5X2/pvpOakyjoa6PVMMejBt
	 Xgevk5PC7GmJBOuf0RZ0tN7/oV6CQE9TXCcKGQQYsnITuJVNljYfADOkkUCxOzk3m0
	 R5eEtowlfDYevJ8mK7h5udwua5TM4pyUbTRUcK4BOepWw04pgHagMNr4m6d26Vytty
	 o9xh6HVijWTdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] thermal/drivers/qcom/tsens: Add support for
 ipq9650 tsens
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260610081241.1468507-3-varadarajan.narayanan@oss.qualcomm.com>
References: <20260610081241.1468507-3-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 08:19:43 +0000
Message-Id: <20260610081943.C6A801F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309527-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1DE246671FE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Pre-existing out-of-bounds array read in tsens_probe() when DT ove=
rrides `#qcom,sensors`.
--

commit 9a11fba8da339febaef9c47f6f85fc5817527502
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

thermal/drivers/qcom/tsens: Add support for ipq9650 tsens

This commit adds thermal sensor (tsens) support for the ipq9650 platform by
reusing the ipq5332 data and modifying the sensor-related information to
accommodate 11 sensors.

> diff --git a/drivers/thermal/qcom/tsens-v2.c b/drivers/thermal/qcom/tsens=
-v2.c
> index 8d9698ea3ec40..ef1fee2266a32 100644
> --- a/drivers/thermal/qcom/tsens-v2.c
> +++ b/drivers/thermal/qcom/tsens-v2.c
> @@ -300,6 +300,14 @@ const struct tsens_plat_data data_ipq5424 =3D {
>  	.fields		=3D tsens_v2_regfields,
>  };
> =20
> +const struct tsens_plat_data data_ipq9650 =3D {
> +	.num_sensors	=3D 11,
> +	.ops		=3D &ops_ipq5332,
> +	.hw_ids		=3D (unsigned int []){5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},

[Severity: High]
This is a pre-existing issue, but I wanted to ask about how hw_ids[] is
handled if the device tree specifies more sensors than data->num_sensors.

In tsens_probe() in drivers/thermal/qcom/tsens.c, the num_sensors value is
initially set to data->num_sensors, but can be overridden by the device
tree:

drivers/thermal/qcom/tsens.c:tsens_probe() {
    ...
    num_sensors =3D data->num_sensors;

    if (np)
        of_property_read_u32(np, "#qcom,sensors", &num_sensors);
    ...
}

If the overridden num_sensors is larger than data->num_sensors, the
initialization loop will iterate up to the new priv->num_sensors and read
from the statically-sized data->hw_ids[] array:

drivers/thermal/qcom/tsens.c:tsens_probe() {
    ...
    for (i =3D 0;  i < priv->num_sensors; i++) {
        if (data->hw_ids)
            priv->sensor[i].hw_id =3D data->hw_ids[i];
    ...
}

Could this result in an out-of-bounds read if the device tree provides a
malformed or unusually large value for #qcom,sensors, since the hw_ids[]
array here only has 11 elements?

Reading past the end could assign garbage values to hw_id, which later
might cause undefined behavior in functions like get_temp_tsens_valid()
that use hw_id in bit shifts.

> +	.feat		=3D &ipq5332_feat,
> +	.fields		=3D tsens_v2_regfields,
> +};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610081241.1468=
507-1-varadarajan.narayanan@oss.qualcomm.com?part=3D2

