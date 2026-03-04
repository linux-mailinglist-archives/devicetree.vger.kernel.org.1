Return-Path: <devicetree+bounces-271214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YI4DCQN+qGluvAAAu9opvQ
	(envelope-from <devicetree+bounces-271214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:46:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 23860206966
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:46:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3E4A33061055
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F323D75A1;
	Wed,  4 Mar 2026 18:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="YZG1wEEY"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021E2265629
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772649492; cv=none; b=Mvw8TRu3vcIjQaxRZGLYgTO3zifwStUSPVighImTP+cXMlcSJYHGUw2uFOx51z4moX30dFHGW5JXZ1Sm8BIwunuEMo634kNc64j23Exoc8wE5W8c4AZASnAKsrPWqGx2/8M44mjuWf8F5MCBCToNcfZZCDMsO7WNujuP97iIxwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772649492; c=relaxed/simple;
	bh=8YtifF/pcOhUFwK1Njg8DTFGbivnD668GivlZ4Qjcu4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=edYnnBHt8Xu/BPKe+kWfXFqubqMy0DwkrHUjvXsqxyQJSbAlU/95se7wtQqJdw0BjVEoWxc9i527bxuUu27vhExgEzyOHHuS0Vq45ceqpRvI7gyb6GUGCBqol9DHrZXsr49ED3TZBo2vYhRs5F/khDXN+rgq5zTHHUSBHTiBUzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=YZG1wEEY; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1772649485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NfY2kXCUHHtHIbcGOoAHRgzyuErTZbqiG1z4V5950IY=;
	b=YZG1wEEYVUF5+0ocmTUfXGVXA5oB/lK5ZWwcUsx41JHqqaNmCohlDPhDNyxMUy6KmOctWh
	qknC1NH0ITC1ABnI6rMhSties4AvN1cxJKG2kIBqshS5/pgPMOOEDKPP21jJ862TJH4ot9
	SFQqkWIxHezOPy8Zx4YSHszbsxf10liguBULWlfhyf+kUjaxKwFNq555eFA0mZ718fd+07
	fCu+82dEM1JBRJtAfLi+V/tZAizk/DrCcPDYkuOF526f7T+NrC7OVeiLLSSgxYl0s2WfYM
	JiHNq3Dqn9ikUVVfmYnWjVNvSgRHmWvBCt+XPxMUMSj2qno1/LRsxFIcJFF6Ow==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 04 Mar 2026 19:38:02 +0100
Message-Id: <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Pedro Alves" <pta2002@pta2002.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
In-Reply-To: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 23860206966
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271214-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pta2002.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,cknow-tech.com:dkim,cknow-tech.com:mid]
X-Rspamd-Action: no action

On Wed Mar 4, 2026 at 2:54 PM CET, Pedro Alves wrote:
> The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
> the Rock 5B, but this was not reflected in its DTS.
>
> Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
> and hdmi_receiver_cma nodes.
>
> One of the existing pinctrl labels, hdmirx_det, was renamed into
> hdmirx_hpd to match the other boards. The _det name seems to have come
> from the downstream kernel sources, where the other boards also have
> that name. Changing it to hdmirx_hpd in order to be consistent with the
> other rk3588 boards in the kernel.

I have a strong suspicion that it was named 'hdmirx_det' because in the
schema its label is 'HDMIIRX_DET_L' where the extra 'I' was probably
dropped as that seems to be a spelling issue and the '_L' suffix is
quite often dropped.

FWIW: The label in the schematic for Rock 5B, Rock 5B+, Rock 5T and Rock
5 ITX+ are all 'HDMIIRX_DET_L', yet none of them follow the convention
to use the label from the schematics.

So now the 'problem' is indeed: make it consistent with the other boards
or keep the one where the convention was followed.

Cheers,
  Diederik

> The configurations were confirmed to be identical on the downstream
> Radxa kernel, and this has been tested to work on a Rock 5 ITX board
> running kernel 6.19.3.
>
> Signed-off-by: Pedro Alves <pta2002@pta2002.com>
> ---
> Tested with the following commands:
>
> v4l2-ctl --verbose -d /dev/video4 \
>   --set-fmt-video=3Dwidth=3D3840,height=3D2160,pixelformat=3D'BGR3' \
>   --stream-mmap=3D4 --stream-skip=3D3 --stream-count=3D20 \
>   --stream-to=3Dhdmiin.raw --stream-poll
>
> ffmpeg -f rawvideo -vcodec rawvideo -s 3840x2160 -r 30 -pix_fmt bgr24 \
>   -i hdmiin.raw output.mp4
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/ar=
m64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index 172aeabba72a..9f4f31d1ca94 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -349,6 +349,18 @@ &hdmi1_sound {
>  	status =3D "okay";
>  };
> =20
> +&hdmi_receiver_cma {
> +	status =3D "okay";
> +};
> +
> +&hdmi_receiver {
> +	pinctrl-0 =3D <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_r=
x_sda &hdmirx_hpd>;
> +	pinctrl-names =3D "default";
> +
> +	hpd-gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> +	status =3D "okay";
> +};
> +
>  &hdptxphy1 {
>  	status =3D "okay";
>  };
> @@ -746,7 +758,7 @@ vbus5v0_typec_en: vbus5v0-typec-en {
>  	};
> =20
>  	hdmirx {
> -		hdmirx_det: hdmirx-det {
> +		hdmirx_hpd: hdmirx-5v-detection {
>  			rockchip,pins =3D <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
>
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
>
> Best regards,


