Return-Path: <devicetree+bounces-223448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBFCBB4FF2
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 21:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5EF1326078
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 19:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEBA283146;
	Thu,  2 Oct 2025 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="kPAF5kcB"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B6F2367B5
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 19:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759433193; cv=none; b=JSJOG9J1kbpOazFpannQiZ2hLvFbvcvPkxWXtJzRLRN+4jYh+g83XPeLjIUTZuoxmy9c20cbTLkVl2iPnFw27WZnK0njq3or/JIe5jRx5BaOiwWu176/YaTAw+Qu/bh5rpOMgrmO5+VSabd3LUXqkc2uJQ/m1Sd1yXjTPgoAZbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759433193; c=relaxed/simple;
	bh=sF6m7Kz/PItRSwhbUbxo0QBnQFFNFeFAB2lZhTsKydI=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=lj1YBf5q5qwy6FeCSBxlCwpHtNiblTofuufJmLrWXdY1OXK52CYUFJFQ21TU8k3NcFK5nB88pR/2NAknEeHuMwUQClOGPlJb4aDyEGBVmXu6lVE+qipbkJ/M+dKbgyGT3K9xacYEEjWns4jA6BxAOqOpnXwZ4debJvn25CJ8sDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=kPAF5kcB; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1759433179;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K4sPjDAwiOapYwAjhtANPQek3u9Zjdz92H9jh7Cwyh4=;
	b=kPAF5kcB61C8BKqglZaikUlUk43vhdt+PPB95LWWmDjPlCucvdSH7AzHEyYR/9byIaGY2k
	lJ1dxP0KYpCKaD6N+11aReG8B3xB/J2TZsTKVioUlTRd9MTPhfnYrH4hglCmmUkaM5t+Gy
	mCEn9nYbmXXaO8RqHvOpxhhXZt3D/2agdQYGoY3DF0PSN77LDbT/0tGkJgh0a44n6G4095
	3oJUk8gKYyPEkgCgUKzhNWLYZJ9tJidVMYThU1egGRA9J3wqyoLpVIIxMU+xxos+9xlSDc
	qord78gBMt2T8D5fd8qmPeOt3/3lQR19W1/3KfobiJZ0FC/3+lBUxdAj1oWbSw==
Date: Thu, 02 Oct 2025 19:26:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <ad721948b83a54eaa34f367e12564fe6acc222a1@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v3 07/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <7661d9d9-eca3-4708-8162-960df0d7f6c7@oss.qualcomm.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-7-b14cf9e9a928@postmarketos.org>
 <f58493a9-6def-4610-9c3e-d6a877dc23d3@oss.qualcomm.com>
 <d38801bc77ad00442b1669ea252ae30a5c6af5b4@postmarketos.org>
 <7661d9d9-eca3-4708-8162-960df0d7f6c7@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT

October 2, 2025 at 9:37 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.c=
om mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20%3C=
konrad.dybcio%40oss.qualcomm.com%3E > wrote:


>=20
>=20On 10/2/25 6:51 AM, Paul Sajna wrote:
>=20
>=20>=20
>=20> October 1, 2025 at 9:14 AM, "Konrad Dybcio" <konrad.dybcio@oss.qual=
comm.com mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22=
%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote
> >=20=20
>=20>=20=20
>=20>=20
>=20> >=20
>=20> > As the dt-checker points out, there is no such property
> > >=20
>=20> >  If your wi-fi works regardless of that, you probably don't need
> > >  to set the one you intended to
> > >=20
>=20> >  Konrad
> > >=20
>=20>=20=20
>=20>  Perhaps this only exists in the postmarketos tree, but it definite=
ly exists, and doesn't work without it. I'll remove it for upstreaming fo=
r now but hopefully someone sorts that out. upstream.
> >=20
>=20So you didn't test the tree you sent? :/
>=20
>=20fwiw
>=20
>=20drivers/net/wireless/ath/ath10k/snoc.c:
>  qcom,snoc-host-cap-8bit-quirk
>=20
>=20Konrad
>

I think I'll probably just drop this until a bunch of other stuff is upst=
reamed. mdss is totally broken on mainline, wi-fi doesn't work, fuel gaug=
e is missing, etc. etc.

I tried the 8-bit quirk and it didn't help.

