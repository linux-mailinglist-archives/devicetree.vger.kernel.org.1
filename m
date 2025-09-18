Return-Path: <devicetree+bounces-218632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3BCB82951
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C1141C25C2C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 01:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87B92405E3;
	Thu, 18 Sep 2025 01:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="DvpAhKU3"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5253F222565
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 01:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758160306; cv=none; b=KPOSDj85e/Dt6iR/CJWsN6MEIOVAdAPRrxPghheMuDby1Ow0DfISvVpQCDfcdRzL4vqHoiMUoOD5xRluz9MjXs6QegPdnPXoRF/r+uAdLej+emgBlCS3hT5bs3yTpBZHIBFwCHMoA2ZKrZYrdgxEDjhuVP5Jdwj6e2PWWr133E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758160306; c=relaxed/simple;
	bh=/YmUV2sypcNQdYDyKJ1P+jvAk6RTrHmrsA7cEeYXgCg=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=bFZhBMoA3diRObM/OSNgDS3+LyytcWc04JQa6qslCGe5U/cvmvuke1fnIXBtlo1WGNAXicZrjZ+dLfc9RtiLmiuqDosVrgsaZQ8alaLaa53r3aZu7M4EM9PfscrMtSdA33kWPKRTroE8wz6P1nvzTNaMyfF2Iz1ulRqS+LGgrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=DvpAhKU3; arc=none smtp.client-ip=95.215.58.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1758160302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7qLJML/vJ0/w116tlFotbMpzF++4OBFQ5xNQrHJLoxU=;
	b=DvpAhKU3S/LUvVv6QGUNco5tbHIg6SEtTVHKWzmcrznbZTOjqTZMwx6AGJUHm1i1ACqVgp
	ucXCs16g06HG+37vKwsMaH0EjiE6ccskg2JZi7PR4tzjxLJt93FGKIqvWzi0ga/zOZT8a4
	QtvKqUOFAkC+/7glBBpxypUoNUCdfjNoGmrz4s6kwFAMtU/tL3u9ZM3tVN6iERb86TBCha
	uS/MOREXjDy9t7eUV3fuARn2STtEa9CziJ/MRxpKq160KRMpUc1XxI6xmRtq9nVo0BNC/+
	MQQZ/8pAnbAy/RYa1G0tU5oa3Cqt96/1GgVQBAM3+vkntIZ7VtlAvPEcJx0E3Q==
Date: Thu, 18 Sep 2025 01:51:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <e06a6f1e2b69bb7e00218a2cbe08a5d23fba5a20@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v2 05/13] arm64: dts: qcom: sdm845-lg-judyln: Add display
 panel
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <6145be40-3b2b-4554-9d5e-c1f9fab0363b@oss.qualcomm.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-5-5e16e60263af@postmarketos.org>
 <6145be40-3b2b-4554-9d5e-c1f9fab0363b@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT

September 17, 2025 at 1:50 PM, "Konrad Dybcio" <konrad.dybcio@oss.qualcom=
m.com mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20=
%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:

> The vendor kernel (for Sony phones at least) does pull-down on both
> active and sleep, making them the same
>=20
>=20Konrad
>=20
>=20>=20
>=20> + };
> >  +
> >  + sde_te_sleep: sde-te-sleep-state {
> >  + pins =3D "gpio10";
> >  + function =3D "mdp_vsync";
> >  + drive-strength =3D <2>;
> >  + bias-pull-down;
> >  + };
> >  };
> >=20=20
>=20>  &uart6 {
> >
>

https://github.com/LineageOS/android_kernel_lge_sdm845/blob/lineage-22.2/=
arch/arm64/boot/dts/lge/sdm845-judy/sdm845-judy_common/sdm845-judy_common=
-pinctrl.dtsi#L109-L148

