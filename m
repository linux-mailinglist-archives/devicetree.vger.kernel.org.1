Return-Path: <devicetree+bounces-133380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 407669FA710
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A39531628D6
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC4261A256C;
	Sun, 22 Dec 2024 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="PKdI5nuE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE9A19B5B8
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887155; cv=none; b=OQRA26yswpa863nu0hxJq4ueYxRtDdU7ZjFju5YJPHRcEzNgO8QRtOi4ISaB+A/TKvecZ0ib2pzStMnedwlwUO4PPrizSf9ibZod84acieLiyJnTC5wLYdir7CgtemvIuJjVvwlk5Pil9B9CXAHAayiR4weK+O+x0XzhRm1ATk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887155; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=go5pXRcsuNWfRUzspD5TJzEMVIsvllM7J9N5uWSctGGHdueiaKCEzSGYhC4rZGYrwan7s3EmNengGJUK5GEPwCBPZ9hRSOVPpoWnpJ9j/Bde3AcNP88BRDV+Lhu6xSiiDlI2ArqzLHeUrAGeXeslYuPkp+SWOk1ZFZT6rEY50lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=PKdI5nuE; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9f1c590ecdso657042266b.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887152; x=1735491952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=PKdI5nuEQkQkS7zWNZ6Kvm9I6FFrioTZgsfn6Qhdhfh9HKtmiL0ncBIIsZESKh/wsB
         U/fuzsIQf1NAOoQzhNev+EzfppBFW1haPk1uO/qnjP/kcIXT+qEecK2tpB9Qj+y4R0MO
         t2+GWcbR+8KMO28mx26atlmYyNwbKUBAsZLPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887152; x=1735491952;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=CBgJ6h0YDIWxdQkieluS7kMJt+p/NsttZvc3sDwY3TsNascl679nipIYhRvtDcrcjJ
         rQmw7K+1iBWHebXbgNQNyQ/aSUHV14X2TUaWAaN/VKdFGJRk52itM55heiNXlY8Raq1Q
         S+QhL1BbcHG3bCVONGvBw5YmcdOPMlsGTpAvDgKGlbcUlK4fQuOwSrhKhREcOAdsR3Fj
         mK0w0fysGbToTsCciQc3XmjAq1CJSC1ICU3soqX1cuQvkRoi9U9GLNXc9YYDRNA/tCrc
         bQIdsvPSZtM/orVa6AOBzqf89oUOBpJY0ZZ3UY6CdaTBb8yl5Z7t/rMX7Xq2cI+BiKGx
         60FA==
X-Forwarded-Encrypted: i=1; AJvYcCVeONXTUyWyhcerl9dw3Pueg3xilePb7RFtrHMm4Aj5RB/Gmx4XmEVId0FRtuWcOHGuiE0p+PaMGLxf@vger.kernel.org
X-Gm-Message-State: AOJu0YwZGWRh3nKhsZtm2uz+VltCmvXfF2Wr/olvxQaqBTlzOPpqQ3aD
	Hgq8mzU6oTDr0FwGzW7tXRdaSuVqiiNhfC3ZZq9UQWSuP5hnDkzNVHtiTgFWCpw=
X-Gm-Gg: ASbGncsyd3h6p7+EY+d+rsw+Z9ipba7WobAxYZAQhNSmlpf29gkqky3dZnbfgyetiW8
	QjNyzGummZyMC6uzz2xDoQMpdPods82gE99y8XNqcXeO8YdrrcWxv4KK6k306kULo5QOR/k+8m2
	nRxx1iI/pTTbGXI8zt4jdiwVk4RdTqkE4EFOqx6cF7Wvd5v9xXdc1P/ryOo6cEHRcR8e7JJBSAG
	vvZgQv3nDFls7a3R3saaKxRQhnFoDjL4fuMLx3kj/Kw91mnGb6DXBVM4sGbVDecefKY+RryzvTj
	YkBau0yxpfjMtJCi1zs6dD8upKBrv4HtUb1rQux9q6TYkQ==
X-Google-Smtp-Source: AGHT+IHe6GuNdSRh18PC5HeAp0opqofzD4zpseD3AeO4DfZzjVRdMz+HjPJqAg5sE4NR302TdU0qlA==
X-Received: by 2002:a17:907:2d1e:b0:aa6:aedb:6030 with SMTP id a640c23a62f3a-aac33666079mr825550966b.52.1734887152318;
        Sun, 22 Dec 2024 09:05:52 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:52 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 08/18] arm64: dts: imx8mp: add anatop clocks
Date: Sun, 22 Dec 2024 18:04:23 +0100
Message-ID: <20241222170534.3621453-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


