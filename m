Return-Path: <devicetree+bounces-220425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A49F4B95EB3
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 393037AA3C6
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 12:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2322A31FEC3;
	Tue, 23 Sep 2025 13:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="tzLIuP0y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A91DA60D
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 13:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632424; cv=none; b=rkASIuvgB0LnUz6gtqf/ImzBQY+sApKsUNHxyiE+ehyokSpaCFGgVYe9TDXTa7I1zqshCj2QdpTAJD4SZit/DaYsP8mNGuAuiH5GXBi5Db3tpU77FEiSjAEr0MpIiybpgUMQBHeukeJDv7jTOUfp/HaXac22IPl5YGfU2vawMgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632424; c=relaxed/simple;
	bh=vy+E1zYorab2a2XzZaWSJSTfgNU9c2BkfDyhamaFdNs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=W10HXRqsngWbtaMJlmxkN91OgTO4uEZpBkmmKFpp0+dYSoCJzfjYWzrDuqSvEXTNqa5pHvWZTWbUNKzUK4CqBVXlTsxS42yZq8Dqi3sIEzN+Eits2LD9V7Xf24a9+ei1qN9oBZnCuUZUYqB5R7q6dKPFEuUHOyrS1y+ifGWX52M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=tzLIuP0y; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afcb78ead12so841528166b.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 06:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758632420; x=1759237220; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jQgMsYwYsxfq6lp2ULuttB6hJRdnd9uyWFcrhi5sA4=;
        b=tzLIuP0ytWEKt28m+XgNKc3A38n1kYglPDYpLPKQ9pf3nF2bth1ydLw7MKzk1XCPHP
         88V9fU2Aa/9Q8j4ya8cbO+uwwnT1qsToam7ZlXsPujzjSyGWj0Zp8hX9Vsf17dSs7i80
         v94pugzz43u4mdrhFVA65m0SpvgIVzU8gVTOT/1YyUOuyUQzrc1DI9g5w/c2OPb0Xjz+
         ewS8OYNry6V19co0fcnvGVh3Cg3Z/0yS3mnQRpmB+Slfr1QlD1WNOEl/6+bdxXHL6VZN
         QCHeNpiLfmYrDTYGJWiFNTBOm59xu8czIzBPkYEXW4UOBi+MdpRksHUkG8OZlxs98Kmy
         7Oqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758632420; x=1759237220;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2jQgMsYwYsxfq6lp2ULuttB6hJRdnd9uyWFcrhi5sA4=;
        b=TSibu1FL1i9t32KFUAfkk+CWyEy9oI5GwjG7Jgvy3rWUCuMAHMIgv2m16CYvYHm5cM
         adE1SOU36qde0ULgxDc06iO0Cht4dc2Eneh3k9YAhKulPHEloXUg/mJIub86O92lsUsE
         kLkkqUQ12ebaRV9R93ZhfPHPibdks51g4WWicPRBZbvVkhbMTWH3hecCp54/5CbBGJ5E
         j0bF5YWhhomBvGCGT2Wk3gd/LgTRqkaLwAoUW/XHyLdD2DnFqomA3l3lv45g5gr1Wqh3
         ntgvTKOzgBTmnHBxH1mn/RQsgaD70w2bMERt0l1J99K3UxyzzGULO8LPgnzbVZJIzidd
         gxGA==
X-Forwarded-Encrypted: i=1; AJvYcCUmuBNFhIumHEDqKaAwPlfH0uj+9ZQlNjKYwkLZfOhqW7z2stzFSdC1VHM4uo5nxdvmsmpfh5WJ/mrl@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyz5DPeFB0DDq/X8unFtcUHirpCmkBAuIVfoK2PjQSxYLZyS2d
	vJ5CF7HmZ2QizXaNwLGBtmmFpJiUzTQz5nQS9Iqn06xFcRVY9nt2IoOw4dXTpKJVkpAYUKqDvkZ
	xUCBZ0fMBZQ==
X-Gm-Gg: ASbGncuSvUimWUnpPyB9A4oTSqYFS2YqAFvLQxhknVlYbMas4AAIt9FA6OzZXf51G9h
	BEfc7EMNKjmy6uAX2dzbsCdiKfeymBOrlZspDeHaNyozmQeGNDAlxe+UFEXz9rdXfkDKxml515L
	FSHrg6VrHqE+RLhEA26vF0/TNg5TYIEokak4XvnBWbn7c8WbI4hMbTIzLT1bI4BizDG41kCcyJU
	v2wBpVOhlLcPR8moyntceWGxo/qiSkpmavle5xZyfA5gL+PFaVNv3T6HFV/Sqlsniq+gutK2RWf
	2lA2RPfVQ3978cP2qNW7ZVLjjpuQRh3YYepmj1dU8JSir4R7Q8FXqUFjICqYv2IRjJSKQ3hks1I
	FR2A84tyGTPegBbk9lu8w7wr4fSybUPcsLDKGCEl9d9N5BqraYtKwEOrNioQr0Db1w3E2
X-Google-Smtp-Source: AGHT+IGD3NrE0KKZ/8qWAbi1hdO1vb3x/gJtMsj6xAGGJGo8t9h8hbseK2tTsAYUn9WPQe0nC385bA==
X-Received: by 2002:a17:906:6a1e:b0:b2b:f498:e2f7 with SMTP id a640c23a62f3a-b302b80a6f0mr239870866b.47.1758632420275;
        Tue, 23 Sep 2025 06:00:20 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b264fc79404sm978329866b.10.2025.09.23.06.00.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 06:00:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 23 Sep 2025 15:00:19 +0200
Message-Id: <DD075WC7A6KR.NJJA1Q4WAJUZ@fairphone.com>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: rename dtsi files for sm6150,
 x1e80100 and qcs8300
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
In-Reply-To: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>

On Tue Sep 23, 2025 at 1:01 PM CEST, Dmitry Baryshkov wrote:
> Bjorn said to me that he disliked the conseqeuences of renaming
> qcs615.dtsi to sm6150.dtsi. Let's increase entropy even more and rename
> even more base DTSI files.
>
> Leaving jokes aside. It's not uncommon to see different names for the
> same SoC (or almost same SoC, with no visible differences from the Linux
> side). The platform now known as 'lemans' is a good example, because it
> had been using SA8775P, QCS9100 and QCS9075 in different contexts for
> slightly different modifications. QCS8300 / QCS8275 is another example.
> All such names cause a lot of confusion when somebody tries to follow
> the actual SoC used by the platform.
>
> For 'lemans' after a lot of trial, error, Naks and reviews we've settled
> upon having 'lemans.dtsi', the core DT file for the platform and then
> naming individual DT files following the marketing name for the platform
> or for the SoC.
>
> Apply the same approach to several other platforms, renaming the base
> DTSI and keeping the DT names as is.

If we're doing this already, sc7280 -> kodiak? That also covers sc7280,
qc{m,s}6490 & 5430 and sm7325.

Also, does this mean that milos-based Fairphone 6 the dtsi should be
milos.dtsi while dts should be sm7635-fairphone-fp6? The latest patch
series uses milos-fairphone-fp6.dts.

Regards
Luca

>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Dmitry Baryshkov (3):
>       arm64: dts: qcom: rename qcs8300 to monaco
>       arm64: dts: qcom: rename x1e80100 to hamoa
>       arm64: dts: qcom: rename sm6150 to talos
>
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi                        | 4 +=
+--
>  arch/arm64/boot/dts/qcom/{x1e80100-pmics.dtsi =3D> hamoa-pmics.dtsi} | 0
>  arch/arm64/boot/dts/qcom/{x1e80100.dtsi =3D> hamoa.dtsi}             | 0
>  arch/arm64/boot/dts/qcom/monaco-evk.dts                            | 4 +=
+--
>  arch/arm64/boot/dts/qcom/{qcs8300-pmics.dtsi =3D> monaco-pmics.dtsi} | 0
>  arch/arm64/boot/dts/qcom/{qcs8300.dtsi =3D> monaco.dtsi}             | 0
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts                           | 2 +=
-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts                          | 4 +=
+--
>  arch/arm64/boot/dts/qcom/{sm6150.dtsi =3D> talos.dtsi}               | 0
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi                  | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi                               | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi                        | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                       | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi        | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts            | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts             | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                          | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts   | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts           | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts              | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts              | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts           | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi           | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                          | 4 +=
+--
>  arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts              | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts          | 2 +=
-
>  arch/arm64/boot/dts/qcom/x1p42100.dtsi                             | 4 +=
+--
>  27 files changed, 34 insertions(+), 34 deletions(-)
> ---
> base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
> change-id: 20250923-rename-dts-5d74d6132f40
>
> Best regards,


