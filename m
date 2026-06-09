Return-Path: <devicetree+bounces-308746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2Ui8Cn+7J2od1QIAu9opvQ
	(envelope-from <devicetree+bounces-308746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:06:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 839EA65D0A0
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:06:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QdNIacnU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308746-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308746-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 816283028F76
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5318F3D811B;
	Tue,  9 Jun 2026 07:06:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451B33D8107
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:06:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988768; cv=none; b=SoVuWbU53Ymj1lF10QnnCuaALdWQYas6cq5flfFF9yus9h1wDXq85FM2WrSZH3hPwhqmfnfM34CiCtcuwAB1mQ+q1yXxqvwjs1aaZA1Acn8ikaj5ai1SOl1k0X4MhOo6Dam6hPx3hAXUAUgxRhz9Q6o8dMs6mHnuptboQUfcwvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988768; c=relaxed/simple;
	bh=muK8R/WrqUlZEO1LVYC8jRIzCQpvBvIP+CW6+r9FZPo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=isQRdCFYiboijG/ZR5DpleS9+Zfl6io2EtWNFKeY0dtTyEy/etIMoectXdGwNVArtWbb/cAGQrtyDDyT2Vym00dk12/gg3v44Z+RnkKWhVdsbd4WaQ/71gG1YdvpjdioBZS1UtAY6NYKlWyeVLBB8mEaPf56Jv2vNpcZl1P8uTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdNIacnU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 177DF1F0089E;
	Tue,  9 Jun 2026 07:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780988766;
	bh=VE3VBtQc2sVqCWzSKClTsIc3BBoaSx3PFbAGF3Nf2CY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QdNIacnUn1L10BNQXg9N2m9zX6OsMgvbUf2fp8e/u0jFjdI/dTDkKszlkS34n3q4w
	 gQmfloBfLfUs0a8fQnqpNvxiZpFcZCJzYES8/dgd6WWWmRqG7sFz7jRdrgxm+j54Ha
	 u/4fdW/Aj1CTRF69INlHqQq4rGbSLYKEzYkOi+XAW0FY2/Ub9YI7Ac3ox23B4WFVbj
	 j45k5bRcLu4h4VJ/orpzmcqWpSWQhw6n5okbOm17JmPznX+9bkoA1wH3wNtanuNb5s
	 zoWljFH0D8jcd6ZRPr9s5IqHnnippJxDesNa/54TH6cSPipW6w5ijO57lpi67EI+Oy
	 Ezt172ruVZtVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] thermal/drivers/qcom/tsens: Add support for
 ipq9650 tsens
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609065447.4024695-3-varadarajan.narayanan@oss.qualcomm.com>
References: <20260609065447.4024695-3-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 07:06:05 +0000
Message-Id: <20260609070606.177DF1F0089E@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308746-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 839EA65D0A0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The device tree property `#qcom,sensors` can override `num_sensors=
`, leading to an out-of-bounds read of the static `hw_ids` array and subseq=
uent out-of-bounds array accesses.
--

commit 1557d45f1d577e6cb959599793cf39e4448627b6
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

thermal/drivers/qcom/tsens: Add support for ipq9650 tsens

This commit adds support for the ipq9650 tsens device by reusing the
ipq5332 ops and features, while defining a custom hardware ID array for
its 11 sensors.

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
This is a pre-existing issue, but does this hardcoded array expose us to
an out-of-bounds read if the device tree overrides the number of sensors?

In drivers/thermal/qcom/tsens.c:tsens_probe(), the number of sensors can
be overridden by the #qcom,sensors DT property. The probe function later
initializes the sensors in a loop:

    for (i =3D 0;  i < priv->num_sensors; i++) {
        if (data->hw_ids)
            priv->sensor[i].hw_id =3D data->hw_ids[i];
        else
            priv->sensor[i].hw_id =3D i;
    }

If a device tree specifies a larger number of sensors than the length of
this new array (for example 12, which is under the MAX_SENSORS limit of 16),
will the initialization loop read past the end of the hw_ids array?

It looks like this could result in garbage values being stored as hw_id,
which are then used as offsets for the fixed-size priv->rf[] regmap field
array, potentially causing arbitrary out-of-bounds pointer dereferences.

> +	.feat		=3D &ipq5332_feat,
> +	.fields		=3D tsens_v2_regfields,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609065447.4024=
695-1-varadarajan.narayanan@oss.qualcomm.com?part=3D2

