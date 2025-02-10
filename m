Return-Path: <devicetree+bounces-144801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD21A2F465
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E55523A37D3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57924256C9E;
	Mon, 10 Feb 2025 16:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eabQkDZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5F1256C99
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739206691; cv=none; b=U9sapItxBD8BueEbAXke1W8DZRlktHxWeucokIzN0pp02Q3ELeU9kLKipWmU3f3+VbS/6/zk1IOcrWHQl8OyGz0KiuePYEhNoOLa90GC7J8ZlblwiE9bLHezV/yu8DuzUczIsccuVl8QT8iixIvsRi4cSSAf3Re4q/IM2WsIwWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739206691; c=relaxed/simple;
	bh=xDIm/RSePeqjNNKN693t7yZjDUS4PKwecZGP9knv6V8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPPDA+OdjP+cR6OzIMsj9WwwVYv4Zb76TYS/QsiSA9uNio0Amfx4KJqwn4ZEwqy7eR3z/N1ouKi8cb1lxCoa5e5igslypReiDxQRdWx2pNqM6wY9ru1wmUaBWeE0iV7FD0una6LrAOR6CP2/Bgf3lH3MmQhSFF8lxOdfPA0NJNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eabQkDZL; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21f44e7eae4so73985365ad.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739206689; x=1739811489; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HXK570SN0hPAje/qFbZ+ZB29I/53fXVG5T36GPnTKYo=;
        b=eabQkDZLJfyvGb+qqDzjR5XknBo09Kxii5C2nJnJi0Zmdsux5A+9ivZMlMZnFkhX6f
         xnFBxSUKf5swEewHz3NOQJUSWDZsE3w6XpEuUIfnL4eseVs3TxFVqG+/Jnx3b3BK1lhC
         CunOZfQZUzrUQ1Wpcuyd80j7KNsjE5WARHP5o6ams3uJfDxclfqcfD/nB4XMHNsllQWo
         lQ7UIslpNRNyAxEj+Ju3XlDkBIF+d2JvIwoDqm7ddDswQywe73/rbDO29Wn8AUjoDH/q
         DLYfmn+nRM5Jw15+FIvCuj4mn+sdO50futhCUJOCkWJk8GRLnOMLoguoS9T2dQAobCzN
         dmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739206689; x=1739811489;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HXK570SN0hPAje/qFbZ+ZB29I/53fXVG5T36GPnTKYo=;
        b=CBVcpZ3PNVbTkfQfq9joRNgg1bh3NpsDNF/pM7OZhBMyeRzRFuySbgQ/qQDuJAYMjl
         eT59dWplpIRzUqxkKYKL7TehMyrtiJRfhhVOAfH7cNaCZRQc1djk2z0T3FK5ngJhXwkX
         1NLBlUL201gu7u5R8uMWHItTmAWrJcXEWM74Obx6vjPPYic+BlQ1oU3/kOFihiCUlWJz
         QP49vrNFuVMVPW43gZXMrz54NJ1x74JB1d7fu17EyKEqpt4HMCg1vkrcuzpd2deOxwzz
         khhIz3NBEGh1lLM6uv/ZSiJjEX5ugtpnxszd9udNC9tz5F4fRHhzf7PpAT9VYv+KkG6n
         huCA==
X-Forwarded-Encrypted: i=1; AJvYcCXiGfWm9yZb/Wa80vv3Xb32qVPUMoJeVsmGq3lflaWjEkIXocVXaiSqVxFRDgSVdoyVcEyu6dv9yRmT@vger.kernel.org
X-Gm-Message-State: AOJu0YyD1+Nr3hyf9a33EQHoVG4Hner42gIf8p2r6CdtR04bQxLn3ylV
	yj8UHVk1ySQB+NfH/87RbVvwdxQsbP1+8C2y/lgemldAqUwcjcspKZ9ddihlzA==
X-Gm-Gg: ASbGncvABYhKwwqupJ7A7MtQ9dz4NCz/9s2wBhCoiAB0m7u5KSb6KDD7cHX2z0gO6LZ
	aId1fpeq+S39tYtjkPh6k6QaLIpM4zwAr+5/71WB/JKN/a0LKXMyKPRswKyALgoWNtAX8alLb/E
	ZG7n+9EjKhOO+Z9usY+h2b9mdVhkhpseWFhx96utpGXw3A4KITwmxdTAEoRNO5EGYsCs49OqzD/
	gGs7+dVszvPE4lmq6iumBIrHbYfSOH1cPkOxONNP/SfU2N25bXgErT6BRqJvQ+JrEwq2hXrx5sf
	58nGMrprv94hiocEUmiTAUgBNVLK
X-Google-Smtp-Source: AGHT+IFXG/X92qZwFcXPEHDQKQJuXIqlaQptvHF4J7uFXPKvpdVbnwkYnUW89gE+sgY0hfXiSW0EGg==
X-Received: by 2002:a17:902:fc85:b0:21e:fe8e:b571 with SMTP id d9443c01a7336-21f4e760a43mr223092645ad.36.1739206688645;
        Mon, 10 Feb 2025 08:58:08 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3683d55esm80562995ad.152.2025.02.10.08.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:58:08 -0800 (PST)
Date: Mon, 10 Feb 2025 22:28:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add 'global' IRQ for PCIe
 controllers
Message-ID: <20250210165802.tbvzx4qjygzdsk2f@thinkpad>
References: <20250209153940.3489-1-manivannan.sadhasivam@linaro.org>
 <173920411963.477096.6458317590653327676.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173920411963.477096.6458317590653327676.robh@kernel.org>

On Mon, Feb 10, 2025 at 10:22:43AM -0600, Rob Herring (Arm) wrote:
> 
> On Sun, 09 Feb 2025 21:09:40 +0530, Manivannan Sadhasivam wrote:
> > 'global' IRQ is used to receive vendor specific events from the PCIe
> > controller.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 

Ah. I didn't run dtbs check. Please ignore this one, I'll post along with
bindings change.

- Mani

> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250209153940.3489-1-manivannan.sadhasivam@linaro.org:
> 
> arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: pcie@1c00000: interrupts: [[0, 307, 4], [0, 308, 4], [0, 309, 4], [0, 312, 4], [0, 313, 4], [0, 314, 4], [0, 374, 4], [0, 375, 4], [0, 306, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: pcie@1c00000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: pcie@1c10000: interrupts: [[0, 519, 4], [0, 140, 4], [0, 141, 4], [0, 142, 4], [0, 143, 4], [0, 144, 4], [0, 145, 4], [0, 146, 4], [0, 518, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: pcie@1c10000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: pcie@1c00000: interrupts: [[0, 307, 4], [0, 308, 4], [0, 309, 4], [0, 312, 4], [0, 313, 4], [0, 314, 4], [0, 374, 4], [0, 375, 4], [0, 306, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: pcie@1c00000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: pcie@1c10000: interrupts: [[0, 519, 4], [0, 140, 4], [0, 141, 4], [0, 142, 4], [0, 143, 4], [0, 144, 4], [0, 145, 4], [0, 146, 4], [0, 518, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: pcie@1c10000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: pcie@1c00000: interrupts: [[0, 307, 4], [0, 308, 4], [0, 309, 4], [0, 312, 4], [0, 313, 4], [0, 314, 4], [0, 374, 4], [0, 375, 4], [0, 306, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: pcie@1c00000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: pcie@1c10000: interrupts: [[0, 519, 4], [0, 140, 4], [0, 141, 4], [0, 142, 4], [0, 143, 4], [0, 144, 4], [0, 145, 4], [0, 146, 4], [0, 518, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: pcie@1c10000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: pcie@1c00000: interrupts: [[0, 307, 4], [0, 308, 4], [0, 309, 4], [0, 312, 4], [0, 313, 4], [0, 314, 4], [0, 374, 4], [0, 375, 4], [0, 306, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: pcie@1c00000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: pcie@1c10000: interrupts: [[0, 519, 4], [0, 140, 4], [0, 141, 4], [0, 142, 4], [0, 143, 4], [0, 144, 4], [0, 145, 4], [0, 146, 4], [0, 518, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: pcie@1c10000: interrupt-names: ['msi0', 'msi1', 'msi2', 'msi3', 'msi4', 'msi5', 'msi6', 'msi7', 'global'] is too long
> 	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
> 
> 
> 
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

