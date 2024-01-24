Return-Path: <devicetree+bounces-34770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8795C83AFD6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 18:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FD12286A66
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 17:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D710781ACB;
	Wed, 24 Jan 2024 17:24:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8CFE7F7EA
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706117081; cv=none; b=As1Eu8Oh3hMo+BU7g3D3GnC9VBWkz5l07CgCD8QssS0AqDyy6n3XDQ6i6M9BZG9FpqJb0oVkU4XgJ61HGF629+oYRR+f438rpGD8wwrT5g2symsOvTe7lC99Ia0/5i/Yk6A1egMmqviPkFsGBJUsVJ1ME51+jbcBTL7/kj0OYTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706117081; c=relaxed/simple;
	bh=ShKekgSBkYus6pmoo2nyTNwJgBl4YS7dgqr95sc8ASs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m4Gr82529HAXBXZC+xxLSF2XTrwXuxQHIHW5buRev+dTrv/fFfF+/XKHL8bOfY9FTKpvhmCYproQvHZ3IrfNNJ9fgXjWvrDRL3Uv1D6YsCx9ErW+/QczcL9UbPwW9tsq43O51rDOP1vH4+yb8Wd9qSz0Izi85P5rmL6OilphhLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF0C0FEC;
	Wed, 24 Jan 2024 09:25:22 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 877813F762;
	Wed, 24 Jan 2024 09:24:36 -0800 (PST)
Date: Wed, 24 Jan 2024 17:24:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	<srinivas.kandagatla@linaro.org>, <ulf.hansson@linaro.org>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZbFH0UE9zZQFWm8Z@bogus>
References: <20240123161231.GG19029@thinkpad>
 <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad>
 <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus>
 <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>

On Wed, Jan 24, 2024 at 06:28:33AM -0800, Nikunj Kela wrote:
> 
> Let me try another shot to convince you :) Currently, driver is dealing with
> clocks and regulators using individual framework APIs(e.g. set_clk_rate,
> regulator_set_voltage etc.). With defining perf to group them in OPP APIs,
> we need to now use set_opp. Therefore the driver needs to change to use OPP
> framework APIs instead of clocks/regulator APIs hence this query on how to
> distinguish the two configuration even though the hardware is same.
>

One option is to make dev_pm_opp_set_opp() work for both. IIUC, opp layer
can deal with clocks and regulators. A quick look at dev_pm_opp_set_opp()
seem to suggest that.

Another option is to try both one after another. Here I am assuming that
clk_get() will fail and return error. One could check if it has pm_domain
with "perf" support and use opp APIs.

I don't think we need DT changes to achieve what you have explained so far.
At least not at a level of per device node compatible or extra property.

--
Regards,
Sudeep

