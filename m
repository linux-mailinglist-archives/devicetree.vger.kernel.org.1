Return-Path: <devicetree+bounces-221242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E465B9DFA1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FD0A1B20DEA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42CEE26B2D2;
	Thu, 25 Sep 2025 08:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SScK+HcD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D95326A08A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758787747; cv=none; b=FFRDJK3XGqkmKbmiOY/W/o7389HbufwAgRrQkFcAK2TcPx75cLvjfnniQvwF1GedD1PFHv6igzY6saunBVngKBDMiUX+FAhxFXbMukxCbDBcll3vH6me59OAqOfUJ7pPmAhxY4f69/RCzxakPhNxqsZ96ywQlX0KmXhaDPcdAdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758787747; c=relaxed/simple;
	bh=iWUIsABx7+uzqZvDLZaQHot7lnD0TYwmbLGwNeqwgwI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hYy9wP4GjG/A+/A7hA+/zC4SMoYRxVwJuI4JPTM+HZNLF5Gpt0ebMRtExILt6pdiIy84Fkv/uehXKXEukl+1g9/pnx25kxSq4f8Eul2gKdUAiC3GFMCp2TFbrMLAmBkaVIgFaHaUOgiEGL77bPkU8v23lW5Df4gln8qTOVMF6Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SScK+HcD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C58FBC4CEF7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758787746;
	bh=iWUIsABx7+uzqZvDLZaQHot7lnD0TYwmbLGwNeqwgwI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SScK+HcDEM3rzHAseaz7qvZYveKJrVkRJ44pa+lYsdsYkl1yH1he3zzxzJe1js14c
	 1xFocWqqAPKFHjLObbR+nMWDa1fegFouISOFV0qfOFb2O5xow3UTbUfBHsZg45DZOF
	 x9Ksi0smm3JpVdz6GTo1MkhKg+ITHCZwEnaMW5ogAxxUilVEjH2cZ+Gpm9s+5rJL5V
	 KtZaDYqIGJASO+bizZn/3UsTIuH0ngT3314ppeUVjude5VZf+MVlea2oXZyS+Cq5Ev
	 nJVyaWgz11vyy3bmd5SbzZyoay42ZlQpH/X02d/53ki04IC4YUdT+UxFQOOJXSCsAk
	 KxFsbeaXGg0jA==
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-273a0aeed57so21516325ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:09:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCViRlgKPrpPHmFAdte/sa4p5KFuijGxUanWwooOuzC6eBIu0BIf2tUU0grYCxUmoeAapLbcJ7rxOFPz@vger.kernel.org
X-Gm-Message-State: AOJu0YzaVS6s02KZE1O+q7xTjxfgvca2ToQiV9o3roWvKZY8i9n7DR/s
	erQjUYPPcQQpzr3cpvlhFZ5IP1HFEwM2miNSI1gV4Rx7YdEHlUtAx35qIjqSGX16lGMTRmBH89Y
	wVhldakIviAXuO8OUbUgOfNGIq7AFBxw=
X-Google-Smtp-Source: AGHT+IG2YW0GdpwQFGSVyt2EC1h4ESqyq80dbk3MR5/pclj2o9fJdUcjnd+Ji39JGPZ0OcIoXuaKCxZKFGrM6LjczAo=
X-Received: by 2002:a17:903:3bc4:b0:265:b60f:d18 with SMTP id
 d9443c01a7336-27ed6ad0c80mr17139345ad.1.1758787746385; Thu, 25 Sep 2025
 01:09:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-14-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-14-24b601bbecc0@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Sep 2025 17:08:54 +0900
X-Gmail-Original-Message-ID: <CAJKOXPdQH2jXcEY6ZpkmixvUt26SqdzYgDAiJ3RHMG7xkPyi_A@mail.gmail.com>
X-Gm-Features: AS18NWB8f7UpxftMEh_YXJWPml6_kRrV_9AJWA_AfxZeGPcnF655h-Iv_WE6pxU
Message-ID: <CAJKOXPdQH2jXcEY6ZpkmixvUt26SqdzYgDAiJ3RHMG7xkPyi_A@mail.gmail.com>
Subject: Re: [PATCH 14/24] arm64: dts: qcom: Update the pmh0110.dtsi for Glymur
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
<pankaj.patil@oss.qualcomm.com> wrote:
>
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>
> Add multiple instance of PMH0110 DT node, one for each assigned
> SID for this PMIC on the spmi_bus0 and spmi_bus1 on the Glymur
> CRD.
>
> Take care to avoid compilation issue with the existing nodes by
> gaurding each PMH0110 nodes with `#ifdef` for its corresponding
> SID macro. So that only the nodes which have the their SID macro
> defined are the only ones picked for compilation.
>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/pmh0110.dtsi | 66 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 65 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/pmh0110.dtsi b/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> index b99c33cba8860f1852231db33a127646c08c1e23..4a5c66e5c9fbc35cedb67601f4568844dc41fbea 100644
> --- a/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> @@ -7,6 +7,8 @@
>  #include <dt-bindings/spmi/spmi.h>
>
>  &spmi_bus0 {
> +
> +#ifdef PMH0110_D_E0_SID

NAK

I already explained on IRC in great details why.

Best regards,
Krzysztof

