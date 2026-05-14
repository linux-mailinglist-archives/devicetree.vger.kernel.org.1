Return-Path: <devicetree+bounces-297553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPwKF2LFBWrDbAIAu9opvQ
	(envelope-from <devicetree+bounces-297553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:51:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE1B541EFF
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 956D23007AE2
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913AF3C4165;
	Thu, 14 May 2026 12:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5TasiS8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591853AD500
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 12:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778763026; cv=none; b=GptNLLJAQpJqznQewOR3tzqf8N9j91APcQaCE38KHohl62Fcws1fi+9JSTRuhiVatPU4K+wdOvcFokDT5Akkf5trX6PUNlsaakvx2bTZoFXnUG5gEMcDK9BueH7shMzjMOJgVeSG7NzLiihCmiWteQI7jqJBXhHnSZWmPHzqteo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778763026; c=relaxed/simple;
	bh=dDP1T0YtS00dAcIXoW/wQ7pf7oPaXKm87KYsr9Z7j5w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RssaCHLAt/zsCxjJ+G5Io26Udvztk/0gZXoSjcl5LLHysyOsryna725j71cuolYQhcCTC6WxqXlOKiGG/nUwvbAOkS/8Z5kQShKcVYvjTjoZpP/G6ZyCZsldSTYvqdMV8xHSYp8bGAlhTDkv8fM2apJOemjUiUdbTmS9T87FdK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5TasiS8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B73DFC2BCB3;
	Thu, 14 May 2026 12:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778763026;
	bh=dDP1T0YtS00dAcIXoW/wQ7pf7oPaXKm87KYsr9Z7j5w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=m5TasiS8PWjZkho9HVGfcijkeI7fmmga5Nb9fy3m0LSNwWpYrKI3N0unx2rNysc2q
	 vtNIEymG/AlYgju+ojM06/IJn5iX1PrsATSIIX7xlZU+tGc8U3ZdzRQl6InjEimlSt
	 LdMXwwV8+ZzXD/Q8PRVsWHcpKMT9wrBX1RLNE6gH6zGoO0cEwjZSLh9ImLXx9a8xS5
	 3qWtjJNCofdMv6cYUsj9vWFQwCmZYU1lDUMZuae4wyJ56EtVPINDFgCl1lthlY28DD
	 LUexkonuKdUqhb4lhT7yOm0jQZ7PSFvQd4PTsSYQ2rwHuJh5krZEFNNKuS2Obm0g6a
	 VQyzBn2blSkKA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq5210: Add QPIC SPI NAND
 controller support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260514-ipq5210-nand-v1-2-cbdd7492e826@oss.qualcomm.com>
References: <20260514-ipq5210-nand-v1-2-cbdd7492e826@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 12:50:25 +0000
Message-Id: <20260514125025.B73DFC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: ABE1B541EFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297553-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,79b0000:email,0.119.20.96:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `&qpic_nand` node in the board device tree (`ipq5210-rdp504.=
dts`) is missing the `status =3D "okay";` property.
--

commit 0c64aa0eee90581723a1d1e649a4fc267a75331a
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

arm64: dts: qcom: ipq5210: Add QPIC SPI NAND controller support

This commit adds device tree nodes for QPIC SPI NAND flash controller suppo=
rt
on the ipq5210 SoC. It includes hardware ECC capabilities and DMA support
through BAM.

> diff --git a/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts b/arch/arm64/boo=
t/dts/qcom/ipq5210-rdp504.dts
> index 941f866ecfe95..4813662c2d6c8 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
> @@ -20,6 +20,25 @@ chosen {
>  	};
>  };
> =20
> +&qpic_bam {
> +	status =3D "okay";
> +};
> +
> +&qpic_nand {
> +	pinctrl-0 =3D <&qpic_snand_default_state>;
> +	pinctrl-names =3D "default";

Should this node include a status =3D "okay"; property?

The qpic_nand SPI controller is defined with status =3D "disabled"; by defa=
ult
in the dtsi file (shown below). Without overriding the status here, will the
controller and its attached SPI NAND flash be probed and instantiated by the
kernel?

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/ipq5210.dtsi b/arch/arm64/boot/dts/=
qcom/ipq5210.dtsi
> index 3761eb03ab246..7fd4291caff20 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5210.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5210.dtsi
[ ... ]
> @@ -204,6 +204,35 @@ sdhc: mmc@7804000 {
[ ... ]
> +		qpic_nand: spi@79b0000 {
> +			compatible =3D "qcom,ipq5210-snand", "qcom,ipq9574-snand";
> +			reg =3D <0x0 0x079b0000 0x0 0x10000>;
[ ... ]
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-ipq5210-na=
nd-v1-0-cbdd7492e826@oss.qualcomm.com?part=3D2

