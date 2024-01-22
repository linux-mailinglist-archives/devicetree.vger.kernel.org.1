Return-Path: <devicetree+bounces-33770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD92836469
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDBF7282F89
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586B83C6AB;
	Mon, 22 Jan 2024 13:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="I1Hboj50"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9811B3CF5F
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705929930; cv=none; b=DDIzN6ArNQdyaakETJOVWEBL/l5MVLSQAnORIutRFnvsB86GSAVx1gP0IdI7M/Bec+YOPF7YEfP06qOFsrHfReeWx2PFYYRr/HqjjGso6FCK5jdkhEccTMmhk+2wva7vEF7JCLY1Z69s7kVaBTgZi26gssJfsKYeH+hz/zMWBsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705929930; c=relaxed/simple;
	bh=8/ysmW7ZNCwST64C+OGZnecZkpP9Ivshlxnv2xaANtk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rQIZaX5liPeJnn5yOcyZPU9F1brwf2N3OV2Pk3haU6OM8h+i0h7fDkvTqCUjnXxiaFXw6BIXnPe8jcR7KVXCmD67bi/8luMkyUlrVDxqla1dvULluRznRph4HqRGFFV2/Xwjqwx1e5e3a/CIWpjwGhtbpTf9oRdA3VyQ2h1TCvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=I1Hboj50; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EE6F240C67
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1705929919;
	bh=YH8oe3j90TqC6EUcRLoZewEzXWg7T54K4/yaoqW2dG8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=I1Hboj50NBVRf/Ancb9KRXF956ETQXZNPO0JDlxxHjjusimU1dMIAgUOaTGi7rbeU
	 yyhdvSFpTwGzqujEl7EgXZHXdbjMHXD+8mBBZ8wqG1W2v5f4hTsRpeU0/neapPH+RH
	 MGpDYU6mYa0w2wPUhVfhvi+qRN8WhNSd2k92BUYLwNxeYiJVneY7cCY6WVIOcVcnQE
	 lVQn37VFP2UkwONCD+YdOMJG2GK3P2blXQsek+wOALpDSxKfwQr4JWIpmL7X4zn2s2
	 vlo1/qIkR3GNrVoOjSr+9VYznTgtSWFJFvt1IZCChGbi9mPBATyBSlaQan77hRnWAa
	 9z3m1+udseGWw==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-429d0905823so58408261cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:25:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705929919; x=1706534719;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YH8oe3j90TqC6EUcRLoZewEzXWg7T54K4/yaoqW2dG8=;
        b=TCNrGMvJr/TMLsfbMsAqoSPXMRRVNWdyQNjAD7sUT2w5bhp/ml8Em47S/CTGO8QrF7
         HbSOG965IKUI5IjPtCyJUEl1Xs+X0H6xjxbbloZxGKnP6zqcpV/PLEUWDFE1Ld++asOZ
         7mLXFF1RCU7YUEm/477d/aUmvXTAT6kZExhn9pdYbNiYp+PApaEm/w1ZdpXZ8RS6dgi3
         YklwG6xOestcZ211G3SDx7I5ZQsy1NktFGXTuknmcO6WikO+e+5EEQUmw8d2/1ObhZMa
         hI4NII/qRafViL0LddxPXM/yw5g1y3iitvmwPOlVWFEtT/cyKEOKKcL7RRtv8dwm9+qG
         PMZQ==
X-Gm-Message-State: AOJu0Yxe+CxlCgR6jLvYEz+CnzaehXvOgU83RdRaOABeFapw+ncxPfv/
	N6SP2IxVUM/wY8DK/2/TjYciCm2KJEtj8GpxdGinsA6pl2Zmo+zVQhEF6Dc+kVH39ANAouf3q0P
	X+cBOHkW9Qvspc5lWnLTRNtrr8uwunOIXicDruWypWbl3NjuV1bDye/2nym5yRIICt0lrAw+vik
	r2FCXecwKSkNptyeaoWHptowJANIZSuiriDTJOPPHMW8wK4KfHgA==
X-Received: by 2002:a05:622a:303:b0:42a:49e4:b37 with SMTP id q3-20020a05622a030300b0042a49e40b37mr119057qtw.3.1705929918830;
        Mon, 22 Jan 2024 05:25:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7+muAaQtx9j7uChxp/TBkqVQgMiOi15ISY7W8przRxn8y+BBacZEXgLJg7UZEG/dbFasUGtdYFB6HCnf8ULY=
X-Received: by 2002:a05:622a:303:b0:42a:49e4:b37 with SMTP id
 q3-20020a05622a030300b0042a49e40b37mr119041qtw.3.1705929918598; Mon, 22 Jan
 2024 05:25:18 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Jan 2024 05:25:18 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240122080631.2880-2-qiujingbao.dlmu@gmail.com>
References: <20240122080631.2880-1-qiujingbao.dlmu@gmail.com> <20240122080631.2880-2-qiujingbao.dlmu@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 22 Jan 2024 05:25:18 -0800
Message-ID: <CAJM55Z_DFox9c_eDeHtx9H+9e4A6pjkCkt7po94j_mu-tQWywg@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] riscv: dts: sophgo: add rtc dt node for CV1800
To: Jingbao Qiu <qiujingbao.dlmu@gmail.com>, alexandre.belloni@bootlin.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	chao.wei@sophgo.com, unicorn_wang@outlook.com, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	dlan@gentoo.org
Content-Type: text/plain; charset="UTF-8"

Jingbao Qiu wrote:
> Add the rtc device tree node to cv1800 SoC.
>
> Signed-off-by: Jingbao Qiu <qiujingbao.dlmu@gmail.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index df40e87ee063..0cd7eb9a3048 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -119,5 +119,12 @@ clint: timer@74000000 {
>  			reg = <0x74000000 0x10000>;
>  			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
>  		};
> +
> +		rtc: rtc@5025000 {
> +			compatible = "sophgo,cv1800-rtc";
> +			reg = <0x5025000 0x2000>;
> +			interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&osc>;
> +		};

Before this patch it looks like the nodes are sorted by their address,
but this would break it.

>  	};
>  };
> --
> 2.43.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

