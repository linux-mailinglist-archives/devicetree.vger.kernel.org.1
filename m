Return-Path: <devicetree+bounces-34643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA02F83A6B5
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1989D1C23B1E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3024618E3A;
	Wed, 24 Jan 2024 10:23:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA425199D9
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706091833; cv=none; b=oVCu/k7dJHA6q64YIvjKWvHS/4NkL0YxZP9ln1u9xu9lHQ4P5GB37TteG6Vklesjogt57PysgsfCVaMClUQb7UKB8EWzPTJmH+tx/FDQKijz65xQEWZApcUTh/A6K510kRVxyTpdld7nsr/vJZv871ka1pzcvKK43q0Bi/VA5CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706091833; c=relaxed/simple;
	bh=ahHk2yNqfwntQKVjZQEOdOxGD8RIig/8A+oR6UzJJAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pLE1BPe7JcPj7KH7AOrKeMCdPLE/NAXLnnvg5dlL6mYRRR5g6IoFwXfJMZdIaau20ENLMh9H4SZwtq/Oqx9rrmdIWy8u6le5bbaL3eOzB7vevvBoye7ZsfcnTsgKjKZfVpEnihKnyZP66S7rfwxD5yRVYRE5Vrw1dy8WAGr1PS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F3431FB;
	Wed, 24 Jan 2024 02:24:29 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EE3B3F762;
	Wed, 24 Jan 2024 02:23:42 -0800 (PST)
Date: Wed, 24 Jan 2024 10:23:40 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZbDlLJRHu2ebdxc6@bogus>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240123161231.GG19029@thinkpad>

On Tue, Jan 23, 2024 at 09:42:31PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> > 
> > HW is exactly the same. Let me give more insight on the setup. We have been
> > using the HW in virtual environment but now the ownership of certain
> > resources (e.g. clock controller etc.) is handed over to a different VM(non
> > Linux VM). Earlier the ownership of the resources was local to the same
> > VM(Linux VM) via passthrough mode so it could directly access them however
> > now Linux VM talks to non-Linux VM for its operations for resources that it
> > doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> > use property like 'qcom, controlled-remotely' or do we need a new compatible
> > for such setup?
> >

I did see the mention of SCMI somewhere in the thread, hence the interest.
What specific resources are we talking here: clocks, reset, power domains,
regulators ? If so I don't understand the need for any new compatible
"qcom, controlled-remotely' or any change in the driver. The DT has standard
bindings for these and drivers would be requesting these resources using
std framework apis. If it is a clock controller in the host Linux VM or
if it is SCMI controlled clock in a non Linux VM must not matter for the
individual drivers right ? Sorry if I am missing something obvious here ?

> 
> Krzysztof, just a ping on this thread.
> 
> To summarise, the hardware is exactly same. We can consider the case of UFS. The
> UFS controller is exactly same in this proposed setup but the resources of the
> UFS controller are taken care by the VM. So instead of enabling the resources
> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
>

I don't understand why you need to change the UFS controller driver to switch
to SCMI driver resource model from self/host Linux driven model.

> Due to this difference, we need to make the changes in the UFS controller
> driver. So we want to know if we can use a different compatible for the UFS
> controller altogether in DT (this will allow Linux kernel to have a separate
> driver and will simplify things) or just use a property like
> "remotely-controlled" to let the driver detect this setup and take action
> accordingly.
>

I would say the DT should be set accordingly before the Linux boots to point
all the resources to SCMI instead of self hosted various controller/provider
nodes in the DT. I don't understand why the compatible for a device need to
change if the OS resource handling model changes. The resource nodes just
points to a different provider node instead.

-- 
Regards,
Sudeep

