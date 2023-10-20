Return-Path: <devicetree+bounces-10377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 753847D0F60
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:08:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1121AB20E4D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F62C199D7;
	Fri, 20 Oct 2023 12:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mERiYfPj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ABC199D0
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 12:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1539C433C7;
	Fri, 20 Oct 2023 12:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697803710;
	bh=lLWOS5rJtiPTgPtKrcPOA7lIim2pDnpVrtRpguMoa/A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=mERiYfPjVKAFFEGO2QfLinnZUClESIpUptwr4NkLdg2eA2NdYwldNuLHyGhfLT0dW
	 GrEn2DtvIDItZDHnR+NsSkLp0c8XaCdt/K34CIomwFEYPYPx6AMRe0zh63m2Gm1lCw
	 ZP2gHhP6ztwVaYD1Gr8P4eT7COEs6KaFcVgekDRuggbKuh9+K0RXDm3XZgLrPrVwmj
	 XzH1T5A7wSaZz6BiutJIqh9Y0xJBlz4DSt/5wfJvTqaIs1tOwIlLefB2HERGdAaD3k
	 Omulc8agheqVdhHBOC8xxM4F8G2GQbKK82hKlhzJ6ZA3tEVMxfRbCvsg+os5aF7X1N
	 OPhzyXXxASJrQ==
Date: Fri, 20 Oct 2023 07:08:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"Simek, Michal" <michal.simek@amd.com>,
	"Gogada, Bharat Kumar" <bharat.kumar.gogada@amd.com>
Subject: Re: [PATCH v7 RESEND 0/3] Add support for Xilinx XDMA Soft IP as
 Root Port.
Message-ID: <20231020120828.GA1430425@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR12MB720130851B21EAF714B7A41B8BDBA@SN7PR12MB7201.namprd12.prod.outlook.com>

On Fri, Oct 20, 2023 at 10:35:01AM +0000, Havalige, Thippeswamy wrote:
> Hi Bjorn,
> 
> Please can you provide an update on this patch series.

I'm hoping we can get this merged for v6.7.  There is quite a bit of
stuff outstanding, and if you have any time to help, your reviews of
other pending material would be very useful.

Bjorn

