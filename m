Return-Path: <devicetree+bounces-1936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B16AC7A9289
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 10:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E612B20843
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 08:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441D08F51;
	Thu, 21 Sep 2023 08:17:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB198F49;
	Thu, 21 Sep 2023 08:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D61C116B8;
	Thu, 21 Sep 2023 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695284266;
	bh=E0OEX/w3VVEk1x8eRqdQdU8ItP99tfJG4PyFQG1J0g4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Klw3oKFy5tL56p7fZHyWWBnTD8cEEPU9Y6G19ZzJLhHUSb60hiDJ7HHYa/N8ZB+q5
	 bxSq4BQROo2YafCvxVhDbKdTnXyVQGC0jV5sQjnIYsvjo5OtZbooaZDxNLvRxRMzgL
	 Coy5hmpV5qfDq6Bky8njlJYlYWspj/d/Hljf7Z2zVPbEwmy64K15qYlxRrfzjUZd5+
	 jON3SLH93Z3eI52XF/IzvWqbm1/h+HdawKwUJggKFrPOC1NTVxlqHI77PdfIYXjd0W
	 uERxMyy9AvW9VRRQ9EZGzcdOOxWmvIwyrEgQH4nFl93Li5LiaM/1Rlnpz7kkRXxBIV
	 NtSGwN3tXsbRQ==
Date: Thu, 21 Sep 2023 10:17:36 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 2/5] PCI: qcom-ep: Add support for SA8775P SoC
Message-ID: <20230921081736.GB2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-3-git-send-email-quic_msarkar@quicinc.com>
 <4b20d3bb-d2d2-0864-013f-104e26ae558c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4b20d3bb-d2d2-0864-013f-104e26ae558c@linaro.org>

On Wed, Sep 20, 2023 at 04:24:30PM +0200, Konrad Dybcio wrote:
> 
> 
> On 9/20/23 15:55, Mrinmay Sarkar wrote:
> > Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
> > driver.
> > 
> > Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> > ---
> This compatible does not bring anything new to the table
> on its own. Please create a fallback compatible, document it
> in the bindings and use that. See [1] and [2] for example.
> 

Ack.

- Mani

> Konrad
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml?h=next-20230920
> 
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/pm7550ba.dtsi?h=next-20230920#n65

-- 
மணிவண்ணன் சதாசிவம்

