Return-Path: <devicetree+bounces-173073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA1CAA75EB
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 17:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C912A9E01B1
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBBF2580F7;
	Fri,  2 May 2025 15:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yFPN4O74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7C92580C0
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 15:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746199529; cv=none; b=VIxjElPSyndbZpZY3wY5HSQILxguyJHQ3eXR//ZLmFrAwDkpmbXtGEiIkrCGSIAZyXZHwIKPB5amCGQRy0nN68/hZMey1/Mh200pkwnLG7EXMVmxLfICE0tt3jYJebDHzoJAH7TbB284sqOh37q6gLxwKw5QPgZelv54FPuXy44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746199529; c=relaxed/simple;
	bh=LugdRThvsGx2CMHigSiJVuGvIK3aWNwVUx/pou6IRSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=llx2cc3dRuVobmwQlhSusQgsMfbkNnaGG7AS4ame4QWWdff+azBrJUA+SVCp4KrEDqlp0I1AvixeIfo6EuRpaJX7L7M8Xnlpu8iZjizuAqRCS7KWnsgFF+0uO19+oCnfU8QB3Wb86dviTrhwfEfJlslg8Jwa1Uf0CLC/C4WXYWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yFPN4O74; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-224019ad9edso34505435ad.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 08:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746199527; x=1746804327; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7vtwnUwNKasAWxl8DSVgxrM1mcYEXj9Ayz7aojcassc=;
        b=yFPN4O74yAhN2NDeW+wVC9rYdR4lG9CLBBiX5oNVpHeJEt5P22eLhLW+Gfg5Pbbqte
         OAkFhN6gmXl6HqsgtO2aPsZUnSNjSVOAxNOZEBRD+GFOv1X81tzljNv3IbiyC/IAJm/V
         IvESQwPQDF6IRvT3dZZRp4Beo2kuHRwOkjSdSiyJ55YfDyVbE/Wnlq9wCzJRa+GqD//M
         H4XZMAEC1DANj+17xJrdk4iglrvnKCWAV5g5oUL8U/sPKFZR32kgMe5EWWXEJByG13em
         13uUjOY1G4by4U9zBF05Q8lhwpGRKr5lE3LFz11o8NpFWS/hxjEuhS2RsHvaMHygRxZA
         b6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746199527; x=1746804327;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vtwnUwNKasAWxl8DSVgxrM1mcYEXj9Ayz7aojcassc=;
        b=Hikv5mQmT8N1Oqyt5PL7xGpr43veR7PBtaBtYlVuERGiG1/Q2TsRLXNbRBqzvRAVDQ
         MRrFoLryqQUvcTpdVWs9bUYfi1Lthd5fFVYrJCD5gWrHtdeaf+s1E9GVWm77D1v8E91D
         2gt9vpidD+D1cpdl6U1mJPfecd20gjHN8R6n+F2zmQ0CWGAXvElMbZ3uLZKkL/JsDLWt
         So7HOGMjLSt7EJ2XcgS3/DDHSCKar02HvJ4pcI7ivr0hfagr/40w1E67yKS2zt0He0fN
         nM5n23CilSBW2oH3eVTWFRrOL27PiE0V2JZa8AUq5pKKS3jDsoIsPGgQE6hH670rPWE3
         y+JQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS/FFOHgARYc0gPf3SZKA1UIY8jDhzbzK6PVZuj45oq2Grcm97Ttn9ss58+tbysWuNDdhuPqGsHdmX@vger.kernel.org
X-Gm-Message-State: AOJu0YyEzPbp1LCcPfEBvJThltRqzbzpptiP5lRdgiZh5OMyLjusq50y
	NA6Mdi0fTmgR2rUgTCUDU1A+qxmi4U3cdA7RvvU/Tsu5AppcGx3dsJ8gxvXHsA==
X-Gm-Gg: ASbGnctYB5hWFcjnrTzdzsWJAvVwNDJUkPy8ckh7rNP7GrivxpuSwI2iJCx5V4EMtuj
	mRu4uG9/OOwLqX7IsGFBamF+kmYYtOMRyLaUNla3YmkNpq9YqDNHyv58IfsE/T/I+Cf3RUqB1l/
	JpeupIJOOlp02twp+dTtInax68YtJ0vfAFF1K8OlCH6K9uOW2DjEM/L28MlOKAgxfNboJEfxz8U
	0UmYHupDN6Ge1Q74iCAwYN/daGtL62DcFnr0L9lKJAuhkqTfumyTp32pMvhzBGh0gecbViNzXFh
	Q/1I5J/L3HzjuApP2CCDbcSOekCi1RajprDpE0VTHo9psLwW1cMnfQ==
X-Google-Smtp-Source: AGHT+IHRKIqAtv7Ls6TzIfJYzOfALtMKzptW9t6NwjhMvUbrkIGXkQiOlsae6Xx1+FVT8dizOUKPfA==
X-Received: by 2002:a17:902:e54a:b0:224:910:23f0 with SMTP id d9443c01a7336-22e103dd51fmr51268655ad.49.1746199526887;
        Fri, 02 May 2025 08:25:26 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e1523205asm8677055ad.241.2025.05.02.08.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 08:25:26 -0700 (PDT)
Date: Fri, 2 May 2025 20:55:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, cassel@kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	michal.simek@amd.com, bharat.kumar.gogada@amd.com, thippeswamy.havalige@amd.com
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: amd-mdb: Add `reset-gpios`
 property to example device tree
Message-ID: <ph5rby7y3jnu4fnbhiojesu6dsnre63vc4hmsjyasajrvurj6g@g6eo7lvjtuax>
References: <20250429090046.1512000-1-sai.krishna.musham@amd.com>
 <20250429090046.1512000-2-sai.krishna.musham@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250429090046.1512000-2-sai.krishna.musham@amd.com>

On Tue, Apr 29, 2025 at 02:30:45PM +0530, Sai Krishna Musham wrote:
> Add `reset-gpios` property to the example device tree node for
> GPIO-based handling of the PCIe Root Port (RP) PERST# signal.
> 
> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
> Changes in v2:
> - Update commit message
> ---
>  Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> index 43dc2585c237..e6117d326279 100644
> --- a/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> +++ b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> @@ -87,6 +87,7 @@ examples:
>    - |
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
>  
>      soc {
>          #address-cells = <2>;
> @@ -112,6 +113,7 @@ examples:
>              #size-cells = <2>;
>              #interrupt-cells = <1>;
>              device_type = "pci";
> +            reset-gpios = <&tca6416_u37 7 GPIO_ACTIVE_LOW>;

You should move this property to the PCI bridge node where it belongs to. We
identified this issue of stuffing bridge specific properties to the controller
node recently (yeah very late though), but since this controller doesn't have
any bridge specific properties till now, I'd like it to do the right thing.

So please refer the STM32 sereies on how to do it [1][2]. On the driver side,
you specifically need to implement an equivalent of stm32_pcie_parse_port() in
that patch that parses the bridge node(s) for these properties.

- Mani

[1] https://lore.kernel.org/linux-pci/20250423090119.4003700-2-christian.bruel@foss.st.com/
[2] https://lore.kernel.org/linux-pci/20250423090119.4003700-3-christian.bruel@foss.st.com/

-- 
மணிவண்ணன் சதாசிவம்

