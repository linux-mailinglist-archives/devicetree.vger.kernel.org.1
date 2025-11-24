Return-Path: <devicetree+bounces-241483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EBC7EF50
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1311D345BCB
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 04:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB952BDC0E;
	Mon, 24 Nov 2025 04:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="NfOkLKJ9"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638601C3C18;
	Mon, 24 Nov 2025 04:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959474; cv=none; b=skwfVqsoVLSEkIGap2WFIpzGCyGJ9OUqnamObL+CnHTNxTFQdzOOUfSMAx0+T/inGaEl0Tz2SDUP9F0XrR3NxSKQHIYtnBhkj+D5mr6+SqmEkkUk+6yy2o8hD9LKhdgoRU5DZFBy7wzh09+GvwS04wRSZ58aYblvFTR06tavYX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959474; c=relaxed/simple;
	bh=x6Zh4R/nvywPfi/LN7lgmRtQA65IY0P72GDbJ2h2Cdw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QgTE9i925/4dI4C3hiWsiP1UWw9tz0WNH9P4PViaMifygzHgQYif5L/cvqciPh7sAekkNWsqXQuQ+RdU+OZBf17VFeJtYgBLa9F42MGsxjMrrMEQQ3C0M51ji0jqYLrdwmz4q24dNMIL+5fQAhBZMhroxmqNNH+hskXvfpErEIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=NfOkLKJ9; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763959462;
	bh=ErEcB/qyD7QsiTGNF9CSiehZrNAUsr2NNSV13bbmFB8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=NfOkLKJ9+KaqsHnZz4BA472PHttN4fhTp0lzqpmLD3f2LiHNL0a8eBA7jU2bGuhve
	 77H0vsNtq3RC/SLBwwshj+HzzPieq17dlfn57Ddq0MOcxfAB6Fxf92PhUdXw3oi7y7
	 BOqrossQs9ah0Xgf4hCTzzDqZdu4S+ExzENq88OjAvmdeg1HVcBnQhFi/R62PVeDjw
	 I5whS1LNAETonXmmeheD+8nNmi+U+rpKDRpjf8KPpsiCv9sAoSMNACLnUhD0AWcd7D
	 qtvSKPGNkPEi9qT31pTBLbKv+B2kpbtLiSlzvXelDDVL+Cy30LhpNop+cxhOiJ61W+
	 pHKlgP20xTFfw==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 75BD97BE0E;
	Mon, 24 Nov 2025 12:44:21 +0800 (AWST)
Message-ID: <74b9c09cebac1de0e6e2e712a1374ab5294f61d8.camel@codeconstruct.com.au>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: yosemite5: Rename sgpio
 P0_I3C_APML_ALERT_L
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Date: Mon, 24 Nov 2025 15:14:21 +1030
In-Reply-To: <20251118-yv5_revise_dts-v1-3-fcd6b44b4497@gmail.com>
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
	 <20251118-yv5_revise_dts-v1-3-fcd6b44b4497@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-11-18 at 18:53 +0800, Kevin Tung wrote:
> Rename P0_I3C_APML_ALERT_L to FM_APML_CPU_ALERT_N for clarity.

Are user space components looking for these names? Will updating the
devicetree break older applications? I'd like to see more discussion of
these problems in the commit message.

Cheers,

Andrew

>=20
> Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 45b8ac2e8c65a4f672e64571631b7f6944f26213..060757b7211a6da777c51d9f0=
c886796cf2450a4 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -964,7 +964,7 @@ &sgpiom0 {
> =C2=A0	"FAULT_P3V3_NIC_N","",
> =C2=A0	"FAULT_P12V_NIC_N","",
> =C2=A0	"FAULT_P12V_SCM_N","",
> -	"P0_I3C_APML_ALERT_L","",
> +	"FM_APML_CPU_ALERT_N","",
> =C2=A0	"ALERT_INLET_TEMP_N","",
> =C2=A0	"FM_CPU_PROCHOT_R_N","",
> =C2=A0	"FM_CPU_THERMTRIP_N","",

