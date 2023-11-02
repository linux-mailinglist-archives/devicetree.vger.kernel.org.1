Return-Path: <devicetree+bounces-13556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4106D7DEDE6
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 09:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FF9C1C20EA2
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FEB5689;
	Thu,  2 Nov 2023 08:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF7333D0
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 08:06:46 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 03FAA12D;
	Thu,  2 Nov 2023 01:06:46 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDB7B2F4;
	Thu,  2 Nov 2023 01:07:27 -0700 (PDT)
Received: from pluto (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B6393F64C;
	Thu,  2 Nov 2023 01:06:44 -0700 (PDT)
Date: Thu, 2 Nov 2023 08:06:41 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
Cc: "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [RFC v5 3/5] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
Message-ID: <ZUNYkRtXUPeM4ppS@pluto>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <7300b8804396075d2ae565f46de51a980ce846e6.1698353854.git.oleksii_moisieiev@epam.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7300b8804396075d2ae565f46de51a980ce846e6.1698353854.git.oleksii_moisieiev@epam.com>

On Fri, Oct 27, 2023 at 06:28:10AM +0000, Oleksii Moisieiev wrote:
> Add basic implementation of the SCMI v3.2 pincontrol protocol.
> 
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> ---

Hi Oleksii,

the new get/set v3.2 implementation seems finer to me at first sight.
I'll try to test this next days and give you more feedback.

Thanks,
Cristian

