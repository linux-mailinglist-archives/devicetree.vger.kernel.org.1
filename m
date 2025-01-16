Return-Path: <devicetree+bounces-138951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1C3A135C6
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EB9B167727
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 08:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1007E196C7C;
	Thu, 16 Jan 2025 08:46:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689061CAA8A
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 08:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737017184; cv=none; b=MCAGwCwqYUhRLzicJAqjuUP2Bn1AL9EXkJjuVEdgRNlpddl4qhU82SPgiQBewzbzGKqcDYgobcLpqqy6aolybtcfSnhrchBbqzdv5tpyqsLHWhOlxvYVzFDjvHNgY7wgDgKJT8rsHjoRgY4rgagr1YY7IWj9VYdT+1hjZICR7NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737017184; c=relaxed/simple;
	bh=SMS/WYXiS7wO6WMGkTraT9DMv2PEnR5eKZ+KSZvlOEs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DJYReYBdyItyI/5ex58j0Kl2GFf35aPE7PW140JxvM/ugGQVj/AcST/bmrGRXTmbEEXFCp++UMaxEVJ2H7QOALoHJEGwnDYl1ZUAU/vuwwNitlD1B4wiPi6tQBWX9FsGD0MpWACvDm0XCCrMVbcmnnWQGN980VxmJd/IVI9KNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tYLVo-0002fo-Ts; Thu, 16 Jan 2025 09:46:00 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tYLVn-000DtB-0F;
	Thu, 16 Jan 2025 09:45:59 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tYLVm-00029Z-3C;
	Thu, 16 Jan 2025 09:45:58 +0100
Message-ID: <9ea186e39afb4584f12758d2fa6a26a0b12389ec.camel@pengutronix.de>
Subject: Re: [PATCH 5/7] phy: qcom: Add M31 based eUSB2 PHY driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
  Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,  Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Bjorn Andersson
 <andersson@kernel.org>,  Konrad Dybcio <konradybcio@kernel.org>, Satya
 Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni
 <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 16 Jan 2025 09:45:58 +0100
In-Reply-To: <20250113-sm8750_usb_master-v1-5-09afe1dc2524@quicinc.com>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
	 <20250113-sm8750_usb_master-v1-5-09afe1dc2524@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mo, 2025-01-13 at 13:52 -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
>=20
> On SM8750, the eUSB2 PHY used is M31 based. Add the initialization
> sequences to bring it out of reset, and to initialize the associated eUSB=
2
> repeater as well.
>=20
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  12 +-
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 269 ++++++++++++++++++++++++=
++++++
>  3 files changed, 281 insertions(+), 1 deletion(-)
>=20
[...]
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qual=
comm/phy-qcom-m31-eusb2.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..e15529673e358db914936a60f=
a605c872cd2511a
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -0,0 +1,269 @@
[...]
> +static int m31eusb2_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	const struct m31_eusb2_priv_data *data;
> +	struct device *dev =3D &pdev->dev;
> +	struct m31eusb2_phy *phy;
> +
> +	phy =3D devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	data =3D of_device_get_match_data(dev);
> +	if (IS_ERR(data))
> +		return -EINVAL;
> +	phy->data =3D data;
> +
> +	phy->base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(phy->base))
> +		return PTR_ERR(phy->base);
> +
> +	phy->reset =3D devm_reset_control_get_exclusive_by_index(dev, 0);

The dt-bindings only specify a single reset, so there is no need to
request by index. Just use
	phy->reset =3D devm_reset_control_get_exclusive(dev, NULL);

regards
Philipp

