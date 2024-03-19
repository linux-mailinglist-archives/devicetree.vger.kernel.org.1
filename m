Return-Path: <devicetree+bounces-51544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBD487FAD0
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 234EB1F224D7
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 09:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94DD47D400;
	Tue, 19 Mar 2024 09:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b6gNmsnr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC3A7D3E6
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710840931; cv=none; b=SbiLbtGlGHS66pZam5zncJYv3w8yFCJzBvCfa0ZABorvBQ+3aADJ/CIzxclJSJTBlCx1fzpPHiv4BzVjIUP999QKAL3OdRCcMgx9IgOYzbBT9BCMys89Y86Oi/LbIbKBomTPJm52mwzd1SpcEX7Lyn40ioOoqLa4nMZ+tUlOY6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710840931; c=relaxed/simple;
	bh=crQWSKqhD5O72VBc1PHOdc8Vc/RicEqwpfQSKOep/cg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O7CcI574+2XOZdkJImVTTJh1hh9lL7OEh3WeGpgZd+xcPDdFVNfsLrz9Ixn3zSFC+47zrwYdZbiPywJfb3lLKJQWiBe76NxjRGOODtWjQrHU6tok6kT7sx4cJDsGbDjnpwyV4HDE4qEKVS4fxisCygljBsGutnF0BriuOdb1rVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b6gNmsnr; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-609408d4b31so52040367b3.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 02:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710840929; x=1711445729; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xR46scEd5OGiZdVCXg0rQe3a9fCq5Vz9qpEb1ZYc0XU=;
        b=b6gNmsnrlDhEMG0w61H6qwwb/96aNwwVk/MN8Nx88cHqo/3dUKrxbH23DG16cIr/L2
         IgETHEOxZI/PM1+QKg9OP7ST3kNQH99YpCpWkdUzohjehxZQQe0ttbKfSsNVbt5CHR3E
         bkgjCU/B3eVBkDqnB+YXHoGkGP6MeLnj/isyjtthiPd7GIGswd4FDviVUIQFj3hxL+RP
         8GR48Iet0KYgXxeXYajSgYkgcdslZHMXYBlZ5NygphVZkzh8qF1k1MCkgAlAgwIjp3TI
         8a+dw1AGR03Hup43ZdJ2FgkRZeE95BHpC9ZYorVd7XmKj9UYQVuyf98SShB0+szRPIw9
         mfBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710840929; x=1711445729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xR46scEd5OGiZdVCXg0rQe3a9fCq5Vz9qpEb1ZYc0XU=;
        b=b8K/5Y7XMU1DJ60vh0YrRvfApiP0R5pLUZl2/yUrE7sTyRSgBLxKt0AllGhlhALBSg
         iOrN0wkTkb6mSNCOIPXUc5XeC4ub3g3fUODnB2lW3p04S5flxyl10QbnybAOR/B+oJJf
         38eJmM2H351AcIJu1IJ0YbQlQaBElaY5i4+DQjb8YU3rfGj1USWFOrjFlCO+ukseS5Tg
         5PRQB6okAa4XH2uNmq5iaOAYlOqK7GF/dTrcVo3/ogoyyN4stmO+t5I0c2p3NKNLK4jk
         8bpmy8+rIoWoNrTh73g/ArrfN2Hr698t7O1JP9LfunuYc02BkCTOSiaFIy2DSbAeM3bt
         St8A==
X-Forwarded-Encrypted: i=1; AJvYcCXuCXP5X7x/CwquYvtrc3PuOh/km894Rh7/na7USeuvPw3n6rICbf6+FHR5b0U+oGq59721wMj7yLXXnUgM+FBxBTmBfpNA648zdg==
X-Gm-Message-State: AOJu0YyoOoEnxoHh+oBUenq7zkOWpLFydk4+hZTJQZ069igyki0bbfhG
	YH1OtIiuBW9uVnP3bRFSNAjyNP6Ru6u0GA5CWIJQ5Goh9EBCdPTtINn0nrKYxRhDsxzf+ONQHco
	hN8J00teqsLLfMacZa51G8n1lHVrtB05dKYPn7w==
X-Google-Smtp-Source: AGHT+IH99r/kvvmJRAw/ZWjt48XmIun30VNYQDPLxn70UqEVweorAxmCjp8Gd6tgaqNqP65M7MNy+IGg5wrYdgB82h4=
X-Received: by 2002:a0d:f003:0:b0:60c:c986:5ea with SMTP id
 z3-20020a0df003000000b0060cc98605eamr13991538ywe.42.1710840928785; Tue, 19
 Mar 2024 02:35:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
In-Reply-To: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 11:35:17 +0200
Message-ID: <CAA8EJpojQg2BHvR5kZtRxyXWRKy6zV=88_bdcuMH+QE-n4k73A@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Mar 2024 at 11:08, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
>
> ---------
> Changes in v2:
> * Dropped extra lines
> * Sorted the tables alphabetically
> * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/

So, this is v2, but you didn't mark patches as v2. Please use b4 for
sending patches. It can handle patch revisions automatically.

>
> Komal Bajaj (4):
>   dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
>   dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
>   dt-bindings: usb: dwc3: Add QDU1000 compatible
>   phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
>
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
>  .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 49 +++++++++++++++++++
>  4 files changed, 55 insertions(+)



-- 
With best wishes
Dmitry

