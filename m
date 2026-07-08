Return-Path: <devicetree+bounces-322446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kCc0EjiiTWpy7wEAu9opvQ
	(envelope-from <devicetree+bounces-322446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 03:04:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F63720C4D
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 03:04:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BZR2mCGQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322446-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322446-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18719300E3A1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 01:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD9536212F;
	Wed,  8 Jul 2026 01:04:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815834CB5B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 01:04:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783472693; cv=none; b=uzOtPAo4GHsJZb9huaPdFwEwqSl7WmW7B3z30MIiJ0VX72kDiz8np/jX559t5aJmwu/HPeQxdtW0qZ2OB9/PYKHRJwFUpli3q8rnzG02wPw3SwlNLzSDTmQFfuyGu87W1oQ4tYk1fo64o9t5hLUPbtOEtw3bh1PtoDhhgX6hbOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783472693; c=relaxed/simple;
	bh=FzOIhgxKIOUfo3D3BLhRMkIM6whjomTct7WfOEiZF1A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OXg1nTuZ3pO9qkpZvxvzJkBfqao4YUyZCSmRKkH1H/0iRZ693wp6DpBhNuQy2wPEiFvLI6C7nJ69UGnKyJafYcY8Yr/rn+s/5YAkb/y4R/wKUVNaLSTR45cPkwyRS8oPIkuqi7rUGWeA3K0HdPLNAaNG4R4/SnpcD+88ZtDHoTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZR2mCGQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1041F000E9;
	Wed,  8 Jul 2026 01:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783472692;
	bh=M8Adh5f4GwmHZGFfUgeMW2Wh1B7GcQ6DnN653TQd8wA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BZR2mCGQv/BQ+iLf8otjHKsqEYHDr8hieI8p6xqsVetqMlRudoXLY7eoBSBcbt94A
	 GMxIn9MJ/EwIdrywygBUY/tjFrtrXK2DSAA0eFMRFIu84Km4OLR7+OScirgB42kG7o
	 Wib6Lg2Yr8Eax7MtQTzabqBRvHF7iE7SfLNuxODzfrleOfMB39U/y0nxiYjV1nUdHT
	 C0PdJgjHmNKqvecrixrYLc0oNqzgdHj55rYuB6jytxmDFjltmgsMLzemFIjwTITusu
	 yrHfLpQlZsFpO+E6bsd1YOtKNyGdhL7uaEqM65mcmK+4sLOXDutOtfRZZKQ7QOFJyY
	 d56nZKoKnGQhg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/11] arm64: dts: qcom: x1e80100-crd: Add ov08x40
 RGB sensor on CSIPHY4
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-x1e-camss-csi2-phy-dtsi-v4-5-572348ad1b2a@linaro.org>
References: <20260708-x1e-camss-csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org>
 <20260708-x1e-camss-csi2-phy-dtsi-v4-5-572348ad1b2a@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 01:04:51 +0000
Message-Id: <20260708010452.0F1041F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322446-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bryan.odonoghue@linaro.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82F63720C4D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The DeviceTree graph uses an invalid downstream-style topology wit=
h a standalone `&csiphy4` node inserted between the `camss` node and the se=
nsor.
--

--- Patch [5]: [PATCH v4 05/11] arm64: dts: qcom: x1e80100-crd: Add ov08x40=
 RGB sensor on CSIPHY4 ---
commit 39d25032ab99dc455f2a85ffdb943ee237d5ed9c
Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

arm64: dts: qcom: x1e80100-crd: Add ov08x40 RGB sensor on CSIPHY4

This commit defines the ov08x40 RGB sensor on cci1_i2c1. It configures the
sensor on the AON CCI pins connected to CSIPHY4 in four lane mode.

> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/q=
com/x1-crd.dtsi
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -933,6 +934,85 @@ &gpu {
>  	status =3D "okay";
>  };
> =20
> +&camss {
> +	status =3D "okay";
> +
> +	ports {
> +		/*
> +		 * port0 =3D> csiphy0
> +		 * port1 =3D> csiphy1
> +		 * port2 =3D> csiphy2
> +		 * port3 =3D> csiphy4
> +		 */
> +		port@3 {
> +			camss_csiphy4_inep: endpoint@0 {
> +				data-lanes =3D <0 1 2 3>;
> +				remote-endpoint =3D <&csiphy4_out_ep>;

[Severity: High]
Does this topology cause the CAMSS driver's V4L2 async notifier to hang
indefinitely?

When booting the kernel, the CAMSS driver parses the endpoints in the camss
node and uses v4l2_async_nf_add_fwnode_remote() to wait for a V4L2 subdevice
at the remote end of the graph.

Because this connects the endpoint to the csiphy4 node instead of the senso=
r,
and the generic PHY driver does not register its own V4L2 subdevice, the
notifier will never complete.

> +			};
> +		};
> +	};
> +};
> +

[ ... ]

> +&csiphy4 {
> +	vdda-0p8-supply =3D <&vreg_l2c_0p8>;
> +	vdda-1p2-supply =3D <&vreg_l1c_1p2>;
> +
> +	status =3D "okay";
> +
> +	ports {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		port@0 {
> +			reg =3D <0>;
> +			csiphy4_in_ep: endpoint {
> +				data-lanes =3D <0 1 2 3>;
> +				clock-lanes =3D <7>;
> +				remote-endpoint =3D <&ov08x40_out_ep>;
> +			};
> +		};
> +
> +		port@1 {
> +			reg =3D <1>;
> +			csiphy4_out_ep: endpoint {
> +				remote-endpoint =3D <&camss_csiphy4_inep>;

[Severity: High]
Is it intentional to place the PHY as a standalone node in the pipeline?

The upstream Linux CAMSS driver manages the PHY internally and does not
support inserting a standalone PHY node into the pipeline graph.

> +			};
> +		};
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-x1e-camss-=
csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org?part=3D5

