Return-Path: <devicetree+bounces-12437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 202547D9808
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4587F1C209CA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4811A712;
	Fri, 27 Oct 2023 12:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta10opSz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC501A705;
	Fri, 27 Oct 2023 12:27:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11E8C433CA;
	Fri, 27 Oct 2023 12:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698409645;
	bh=erg1rYgP74To6KDDM1KXYV8FQqFk+IL93d/OT4RF8Iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ta10opSzgCPzK+RJbeKtJ7EMbjSh54GhTiZuuIcrhdyLroX493IECvCcpfvb7tmQG
	 qk2JfMz57us1lj28G4ln6dH9FnssPpgunuDN12rQl541JYJdJL2J87Wkvyc9DyBvrm
	 7fVfO7+iYSNcJSfOkcWnpglQISSkfjmlfD/P3VRyobo2OqU3tcsz0Zjh/Uhv3Fb/Uq
	 IK1Q0KN3Y3cvlCHKKU70/zP6YqhdndEkKNAS4WkdynltFe0fVootg5Bg+pIi5xVlCK
	 2xvXBkcDqJkOCkpPrjaENfuPjqgnmZpe2ebi1jrMhwU3z0p/S8rhl9UPtgh1VTj2/4
	 prrA0FqagnZMw==
Date: Fri, 27 Oct 2023 17:57:11 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20231027122711.GB17527@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
 <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>

On Thu, Oct 26, 2023 at 01:10:00PM +0200, Konrad Dybcio wrote:
> 
> 
> On 10/26/23 07:30, Mrinmay Sarkar wrote:
> > 
> > On 10/25/2023 1:26 PM, Manivannan Sadhasivam wrote:
> > > On Thu, Oct 19, 2023 at 05:07:09PM +0530, Mrinmay Sarkar wrote:
> > > > Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
> > > > SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
> > > Is the PID fixed? I thought you just want to reuse the SDXxx PID in the
> > > meantime.
> > > 
> > > - Mani
> > 
> > The PID for SA8775p EP is not decided yet. So using 0x0306 PID meantime.
> If it's not decided, why should it go upstream then? Would that
> not break the hosts' expectations when the EP device is updated?
> 

No, it won't. If the device uses existing PID, then the existing host drivers
matching the PID will be used for this device. When the PID gets changed, then
the host drivers need to be updated too.

- Mani

> Konrad

-- 
மணிவண்ணன் சதாசிவம்

