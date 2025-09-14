Return-Path: <devicetree+bounces-216889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19AB5670E
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 08:26:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 495174214C0
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 06:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD9526A0AD;
	Sun, 14 Sep 2025 06:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HYQf7AAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5971F9F51
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757831202; cv=none; b=GW87cVfShdWWXj+Rd0epUCfECVkYsb11yzPFGjwQ9FcdSo6m51TV3p5z7kiPnrjDjPzd4ad+d+jnt7OG8zaQwftQg9jTYbbQOzvLIney/ut4WDWDl3fw5S+ojXnoq2ktt4OmveeF9Zn2oQaDmZ52FlKTIqcfypxwxZ5fDFVC590=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757831202; c=relaxed/simple;
	bh=YpuAcY5BhVGhX+vCzPkKqiO0eWSE/MtMicMqARPCFKg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z5dbeELaRAAWiu1sO1B55SUYZ1lScOyf4qSZIrBelDIL/f2Jknu7JoVWsMinV46GUjTySs9EDxVRiieHKaTOJW0afWX09MSbbiuJBnIihi3jOt/8nALkliAe8zerUOGHD3o7Ny3+uo49/1RBe6mPyaPTB9JBgPQuPEr0o+X7ybI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HYQf7AAb; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b07dac96d1eso220344166b.1
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 23:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757831198; x=1758435998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YpuAcY5BhVGhX+vCzPkKqiO0eWSE/MtMicMqARPCFKg=;
        b=HYQf7AAb2VdLSAhRPfFCkuW+fJDww4LE9zGBUOVdhsQ+H2ZXNPygNMgKhwFEt0ImVC
         9eJ9eqQ/rfCY7D8arV3l2b+bVbGxl8mpiA8ranw9ZLY57gXJgCtuszfRgv+DbhwyJS/2
         yib3Iozuvd0a5QoovnYo0CgS4v9fW928pAZmReDZEVWPXw1WzcCeUhvBnIP9JkfsgTLm
         rrgP73e+oBTs+7WWujv+ATL6eAIfzBTCMHdIk6vGKXydV1jzj5tanw3NR1Up3nrd7C0Q
         Via2Q5H8xxsUuWkoArjNQb0uyL/ifxJIiCFcfjV/DYGgE4vxLtauhnsrh52gdiYMRoQi
         5XBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757831198; x=1758435998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YpuAcY5BhVGhX+vCzPkKqiO0eWSE/MtMicMqARPCFKg=;
        b=LOO917bYwstoxekE+ithhmM1doQWrCjS/hIgFkCBL6bXf7NnpNH+Dgn2J0HvoAQ3Hx
         Y/MtZ1uQnQqlWohdvpzfY8opAgpQ270QfOIXhRY87NNYf3cCgSbs0BdpY5uc8mYr6BsU
         U2JpmCa3bs9Gm2P2yJqpM1XvVj+Tlh3rkOewubNP3g8hzsQ6T+MrGShCL5CGQMIVpFs8
         GrpE5wh9IPpktnptPDWZ59/rFph18/PAiuzschg34eeMxgtI1DMhZNLrfKKt8cbo4MKd
         qNWG+i/mU8ZPMGF0hyPn3mBrYtR99ywVU1GP25AyVgYqXJgUZmelgN6B9fTMTuq2yKMz
         VxFg==
X-Forwarded-Encrypted: i=1; AJvYcCXTMUy/DS/7B2e9MNzsv8TpDTfWs5Q9rPb3UIn3Kq7gx/uwh5XCcu0gIsMIaW94HI93BntZ/1OtICig@vger.kernel.org
X-Gm-Message-State: AOJu0YxwvEG2CVTDa5x6NWEZav6poYLxiVGqA8FODIY8CWCiNCurQi2Y
	4IlSNcae6HCqBDYZO1ab1JTSP9KjR85bcjDjIe7Xq+PNatL01npVsuFo
X-Gm-Gg: ASbGncsswLyxLfrpW439TbCeHYo61ENAGeoSpt7USa2aBxJDxRatvkk+vjolovOXpEk
	HRCyktVtBP/8w3Lj7aHgYn3ar4zK8ZX/t669AXd/+/3uqCCuWlmi0v6h/RyzvqVtvVV5ADxMqmO
	FkXyeub7kktCpmmbSCdFOoaCOi23yVZYop9ahsONXi7yw0+h8LISDMUbtjJYi46EbZzIFCZKBtL
	JEVvDaiKunuCYUXInIatZJTb9YohngkO8zZM3243UGZ7i8RExkbbKLqz3FGmSM38OmtIHiG1z3B
	88fqmphPE6IR7GyONns2HXYxqznwicaMM4KzlsUwkLMioKjkVfh/3X/dDcLIuVKDVRH/SWayZh2
	wl+lvNQX4GFp0yDwCHA/uH2RsKdcaHU9m3fbQohqQEmjH1DFjs+FhFkk=
X-Google-Smtp-Source: AGHT+IFgeECwBC/iiy6U4djD4RbKGuu6VUzMWKgjTe6SxUwypL1QszvVkCmMnx5qTasPZMrBF3ONRQ==
X-Received: by 2002:a17:907:7f94:b0:ae1:a69c:ea76 with SMTP id a640c23a62f3a-b07a68b646amr1170055866b.23.1757831198374;
        Sat, 13 Sep 2025 23:26:38 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da427sm699505566b.7.2025.09.13.23.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 23:26:37 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: allwinner: sun55i: Complete AXP717A sub-functions
Date: Sun, 14 Sep 2025 08:26:36 +0200
Message-ID: <2235173.irdbgypaU6@jernej-laptop>
In-Reply-To: <20250913173511.4064176-1-wens@kernel.org>
References: <20250913173511.4064176-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne sobota, 13. september 2025 ob 19:35:11 Srednjeevropski poletni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> When the AXP717A PMIC is missing nodes for the sub-functions, the kernel
> complains about not found nodes.
>=20
> Add all the remaining nodes corresponding to the defined functions for
> the dev boards, which have publicly available schematics to base this
> change on. The battery charger on all of them are disabled. Also add
> an "iio-hwmon" node to express some of the ADC channels as hwmon
> sensors.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



