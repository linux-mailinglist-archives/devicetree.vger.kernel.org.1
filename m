Return-Path: <devicetree+bounces-299973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNx8JnIwDGpuZAUAu9opvQ
	(envelope-from <devicetree+bounces-299973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:42:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3D057B796
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AFD703034401
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94C7A45107A;
	Tue, 19 May 2026 09:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NE6F/edP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7D93EFFB6
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779183681; cv=none; b=toplZo85KyygVlRyQeDIVy11xX8TrfGS/FqoIk3DLtSvzR1o1ZnrYVE5ZlTR0wqwNRXkJKpBRyF7mdipbthcFkAP75K3q0faL8y2BJi00S/j0mTLsBWJ7MFIov2Xk4teyQH5jqHz7/l0FPPrOdku0dZLNj87Y86Q2DD1EBzvxd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779183681; c=relaxed/simple;
	bh=0HdEA/6jYTbZkQrgy2c8/ziFgwbR/AqvC0x/RJlnU2c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mc2LjaEb49lKm9vE66oqq/xSvNNyvjUTiicuYAQKZmFDj+QmFxMCYNk1skmV4XE3oOdHafoBO68IB4hRANxcqONEyoj1fCn6TO5N0CjdPetQmLkQ2N1TbAocToGtHFZruUIb56XnJkzo/pGKmcppXn28cAgxsaR3xZ1b+JY2C1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NE6F/edP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C5ABC2BCB3;
	Tue, 19 May 2026 09:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779183680;
	bh=0HdEA/6jYTbZkQrgy2c8/ziFgwbR/AqvC0x/RJlnU2c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=NE6F/edPmOpGm6/3UPjjgHbAfLwJOo/ppfddqQvxsLJIrxCH5mrpFUsxWGzgKrD4C
	 Kvx1YX1N+Tdkw3j2jHISoyeiReObzl1rD536upYkh+t3Ww9wdfqmQhOQigY47FwP5y
	 9yiXOMyY6F/n4ohd9Mi3DFqEn5B05wOLpyeL8XYsDXIHfG6iomUf+y9A5vbcYFFqOy
	 nedporctUg3G8G9gEiAWMD2FOwr5/NE0ejIRYeJEz7haBI9ck99cB2GWixdFMNWr2X
	 XHj0OWNsbHmIjghUrdho6B9JaOFRm9veoxM2sRwz+f5sXTgeE5he/2NvQI2KUUCqzv
	 ZnE3IDMaJr17w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/8] ARM: dts: qcom: pm8921: Add USB ID extcon
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexandre MINETTE via B4 Relay" <devnull+contact.alex-min.fr@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-mainline-send-v1-sending-v3-7-3dd7aa125353@alex-min.fr>
References: <20260519-mainline-send-v1-sending-v3-7-3dd7aa125353@alex-min.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 09:41:20 +0000
Message-Id: <20260519094120.8C5ABC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299973-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,contact.alex-min.fr,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,alex-min.fr:email]
X-Rspamd-Queue-Id: 3B3D057B796
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Adding the `usb-detect` child node without updating the parent PMIC=
 MFD schema will cause a `dtbs_check` validation error.
--

commit 1720dad1a12f125ee675cf2a28ab06f2b81a9589
Author: Alexandre MINETTE <contact@alex-min.fr>

ARM: dts: qcom: pm8921: Add USB ID extcon

This commit adds a non-addressable extcon child node to the PM8921 PMIC to
expose the USB ID signal for role detection.

> diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/=
pm8921.dtsi
> index 535cb6a2543f6..30366536f5803 100644
> --- a/arch/arm/boot/dts/qcom/pm8921.dtsi
> +++ b/arch/arm/boot/dts/qcom/pm8921.dtsi

[ ... ]

> @@ -121,6 +121,13 @@ ref_muxoff: adc-channel@f {
>  				reg =3D <0x00 0x0f>;
>  			};
>  		};
> +
> +		usb_id: usb-detect {
> +			compatible =3D "qcom,pm8921-misc";

Will this cause a dtbs_check validation error?

The parent PMIC device tree binding in
Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml specifies
additionalProperties: false and explicitly enumerates all permitted child
nodes.

It does not appear to define or allow a usb-detect node or the
qcom,pm8921-misc compatible string.

> +			interrupt-names =3D "usb_id";
> +			interrupts-extended =3D <&pm8921 49 IRQ_TYPE_EDGE_BOTH>;
> +			status =3D "disabled";
> +		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-mainline-s=
end-v1-sending-v3-0-3dd7aa125353@alex-min.fr?part=3D7

