Return-Path: <devicetree+bounces-197080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FC5B080A3
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 00:47:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72DE417CA8B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 22:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057C42EE967;
	Wed, 16 Jul 2025 22:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SasYj44G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAFD2EF2B9
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 22:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752705999; cv=none; b=qpgNoJgkgkAujy0kqMeCIH4BFshk/E84Ep4RryWmVo52Vz2q/w07UzCxv+mBPhln2e3mJ7etwG2jvLTN7bNc0UQS+N3lJOavLZF0K/hingAtc+RfEMMqBJcLCbhQ7REA1Mk3PfSwNXW8AJXAduMiuNgV6YtmrqBMJq7b5U2JocQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752705999; c=relaxed/simple;
	bh=S7zflZfckkjVA+Sb60lAmOii8syH0HQaukr1eAjN8hY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cEqJWk6WNMEglIStIrrniO1DuAziXibUIbdS/zST7xsZ2mWJUaRRaHg6rckjfBHCyqNJAHFWqSb4N6m67kcj3PWYE/6Q3ggyy7+XKIsHiTkakC19M/f9bAlPbAg3Rd4jpOK4/p6xWPdgig63X4gm+pvsLUgpmOfBvomonUx/PYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SasYj44G; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-40a4de1753fso243772b6e.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752705997; x=1753310797; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0u/YC913AnORCbk7RT9GNyXowu0h11qkd01RjAkHwZc=;
        b=SasYj44G6ucWOtkBvOKXR95q+BDzlwXUZ8B9KNL3DVYQPcm6YAfU7dopq1Ali7BE53
         meIQSJ3IhpPv3xWVUUTjG1DPKReyHysXHt1xg5UN+cDU7PXIrXdxUImPW5Myber11Xtx
         NTh4UzrKOj8iXOW3QwhJlzfEOG3vlgWCnO5UxsoyjiXNFhxJC/mg2e0m7+G1iKG0egCu
         3o420XCy28Dfmu7e/BIbmOWwDHWde7wcKh+01fiAAK3RQEZ7A83YfSh31WbGSaeOGLVg
         bdK7588P2QHXYX7AgGaOEq7W4EyXsgmbeaC0yu5hmy1K/ZzhIgHfnZlGrFe84/545Tsc
         frxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752705997; x=1753310797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0u/YC913AnORCbk7RT9GNyXowu0h11qkd01RjAkHwZc=;
        b=prTH1BwT3nZ700uaCeeap4ukLCG97FIWW4qDCrhgvWkCEZRZUwgNvdHG5879R11YAQ
         Hcp4ViYAILiEz0fQrtr6qKo6XxLk/CRCNz9lbB719sYAjEyH74bteH6SPOPSNKPcmZg9
         nIeHAvkw4FGOG8Z9UKfMEpMYeekjIXtaeS30AhPXfQI0L5USylznNijfwDBN6joCdCFf
         u4Sdx+mu+UYf8/70QVAU0iMzrunsQZsHVdebxLre7xwslaSWgNd/sMEY0G3KSxcl2nEk
         olbpk2yBZmJtKVGfwFUDdhNnrH0kkV1kzWfWkG1Tsz7zolRjFYADrCY53P5luOyMF+D/
         Q8Eg==
X-Forwarded-Encrypted: i=1; AJvYcCVGXcvcIqsK9Y4bYdvKhYXGyOlwqqKplVVfPXPgCJuRVAr+1Em9JLLf6tpkc63y5LZLCC49bmG/Hh5r@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo7/y+kZnvMCwRxsp3q/DgCE2A6+foQyddByJiJVseJJ+FJlaX
	FmeY6LrmfAW82OrcQlvzwO2ejbIUI44GgQO+Fh684xGTKgguT9jkBFTlHBJL+/JB+aw=
X-Gm-Gg: ASbGncvShXzE1bnnh7UdXBQ5qTn4yfPVXc9GTltTQcZFubxTLmUmQjFGFKLlwwOo0nO
	Fj+fGixflHuTx2vjAQtBBemAYBQsK/UDeYy23ZuE2p8eHu2Hg5NKxYzH5OLk4b6goQS/2U2d4Sq
	vdIiHrZw5SeeP5iAdnLp3nrVzdJ6H2YYqhMydem83weceb3yZO1H9d6sJqspMQ1Q43Y/W2nL0C5
	qqYzJJaKmSg4LXW0o0SStA/OSUj9DwDCqPV34d2TU5+yVB/cq/82HFw72TgHRETpHBEdUFcri9z
	ddIcSuJ78ZJLwoz/kIPHMHHjIL20/35J0G0sELUco/TNEVA3CNdUX3Hjc/v17Bl5MjnHdVg7taw
	O9GQz2If/VIsejUbzBFAPb9jOzCOxlQ==
X-Google-Smtp-Source: AGHT+IHW7jvGVN1nZDNV19D23iLay5SH3FruLv6n11izEuEkrlyk9Tea64PpmwgpUO6OAQQLBc1AXA==
X-Received: by 2002:a05:6808:50ab:b0:41b:2876:a93b with SMTP id 5614622812f47-41e26d2426dmr821249b6e.6.1752705997476;
        Wed, 16 Jul 2025 15:46:37 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:3f28:4161:2162:7ea2])
        by smtp.gmail.com with UTF8SMTPSA id 5614622812f47-41dcf3be2a7sm466494b6e.23.2025.07.16.15.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 15:46:37 -0700 (PDT)
Date: Wed, 16 Jul 2025 17:46:35 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: s32g2: Re-order usbmisc device tree section
Message-ID: <14d3cfde-57bd-452e-afa6-8a468281e5e7@sabinyo.mountain>
References: <cover.1752703107.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1752703107.git.dan.carpenter@linaro.org>

The compatible line is supposed to be first.

Reported-by: Xu Yang <xu.yang_2@nxp.com>
Closes: https://lore.kernel.org/all/u7glt7mn33lbdeskbr4ily6tjjifvffy64llwpi5b2rrhx5tnv@y2h2y3oz3xc4/
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 089f54415571..6f700085dec2 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -424,8 +424,8 @@ spi2: spi@401dc000 {
 		};
 
 		usbmisc: usbmisc@44064200 {
-			#index-cells = <1>;
 			compatible = "nxp,s32g2-usbmisc";
+			#index-cells = <1>;
 			reg = <0x44064200 0x200>;
 		};
 
-- 
2.47.2


