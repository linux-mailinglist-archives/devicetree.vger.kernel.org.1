Return-Path: <devicetree+bounces-321687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vFf1N8t9TGr+lAEAu9opvQ
	(envelope-from <devicetree+bounces-321687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:17:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5093271731C
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:17:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VtW3Xkr+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321687-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321687-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50DA7301C6DC
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 04:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4321EE01A;
	Tue,  7 Jul 2026 04:17:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B3519B5B1
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 04:17:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783397833; cv=none; b=b63AXNj+hm6IfIy270U2B8f2sXiTt7KR0gDmGxcizdQanFllVHEVa792apvLW9wXFmlAkvli3kN/PQVUgfhvMGBXcTlcuFOhp8P6kJlOur9q+J+/wZaqpdBepQbsmGhcQObrqZh949fP+RfH4b/moj3qlKi86zndVWSzgRALxE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783397833; c=relaxed/simple;
	bh=dgtl+0EX7UxdiBYVPJoQjxoElMXb9xO+Sw/kkUla0j4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PkWCp4cWFOjruQWKplSoI+SQRlYhee48sOH/rH90YirkGqhYyw6sjrBvx7UhNjLqphMFXB6XTReDjtpiWb0UFRJRxbJSOzF1MZHpXeLiY9b47ah5JTYOBAmzHJEY+TyXTWt0bSflOZ9vHZALdIU7EYwIY/3HP2YmplLWtxVYq+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtW3Xkr+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F7351F000E9;
	Tue,  7 Jul 2026 04:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783397831;
	bh=YlIOHWQGj8LSp98kq9vPuvVRJp2E5/gRNz6i0vWYCEs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VtW3Xkr+xcY+ZPMw9h2xmMMDaJVkmJDIkvJfgvMzfpK5VEXbu+Dl7aUvq3f+h36La
	 1A38E+MwGsBUPagV4F/dOJ7TrS47A5dOvKOAXLMKxSJS5mb5nppnAoliSqN/TWJVgU
	 og4L1eEW6MtFleVUMhUGIXSq1+lfOw32YmtKp1PYaxV0fQ7z4oNYz/HyPcFlGB5E77
	 9vGrGJ6i8DMbssBMqE2eurk8+iWY+NvDE9ZMbjry8y3Hd1jaMVsvKmjQystMKBcqX5
	 yH1NPn3fy4zQprUBKrrTimv9Nz4g21vkq1+po9BENa5hK7tnypFFthIMLITEk0NEE/
	 yKJ23srUEk8Ow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/5] drm/bridge: analogix_dp: Restore mandatory
 samsung DP DT properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260707040613.1992841-4-damon.ding@rock-chips.com>
References: <20260707040613.1992841-1-damon.ding@rock-chips.com>
 <20260707040613.1992841-4-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 04:17:10 +0000
Message-Id: <20260707041711.4F7351F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-321687-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:damon.ding@rock-chips.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5093271731C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Failing probe when deprecated DT properties are missing breaks=
 DT ABI and prevents their deprecation.
--

--- Patch [3]: [PATCH v6 3/5] drm/bridge: analogix_dp: Restore mandatory sa=
msung DP DT properties ---
commit b573dba50acc6087122ffa4a65680322f4d004f8
Author: Damon Ding <damon.ding@rock-chips.com>

drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties

This commit reverts a change that made the samsung,link-rate and
samsung,lane-count properties optional for Exynos DP. It adds error checking
to fail the probe early if these properties are missing, aiming to prevent
link training failures caused by zero values.

> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers=
/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8cf6b73bceac0..293d8adfe9856 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
[ ... ]
> @@ -1258,10 +1259,14 @@ static int analogix_dp_dt_parse_pdata(struct anal=
ogix_dp_device *dp)
>  		 * NOTE: those property parseing code is used for
>  		 * providing backward compatibility for samsung platform.
>  		 */
> -		of_property_read_u32(dp_node, "samsung,link-rate",
> -				     &video_info->max_link_rate);
> -		of_property_read_u32(dp_node, "samsung,lane-count",
> -				     &video_info->max_lane_count);
> +		if (of_property_read_u32(dp_node, "samsung,link-rate", &val))
> +			return dev_err_probe(dp->dev, -EINVAL,
> +					     "Failed to get samsung,link-rate\n");

[Severity: Critical]
Does failing the probe when this property is missing break the DT ABI?

Since samsung,link-rate is a deprecated property, a modern schema-compliant
Device Tree might intentionally omit it. If a system boots with such a DT,
this check will fail the probe with -EINVAL and disable the display.

Could the driver instead fall back to hardware maximums or sensible defaults
when the deprecated property is absent, rather than returning an error?

> +		video_info->max_link_rate =3D val;
> +		if (of_property_read_u32(dp_node, "samsung,lane-count", &val))
> +			return dev_err_probe(dp->dev, -EINVAL,
> +					     "Failed to get samsung,lane-count\n");

[Severity: Critical]
Does making samsung,lane-count mandatory similarly break backward compatibi=
lity
for valid Device Trees that have intentionally omitted this deprecated prop=
erty?

> +		video_info->max_lane_count =3D val;
>  		break;
>  	}
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707040613.1992=
841-1-damon.ding@rock-chips.com?part=3D3

