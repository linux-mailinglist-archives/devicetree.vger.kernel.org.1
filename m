Return-Path: <devicetree+bounces-243566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EFBC99FE1
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 05:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A180E3A3A43
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 04:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05C72F532F;
	Tue,  2 Dec 2025 04:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="e2S3pqLk"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACDC176ADE
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 04:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764649316; cv=none; b=IygW4WTh2hS1YaJ/owWSJLR6BW2r9UxuBExCK5kzRF3mnXagagQR1TYzmhi5tu0FqTBrHVLNgAX8WkrF16tHLMFu5Tnl6EgjrUL6Lxbl7J8w2d0MuuiX230kgSQ5kMBvVL/yWO2dRyhrY4KvXCUh4O+uvkjteo2SUe5ucByYrA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764649316; c=relaxed/simple;
	bh=H7JiUbr0grbD/OuMUxd8lM1sXrcva3VeiRYfJNqlcBo=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=ogJ5uxn9PxY1f6zkY40qdNMxxzR07HmlHupmYCVGXik0W08BQ4/MZTf0wrQpnTfSVXIOBnBmlnxGj5TN1OjrhE3JroQjGFy1WRzUopMzw/4knJMLT1IiJSABwEkXlhR4byaiwrx3FDswFO6XpVpx5OSKE3NIspvLV9hcqniyVRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=e2S3pqLk; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764649302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H7JiUbr0grbD/OuMUxd8lM1sXrcva3VeiRYfJNqlcBo=;
	b=e2S3pqLkqd4uKG23Rjeb08tGQKrixyD/ymVYVpV0f1bv8zLEbAyl0jkW4hHyDVz9RYVkXE
	uDF/Ls9BZ97bDRzrwZHeAXuShHmcI5TWvfn70+15fvKl5032vIIISIkgGt4NqAi1C+HDed
	JxuYXKrw2wVK90VYHIC81nr2A5LZbUKRycJysSTi2U4/udmzv3KbXWBqskxR13CgutCtAl
	Q90HTiO3wgcmBgv9jP/06C/Z0ZcM7DkrX33+eGcSj9ru+Wy8BMf22D8TX07JhSIvJUbL8A
	vciHByRY+CdyFl4l0jYjhKmKGoivV4LKOWts/0C2qf4xItUSXhdu3ZzePDmGFw==
Date: Tue, 02 Dec 2025 04:21:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <cb37445326732dc1c17e80d245c8a29ba3f5aee6@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v4 10/12] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <09e5d84c-39b7-45a9-b7d7-9beb54fb2f3f@oss.qualcomm.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-10-a5a60500b267@postmarketos.org>
 <09e5d84c-39b7-45a9-b7d7-9beb54fb2f3f@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT

December 1, 2025 at 12:38 PM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm=
.com mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20%=
3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:

> Sorry for not responding earlier, you can retrieve the actual volt
> numbers from the hardware by reading
>=20
>=20PMI8998_IBB_REG_BASE + REG_LABIBB_VOLTAGE =3D 0xdc41
>=20
>=20ibb_uV =3D 1.4 + .1 * val
>=20
>=20PMI8998_LAB_REG_BASE + REG_LABIBB_VOLTAGE =3D 0xde41
>=20
>=20lab_uV =3D 4.6 + .1 * val
>=20
>=20Konrad
>

I found it in sysfs along the lines of your previous suggestion instead.

```
1|judyln:/ # cat /sys/kernel/debug/regulator/c440000.qcom,spmi:qcom,pmi89=
98@3:qpnp-labibb-regulator-ibb_reg/voltage
5500000
judyln:/ # cat /sys/kernel/debug/regulator/c440000.qcom,spmi:qcom,pmi8998=
@3:qpnp-labibb-regulator-lab_reg/voltage
5500000
```

