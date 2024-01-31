Return-Path: <devicetree+bounces-37021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A07C84383D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 318F0289B50
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14125731A;
	Wed, 31 Jan 2024 07:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="VqHSSURA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8624956B6C
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706687354; cv=none; b=hdiuZ58TyAOQTDWbvArVCihizo2c3RBWtrylZD+Uf4wbum4x6T/3UK5nfcy+NV96NWHh4mhVPaI+CvQoBRF+SVxicms5/Hkr5Iw+fJTmxWYuITSdv1rf3SPm2eb5wWgzkZcniFBa8lXd+93Hay2not5D3+Z/fWW6bu1S35beGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706687354; c=relaxed/simple;
	bh=cFshzsRP6t2Dks44DM6zIJiE/XHM+QBGJoIWhhDc21w=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=GrtyrQFeixXuR+fA3/wOPTHar6cKvL6drbzTHYAkCk4zjfschHy9LnBQ6yo6h7kUVrtuDirleSR5IhAPnxhYUSAv4hPLq/pJGJw2WJtVqJM1/1m6P6RkcbUSkaUQO38M/t8unGWbpGiZAtHHkTh48qdaMAuuAp/iN5tcPCiNvwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=VqHSSURA; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d05b06b5f9so19363531fa.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1706687349; x=1707292149; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVZLwgSrD+dAy2BW+IGcJ8o0k7kjBAromRPFCRfyblU=;
        b=VqHSSURAyQSuHKvRp3AV8T/i5HNFJlYlWPJ3kOeSJmOCbMtDhdZ3QbhG++fKuj/drd
         9GFPQMLYrn46aItNpdTVIcUoA5Ogaswfd9xo00VToN0w8x8AZl9CxspA2Uca1ursQ66o
         IFQ8+I/8nGgOYCOvjT+5UPR1Z931JSaP4eF+S1QzDmFHKqq8kEa5spVhyIfFe3vduhv5
         Ht2sgR/oZaUJEEDRrCsuF6UMSepnDIQoU/Kyj2zBdbn5a9uZJjLDtMSZjolV2Y/5pvQI
         oSi4zkXvfgNqq6/TmSbNCsfDF+/eRmgHlUR5ZMjsziPQuxNeM2EI7ViNZJOE3cPI0yDp
         p6Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706687349; x=1707292149;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JVZLwgSrD+dAy2BW+IGcJ8o0k7kjBAromRPFCRfyblU=;
        b=Zo8uH6Z3+wFeOxqze1PtSoB/gQjT2CVCVzi9IBKN+j+e24NaODkAbSB8xS0B28gquX
         oIhSvf3I0h2KQXldpht7y4WHiSqm2ZoMCpkXDjR5Xjuy8AVnxxss7+56wtLcXxg6YmaZ
         +BDJJgQv0BMjvbDYd5YWR1JWBihHLC3WNeF9JOD3koRdeDuXtlP4w0CD++TbQrEuYkpY
         D+7Oz8UoYtjz/ZrRLeCk7TwqIueYJC5tZ2Ft5xlrliR4IJNq6JPN7p0YaCFJpjQYlc1d
         I26m6XgLwlgj0OvV2X6+oq+QmohySVV9Rqyva4AtNEHXEqnumae7ahWEGalNP1GERBe6
         bYUQ==
X-Gm-Message-State: AOJu0YwJcPsBZuyTgQZKbmS8CGYShuC0gbvtLCPTc6RqdZ9HYC1C9UUb
	skdHY9kEO2bzUbsviyty749HjpBSXWgiRMWQeOl1fs1jYvdVV7FoYa5NqAY6bGQ=
X-Google-Smtp-Source: AGHT+IFpxDSYNBY2nYQhL30a38FxsOQW/IvLcz1VmAN68w1EZI60f2TZ7kv9cn9VZv7LLBgKcmno/w==
X-Received: by 2002:a05:651c:1cf:b0:2d0:6b0b:554e with SMTP id d15-20020a05651c01cf00b002d06b0b554emr476057ljn.39.1706687349562;
        Tue, 30 Jan 2024 23:49:09 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id qo9-20020a170907874900b00a3685da489bsm124303ejc.175.2024.01.30.23.49.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 23:49:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 31 Jan 2024 08:49:08 +0100
Message-Id: <CYSQ686XZSA7.1SVD3Z9SR1BH1@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-usb@vger.kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>, "Vladimir Zapolskiy"
 <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v3 0/6] usb: typec: qcom-pmic-typec: enable support for
 PMI632 PMIC
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Guenter Roeck" <linux@roeck-us.net>, "Heikki
 Krogerus" <heikki.krogerus@linux.intel.com>
X-Mailer: aerc 0.15.2
References: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>
In-Reply-To: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org>

On Tue Jan 30, 2024 at 8:32 PM CET, Dmitry Baryshkov wrote:
> The Qualcomm PMI632 PMIC (found on Qualcomm Robotics RB2 platform)
> doesn't support USB Power Delivery. However this PMIC still supports
> handling of the Type-C port (orientation detection, etc). Reuse exiting
> qcom-pmic-typec driver to support Type-C related functionality of this
> PMIC. Use this to enable USB-C connector support on the RB2 platform.

Hi Dmitry,

In case you send a new revision you can drop my Tested-by on the RB2
patches since it's a different platform, and the tag on the dt-bindings
patches also don't make too much sense I think?

Thanks!

Regards
Luca

>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v3:
> - Added constraints to qcom,pmic-typec / reg property (Krzysztof)
> - Dropped merged TCPM and Qualcomm PHY patches
> - Link to v2: https://lore.kernel.org/r/20240113-pmi632-typec-v2-0-182d9a=
a0a5b3@linaro.org
>
> Changes in v2:
> - Split qcom_pmic_typec_pdphy_set_roles() changes to separate patch
>   (Konrad)
> - Simplified devm_kzalloc / sizeof() argument (Konrad)
> - Made start / stop callbacks mandatory (Bryan)
> - Reworked Type-C port handling into a backend similar to PD PHY (Bryan)
> - Made more qcom-pmic-typec data static const (Bryan)
> - Squashed usbc PHY single-lane removal patch (Konrad)
> - Further usbc PHY cleanup (Konrad)
> - Fixed order of DT properties in pmi632.dtsi (Konrad)
> - Instead of specifying bogus PDOs for the port, specify pd-disable and
>   typec-power-opmode properties for the connector
> - Moved orientation-switch / usb-dual-role properties to sm6115.dtsi
>   (Konrad)
> - Linked usb_dwc3_ss and usb_qmpphy_usb_ss_in
> - Link to v1: https://lore.kernel.org/r/20240113-pmi632-typec-v1-0-de7dfd=
459353@linaro.org
>
> ---
> Dmitry Baryshkov (5):
>       dt-bindings: regulator: qcom,usb-vbus-regulator: add support for PM=
I632
>       dt-bindings: usb: qcom,pmic-typec: add support for the PMI632 block
>       usb: typec: qcom-pmic-typec: add support for PMI632 PMIC
>       arm64: dts: qcom: pmi632: define USB-C related blocks
>       arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling
>
> Vladimir Zapolskiy (1):
>       arm64: dts: qcom: sm6115: drop pipe clock selection
>
>  .../regulator/qcom,usb-vbus-regulator.yaml         |  9 ++-
>  .../devicetree/bindings/usb/qcom,pmic-typec.yaml   | 32 ++++++++-
>  arch/arm64/boot/dts/qcom/pmi632.dtsi               | 30 ++++++++
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts           | 50 +++++++++++++-
>  arch/arm64/boot/dts/qcom/sm6115.dtsi               | 44 +++++++++++-
>  drivers/usb/typec/tcpm/qcom/Makefile               |  3 +-
>  drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 30 ++++++--
>  .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  2 +
>  .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   | 80 ++++++++++++++++=
++++++
>  9 files changed, 266 insertions(+), 14 deletions(-)
> ---
> base-commit: 41d66f96d0f15a0a2ad6fa2208f6bac1a66cbd52
> change-id: 20240112-pmi632-typec-4c7533092387
>
> Best regards,


