Return-Path: <devicetree+bounces-326999-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VwzLKwWCV2pWTgAAu9opvQ
	(envelope-from <devicetree+bounces-326999-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:50:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C3A75E584
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bZ2zqxFK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326999-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326999-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9914630215B4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659CD478E42;
	Wed, 15 Jul 2026 12:47:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBE344684E;
	Wed, 15 Jul 2026 12:47:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119666; cv=none; b=ZJp2nJHrnJSqXXOTz8lpkIDFt4I6iWtrP+qMCjj2SDfJNgsLrLyFmZCddq1GeUSIoXqRU7OAD75ZURbkGWkNKGteamWYJESsiL7OXlYfRtpzee5AR5WOMHpmdKqka/AjGQVqhek7ATwDrMayfdEZjETp4NNj8LpmWrUlQ2hei6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119666; c=relaxed/simple;
	bh=cQ9mQvh7YP+Wnwjp497SR/Mp93YUZKMOLnuJJaGXmD8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=snIqgsbTfDLTkhASmOQNwqEr7PVIfKFcjdIiI/MX1o/o0CT4QZkafRAtR0Rg5AuuUrQzsG3BtMncfC8sa2R34Cx5SwvOnvSdC9rzrlWOxdwHnW17PgyKNGPyDDlZtph/DTVoajM0K+dlY6GNHkgr6VAvgF+bBiumGK2eLuaNql8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ2zqxFK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDE9A1F00A3A;
	Wed, 15 Jul 2026 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119657;
	bh=xqJsK72rDewTHZjEJfIIgiujNKx9bI1w9ceKWEDkJ5w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bZ2zqxFKGGdqzRMMNstI9T+vfQbe+dhoeyVL1Cv0jbvLpEaogXcw7SF+TLdBmIfJg
	 IRRCpxsS5Ybv6wwrQXiKkO69Wm6fZU9d3QdHK8Y2HKdoLLbJQW/RkJjxWg6Egj6ps0
	 ASmXargqqenSFqqw7q2y+pX+mTsBRAi99hjesYDMQhFm501lzXs22HvVYiK2o5PC4/
	 G6IHnnTcpUn6ZAcOGfcG6TZf+GajjNIaZzea5l6+hYz6VOGuxploLXWKadwRvoolCs
	 RSBNZhQ4Xe+vbhrtT+ifhJqHyL5fWXW7C7zwAWAjHri4eM+6AiwWRsrmBK5qLLn4D5
	 kCX2SHDMz+HhQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/9] arm64: dts: imx8ulp: Correct SRAM node address and
 size to cover full SSRAM P2
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?UGVuZyBGYW4gKE9TUyk=?= <peng.fan@oss.nxp.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-imx8ulp-dts-v1-3-19651358b599@nxp.com>
References: <20260715-imx8ulp-dts-v1-0-19651358b599@nxp.com>
 <20260715-imx8ulp-dts-v1-3-19651358b599@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:47:36 +0000
Message-Id: <20260715124736.CDE9A1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326999-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:peng.fan@oss.nxp.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46C3A75E584
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `ranges` property of the `sram` node and the `scmi_buf` chil=
d node were not updated to match the newly expanded SRAM `reg` region.
--

--- Patch [3]: [PATCH 3/9] arm64: dts: imx8ulp: Correct SRAM node address a=
nd size to cover full SSRAM P2 ---
commit e7f90a5991db01135d232289fb75ec4528de4fca
Author: Peng Fan <peng.fan@nxp.com>

arm64: dts: imx8ulp: Correct SRAM node address and size to cover full SSRAM=
 P2
   =20
The SSRAM P2 partition starts at 0x22010000 with a size of 64 KB.
The previous node only mapped the last 4 KB (0x2201f000, 0x1000) which
was used for the SCMI shared memory buffer. Update the base address and
size to cover the full P2 region so it can also serve as a general
purpose SRAM pool.

> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot=
/dts/freescale/imx8ulp.dtsi
> --- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -154,9 +154,9 @@ sosc: clock-sosc {
>  		#clock-cells =3D <0>;
>  	};
> =20
> -	sram@2201f000 {
> +	sram@22010000 {
>  		compatible =3D "mmio-sram";
> -		reg =3D <0x0 0x2201f000 0x0 0x1000>;
> +		reg =3D <0x0 0x22010000 0x0 0x10000>;
> =20
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
>  		ranges =3D <0 0x0 0x2201f000 0x1000>;
> =20
>  		scmi_buf: scmi-sram-section@0 {
>  			compatible =3D "arm,scmi-shmem";
>  			reg =3D <0x0 0x400>;
>  		};

[Severity: Medium]
Since the reg property was expanded to cover the full 64KB region starting
at 0x22010000, should the ranges property and the scmi_buf node also be
updated to match?

Right now, ranges still only maps the last 4KB (0x2201f000). Any new child
nodes attempting to use the lower 60KB (0x22010000 to 0x2201efff) as a
general-purpose pool will fail to resolve their addresses.

Also, if ranges is updated to map from the new 0x22010000 base, wouldn't
the scmi_buf child node offset need to be updated to 0xf000 to maintain
its previous absolute address?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-imx8ulp-dt=
s-v1-0-19651358b599@nxp.com?part=3D3

