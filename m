Return-Path: <devicetree+bounces-257790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C75OgqMcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:19:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D24B5363B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1029B7C5B50
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5A64279F4;
	Wed, 21 Jan 2026 08:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="IHDluf3r"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BC045BD61
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983259; cv=none; b=pUL+uI/u8RDlrkzd/3aljUQu34bHlbDUpKjaZVG78FSoCddVkeDt801fMN3UMqov0vi/hB09EvVDICklAFk0C1qp/MfXhXUo3Rm7BOTAWuFq1bBVq8vCBnzevAyXYHNIiF8CG59/4roINxUGoCqWZ3hh3vRDj0Vbk89gpgKhVOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983259; c=relaxed/simple;
	bh=VUNr7lFUgeJlCcWWkvKVqUs0F9SMcihjWUtl64kLz60=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=RbNX232K5HCq2fHMLHcAaUP6OmlkinANxHwJSH4cki+BL722hTYrJVUH2F9vUOJHlrr6zPfRDO24YwzXcQiifyq37wUHqYkW8p0J36YYLYCuLgBsSyElvjw7/maXP+Kbs7dXFM0jrsBqaCygixy2V6Cq8MK5+VO7Jci7EjPcpLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=IHDluf3r; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768983252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Yfisx39MoKyL9c3tUxQTaTOyIEsGPjfK03MuLUniLRw=;
	b=IHDluf3rviNEt+6PbCXoDsnMOzMhg8Q409a5vnXpMoZ7pLPnF52xoRtpuHQmx5bqU6huWm
	EeTvW4Q2PdpEic7wbdZLwVvj18ZhLDbsEO0tqI3cqjGSO3Hq6phrfPXYjIjzb11HvW7FTO
	iqy8bPi3hQcyLWztQrH/XsHtdOU6hauOBk6R0YppA1h2NeQKtGc+dgxVgMtInY4OFlREGH
	xWgfgixUu2uQzUKl5k7HquVn/UtfI02RpfpqgNDWTtBtR0qMCDeKNkom2rWklTa81z3lEA
	8MS8e+cuS+3kM/fVMrlYlaUGsf5MYM4gAdnUli2Lah2z1a8WAhAc0cC6lOouxw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 21 Jan 2026 09:14:05 +0100
Message-Id: <DFU4845TDZMC.1JL1V5A9FWWEL@cknow-tech.com>
To: "Chaoyi Chen" <kernel@airkyi.com>, "Andrew Lunn" <andrew@lunn.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 "Alexey Charkov" <alchark@gmail.com>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Sebastian Reichel"
 <sebastian.reichel@collabora.com>, "Chaoyi Chen"
 <chaoyi.chen@rock-chips.com>, "Andy Yan" <andy.yan@rock-chips.com>,
 "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Stephen Chen" <stephen@radxa.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
In-Reply-To: <20260121031548.402-2-kernel@airkyi.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[cknow-tech.com,quarantine];
	TAGGED_FROM(0.00)[bounces-257790-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[airkyi.com,lunn.ch,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,cknow-tech.com:mid,cknow-tech.com:dkim,rock-chips.com:email]
X-Rspamd-Queue-Id: 4D24B5363B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Jan 21, 2026 at 4:15 AM CET, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>
> According to the description in the net documentation, PHY modes
> "rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
> to be delayed on the PCB.
>
> The Rockchip platform has long used the above mentioned PHY modes and
> private delay prop to describe the internal IO delay settings of the
> chip, which is inconsistent with what is described in the documentation.
>
> Let's describe this part of the delay in the PHY and use the more
> reasonable "rgmii-id" mode.
>
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm6=
4/boot/dts/rockchip/rk3576-evb1-v10.dts
> index c5584c26db52..3ee76bafafb5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> @@ -266,7 +266,7 @@ &combphy1_psu {
> =20
>  &gmac0 {
>  	clock_in_out =3D "output";
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	phy-handle =3D <&rgmii_phy0>;
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&eth0m0_miim
> @@ -275,14 +275,13 @@ &eth0m0_rx_bus2
>  		     &eth0m0_rgmii_clk
>  		     &eth0m0_rgmii_bus
>  		     &ethm0_clk0_25m_out>;
> -	tx_delay =3D <0x21>;

This being '0x21' (not '0x20') ...

>  	status =3D "okay";
>  };
> =20
>  &gmac1 {
>  	clock_in_out =3D "output";
>  	phy-handle =3D <&rgmii_phy1>;
> -	phy-mode =3D "rgmii-rxid";
> +	phy-mode =3D "rgmii-id";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&eth1m0_miim
>  		     &eth1m0_tx_bus2
> @@ -290,7 +289,6 @@ &eth1m0_rx_bus2
>  		     &eth1m0_rgmii_clk
>  		     &eth1m0_rgmii_bus
>  		     &ethm0_clk1_25m_out>;
> -	tx_delay =3D <0x20>;
>  	status =3D "okay";
>  };
> =20
> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>  		reset-assert-us =3D <20000>;
>  		reset-deassert-us =3D <100000>;
>  		reset-gpios =3D <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> +		tx-internal-delay-ps =3D <1950>;

... shouldn't this be higher?
0.0579 * 0x21 + 0.105 =3D 2.0157 (not sure how the rounding goes)

Cheers,
  Diederik

>  	};
>  };
> =20
> @@ -737,6 +736,7 @@ rgmii_phy1: ethernet-phy@1 {
>  		reset-assert-us =3D <20000>;
>  		reset-deassert-us =3D <100000>;
>  		reset-gpios =3D <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
> +		tx-internal-delay-ps =3D <1950>;
>  	};
>  };
> =20


