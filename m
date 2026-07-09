Return-Path: <devicetree+bounces-323881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uq/xL3G8T2oTngIAu9opvQ
	(envelope-from <devicetree+bounces-323881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:21:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA88732C6E
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:21:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rvj2deKK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323881-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323881-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08AB1307DBB6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 14:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2528380FF1;
	Thu,  9 Jul 2026 14:44:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA69243956
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 14:44:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783608295; cv=none; b=tB6tOodO7i73g6LtAAAsRW7D0BVdyaeqa/Q0kI+WWKDSioByIxofyw7Q8BRCgz4zKu8+IubDY0L7oCHVYEP7GXSJoyKcQEKdnz8t64W3UdcrlrO19i7cbNNCvoeCf+HgVWnresDBclgK6A46NS5N2X/qsSeTi8dC+GIqp2rWM/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783608295; c=relaxed/simple;
	bh=r6ikLMXGiAoKx2WJ/+6F8Y6HM1XyUA7yLBN30UE5/Sc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pH8e1K80JxSbeCjnO1e/Xp1dQbowp9AJfXaanmu+6AwdpJFbV9C2HohHA+rNjTAngjLn8S6rm+L6w5ORYHpeRJe3CK4UEDv3pgkUOIM3+HJhsja1V264ovCGIg2eC9ADvgUKPuLMhgJIAJkY+r0ruIzAagntdvDXaPhNVNoySO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvj2deKK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA5E31F00A3A;
	Thu,  9 Jul 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783608294;
	bh=JQQhPheVCGcp16TIS/AY2LB2Nkg3bQYOddsaJJoKHPI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rvj2deKKPUv3cnl1oNDuREDLLeZCV2CTI8NMsgBethNjgGqCZOg3sp2V7rTdG12KD
	 KND6NOuvkt4X65jTV1eOVzLbWWOrK8Tf8KbmeWjGp+9t99RUiVlzLDgKkyUfpbpIBh
	 4vzCtra7sS8xNOUGdeMoPyVbTbH8RsbGSAZQMFXGssEZTEtbPpxh6XOyllkirTWAKJ
	 WRvTJHuZ0AxBdQernmVXcFaFUe2Gdsh7KBSa2a1SpoF7eyNUAkdjKa5908baAe5h+Y
	 kELZS6+q1OuTGFsUSSkf1QmeqBwJABheCeL2qidcv0FI2nNNyTg4WhdokxCjkJ7U0y
	 rXqQlTwtIVcsw==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 09/11] arm64: dts: qcom: lemans: Move Iris IOMMUs to
 child nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vikash Garodia" <vikash.garodia@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260709-vpu_iommu_iova_handling-v1-9-72bb62cb2dfd@oss.qualcomm.com>
References: <20260709-vpu_iommu_iova_handling-v1-0-72bb62cb2dfd@oss.qualcomm.com>
 <20260709-vpu_iommu_iova_handling-v1-9-72bb62cb2dfd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 14:44:53 +0000
Message-Id: <20260709144453.DA5E31F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323881-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:vikash.garodia@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABA88732C6E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Using `iommu-addresses` in a `reserved-memory` node explicitly bla=
cklists the 0-600 MB IOVA range instead of limiting the device to it.
--

--- Patch [9]: [RFC PATCH 09/11] arm64: dts: qcom: lemans: Move Iris IOMMUs=
 to child nodes ---
commit b935406806a9ce7b7ad2277e27ed775abba4a09e
Author: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

arm64: dts: qcom: lemans: Move Iris IOMMUs to child nodes

This commit splits the Iris VPU into non-pixel and pixel child nodes with
their respective IOMMUs. It attempts to restrict the non-pixel stream to
the 0-600 MB IOVA range by adding a reserved IOVA range.

> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/q=
com/lemans.dtsi
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -879,6 +879,10 @@ cpucp_fw_mem: cpucp-fw@db200000 {
>  			reg =3D <0x0 0xdb200000 0x0 0x100000>;
>  			no-map;
>  		};
> +
> +		iris_resv: reservation-iris {
> +			iommu-addresses =3D <&iris_non_pixel 0x0 0x0 0x0 0x25800000>;
> +		};
>  	};
> =20
>  	smp2p-adsp {

[ ... ]

>  			status =3D "disabled";
> =20
> +			iris_non_pixel: non-pixel {
> +				iommus =3D <&apps_smmu 0x0880 0x0400>;
> +				memory-region =3D <&iris_resv>;
> +			};

[Severity: High]
Will this inadvertently exclude the 0-600 MB IOVA range from the available
allocator space instead of restricting the device to it?

During domain initialization, the IOMMU subsystem parses iommu-addresses
without a reg property as an IOMMU_RESV_RESERVED region.

It then calls reserve_iova() to remove this exact range from the IOVA
allocator's available space. Because the non-pixel device is linked to this
memory-region, all subsequent DMA allocations for the non-pixel stream will
avoid the 0-600 MB range entirely.

This forces the device to use DMA allocations strictly > 600 MB, which
seems to guarantee the exact out-of-range memory accesses and device crashes
the patch intends to fix.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-vpu_iommu_=
iova_handling-v1-0-72bb62cb2dfd@oss.qualcomm.com?part=3D9

