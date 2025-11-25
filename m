Return-Path: <devicetree+bounces-241840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F246AC83555
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 05:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2C854E1CDA
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 04:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8AC284B4F;
	Tue, 25 Nov 2025 04:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="aeaHTLQM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EBB284B29
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764044997; cv=none; b=bpIKJKwfXn4ufIEErgdqMDotsFUkR3t7uNO+B5pGpGgJeETb1PFF4OU7PmViu86aJKqt7NsO2MfjZwTW7Jbqm/dQ57PSwx7PPHi3EqGzSjdek40QqMcHEzWdbk0pvI9k92X7Qyj3bPRM04+9BbmALN+nROofvEFEKVRKD2jRCcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764044997; c=relaxed/simple;
	bh=C9pqnEyxVdnb+oaWWg/FIVYjEE7BffN70m+FUW/Psv0=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=rHblm4GDE0sOrF0eRL3oMUR0KNMfvfSq5FW1S6syTsutHHHeWAqPhCQTmY+tUXu/6WuLTzwFOS9xKCd1xq3SYsMjjiocyBZxv4C0JTeGULcXzoNr04itN48VSz+VoWEQNE0gZXfr1ayoGp8DpKprp72QsNbZM3WWbwyswjZstXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=aeaHTLQM; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764044983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C9pqnEyxVdnb+oaWWg/FIVYjEE7BffN70m+FUW/Psv0=;
	b=aeaHTLQMUO9DQKWvAgtCUEivv9HOPLtbcz9ELKnSAwuz+xHiMRkcC6FBc9pirCw8Aq7CWQ
	E6Hb8sBg1B/wxd5tU5LDjItZrKBKd+3jZEQkPQx/LuZG2cAvteKGe4xJImCwjnnZ07HBlq
	bSRd+b/a5EmDgMC9yUtk+Z2Q+WXL+GAqjhqh7IMacCdx4KVK7AbCFuJcDoOntR2IcKoJkB
	j85+Rs9qhLlrJe0/nkhoLzj9+54F4gPnKKUKNZS/pOpLJwOfukOGNmCTKgfL08EQ5k9FiE
	yxJR02uFnUqc19YGePURYUSPxd7VOFrBirh0cBzpmaHMXi3IaQ+qRCGHVvb5VQ==
Date: Tue, 25 Nov 2025 04:29:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <c95cc75a560d5773c298537f6078949d32d22007@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, "Amir Dahan"
 <system64fumo@protonmail.com>, "Christopher Brown"
 <crispybrown@gmail.com>
In-Reply-To: <68a07e54-9f0e-4938-803b-64d6f0c31e5e@oss.qualcomm.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
 <68a07e54-9f0e-4938-803b-64d6f0c31e5e@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT

October 1, 2025 at 9:11 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.c=
om mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20%3C=
konrad.dybcio%40oss.qualcomm.com%3E > wrote:


>=20
>=20On 9/29/25 7:05 AM, Paul Sajna wrote:
>=20
>=20>=20
>=20> This lets modem get a bit closer to working
> >=20
>=20What prevents it from working? Does it crash? Has rmtfs started?
> Does `rmtfs -vP` print any warnings?
>=20
>=20Konrad
>

<msg> [modem0] state changed (unknown -> locked)
<wrn> [modem0] modem couldn't be initialized: Couldn't check unlock statu=
s: Couldn't get SIM lock status after 30 retries
<msg> [modem0] state changed (locked -> failed)
<wrn> [modem0] couldn't load SUPL server: Failed to receive indication wi=
th the current server settings
<wrn> [modem0] couldn't load supported assistance data types: Failed to r=
eceive indication with the predicted orbits data source
<wrn> [modem0] couldn't build device ids: Unknown device subsystem
<wrn> [device qcom-soc] error initializing: Modem in failed state: sim-mi=
ssing

