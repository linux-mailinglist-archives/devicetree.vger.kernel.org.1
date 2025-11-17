Return-Path: <devicetree+bounces-239543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AF8C6655E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:49:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B9B9A4EFAFA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE4031A55A;
	Mon, 17 Nov 2025 21:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nGHdZN5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5627328B4FE
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 21:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416088; cv=none; b=SW/0Ebv4HycA6/194uDdh8CC6WgMskSPspg6An8w8NjRq4+fa0AKq1STMJjVDWwGIw01QAhTZedgoJQ0QlBim0mxuLRcW88c6u8526B1gPibb4lUt3Rc7Lzc86qCz/TSPUJrYiDpDkxHjjIXPh8pRtKGAoUbEz4PIAaHv6q0ECQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416088; c=relaxed/simple;
	bh=N7yoy676EeqVZ/62XxJvvSdA1uNBBUMaKv2tP/KofSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vwbvaxphu3GgpIikNGvsTiKWu9G2WKThHsU342BP05Ss9qWQEtGkipVQEDEFj1BjanqEo/+Pg3FigD8U0p3JQ/LH9cRZdK6+a5isB3y88V5W43rkHN5fJ7VZwx5zY0KkYoQurCU9UnlVNDoTC5Fxxr+mI2OAhGbO/+m1fIXNHNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nGHdZN5I; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-657523b5db0so264131eaf.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416086; x=1764020886; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x6y/eRSxQiwoKH2ttdAfQIDdA/0Ls/cq+YnfjCvj2Xo=;
        b=nGHdZN5IBLk4HMO+DiHZtjA3H6wipDaNX7uglki4xuk8ZxzOsTie97AsvtT7Ym0wJB
         Z6iNcJp8+wLD5D8tmJ5UGPjjRKT+/huW65JQBw5UnhX3D8HMIy2CniH/RA8K3LhfvCZL
         x5rfFMhsmuoC0DmjivzyIHBANp1ZfAtD9YelKv6y39j6/f3nNk2W08P9iwrBcxxjVgw+
         RVkON5SjMnmBlUUYvN4sfpVg4GZZnwb+ZVV3Dt9FB6191nuh+ctIL90WDDdfE63M21r2
         lO3Hv8zx0zXObLm218m3Yh/OIfJaDnEd2qX4PcvomTD5RPiYC76W+Cy5ZLvko9kQjZxy
         J08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416086; x=1764020886;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6y/eRSxQiwoKH2ttdAfQIDdA/0Ls/cq+YnfjCvj2Xo=;
        b=FjfdzoQQcyHRdRtNQCC2R5P/ngJgwed/eZShbI2/nahEQCdzIii+l6W9u6pL5ULDlr
         KO3+UbByur3C4VeaKBFznTie56tgQdq3+z/UbGuc4vZSSoo2FjtOPKRs6kRmAVlM1xMn
         /3+OPlIRFWC0e1PmBVmt3McWUXmhTIz82g3JBXzZpRGSGXClBsScKScT2mf187io9imj
         bFbZ6n9rNZrImQgoplhVcGiGw0zZUTgVX1F9tMIXZ8KnbxQAERR4GvX2z1NbJ5kqBxzx
         rqAp98EzkObxapEd0jcuB2qA1lJqAfA97enTueDpCZmnCqzqITJA9+N/nQ7l/gang9IV
         MQwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHuAX66kve+RHiSkdZRhbewTUhoUuCzw8ODzac0ADmU6MIuMmyXMervG0kErKE3guqD5psp7ydxuhf@vger.kernel.org
X-Gm-Message-State: AOJu0YxcvbW0qw4x3A5TeIIf06Kva+82FQarwlJ4xu3ZxCGB2E9dVuE0
	GO0/ztkWXmlUxak5qbHf9ErKglb6SAwmyMXlWaJ6VJJHrZMMbovK7Sqq
X-Gm-Gg: ASbGncvynAP/mg28k4+M1DPnlZ8pc2hfxjynHungz+jVQREhJP3TdONH7TojNOadTLR
	cF3ksIPwdZ0/mKML+CwUJ9XFrzQ46LUtXDhH0ZzkqRV4StbmxY+EwlKfOCIublxXDoavVOCu4C9
	lx4s55LA7ve0/K2sJD8ZzdXbumAq4hQ3LyEzKDdFhQrsQY0gc2f/Uoz/CsrNJRyFnonLiPMTaX+
	p4KV7ASnag803LI/nYSvhdI8GU7kypJWMmqPpMZ2hzF4GHH6suK8Tju3p6ZrU/7KgCTN6YVNXoY
	wJNCNKb4gMHA5Hc1DnwWOKAiyQBKVgrSVfQA2OXXOK4q7NheOACkeWtXySAE0vypQ0mTwJAIbX9
	XLsA1roTOf4vcW2BX85c5hPLCYfpufAMav7pMW2P65SGU91czcxYrJiWNr/MpI9xsznxIv9vwdg
	==
X-Google-Smtp-Source: AGHT+IHrk3F7EjTrY16q42KIOsJoZ7DxS7LCW9UgjNx+oGF51fraAPigETXdAfIQtidOQRWCmx4LQA==
X-Received: by 2002:a05:6808:80ac:b0:450:d1e8:6f5d with SMTP id 5614622812f47-450d1e881a4mr2055837b6e.5.1763416086240;
        Mon, 17 Nov 2025 13:48:06 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm5938805a34.4.2025.11.17.13.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:48:05 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:59 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: remove redundant max-link-speed
 from nanopi-r4s
Message-ID: <6694456a735844177c897581f785cc00c064c7d1.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>

This is already the default in rk3399-base.dtsi, remove redundant
declaration from rk3399-nanopi-r4s.dtsi.

Fixes: db792e9adbf8 ("rockchip: rk3399: Add support for FriendlyARM NanoPi R4S")
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 8d94d9f91a5c..3a9a10f531bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -71,7 +71,6 @@ &i2c4 {
 };
 
 &pcie0 {
-	max-link-speed = <1>;
 	num-lanes = <1>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 };
-- 
2.49.0


