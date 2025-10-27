Return-Path: <devicetree+bounces-231696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF974C0FD0F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B18FE19C78F4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29CB731985C;
	Mon, 27 Oct 2025 17:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b5dMn04R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D703195E5
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761587926; cv=none; b=fbiRqPGbnoRPC5la8VgzYE/nFC7TYSBn5HdPEniXQ5v2WkDbZGUhul8bL0OIoKRmdpKBnckrIualXNxnel4fpiY36NP+V0A3Vgg4FEJuqI9PBGt0w91fHpOLLL+hSHkRTkBb50c6OI/wGdbcBezsYxUj8iuZ355ObPz9IzeiV8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761587926; c=relaxed/simple;
	bh=lrLZa5alrgHzC1J99K289oAUToN5br+ZIZn9l5DB14I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FDFTb9ICOYXwUvIpxYrZwC+wTmeFN5hKmS5wjwfZNfjGuMwA6/Nh36yGsozRVCohPHzSopZxognVaRVnNebXmDh0RmdYTrYXlaY9UCmsGlurI7xsepYROQTnCn72AzbGV1gNlIWLoEN6gGafZWlYgIF737a1/5Ji8NLjb1l5S7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b5dMn04R; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-421851bcb25so3077149f8f.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761587923; x=1762192723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrLZa5alrgHzC1J99K289oAUToN5br+ZIZn9l5DB14I=;
        b=b5dMn04RsBnItqzMCrb5hnhZy7S5RbR+b34HZ83ocRWHgAEC+41JFR/XB9gGdXfhOX
         AEy5dHe3CpmqPWYAgEgp0XIQeIxawt1YD8j9ObNaAUgkN3kj46zrjZFzuGKGz3Y/LxYd
         QiL6xQ/8/epQfyOZPzu/5eFO4BhrmoRE+nOqooYLV3lLQrJBMpedGZHDyGCF49BuTo+p
         xQhOmLbKmtWl9p/JnsxUHeO+NRKpI2GZvDsho5pqpVjW6X9OvTKtgA6dpYMO9OjnSiSL
         EW/edlUyJLao0lgmcVIoziB0HYEPyN75dIvuePvJPwahmVPokHxRYM3kj1dgB00w8wCS
         iwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761587923; x=1762192723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lrLZa5alrgHzC1J99K289oAUToN5br+ZIZn9l5DB14I=;
        b=vFu26Gp+dSM1FGHu1OQ+jatmOsv+O+uPOj/OtYK5HWBeYYvrGFPgIfJ45nkHwAzP3S
         DI8Ox29KfEdHeJatgTpH8XTkHytdLvL+SSh7L+KMQN8uHJhibYr6EzV5Ef1b/xqCRvwp
         q5hDNtkoX3xhSyMEu31oiMwq6m8XY9kESdOkniTHwHWtzD8Sw7YFJtfl7FOLuidVuLY5
         WRxBUfVfbolYRNxFKqQ7HayJqr0cerdrlGtuXI4us2Mn/EQso8e93G3WEZF6AbVQHhPy
         /bTvRcEF1rnvtUy01OAilqRHP/N/Wt+Uwiw6jUDPL4p44ma9LL7yb4sViF5u22JZcVL7
         TIzA==
X-Forwarded-Encrypted: i=1; AJvYcCWeNmNIdz7cdVCVstoUyxGtVzpglOqiexx2i8Mbqi/pyJiR2VMO86xhGP+6FKJvtPLaH1wqwBjPF84k@vger.kernel.org
X-Gm-Message-State: AOJu0YxECk4AnwgetJHb5I/n12JszV1slFBEsr6GDdc3bAX7oIPIGBw5
	MUQ7oNRgzpnnLNTRRZOHIZJ3+ciZh9XDBd/XRg4kdp/7CbzpaiuxULK1
X-Gm-Gg: ASbGncsZatfbZN3jjntdprJWJWGS4FNgkMfkcwqrRHwlUWkje1KJK28pHDCyuBGMJum
	Wqe1mQIC9GdL0BAuU5oA75WfwyyQWzonABB2TxNSm//2efSRlfsZ2d130jYHAo5HCXSlg8nijIh
	Opz632q1UIZaNg42hMITpbughaU1ifsYJEGOpRR4wZNbjOkPkECWFEpPlYV7OO3/5qfq2GFbLNX
	jsVao3kM6G0M+QgHTnQTI4dYXJo0foMvVdVbCdmit6kEJcFj3hDHG9RJh29AUKEE0ZCTQjTjODR
	xHNLJEd1Q2/JcJAjH7kcp7vlsxuLM0lWrmW5biBHNjsiPfRRIKqqSftOBsDHhH9APLszMVrG00G
	c2y2JywmkLtw3hl5pUvkZZeYJZS1hqgwpzZ8eTorNlehopYNrJi5xqqQHR7n/f5VTe4Kw8LiM57
	zHGGAC50ZffDpyh4V/Xfi19gXvX5Zz/hLmDykL6UGf/CEW95lRn6PbLgwp2LUXxtpsVkKj
X-Google-Smtp-Source: AGHT+IEEbY/WNAlAvL+pz8s7XDkjY8oak1WE3FbbRf2JSc/Ve9J9gkYo1nnN4xz8/yWauuSoOfnmDA==
X-Received: by 2002:a05:6000:2287:b0:401:5ad1:682 with SMTP id ffacd0b85a97d-429a7e59dbemr594649f8f.14.1761587922569;
        Mon, 27 Oct 2025 10:58:42 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df3c7sm15264123f8f.40.2025.10.27.10.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 10:58:42 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-sunxi@lists.linux.dev,
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 09/10] arm64: dts: allwinner: a523: Add SPDIF TX pin on PB and
 PI pins
Date: Mon, 27 Oct 2025 18:58:41 +0100
Message-ID: <4686611.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20251027125655.793277-10-wens@kernel.org>
References:
 <20251027125655.793277-1-wens@kernel.org>
 <20251027125655.793277-10-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 27. oktober 2025 ob 13:56:50 Srednjeevropski standardni =C4=
=8Das je Chen-Yu Tsai napisal(a):
> The SPDIF TX (called OWA OUT in the datasheet) is available on three
> pins. Of those, the PH pin is unlikely to be used since it conflicts
> with the first Ethernet controller.
>=20
> The Radxa Cubie A5E exposes SPDIF TX through the PI pin group on the
> 40-pin GPIO header.
>=20
> The Orange Pi 4A exposes SPDIF TX through both the PB and PI pin
> groups on the 40-pin GPIO header. The PB pin alternatively would be
> used for I2S0 though.
>=20
> Add pinmux settings for both options so potential users can directly
> reference either one.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



