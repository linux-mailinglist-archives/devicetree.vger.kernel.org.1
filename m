Return-Path: <devicetree+bounces-223640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D43BB917A
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 22:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69CDB3A1879
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 20:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812B11EBFE0;
	Sat,  4 Oct 2025 20:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="iYbMn4o2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ADA217648
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 20:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759608015; cv=none; b=ZSnlDdIb9W+lzDdGymBYWNzWj5+sXLueseNSAzv/q1xK31V541iKcwMVR7wMuBYi4t8FDeXDMVwlQbZy9rYCy4GE+FqhxR1fk0E2LSVVAwXI4uH4Mio4zrh0R/FQlszu6bO/xe2nE14gxuFWrO/CYmMafT0W4us6D7H8XZ4ea1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759608015; c=relaxed/simple;
	bh=MAAATEzUG/gnyFxR4G/qPSO1lh1Qm5uC32oRTnBeWCk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IshWwyjQGEkWlY0TRJyhj36iZ/gi0CJNHbdbhdfCQ7C0CmpTxQ4GGDo14pjCP6F/urspkp6QUNgC0l4p2jQZ6eVpMcR4LAclKLLa60XNMWZtp5o8o+xr3MRGwE+Txhvirtdk9u4E/S00IZriH0EyYmtxZhTs5uNaJRAvQuIfpmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=iYbMn4o2; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-271067d66fbso33687645ad.3
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 13:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759608013; x=1760212813; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAAATEzUG/gnyFxR4G/qPSO1lh1Qm5uC32oRTnBeWCk=;
        b=iYbMn4o2nrhsUiHcXndAhn3D5rveHqQazkRi1tKZemwh96gcAChFRegaQ4ODyBdoAU
         FaZlbEJNooja+uRDrY3LFPEKzdl9yOVXmF/egYQ14GdIC25e/ZZW+0x31+0sTGAy3quM
         PSwiiX8C0ZZaSiqC4zepuP3WecWv70RHH7fp2Exjt5yZYy4qHy4oqN9X8+WBgAXf49zm
         fJ+swr4WXn3Bto6yfZT8YKQhQnnBt/WgpgEp/vzibK39weL7L3b4kxb3bL04IvYjSFQ6
         Nq90EfJLsq3gJlZ9zZCj2zT6RepbQ6jpc2gWtdMtk+6jHEHseU/7X+IY2W2dJWIXJs0/
         6KbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759608013; x=1760212813;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MAAATEzUG/gnyFxR4G/qPSO1lh1Qm5uC32oRTnBeWCk=;
        b=BA5z4PEtUjGwUvNmdx6K7OoWgVCKsHb2flf7YYg+02iTvcVTaJweaf+vHq4HhNMBwY
         P6WVemxiWu2FDhDnYqYKJK1okhOI+kz4WlzV3uOyZrJaMun4IeatxgmgcJGj9JO8lwbn
         ciHZ+jUEC0ax5/0CHIxbpyXKBMsLQLkn84NDf6C+apSf6xAZHFlijzdSK/PZ623oKHto
         3KMVjyA5oSu56IjT1J+3yWJ6Yumi3EKrBIccjqu/nvN3UKTO6HUOYd8DO0hsTdcrpTt6
         faC0vn10xWUKjsLVLISPDk621W8XBUNnPO7wzp1nCB5Qc/C+GZN/l1/GYWNsy1iNC3qD
         RlTw==
X-Forwarded-Encrypted: i=1; AJvYcCVhRf4hG1+BDNBp8SHLDrFVyflsHiHY0eQqgwtVyWqnTwS1vGam2IDsbvmCj+3t/sbFp0FxZMyq3i4J@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi2nX1q7x3GJmmhM9c3DyLUxbgX48Pqd4a1Q+Xs3SqCjOp0ZwF
	wVKi4ITWVp61FD9WHYlO18brMsYw8vuhyzb1qJ19ch4Q3ku96Y+7D6C3DJE2y0mowttJzE06gcV
	3lnbGU+aHx27CNyhGUPOZW353+WdNmJ4=
X-Gm-Gg: ASbGncvX8XJ9oNL7bDivkPIcrSc8t5xyHlXYJHGXdZLl0HdoaIY3E0IFYRWYIWFhCiN
	Ui/Qx21eRJAkZwPbKXJv1uFTPgXtw+jB1YkGEEISIxpP9sxwVSzhO2Jp/LAn9bGoWnxPbLKkrqx
	NpuNphP4nhxv8aL9w6xWotew9x7rksYoleOANbbwcBvWuK0lzUFCapSOP9Kt6MOm3/nEflOHLOK
	i+9uuBZ8fjN2AxxX0AadtUYXmONhlq6J1Cw+1se/Xd1Pq8MUUVq0OWapqNbwF9gWVdL3++xoUFp
	XZE1PB57mQ==
X-Google-Smtp-Source: AGHT+IFiDzVT+2dmKCxs79HazquRaVoEKj9U/SHZ9ROcZSGxvoksUVUV31FTbP+B8I3rHTQWDxtOGVKUAq/NVn1bvko=
X-Received: by 2002:a17:903:1aa8:b0:272:a900:c42e with SMTP id
 d9443c01a7336-28e9a693ea9mr80467765ad.35.1759608013223; Sat, 04 Oct 2025
 13:00:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250927125006.824293-1-christianshewitt@gmail.com> <20250927125006.824293-2-christianshewitt@gmail.com>
In-Reply-To: <20250927125006.824293-2-christianshewitt@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 4 Oct 2025 22:00:02 +0200
X-Gm-Features: AS18NWBM_Q13VsV8nrfsb2laKCZ_aAXl7OeFBFEiWoHsvMuxISq6Y9mZ9LHfpAE
Message-ID: <CAFBinCBeN-wjn-LBpgX9N_evzF1gL0nU8DPk5GSC28_s+tX+AA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: meson: add initial device-tree for Tanix
 TX9 Pro
To: Christian Hewitt <christianshewitt@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 27, 2025 at 2:50=E2=80=AFPM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> Oranth Tanix TX9 Pro is based on the Amlogic Q200 reference design with
> an S912 chip and the following specs:
>
> - 3GB DDR3 RAM
> - 32GB eMMC
> - 10/100/1000 Base-T Ethernet
> - AP6356 Wireless (802.11 b/g/n/ac, BT 5.0)
> - HDMI 2.0a video
> - VFD for clock/status
> - 2x USB 2.0 ports
> - IR receiver
> - 1x Power LED (white)
> - 1x Update/Reset button (underside)
> - 1x micro SD card slot
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
> Checkpatch generates the 'phy-mode "rgmii" without comment'
> warning but this dts is using the same rgmii format as all
> other Amlogic boards, so I have omitted a comment.
So far we've been mimicking the vendor kernel (which sets up the MAC
to generate the delays and disables them on PHY level).
If we change it we should do so for all devices.


Best regards,
Martin

