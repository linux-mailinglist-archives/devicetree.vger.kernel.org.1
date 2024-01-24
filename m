Return-Path: <devicetree+bounces-34655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A49D83A721
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9DCA1F21BCD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B7017C65;
	Wed, 24 Jan 2024 10:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZmupYetS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFB01AAD1
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706093145; cv=none; b=f3sDLJgjl+KMUzW5o8JvYwqKAaXOMlQZO6h7MJ0Z3W4b1o2xPEZZxJjaap1OieXvjXQHP57gemVCGHCNjVH9Jc58aclKkUp2La8tHnAfEgHUvjlGmJuOt/xB4kQpLhGYhnfVkXQkGEzlTFYjXM+pciIamTq/Aq3UJ1VPNIduMp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706093145; c=relaxed/simple;
	bh=ITkeKBYo+vlqCSWFp9QMn7UMtnSif5UYxjX1tSt/JHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MiJnfLhF6utOT11vEvzt69BxdNQbiDtoceVieVsD6+xK4AhzWD2IJphNh9lt4YHkh5ercVTcz2XRSkWBFKdQ5dMsMpgQlNek0X+hrJM6xG4zPF3gW2bKvKTf6W3iFSoVcBvEt3vLbUw/BpVoS6L3i+U9Kw5tQdD1AB8W1sDW0F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZmupYetS; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7831806c527so469150585a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 02:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706093142; x=1706697942; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ly6xPttUKSO1BcPX67D+7X+kiLXpnTRQPFUw7O6/NBI=;
        b=ZmupYetSclPu5m/HI9pIPjWxQbpLMERy10Y/uVPQidbckvjSnAjbZfNRcXSMBL3uEw
         BakX65Z5363EZjBMt7sMn0of/su1Jza3rLG+JN/xPlYeWFXtHaqwZ/+VwDVnk7iWMGkz
         w/Nj1BTbhgyy5yXsDc3zIo94LBlxi+mTN6dC4DsVpvPrrsaJCajN9o0mOW6UCUr+lCVu
         hI6XF0wDtO1zQ+Y1/4LHikd1YUKRAra3T85tU7yh5OLCkyI3//vqlZgRbc7+xG/yWtGi
         quUjFrZZOP779Yf3MxEsc72nhDgbizwLRF4xX+6UgdyL1LrR34qFlSSgUvHd3vC3geTB
         JWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706093142; x=1706697942;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ly6xPttUKSO1BcPX67D+7X+kiLXpnTRQPFUw7O6/NBI=;
        b=AyFdqUGuzq4TNn6JULkYGzWObWPCKRJCnpTjlWyxDxWE7PRp2dBccQz1Khwgt2/dR8
         /hn8hqrLn5iAv84a3zMN8cXQNb/0EQgPZ5VD77tMx43VQyMNxJnLDLkXsqxSXoYSAB+S
         Oia+jjBh3vHxIbPlfYeyvIzsRGaUfGWOPAKvsWOsu90rlHXv7ieIAHPv0pgsFiOJVTz4
         R45CIJOiF90apB9m+4kbu55VkITK57fX0W2rJGTWtwxVS84RRZrHG8tF98VdOmQTAEae
         YMvQE/RpdF8g8rveYmCDB6dpehA2WYJlyZjuxcfkHTXB+6agEkhSixkUnVIUZlYP+yv4
         dWHA==
X-Gm-Message-State: AOJu0YypJnW8wj2WMRAoMf8t8ZtXaBQbV4WkGeQ8P7+lYYcMaXNVYtFk
	RCMSXEhxzVx0lHr7nRjhNlXNWvXejsNZWp5fVqR9Lg+DqRp7oz6usssD65TOCQ==
X-Google-Smtp-Source: AGHT+IEunNOqYGx3PY3y/LYzBcv/wYHaxYGuDgpd/6+Z5MUipBMYb5ED8C+Vyz73Y5JnPXKf3W6Bdw==
X-Received: by 2002:a05:620a:4256:b0:783:787a:528e with SMTP id w22-20020a05620a425600b00783787a528emr10467999qko.57.1706093142352;
        Wed, 24 Jan 2024 02:45:42 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id x1-20020ae9e901000000b0078346a208d8sm3926782qkf.17.2024.01.24.02.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 02:45:39 -0800 (PST)
Date: Wed, 24 Jan 2024 16:15:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
	ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240124104530.GK4906@thinkpad>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <ZbDlLJRHu2ebdxc6@bogus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZbDlLJRHu2ebdxc6@bogus>

On Wed, Jan 24, 2024 at 10:23:40AM +0000, Sudeep Holla wrote:
> On Tue, Jan 23, 2024 at 09:42:31PM +0530, Manivannan Sadhasivam wrote:
> > On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
> > > 
> > > HW is exactly the same. Let me give more insight on the setup. We have been
> > > using the HW in virtual environment but now the ownership of certain
> > > resources (e.g. clock controller etc.) is handed over to a different VM(non
> > > Linux VM). Earlier the ownership of the resources was local to the same
> > > VM(Linux VM) via passthrough mode so it could directly access them however
> > > now Linux VM talks to non-Linux VM for its operations for resources that it
> > > doesn't own anymore via some interface(shared memory/doorbell).  So shall we
> > > use property like 'qcom, controlled-remotely' or do we need a new compatible
> > > for such setup?
> > >
> 
> I did see the mention of SCMI somewhere in the thread, hence the interest.
> What specific resources are we talking here: clocks, reset, power domains,
> regulators ? If so I don't understand the need for any new compatible
> "qcom, controlled-remotely' or any change in the driver. The DT has standard
> bindings for these and drivers would be requesting these resources using
> std framework apis. If it is a clock controller in the host Linux VM or
> if it is SCMI controlled clock in a non Linux VM must not matter for the
> individual drivers right ? Sorry if I am missing something obvious here ?

The design that Qcom is coming up is, all the hardware (peripheral controllers,
clocks, regulators) stay as it is, but the control to those resources will be
handled by the VM instead of the device driver in OS.

The idea is similar (but not same) to ACPI, but here they want to use SCMI
commands to let the device driver request VM to control the resources on its
behalf.

> 
> > 
> > Krzysztof, just a ping on this thread.
> > 
> > To summarise, the hardware is exactly same. We can consider the case of UFS. The
> > UFS controller is exactly same in this proposed setup but the resources of the
> > UFS controller are taken care by the VM. So instead of enabling the resources
> > one by one, Linux kernel will just ask the VM to do so using an SCMI command.
> >
> 
> I don't understand why you need to change the UFS controller driver to switch
> to SCMI driver resource model from self/host Linux driven model.
> 

If the VM is taking control of the resources, then device drivers cannot control
them. I think it may result in access violation.

This design (VM + SCMI) is floated by Qcom to offload the resource management
from OS. One can say that ACPI will solve the issue, but...

> > Due to this difference, we need to make the changes in the UFS controller
> > driver. So we want to know if we can use a different compatible for the UFS
> > controller altogether in DT (this will allow Linux kernel to have a separate
> > driver and will simplify things) or just use a property like
> > "remotely-controlled" to let the driver detect this setup and take action
> > accordingly.
> >
> 
> I would say the DT should be set accordingly before the Linux boots to point
> all the resources to SCMI instead of self hosted various controller/provider
> nodes in the DT. I don't understand why the compatible for a device need to
> change if the OS resource handling model changes. The resource nodes just
> points to a different provider node instead.
> 

The problem is, the resource provider is not changing. For instance, currently
GCC is supplying clocks to all peripherals in an SoC. In this design also, GCC
will supply clocks, but driver cannot use standard clock API to enable the
clock, but instead it needs to use an SCMI command to let VM enable the clock
on its behalf. As per Qcom, this will abstract the resource handling from OS.
Like, instead of the driver explicitly enabling all resources, it can ask the VM
to do it on its behalf. During suspend/resume also, VM will manage the
resources.

Hope this clarifies the design.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

