Return-Path: <devicetree+bounces-115269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 828FE9AEB55
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC7F41C231E0
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090961F666D;
	Thu, 24 Oct 2024 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EK9pKIXc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EB71F5825;
	Thu, 24 Oct 2024 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729785753; cv=none; b=Dk2uCZEFrxbUzIwXFJ9SlVBc3fsDBFhcX1IGDHyazcKnGmC+FYcV2oX2Zm3tNmM8kkP5z/fPfMHk9GtCTc8NgivXPWmhGF57/IHqZJ89PHK3iVLC6YPiSKrGvh0N/dvdhMizpcd/d8qbFSWQds22ZdNAhH2Wx64p7Z8pS5UQj3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729785753; c=relaxed/simple;
	bh=h0hSRniz6MntdSENub19c9kSV/crZIkSPwyBi1krOG8=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SHkhqUk8brJQE76UpTs11B29UKIQutu/R59f68OfZS+SISPsWulL4oddBSfkKYUT3WUft2RhiObj3LFdsZbaEq03VfZpSVJX5wqUQafBpLwkEOpiZrg770N72o7FMDfyrebmdLB1NHcbNAK01hQE61U6eC2a9Dl9m+0/+aTVCrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EK9pKIXc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D9ECC4CEE3;
	Thu, 24 Oct 2024 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729785753;
	bh=h0hSRniz6MntdSENub19c9kSV/crZIkSPwyBi1krOG8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EK9pKIXcJOvunjlFF+uDgT1nL4BuIu0y73R1xZAJXMqypPCWwkH0Msa1mvh9HvOG9
	 d8T+CRFgs5Z5OtX9IblhXfxnlShdTvDulV0nDSw81eVYVapHRVBQKz5zZnezQJWOOr
	 VIq+RD5zgmrpo1MMX+FXZU4EyIHUxON5EYu/8RxV+t+v3yQNGsXPy2VCw6SnWD2+vA
	 tXa0yzUVwjMrNBWaZCHey5Z3xqap+2+S7D04bAIKX2FMb0iC940Mv2AtpoZzJJT1Sa
	 udbBz8hj0xsuRy8Q4BKDAo6VSpkvtg8C+XwFjC2j2SpeLnC9zRpqG28Xca7QpaoaAH
	 kbGE6UJO0aeiQ==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1t40IA-006Vst-OP;
	Thu, 24 Oct 2024 17:02:30 +0100
Date: Thu, 24 Oct 2024 17:02:29 +0100
Message-ID: <86r08532wa.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: <andersson@kernel.org>,
	<konradybcio@kernel.org>,
	<krzk+dt@kernel.org>,
	<robh+dt@kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<linux-arm-msm@vger.kernel.org>,
	<devicetree@vger.kernel.org>,
	<conor+dt@kernel.org>,
	<abel.vesa@linaro.org>,
	<srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 0/2] X1E001DE Snapdragon Devkit for Windows
In-Reply-To: <f67d0fcd-4940-a57a-0e11-b98ed29cd09d@quicinc.com>
References: <20240911073337.90577-1-quic_sibis@quicinc.com>
	<f67d0fcd-4940-a57a-0e11-b98ed29cd09d@quicinc.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.4
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: quic_sibis@quicinc.com, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

Hi Sibi,

On Wed, 23 Oct 2024 12:05:35 +0100,
Sibi Sankar <quic_sibis@quicinc.com> wrote:
> 
> 
> 
> On 9/11/24 13:03, Sibi Sankar wrote:
> > Add initial support for X1E001DE Snapdragon Devkit for Windows. X1E001DE
> > is the speed binned variant of X1E80100 that supports turbo boost up to
> > 4.3 Ghz. The initial support includes the following:
> > 
> > -DSPs
> > -Ethernet (RTL8125BG) over the pcie 5 instance.
> > -NVme
> > -Wifi
> > -USB-C ports
> > 
> 
> Hi All,
> 
> With the X1E Devkit cancelled and with no firmware updates promised for
> it perpetually, please chime in and let me know if you still want to get
> this series and rest (external-dp, usb-A ports, sd card slot and 3.5 mm
> Jack) merged and have it supported upstream for the folks who already
> received it!

I have one of these machines in my zoo, and would definitely want to
see it fully supported upstream, even if QC never updates it again.
The feature set of this box is rare enough that it makes it a very
interesting platform.

So far, everything seems to be working just fine (except for the
missing features you have mentioned).

The only change I made was to enable the ITS for pcie5, which was
routed via the PCIe MSI widget instead. But that's a SoC dtsi issue
for which I'll post a patch separately.

Thanks again for your effort, and I'm looking forward to seeing this
box fully supported upstream despite its very short shelf life! ;-)

	M.

-- 
Without deviation from the norm, progress is not possible.

