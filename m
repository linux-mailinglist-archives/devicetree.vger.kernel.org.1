Return-Path: <devicetree+bounces-157055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B95DCA5EB5E
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 06:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D9383B6FDB
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 05:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2584D1FAC49;
	Thu, 13 Mar 2025 05:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tk0q+ONc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DDC1F8EFA
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 05:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741845427; cv=none; b=sV/ZO9+ciM8LgMeyhKMKaz2ZN+dLJiuK83Am3awNhm0PJEIsAsFJcHEaeMhienc5YZcgo7kbHxweWKw6NKIiGWrWmyVsrIiUuNflfJY9/4hlUy7J+W+LrWOnhCAcHnVfCY1dBBSnS/0eDoLvmBUi1GzUrbYOjrvBn7b5pbayyfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741845427; c=relaxed/simple;
	bh=F4KVeeG/vfL6d+LN7wLEC48P+h1mm/VpKDoXwyHPxJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mKCy18pL38wmr5qR8TriYfQFTe1WwEi8K5ojkqxmQrfvPsT9t0LXoMjnCCxGNXJxRMfIRpS1HJMgVl5GFPa1jvZBRqrK+VFn+/D1RKW5ObrrPSA5yQV07lHudLd91C+/AWoHBxPtUq4zv9EMQ4oPGmwn6yaCWfQQBiQVRul+xGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tk0q+ONc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22435603572so10137285ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 22:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741845425; x=1742450225; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VHoBJbaXxWZBoHH4orsV607HNQCFDV6U6o2TbMEjzlk=;
        b=Tk0q+ONcADEia8Q8kVTX+1hkbznNaDzUdmFBZY0POp2E8YwYk+5uUjhO4fCHylVrz/
         2VehaSkx3O1JmJBKq2vwFMO+phuAhpfMXY2tK8tMHgzlTw25jHA0A0PYMYxo2oX4LOxO
         AIDra+XjtldleQjcyLvqFYua9wJ3EwJA6RZjWiNwF1tKPe1stOxiRij1cNN5mZC8F98U
         fa7y1apX/CR0JEjIKRl8WhbG6V7Mnav/n7y3BjwlW8TgF3cVIbjeYSd0CPKaFZNxTAF/
         uWMcZNlzWPjeTBpI7TT0w11Uvh2n05qM3uRxSfu8ov+5Qp8XeI2zMYLpCeLtXKCc3SSQ
         SgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741845425; x=1742450225;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VHoBJbaXxWZBoHH4orsV607HNQCFDV6U6o2TbMEjzlk=;
        b=wrPBdKDYpehPbsVBax7Z0QZ7ENv0pD01RjfFvdoyCjCr4W3UN8hBCtb+NQ5YcwaE26
         f2NUfTE+WuoU9+OpaI9WG3wNAKfKkdIwcboRiPlDmlZRvbxe6W4HStc6Uau3pcmErlcd
         0zcpqsKYsUwt0KJ+WFpIt+sJXc5aQh38jmCtV423k86XqH8WrC2krjhKZ83oAqo23dxR
         92JhDqrebvemMH22ZXxKjBYZ5qMngCqKKFzSPczG+TGr7RQ6zcPD0YXCF3hYpmzrGA2D
         zh/7dikHTA0eIBRwIOlCoGnr34Vx6CA6taqxrAT2PKrIskcIW8RARejwT40BNvq3IVWv
         X5aA==
X-Forwarded-Encrypted: i=1; AJvYcCULPQHVZzZClQScUNClXYnGeITYmiiORTgQ+WFy+RewAD/15QL0daBOedN0YRonyS3y/K+BeGwd5s61@vger.kernel.org
X-Gm-Message-State: AOJu0YxLcXqtrnICcI80jTv5CgcrpnUVwVYExEg/RokI8dsF/DQST6Eu
	4FKsQSEgYHeBi4jTjeUoR/FlafUl2daf9oaMvQtNzVBBE+IdoC0UWsbrr0RWVA==
X-Gm-Gg: ASbGnct0bU9USBBf/WBTO/pJY1gA2Njhg6lR0tfqUsoGRRbTKCALbrciDZLE0C6iyl1
	9YSXm+hpCWk645EHec487ehsxfg21dJxKARB7NeX+oYosB8DeXht/DgdflYc6mqXAGdhRmSWZrO
	sVrV3AYvnMW+EvK3MQ848FsBth/MM7MXPRLcyVaOu3vyCREEJBQ1ZEegD0+t+ooKWVDVcOOHMn9
	BMkuhscCcnAWdy4Vy2ZtaZADJx5CJ92Al6nbxMuEwzybCVPBhd+9XdtR0FoRr09kcdAhy89ji2j
	lCU2SlZMAtwC21vzDwXfIbI37gLlA39DQj3VnloxyEumf7xckDfTXA==
X-Google-Smtp-Source: AGHT+IHiW5BfoY5YHVExATQIPB58ttIl6IxR42gqC9h8+1Se6XOAkH59TkpxwTZSBoe4vBqiS4Z8Ug==
X-Received: by 2002:a17:902:d48f:b0:224:2715:bf44 with SMTP id d9443c01a7336-22428a96909mr390296795ad.19.1741845424487;
        Wed, 12 Mar 2025 22:57:04 -0700 (PDT)
Received: from thinkpad ([120.60.60.84])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bd4a4bsm5340475ad.216.2025.03.12.22.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 22:57:04 -0700 (PDT)
Date: Thu, 13 Mar 2025 11:26:57 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Konrad Dybcio <konradybcio@kernel.org>, quic_vbadigan@quicnic.com,
	jorge.ramirez@oss.qualcomm.com, cros-qcom-dts-watchers@chromium.org,
	linux-pci@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, amitk@kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v4 01/10] dt-bindings: PCI: Add binding for Toshiba
 TC956x PCIe switch
Message-ID: <20250313055657.ddrzqo2edx46az7b@thinkpad>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com>
 <174048982895.1892984.13694169241426640158.robh@kernel.org>
 <f718ae90-237c-634a-111d-05f2f0240db9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f718ae90-237c-634a-111d-05f2f0240db9@oss.qualcomm.com>

On Fri, Feb 28, 2025 at 04:26:23AM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 2/25/2025 6:53 PM, Rob Herring (Arm) wrote:
> > 
> > On Tue, 25 Feb 2025 15:03:58 +0530, Krishna Chaitanya Chundru wrote:
> > > From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > > 
> > > Add a device tree binding for the Toshiba TC956x PCIe switch, which
> > > provides an Ethernet MAC integrated to the 3rd downstream port and two
> > > downstream PCIe ports.
> > > 
> > > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > > Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> > > ---
> > >   .../devicetree/bindings/pci/toshiba,tc956x.yaml    | 178 +++++++++++++++++++++
> > >   1 file changed, 178 insertions(+)
> > > 
> > 
> > My bot found errors running 'make dt_binding_check' on your patch:
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Warning: Duplicate compatible "pciclass,0604" found in schemas matching "$id":
> > 	http://devicetree.org/schemas/pci/toshiba,tc956x.yaml#
> > 	http://devicetree.org/schemas/pci/pci-pci-bridge.yaml#
> Hi Rob,
> 
> As we want to refernce pci-pci-bridge.yaml which is expecting compatible
> as "pciclass,0604", we modified the compatible as "pci1179,0623",
> "pciclass,0604". Now adding pciclass0604 is giving this warning. can you
> suggest correct way to represent this.
> 

I think the PCI-PCI bridge compatible should be part of the actual bridge nodes
inside the switch. I still stand by my view that the bridge compatible doesn't
make sense for the top level switch node as this switch is a sort of MFD.

So you should do:

	pcie@0,0 {
		compatible = "pci1179,0623";
		reg = <0x10000 0x0 0x0 0x0 0x0>;
		...

		pcie@1,0 {
			compatible = "pciclass,0604";
			reg = <0x20800 0x0 0x0 0x0 0x0>;
			...
		};
	};


- Mani

-- 
மணிவண்ணன் சதாசிவம்

