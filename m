Return-Path: <devicetree+bounces-296776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBMoOhlaBGqjHAIAu9opvQ
	(envelope-from <devicetree+bounces-296776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:01:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B19531D38
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:01:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37FB63064D95
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7A23FBEB1;
	Wed, 13 May 2026 10:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="qHDFsmIE"
X-Original-To: devicetree@vger.kernel.org
Received: from outbound.ci.icloud.com (ci-2005a-snip4-7.eps.apple.com [57.103.89.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD653FA5CF
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 10:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.89.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778669908; cv=none; b=BtKQLPdTJw6LIqJKglrGlulWy+50DqObHMXOH0KRJBYISpPN6ZQ1fXQABW5wIkMnFkYSiraAJpN+vjHiQ6ryy5e6BG8zq/NE01VskDikaQguw4DrQz+Jn/KSX/10aRaLXTovHNeyGySj4O4O0R1Lyza9bReH17va27RpMQ4NYVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778669908; c=relaxed/simple;
	bh=a00goSFYLN1KeJDmbdueTRKkaugmHCyVIkRp0tDsmWI=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=D6zu+7B4I7l1vVO1VJqySTVyqVwgI/VRBKr9rZUynQcqVrOfvYkqqXejh0H6RqsCWlXTIX2KyZlbxXlrDtseV1Y7s5akn75W0v1zMWDRkI8ykoJOchyD6LZApK5Z4XC0Yc1bznMlSqEDwMyvuWGI2KgPCP1bjUBFySXTlwwEu1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=qHDFsmIE; arc=none smtp.client-ip=57.103.89.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
Received: from outbound.ci.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-central-1k-100-percent-9 (Postfix) with ESMTPS id 74A7A180011A;
	Wed, 13 May 2026 10:58:25 +0000 (UTC)
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQxWB1sZUgVeDkETCFNWVgVUGV0AUgNfFU0LUgBSH3IZWhRcGFNFUR9UWFUJCg9HHVgWXghfBlcEShleCEMrWxNVF0YJGQhdHRkKUFAGWxIYXBRcUFgeRhJWDV0JGQhbXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJClcESABIcS4HKR8xf0gCQANfA0AUQHBZckYFM3pNd15yXXRHDTpzBFQHXQVdVlACWlUSBEAIVlBeCF4fTBw=
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1778669906; x=1781261906; bh=p5Sy4NZgcFWQkJ2X16A5kCAi8/zGKNIHaU44WUUfQMg=; h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:To:x-icloud-hme; b=qHDFsmIEva3XdvX9SdSd+on2Olcm+5HmK8QTrLCheHzkd+UfIZepSa/qaAWHqDxpuLP9qa3y8EdsJpDOrKoHC5E6Gvk/OD75Ya0M1P3MhJ06cepi7hFOTkXOkaGVgYMaMAb8qnxQn762qTyKTGq7ogut6EYF7n8XDqVUXwNa6PrTMm8yjvNznSfuH1ZkJUPg+WCD3v57FxcSucMB/LY0jzQGry04MhWwkz0UB4E9cEiNSAaAM06CckN/pC5sloGZPGla0q6g17tLYDMXjmIWFlIUfa7kTjmBKDxCK1mGC7XrUDii6KzF2BfHFzwc8F8007OoOX/U0rxjhGEHLa+WnA==
Received: from smtpclient.apple (unknown [17.57.156.36])
	by p00-icloudmta-asmtp-us-central-1k-100-percent-9 (Postfix) with ESMTPSA id B487B180013C;
	Wed, 13 May 2026 10:58:24 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: "M.samet Duman" <dumanmehmetsamet@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] arm64: dts: allwinner: Cubie A5E: enable SPI flash
Date: Wed, 13 May 2026 13:58:11 +0300
Message-Id: <6890BC0B-AF01-4410-8C4E-7CC5D3E6F74B@icloud.com>
References: <20260511221741.25888-1-andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20260511221741.25888-1-andre.przywara@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
X-Mailer: iPhone Mail (23D8133)
X-Proofpoint-GUID: PMKYBr2ztb6BaLZxoPbiBEgBZ4OamHMl
X-Proofpoint-ORIG-GUID: PMKYBr2ztb6BaLZxoPbiBEgBZ4OamHMl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDExNSBTYWx0ZWRfX5U3ccK2LC3Ev
 MSeXIrn3La0NSg74XSp5Ydf/GwpWo9J5mW6e/YhBzxbiVp/sxVEI0VgELHDpBpzDUgNnkjBeYR3
 LSeitkymN8wgR/Ar5S3lMh43HUJcnOt6WkZbGVGW39U2l0kD3oeHYSqnykAEUG1PwNEiQZ1GM0W
 E7e/OCyGfAvKy4wQnQ0ZwGp+EZj5scHKBBd1ndGCc21up9oCvS1kgxpBYT+0BuQGtSpB2y7og+D
 GOMoIyHJLPEJPPi1k1HuD+l9a/v4y33bYfyt67kzyXSbHp1e6s6iIA+UycPB/ZuzPAHtQBbAghK
 Nl4Q1lh0fIA3tMEVB4zIZUesvPBr4pg7CPMep8DJxyKRlIc4WYFQcENyznbpFE=
X-Authority-Info-Out: v=2.4 cv=LtGfC3dc c=1 sm=1 tr=0 ts=6a045952
 cx=c_apl:c_pps:t_out a=2G65uMN5HjSv0sBfM2Yj2w==:117
 a=2G65uMN5HjSv0sBfM2Yj2w==:17 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=x7bEGLp0ZPQA:10 a=aRhIMoA-k8UA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=s4u_jej4Swd7WJnH03IA:9 a=QEXdDO2ut3YA:10
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Rspamd-Queue-Id: F0B19531D38
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[icloud.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[icloud.com:s=1a1hai];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[icloud.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-296776-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	APPLE_IOS_MAILER_COMMON(0.00)[];
	FREEMAIL_FROM(0.00)[icloud.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dumanmehmetsamet@icloud.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,arm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,icloud.com:mid,icloud.com:dkim]
X-Rspamd-Action: no action

Looks good.

--
Samet

> 2026. 5. 12. =EC=98=A4=EC=A0=84 2:46, Andre Przywara <andre.przywara@arm.c=
om> =EC=9E=91=EC=84=B1:
>=20
> =EF=BB=BFThe Cubie A5E board comes with 16MiB of SPI NOR flash.
>=20
> Enable the SPI0 DT node and describe the configuration.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
> .../boot/dts/allwinner/sun55i-a527-cubie-a5e.dts  | 15 +++++++++++++++
> 1 file changed, 15 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/arc=
h/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> index bfdf1728cd14b..7ad22fc85d1fd 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -344,6 +344,21 @@ &r_pio {
>    vcc-pm-supply =3D <&reg_aldo3>;
> };
>=20
> +&spi0  {
> +    pinctrl-names =3D "default";
> +    pinctrl-0 =3D <&spi0_pc_pins>, <&spi0_cs0_pc_pin>,
> +            <&spi0_hold_pc_pin>, <&spi0_wp_pc_pin>;
> +    status =3D "okay";
> +
> +    flash@0 {
> +        compatible =3D "winbond,w25q128", "jedec,spi-nor";
> +        reg =3D <0>;
> +        spi-max-frequency =3D <40000000>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +    };
> +};
> +
> &uart0 {
>    pinctrl-names =3D "default";
>    pinctrl-0 =3D <&uart0_pb_pins>;
> --
> 2.46.4
>=20
>=20

