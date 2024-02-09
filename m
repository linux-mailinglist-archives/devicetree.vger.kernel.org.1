Return-Path: <devicetree+bounces-40121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 446BF84F522
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 13:21:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D110FB20C72
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC21C4689;
	Fri,  9 Feb 2024 12:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="loQ9XQO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D51C31A94
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 12:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707481273; cv=none; b=PXXwvNMN0bPmuu08C3ONKCuF5TkLuNUBAwtE3gFZtUGYOlwpxxyk+eK2pSoLZ8l0n3B6PS0dm3DCck9LYmCrWJ+KyWjT+KaqqOeIO3QCAz9UPLlyH5BDN7CrwwFk3cqHO9vLcSPujlv9GipqbsKxAalmdfwU51yJWlUVmQu7+lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707481273; c=relaxed/simple;
	bh=Pga/r6bH9nx450XgDh7x1VdUI+JpCaMEBqkeUlEIIbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ICAoqTPDhB/VzolFCNVpE4G8zLMBSilxPEQsCKaQs+mu0WnulYH7Mb4N52VOeGrt68mkFO410ryaDOmWdfPUp+AlwGHzx3dyLPoetrT4TtTYVU3yJdBHdfKW0p6KTa/e0xZPeotYdEi6APecSjIX6n0d3tgnq7C9uTfKVIRWd/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=loQ9XQO1; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a389a3b9601so118800766b.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 04:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707481270; x=1708086070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvNxqPcB8dVHEz/XxpwlsWOre2HHNjBCeK7zMkb1kPo=;
        b=loQ9XQO1NBifUzBsElrAftjrhiIkH8vYecYIXo6m50GVmmJDaKB4w4VPrknYpKdDv5
         ejSC2tXizSZ9TMDYxPrVPi/qAaXovAKxVs1Il80B44EuCMKqZKj2Snqw5ycVifHWTcMT
         gZmO2NCf3gZtL5r5z60XjYRKoxCn26AjZLS3oZVIoQ16kJ/SATDY/HLAw3/zFEc4yAeD
         VW7XJIgAoW4p2hm5CcDJs3z2/xvPDk7+eENoHg6bPvaO0tvIx5fb7v2VcZa/LsaUpGtR
         jpWC4b1RhLX2bEKO/HBePUso0DlITOIoy/h3dKMxrsqQi474bJw1V9pRRw+38ycxapLn
         HCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707481270; x=1708086070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvNxqPcB8dVHEz/XxpwlsWOre2HHNjBCeK7zMkb1kPo=;
        b=kdvQAfA9WNW5DCoBFFzPxYzxfeAvp2mq8V0d52/s2Nu5hBWYBjMHMcFIBFvOPvvgVO
         JemQFr1RloKKiXEd7Yvcc3ygzgStrlYt05/3ojZHDPIgTP8IuPtJkRRlSsZzujj7S9cU
         PsCL330PhwmOpnAZLjSCOmnQTooCOtqFlXNkXjF4BeWjd5JEfQAh2ZNcFJ6j55jnvgD7
         Cx0Cgs6/zCTXjlny39YATcR+JwHYf52tMqiIAupenKPqxHjqvNEdZ67DQDDr9B3uKeja
         dekQcNIlrUw2Sk6nIfPWcUF3IdNn5nbgg2hJ+DRDiC9X8U8ZSbEFxh3z/pn+7R3iDZiz
         tx6Q==
X-Gm-Message-State: AOJu0Yx5CjH3VXMjjM6pCrsfs1+LBU70PTSOZs/aKzt+d/4LF4OfM8zs
	tCskDpwTA6+zmVX7r9Dc4nnl0Ege91AI6UpGGoepHWthaqxASYng
X-Google-Smtp-Source: AGHT+IEsqO5Z/bEf8Lu+/lGhqWCqCpcje6YtIfsNNbfkcamVTnICGjYN2h+pUyIFyZEcHe1xAtGj0w==
X-Received: by 2002:a17:907:764c:b0:a3b:c54b:5f65 with SMTP id kj12-20020a170907764c00b00a3bc54b5f65mr928511ejc.70.1707481270353;
        Fri, 09 Feb 2024 04:21:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXivyrCLacHlRuj7Sp0Dx3nYPXzt/1D8pekVDZ3Gm/TlsN21xNTfgLoKplBj/N4xhzw+8jrc7d0EJ/UZvsrNDxd+OBb9PY4K3poZUKFXwPEndzHOWQK6TfEZ1E5jwAyF95cWdk7wgEdMgQ87eUwcKp09iGxE2U6ds++2PH5Z7RTgGRvYWR6OLdf6K/v748jLHD3FvPmcLBNKERKLou31Wv+5AikH3rF6V06W3bVX02he0/tseLgnQwz2P6oe2j2NlZtMyqaOGmbbIOS7BHTlZYQLyYv4ROP/WfL1U2Fj6RaTLeMgcBc+Uxk9VuAATeX4fMffjYpyhUKhD38xFpyog==
Received: from jernej-laptop.localnet (APN-123-244-98-gprs.simobil.net. [46.123.244.98])
        by smtp.gmail.com with ESMTPSA id tz3-20020a170907c78300b00a3c019e8e4dsm221258ejc.76.2024.02.09.04.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 04:21:09 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nick Alilovic <nickalilovic@gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: allwinner: h616: Add 32K fanout pin
Date: Fri, 09 Feb 2024 13:21:07 +0100
Message-ID: <2716822.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20240209115759.3582869-2-andre.przywara@arm.com>
References:
 <20240209115759.3582869-1-andre.przywara@arm.com>
 <20240209115759.3582869-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:57:58 CET je Andre Przywara napisal(a):
> On some boards the designers saved on a 32KHz crystal for some external
> chips, so the SoC has to help out, with providing a 32 KHz clock signal.
> 
> Add a pinctrl group node to allow DT nodes to reference this fanout signal.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



