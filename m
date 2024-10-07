Return-Path: <devicetree+bounces-108355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8938599260A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 09:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FE661F228CD
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 07:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00AC7172777;
	Mon,  7 Oct 2024 07:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pIXFBguZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC8516FF44
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 07:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728286089; cv=none; b=IU4fvr6Dw3kGzq54bn2Lv1l5K/Re8mxSf1zqddX/5tqlZ4muu2HPsWj0uYm5BuIcLborPtNIrHLyhVJlk7TR5UJRDMecfbUKlQNjVe8cJyqwnKUPvbXADSumjTEWfCusBUHf9JpnnoXyPt2IfRt/R74ocSb3RvJZbOiYgzdM+qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728286089; c=relaxed/simple;
	bh=yZugJGVHPFRx5BQD1JWDblIetHoItcOj3nifAGIuVMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m5MLENlOOn6jduMsgN6xyk0ieqoH0jJPs4R4jhHl8yafUH74KOrOJZjHQO3oLsqd6vl8xnxkeiyerRQLNIrbX2xBBDvitTcuCm4Kq4mxPpZJsscH7iDHEunM59GgpYV8I2jtIOAmxqLeReOPCPqmdtefLMoTOP5y19Zht+9OAEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pIXFBguZ; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71e01207fa0so561172b3a.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 00:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728286088; x=1728890888; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8xf4nb6Pix9H89WSsuapIHbgUS+ZIGtX44BrlhQ7Fec=;
        b=pIXFBguZGoJrr2sSaqJ4AXX8gyXIAl3lOG6eL7baML2hC6TIRAAVellHgdS0l0utb9
         VJu2dZwoGZMcliQJi2cXIyBp5xdYrSkBn5i1Fqv8ZP/ROpf3sHPIfPqXP9IlznUtrjcr
         +jJ+8W0gcJIp8LYF3e0JZ5N3kY2G2kwMCrOSHfe+8MpYKO5pRHakbSkLFnx6e5PPqIfV
         PICdgszgxUMRJUZiNziaaWVluZwnQ9ewUHSJ1lxrLedhIJ7szZnIHYsSde65w/MkiGex
         Y+85lBLWmSl9jGqa+LNJcv1DN+GYScwDCIhec6s6Oz8FW7NRPbNJSMmssu3qiAfVKnie
         odeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286088; x=1728890888;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xf4nb6Pix9H89WSsuapIHbgUS+ZIGtX44BrlhQ7Fec=;
        b=heF91z8/aNFByWzubt0uqs+zcoEljE6P+fZ/9uJPVnMWDMeWxoS4Dyh9WYtkNV2AQk
         d7tCcfPGrci4ArjF83xoKCoJZiaTeG7t8wNY9cGhbpD1MbEDKJvDXnMuEyY9pKpV/5bn
         mnPHrvN7dxSWn5JSHAJ0Gqe/f1k9XaM4Qm3x9w+aFjWWO94m215LSd8j682n4RMsZicB
         6dugbQfCoCET8OhU/tztCFo5eRTYrcVLE373chz1GP22N44G392gRER9/wUg5icp7frt
         s5snYkqR9l92L4xLKwXrfRImNh1NBkvXxMKks0aChijyLBv8t/QRGGNlSNhBOq4rLevb
         a6fA==
X-Forwarded-Encrypted: i=1; AJvYcCX3zlRhcnol1sT4cUrYRnXFmov0mE3CL0eclQKLbK3bSTmbkYR5dpJH8xIWP/AiTdhTcBR1aRZaPKzZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyWduOgSMJ9HLa4T9Agl9JHwWG2AMnn/Fo6NNvLKq4XtGme0xGe
	GTxT2nzCH5himSIBKvmP+12Z2TbhANYs3n5nshwR9r6xu/fanilzDr4EWX4nEQ==
X-Google-Smtp-Source: AGHT+IE4vsB70/Js2mNC/jm/OlOLnmlRjsch0aMdPfUvIwGcelF/8McFXljHJJtSbxO6+LWzZ/6IsQ==
X-Received: by 2002:a05:6a21:3318:b0:1cf:4596:d486 with SMTP id adf61e73a8af0-1d6dfae63d3mr15538097637.47.1728286087803;
        Mon, 07 Oct 2024 00:28:07 -0700 (PDT)
Received: from thinkpad ([220.158.156.57])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e9f6c491e2sm4271918a12.77.2024.10.07.00.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 00:28:07 -0700 (PDT)
Date: Mon, 7 Oct 2024 12:57:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
Message-ID: <20241007072759.5pw6ophje7w3vg7c@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-12-dlemoal@kernel.org>
 <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
 <179ed297-1d06-480d-8095-7212cbde2ab1@kernel.org>
 <64421c0c-1d48-421d-8841-859695b5046d@kernel.org>
 <ec728ac4-ef63-47a2-9058-5c038003418e@kernel.org>
 <e1e2c852-ff59-4450-9236-d954d7dc86f3@kernel.org>
 <1e85bd5c-a733-40e7-9606-b655c4ff3b6e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1e85bd5c-a733-40e7-9606-b655c4ff3b6e@kernel.org>

On Mon, Oct 07, 2024 at 04:22:17PM +0900, Damien Le Moal wrote:
> On 10/7/24 16:00, Krzysztof Kozlowski wrote:
> >> I do not see reset-gpios being defined in the bindings (common, host and ep).
> >> resets and reset-names are defined though but these have nothing to do with
> >> #PERST control.
> > 
> > Bindings for all PCI devices. See pci-bus-common.yaml
> 
> Got it. But in this case, since ep-gpios is already defined for the RC host mode
> controller, isn't it simpler to simply move that property to
> rockchip,rk3399-pcie-common.yaml ?
> 
> I can of course instead re-use the reset-gpios property for the endpoint mode,
> but that will need a bit more code in the driver.
> 
> Which way do you recommend ?
> 

Please use 'reset-gpios' instead. Using 'ep-gpios' for the endpoint controller
doesn't convey the actual use.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

