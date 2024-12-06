Return-Path: <devicetree+bounces-128050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7059E74F0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF6C928180E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6FB207670;
	Fri,  6 Dec 2024 15:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="QhOry9qg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732581FCCFB
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733500547; cv=none; b=mpmAuKKulAuSPORoCyPayW7aGo30s/ZlRCHD+8ygaAGkArmS/TfXKaz7iG1Ba26xLDAYMqMgMiQvC2ci7dG85WOk32Ju2drk7g9QfMD3ou9GHuPdJuWrHtOcIgvFojyn45f8iTKa7RN1ucwWtuk+SXqMNAX5ZymWhSX2nxUhlDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733500547; c=relaxed/simple;
	bh=1yO6WKMg7Reae+Xm/8d6dxOzkvnym7CeZdHFGZWhpNY=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=mTt8w9SPMd67wppKnqac5YYaHtQwzDgYzoyWYlTP3cjpgB0E2P6wZxrRDUi1jakHmlwQOXevEmDc9bqchlvMBuVbmf3nM1UmH85tI6t3ejHm9fvxa8DBTw49+6aKBuanDkeUdlMtaLLod8Lnx4l+cydihVaLBfutbJHW+Kg0M28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=QhOry9qg; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385de59c1a0so1499447f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1733500544; x=1734105344; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CfETEog9kNwm+ZEaU4iUILsAuYULWf3mToje1NA0XUs=;
        b=QhOry9qgOlNRdlW+MykgpdjdeSYk4BTQ9q4iXxQ5lcycMTITZ0T7ATYJ2UL91aLfah
         4k9Kis0MOD9lBgviO/sUbsp9zjhQsc/Z9qxScLpEDFpPJqanIWvi75iEKlT4w2S3faig
         /MbSo1ne1WrBxTFL3IaZ+SaLg3ujNAt/DQ3QJprmCVMIUGQnuwJhO0sYxMyCvnYbXALZ
         AxTBmJy0jhj/5O4jHeW/SkyQPmWeM+sfsl9i5LP20z+qMR+dLOeJKoKCZvSUI2iYu8if
         ZpsD1xJmhuBKi8foWaPcOwlRBtc7d2TxcbyHZaM2co6C989iLF8vxdv0iDuYJXQYF3Pm
         uAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733500544; x=1734105344;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CfETEog9kNwm+ZEaU4iUILsAuYULWf3mToje1NA0XUs=;
        b=tX2hEoAQRzy0X8puQ7+jPtyytSKqX4mJ7BPJsmBuEeBG3kMhuH/7g9sN0pMNqIIcUS
         C7MRlozBgEMVxaCS5jFQsO6bIH+0fNJHx/PH8fhHLwlNfPJLs7XCMdrZVqL4RRi/dnmY
         fxbrOYm/na7IdMLxWhGT/4a4szAVlSn0/2ySCIgK8RRSGgUOY3bFYZ4RDJQk7esUxqa1
         l7r+ca/+CSAvvxNDfP4U/ICLmIqdrVvb6df/zlUyr9Zjv5RHCCBuoyh0n+ZbCYjKdIPV
         HD9u8QqLrp+IHrQxDWswWCu7uNloduwnyX1icXybdpomxM5fyFSgIVOKbZNGBwEdjVS/
         6DXg==
X-Forwarded-Encrypted: i=1; AJvYcCXEV7CJtjiYqHeKSDofdPX3ggIJsCm0tVT4thGw9uL2BQo9dna/FQOg6MdmMv/bw+uTK101u9iY5eid@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkb1BrV/6QNxLVXaQ2Nb2bEYtcACJ9CUtHzbsrx+DwbN0A38ex
	LIwpzJ2Ljm16krH/pbguxLdur1ZqUFoOUoBbyLr5Q/TPp8MGzSOb3TjJze+GgS8=
X-Gm-Gg: ASbGncuT/cvL9OPVODpjtSW0zoORp85mhUh9oRiou/IKFvaErNghs+h78Dn7PPyBEm1
	L8/qDPYaOi77J5MHOEfS5pfjCs3X2MLzt0Vq2W2VZqELgDV/VuvE4B03WrU/2wD9haFXYZO31tk
	X+z+cuIfK23wc/dZXF2IErpvFO/9mrmOyGS4xmQ+upEFr+ihSd4+TbpwdV+UPWQ5SsExQEB0Ntm
	RU9JxO3yM26oQz0zzxXlHjIBRf6ZBea9R4bJuUy4YIXGJd6M2rG2Qqqr4REEePvEOTc94hl9mac
	4ekBW22ge3rO5/RhVB0j2e791HQKrE1iWqI9weNdxNQGmA+fUtZcw465zOhvHw==
X-Google-Smtp-Source: AGHT+IGju/HpCMcyMpb2m3aBcogWdUR4ZrgWhZBrYlBGJa0J4A5vDrFJeCwRWq9jcVih3UR26XBMqg==
X-Received: by 2002:a05:6000:1f85:b0:385:ec8d:8ca9 with SMTP id ffacd0b85a97d-3862b3d09eamr2648760f8f.42.1733500543773;
        Fri, 06 Dec 2024 07:55:43 -0800 (PST)
Received: from localhost (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3862d7158c4sm1698774f8f.54.2024.12.06.07.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 07:55:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Dec 2024 16:55:42 +0100
Message-Id: <D64QNNAMVMJM.3NDC6J100E8ME@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Vinod Koul" <vkoul@kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@linaro.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Abel Vesa" <abel.vesa@linaro.org>, "Sibi
 Sankar" <quic_sibis@quicinc.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH PATCH RFT 15/19] arm64: dts: qcom: sm6350: Fix ADSP
 memory length
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org> <20241206-dts-qcom-cdsp-mpss-base-address-v1-15-2f349e4d5a63@linaro.org>
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-15-2f349e4d5a63@linaro.org>

On Fri Dec 6, 2024 at 4:32 PM CET, Krzysztof Kozlowski wrote:
> The address space in ADSP (Peripheral Authentication Service) remoteproc
> node should point to the QDSP PUB address space (QDSP6...SS_PUB) which
> has a length of 0x10000.
>
> This should have no functional impact on Linux users, because PAS loader
> does not use this address space at all.

I can't verify this information, but with this change ADSP is still
starting up as expected:

Tested-by: Luca Weiss <luca.weiss@fairphone.com>

>
> Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/q=
com/sm6350.dtsi
> index 8d697280249fefcc62ab0848e949b5509deb32a6..3df506c2745ea27f956ef7d7a=
4b5fbaf6285c428 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -1283,7 +1283,7 @@ tcsr_mutex: hwlock@1f40000 {
> =20
>  		adsp: remoteproc@3000000 {
>  			compatible =3D "qcom,sm6350-adsp-pas";
> -			reg =3D <0 0x03000000 0 0x100>;
> +			reg =3D <0x0 0x03000000 0x0 0x10000>;
> =20
>  			interrupts-extended =3D <&pdc 6 IRQ_TYPE_EDGE_RISING>,
>  					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,


