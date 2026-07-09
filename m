Return-Path: <devicetree+bounces-323736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2y+EJMaVT2rckAIAu9opvQ
	(envelope-from <devicetree+bounces-323736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:36:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 295F07310C5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:36:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SkOqs2hC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323736-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323736-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 05E2D304EB4C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 12:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E6841C2FB;
	Thu,  9 Jul 2026 12:35:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293284219F6
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 12:35:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783600529; cv=none; b=BVlaEy9rF0weHFM8MsmVcPW6jmldQAMYoQTrIGSrPfyaWeQ2M906eOO1qxbpvjIhHoH3GJPhmybYsktKk7IM2vIq3oxRdPJEB2R7zf/QtyIHQccwwzDSZSMipq/SS/T75i6vmhLNCAPk29a11aEgIBRXR2DE/OTMoHYymyoNi6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783600529; c=relaxed/simple;
	bh=6M62vnT518qtuvlLhsOyI0WZDWMqVuHEIFSzMXRGuZg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gYXjfNQMozQIvHxydcH3Gtbwnr5oKgQ7vBm5MPx9jS9LtR4ff+1gYom/e/yVMbsOqrH0NBMLluC4WTsnpDOKz3hCvccaZhDRslEiLBHzQZ0Akb5JnM22M+GHXwOeoVQ/+7QZl/84bbtRSYW8kYGvTE0UPuSYRoYUlWGyJDp1e3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkOqs2hC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C062B1F000E9;
	Thu,  9 Jul 2026 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783600528;
	bh=u9SxWDrc9MHmLLcwdD1FqxuetFSove5bGzTedsZjCN4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SkOqs2hCHmhf6/TYaQItx5+VGyycM/5h6KRTph1Mzn1RJtM6NVMse+cMC9pj1C/O2
	 0oTP3+62U+4s63ikobjXOogrg8oYqlPLCflA5nNbew22boZXQ05QpMJMNDdhg5udSa
	 jKal9HuJwfY+DonPQm8XwmsGom3cumyWqg1KP6dOb/Ou1XewRj//kOIkR34Pnf/lIY
	 m/2AzXtM2lRAjgBcQbVM37dkFpSk75FzIjGAs5lu0dz2/9W5GS1AtAftfRZJMKgHsz
	 +AdXIwWgdz7cGpZ7zUCnPVEgskFjKsHbIVs4RZJRtJW9F/vs8GhY3GdmkPZmizWqpC
	 YDjFP8f8qHxQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 13/14] arm64: dts: mediatek: mt8195-cherry: Add M.2
 E-key slot
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709095726.704448-14-wenst@chromium.org>
References: <20260709095726.704448-1-wenst@chromium.org>
 <20260709095726.704448-14-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 12:35:27 +0000
Message-Id: <20260709123527.C062B1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323736-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 295F07310C5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Wake-on-WLAN (WoWLAN) is broken due to the removal of the `wakeu=
p-source` property.
--

--- Patch [13]: [PATCH v4 13/14] arm64: dts: mediatek: mt8195-cherry: Add M=
.2 E-key slot ---
commit d236ad7145736f4079f93e3a3bc9ca160b9f82df
Author: Chen-Yu Tsai <wenst@chromium.org>

arm64: dts: mediatek: mt8195-cherry: Add M.2 E-key slot

The Mt8195 Cherry design features an M.2 E-key slot for WiFi/BT combo
cards. This patch adds the proper representation for it, replacing the PCIe
wifi node and vpcie3v3-supply property under the PCIe controller.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index ef7afc436aefc..8d4cc30d91e44 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi

[ ... ]

> @@ -791,14 +832,14 @@ pcie@0 {
>  		reg =3D <0 0 0 0 0>;
>  		device_type =3D "pci";
>  		num-lanes =3D <1>;
> -		vpcie3v3-supply =3D <&pp3300_wlan>;
>  		#address-cells =3D <3>;
>  		#size-cells =3D <2>;
>  		ranges;
> =20
> -		wifi@0 {
> -			reg =3D <0 0 0 0 0>;
> -			wakeup-source;

[Severity: Medium]
Will the removal of the wakeup-source property break Wake-on-WLAN for this
device?

The MT76 PCI driver checks for the wakeup-source property on the device's
device tree node to enable Wake-on-WLAN. By replacing the wifi@0 PCI device
node with an OF graph port node, the PCI device loses this property.

Additionally, because the port node lacks a reg mapping, the PCI core won't
associate it with the PCI device, leaving the PCI device's of_node as NULL.

Does this board still expect Wake-on-WLAN to be enabled by default for the
Wi-Fi card during system suspend and resume flows?

> +		port {
> +			pcie1_ep: endpoint {
> +				remote-endpoint =3D <&wifi_ep>;
> +			};
>  		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709095726.7044=
48-1-wenst@chromium.org?part=3D13

