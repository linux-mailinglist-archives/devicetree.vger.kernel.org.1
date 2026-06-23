Return-Path: <devicetree+bounces-314579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3/WsDkTcOWo9yQcAu9opvQ
	(envelope-from <devicetree+bounces-314579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:07:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ABD6B3170
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:07:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Q4aQVrVh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314579-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314579-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 334833038145
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 01:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC4F361656;
	Tue, 23 Jun 2026 01:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A023C14E2F2
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:07:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782176833; cv=none; b=chm7Wr/1OdDn8kTYJVPmhtrseyno4rC9kq/NYxlHjCfPLCOVHZd72GhL3eouYAHcWSNBmWIX3p4j6nHcKvOdtMcaY+kZ4nwtY0Rj3lYKZshUXHfbdgBCR9ZKwxa5zInmRk64/YaF+GUFsLy54lDIUI0Q2bIP46ScmB4UPHEcKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782176833; c=relaxed/simple;
	bh=vn4ppfWWw7TdhAWJhWvK2nB2jjHpNQ85O1tXp5i5H18=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oBFqVQ2+kEBEiDll2PBwYKfKinp5H5f01pNWoVxQh05mV5t6ZYm410SqyovnWgdtT/bC1NhjPvHGsxDrF9Rxgjt+7vpM9oKEyh4gAoU1YAjPMLucT4bGgPwOs77dcv9Y963gmu+c0A5/7xzcwxbYUM12ICQt2fgyeJ3VszXRiG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4aQVrVh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC8D11F000E9;
	Tue, 23 Jun 2026 01:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782176832;
	bh=PoFU25/WsYPg3E9ZVNWMJTwiMtZyLQjhQBzWIHmBejc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q4aQVrVhWvVMPpsqcCU9NWSR6K45h3yJoj1VYHXZjsQmAurXKqi8rDQN0Ix+AjGZU
	 t3xHWK5pP3bBW0amQ7UxMVDC5tqYeWqqjLdJ7rsn6FQ+WVK/BtIrLpGXuRBEeCuFCB
	 W4dFoHkSroX5cjzili6mht3Iu52uk77LTPH5im0Xqo26I7HRa82dPHmiO9jWszlNUG
	 3Do0oJP0y4rOELeCvriZYJGv3aqncKjfc0aRdvXs3C8irtMQb2gzTkm8z8yMWN8oxb
	 n5b6yO00SsJe7JBqgE9svT2EeVWlI4jHt4C/AS37hpxUIjet5Cp/ewXayrzFMfBfYU
	 LES3d1jEmvjeg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] iommu/arm-smmu-qcom: Add SM8450 MDSS compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 01:07:11 +0000
Message-Id: <20260623010711.EC8D11F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314579-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+esteuwu.proton.me@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,esteuwu.proton.me,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,proton.me:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74ABD6B3170

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The SMMU client match table is missing several other modern Qualco=
mm MDSS compatibles (e.g., SM8350, SM8550, SM8650, SM8750, SM6125), causing=
 them to suffer from unhandled context faults and broken display functional=
ity.
--

commit d66a67918c0ac7790f3063bd520102cd893aafb7
Author: Esteban Urrutia <esteuwu@proton.me>

iommu/arm-smmu-qcom: Add SM8450 MDSS compatible

This commit adds the SM8450 MDSS compatible to the Qualcomm SMMU client=20
match table. This ensures the device is properly configured by the IOMMU=20
driver to prevent unhandled context faults on the Snapdragon 8 Gen 1.

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/a=
rm/arm-smmu/arm-smmu-qcom.c
> index e2c914fccd6fc..795e8ec7e8faf 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -425,6 +425,7 @@ static const struct of_device_id qcom_smmu_client_of_=
match[] __maybe_unused =3D {
>  	{ .compatible =3D "qcom,sm6375-mdss" },
>  	{ .compatible =3D "qcom,sm8150-mdss" },
>  	{ .compatible =3D "qcom,sm8250-mdss" },
> +	{ .compatible =3D "qcom,sm8450-mdss" },

[Severity: High]
This is a pre-existing issue, but while we are adding the sm8450-mdss=20
compatible, should we also add other modern Qualcomm MDSS compatibles like=
=20
sm8350, sm8550, sm8650, sm8750, and sm6125?

It looks like those SoCs might also lack a fallback qcom,mdss compatible=20
and are currently missing from qcom_smmu_client_of_match.

If they are assigned a default DMA translation domain instead of the=20
required bypass identity domain, wouldn't the MDSS wrapper generate native=
=20
transactions that fail against the empty DMA domain, resulting in similar=20
unhandled context faults?

>  	{ .compatible =3D "qcom,x1e80100-mdss" },
>  	{ }
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-sm8450-qol=
-v1-0-37e2ee8df9da@proton.me?part=3D5

