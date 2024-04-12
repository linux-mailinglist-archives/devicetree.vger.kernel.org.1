Return-Path: <devicetree+bounces-58660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035658A2C15
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 12:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C39B1C21196
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50E653384;
	Fri, 12 Apr 2024 10:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924E3502B0
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 10:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712917013; cv=none; b=tQSt2z6/Fbnxt93XkB9Vs9OHBzxp9ZsI/LgNzirIJPZl33VAqfD5s5Mv9gjp4Ofb23QDqtQIA1hNjog3YDtqgH8yyMTcPdomAsZ/lgXQna4W93DC9no7z+KgybFfG/BCH1TKL0GlTaOHXO3eKGJZ3Syh7AtAC8SI2N5M3egCuoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712917013; c=relaxed/simple;
	bh=n6Oa2PfIJNxa2Mv/c7/Platjp6eUnnPUvbAMdd+9kY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5pYxVSRUyu/bfPnngGDamZ6mVNAMaR2lkDn4xvxS+BT7O8pDCC3S3SvFc/qNI9OtNKAeNOIA5PETjze/0jehdmCNgBEsSE82xnNAi4ltpvePGR7U9JMa5ie+L/2R6zG2fsrxtUMWD19uI5AR9P/QLZIq8MHKQM5RjHSlfBWxBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 256EF339;
	Fri, 12 Apr 2024 03:17:21 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CBCF3F64C;
	Fri, 12 Apr 2024 03:16:50 -0700 (PDT)
Date: Fri, 12 Apr 2024 11:16:47 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, Conor Dooley <conor@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZhkKD-TzvFSISE8x@bogus>
References: <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
 <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
 <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
 <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>
 <20240411-platinum-phonics-864bb08dab8d@spud>
 <5293ec04-917d-4df5-8ff9-58b12cf01bf0@quicinc.com>
 <7ed6da09-936d-4142-ad90-a9e90435ebbb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ed6da09-936d-4142-ad90-a9e90435ebbb@linaro.org>

On Thu, Apr 11, 2024 at 09:29:17PM +0200, Krzysztof Kozlowski wrote:
>
> Just to clarify: Ulf agreed on compatible way for proof of concept and
> asked to send a code so everyone can understand better what you are
> making. I don't recall any Linaro policy or answer.
>
> After above email, other people proposed other solutions and disagreed
> with that statement, so no, you do not have a consensus.
>
> Trying to present this as a consensus if way exaggerated.
>
> You have no conclusion, because talk is cheap and this thread is way too
> big. It's also way to vague, like we had to poke you for several emails
> to get hardware description. I still don't recall it, but TBH, I am not
> going to look at 50 email thread for one email.
>
> Therefore, feel free to propose something, but if you call it "that was
> the consensus from community" then please already add there my
> Nacked-by, because there was no consensus.
>
> In your proposal finally describe your hardware, firmware and problem
> which you are solving (because no one will be going back to this thread).
>

I can't agree more, well summarised.

Nikunj,

Sorry I read this email after I responded to you, so please ignore my
suggestion on starting a fresh thread, follow Krzysztof's suggestion
instead. But all other points in my email still stands.

--
Regards,
Sudeep

