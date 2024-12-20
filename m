Return-Path: <devicetree+bounces-133121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 881EE9F948C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E17961892825
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3FD2163A7;
	Fri, 20 Dec 2024 14:36:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7515C215F62;
	Fri, 20 Dec 2024 14:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705369; cv=none; b=ktDmst96yFgDg2sx427AScI6jJ8oVk90OixaIOFXRa5PczwAlGGoN5jyF9pr+n2RfbY+YXF22jJYryQWfm031OsDm+gFdbyWHeCYrnsdexrRH1HlTSD7WHXvYAtFYyLA+9h81AiRePBZ3Z6k6aWYTCH+FD5tvZupfqdCtjOQ7Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705369; c=relaxed/simple;
	bh=OYN8HM4We1odY5HnKn+7RCWQnj1cjAeUmenMBmBMQz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TuhZEUeyr6U9yjdBGBx4KLCvknCbeVppcRQZgBAKAAolJeqWIBAteeArovMJnU+Dy6n2W81YsCxLOB9cssLmGVrapNi66klWtTFEiqU8iQuVeM/HWFxnKpKJwqMQNE9pWRITq93f44zhWx3sn68chTAF5tiZZwcUSPoNqnWoRGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1F921480;
	Fri, 20 Dec 2024 06:36:34 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8F533F720;
	Fri, 20 Dec 2024 06:36:04 -0800 (PST)
Date: Fri, 20 Dec 2024 14:36:02 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on
 pre-SYSTEM_SUSPEND PSCI impls
Message-ID: <Z2WA0o0QJS64ftVh@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
 <Z2VXgkJ4x5TJTKJ_@bogus>
 <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>
 <Z2V4IblZNgnS4T2Z@bogus>
 <875342b7-3825-47bf-810a-effdbeacab46@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875342b7-3825-47bf-810a-effdbeacab46@oss.qualcomm.com>

On Fri, Dec 20, 2024 at 03:20:37PM +0100, Konrad Dybcio wrote:
>
> I would happen to think that, yes. Especially since the reference firmware
> implementation does *exactly this*:
>
> https://github.com/ARM-software/arm-trusted-firmware/blob/master/lib/psci/psci_main.c#L179-L221
>
> PSCI_SYSTEM_SUSPEND seems to be simply meant as a wrapper around a specific
> CPU_SUSPEND state (which may or may not be only callable from inside the
> firmware when SYSTEM_SUSPEND specifically is requested, for reasons),
> in a platform-agnostic way, so that the OS can enter suspend without
> providing that magic StateID on all supported platforms.

Exactly, that's how it can be OS and platform agnostic. Yet this platform
considered to optimise by not just providing it as a wrapper(if it was
that simple on your platform too) without running any tests and leaving
it to interested parties like you to mess around to get it working.
That practice needs to be fixed and this change won't help and once we
fix this, more such special treatment fixes are needed on newer platforms.
So lets stop and ensure things are fixed properly.

> But since it already requires more elbow grease on the peripheral IP side,
> I'm not really convinced it's that much useful.
>
> Plus, the optional bit of doing more work behind the scenes doesn't seem
> to be very wildly used across TF-A supported platforms.
>
> So please, stop making the argument that it's any different. The firmware
> I'm dealing with simply didn't expose the same thing twice, in perfect
> accordance with the spec.
>

So that it can continue to do so in the future ?
Thanks but no thanks. NACK with no arguments as requested.

--
Regards,
Sudeep

