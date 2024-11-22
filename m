Return-Path: <devicetree+bounces-123700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FC09D5BDC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DFD1F226CA
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD8018BBA2;
	Fri, 22 Nov 2024 09:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q6asVVv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B636170A3A
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267415; cv=none; b=i2APwh9ta9faOfqenAGuO+5SnbrbR5XRFwGfLN97No0C98zcsi/gXVPA1vuJ75SwlrwscTpEm9ixsZbHi1CvbhMIzFT3U0wI0UnTT+ZdjotOmyXuCVnJKBeXv3S1o0Zuvo1TzarmXmSqJwS0/Gw4kYaDFzKAeX9HnBJBlo0suu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267415; c=relaxed/simple;
	bh=xFMZvabyNfUiA/8Wj48YsMRAw5ewZrh7Siydup+xXLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J//auo5Ld4DZSauMKPaHJqj4uVgKAtCYkzb8xkz3hEKBDWi40C1sGZ1Aymt+ZSk1bR/SCgqJ5sw/pwoaBzE8KdVouYkS+u9ihX2VI+LR1wm7uaYF1qg88vXA8H+63ticnAP27c8HkgJVPxqBy2H4u/GnkhWPpetwadWqMILpg8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q6asVVv3; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53dd8a528feso128969e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267411; x=1732872211; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uN6BAz+250rWr3QrVnp7fqpel9Dn0qE7RRFpgwycROI=;
        b=q6asVVv33kZ+39YQR5Keun5in/539l+DF3QOOV9EwJ0Z6hmIEEmMjHDX0ydAEIfe0R
         XG/SBA4zcgD69WzZeviQepXLe61HTHp+P7r435YXvoJ8el1RxM50HZFCYSM7HRHuqVfn
         w+fQBr3CzZfiVL6E/5nJajrFqPhY7TwvgkM876oS1yWKq1WEpA2H4EtAMUb7DL1WGEmu
         sOjLoCNR1OOSN5I/Z0YVwMBbR3xuGtC7wS5e8MH7pGd7mL+3MGBX4x4vdJxemSWTdvTP
         /tF4qFwyIZ1afBB3XlenSOeDYppZlXAtrzMIFDF6huFHc9ff8DA6GTKsaT/yL9BbHnLj
         2pCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267411; x=1732872211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uN6BAz+250rWr3QrVnp7fqpel9Dn0qE7RRFpgwycROI=;
        b=LGOHKUB32wHSynrMX/sxDV1+TJCjIDG5g9W6II4xViR5oByfslQagPsJTH6Ng1MbNZ
         FcYqexOF7yMaK8bI7eFs9a7IaHEbzqvv7eYe8omDS/C/hgkjD9btWU68KUw7YTni9zb8
         FE7mJ7e2sN+Jn8jyg1uA3aHStkfHUyOAY0YnNDzm6DgmV6o0JuLvoo34YY3zdy0nMeTa
         Yu/z4tlF8CVat6l3qieBPdh5BV5fKt8/gzBCIk0VBYBQsj9EoBjmgyk9SWziY2mzBvsn
         4Yz10qO+RfKWAkY/Jns5eh3LPDDQt+RdgUviVkEDPpLdE2+MZr3IuFc8Uc91MJNkUz2y
         fMHg==
X-Forwarded-Encrypted: i=1; AJvYcCWKbwYHY9mbE9FQ3cps+KN2zgC83MLFZSpW4xD92+hyyyeyudiAp4ucOHY2cEkehGgzCbRewroVUCKG@vger.kernel.org
X-Gm-Message-State: AOJu0YxdSOAtACuIhjli7npaMGD2i4XyVV6lbhL7vOkBztscH9DUoNX+
	DTd6yzKnuGqPecBzlutEWYOmUJuCK1E6v+U3GhuZzz+wIPL0hfGCyA/t/rpnxyo=
X-Gm-Gg: ASbGncsyfomQJEHsUL5nMzO0W3FuBLevSYsXSdesJ9N+l4y/6Jd91pC93WYkVLGLZvh
	VxbRySef0TpBL9EBkJqQB74Vyq2yfbMN1vqp4ZbOm4wF0Hdvlk0h6C8Ggygj49/qL12OSGMbKHu
	eUX1TbgGMeqVTmcXLdTWlFBal2XCCu6lj1vVMaASDMe03jHvYbgqoXZaCp7KnOLZmAV4hxoZdZT
	WRFQ3bXoWuwj8FoFHM5mEZYfygTZoUuX2aTDuMGgJ7sskSGWPCJh/4Qwq+5l0iFed+KKsKvY9CM
	6CN1XDheGyFzq4HWpS3JqNnbFHB6jQ==
X-Google-Smtp-Source: AGHT+IEy5OBr1xCpPRhgqUBV6HF76ekcP2Na1oRdF7zIBTe9ZiJib+9fvPBcZ7Vk0hs6xn28u4KMpA==
X-Received: by 2002:a05:6512:1384:b0:53d:cee1:df89 with SMTP id 2adb3069b0e04-53dd36a07bdmr1088047e87.13.1732267411364;
        Fri, 22 Nov 2024 01:23:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd248b7d2sm301855e87.221.2024.11.22.01.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:23:30 -0800 (PST)
Date: Fri, 22 Nov 2024 11:23:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
Message-ID: <crjcmjgf6eab4p4m7y4wqh5mo3mv6z2mcoa3zn4wdnwjzh73rw@z6ksq3efbzoj>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>

On Fri, Nov 22, 2024 at 10:33:11AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> Due to qcs615's clock-names do not match any of the existing
> dt-bindings, a new compatible for qcs615 is needed.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> new file mode 100644
> index 000000000000..8f7571538d23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/qcom,pcie-qcs615.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCS615 PCI Express Root Complex
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description:
> +  Qualcomm QCS615 SoC (and compatible) PCIe root complex controller is based on
> +  the Synopsys DesignWare PCIe IP.
> +
> +properties:
> +  compatible:
> +    const: qcom,pcie-qcs615

I thought that this should break qcom-soc.yaml.

> +
> +  reg:
> +    minItems: 6
> +    maxItems: 6
> +

-- 
With best wishes
Dmitry

