Return-Path: <devicetree+bounces-47661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C49786E1A5
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 14:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CD771C21C88
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 13:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E2C6EB44;
	Fri,  1 Mar 2024 13:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yfRC5Qd/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF52867E74
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 13:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709298905; cv=none; b=CxksFmIfyU4Mpb2lI7aQAKV30w+Mo/l0nTYOTRUjG8Xbl6jy8/vOiucVz0NVvaPj4AtLVAqRsQw9RL6LvZv/tZuBf0/+k0A8XHf70GisTtReSLxV3Onc7+SEK4WDb6gbjt95dNa7G9PtBFOcI5NPq5A1PmQhVEEAAATJKkYkohE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709298905; c=relaxed/simple;
	bh=hTajR1kOQhYONNR+DlufZegiqGvJ4ihTgTAF1u5cu6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bjixlJc3U2iRI/AZRGZpUSh9omgZbzfRxvL8KMXeikL+PQpXq4lcJ7S+2Zjw9tg/5TYvbGgYFuvjfKArXoc3Y+CVOR8WYFm4MgGJEqJDWs846zkK7ZiQNK+W+svqnUhP0YqJbCro1aiHAmjakl5MbX92eLLs0kagQCV4y7XCsz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yfRC5Qd/; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e581ba25e1so1666995b3a.1
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 05:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709298903; x=1709903703; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c4xVhW5kr9a0VX3KhZQL/39tJeDBtJNO1wfa+ART7+Y=;
        b=yfRC5Qd/oLOHEZnJKc7rl6sTdmEKy25X8b3WHymKs4wYRvwpiT3LvmXin1wQGPSybL
         QWhEtx2KqT9lO1ZPef8hfMZVgz/dG1Lhs+4xbETpHcDaQ3sHRRAoIyosDmqTip2p1RHR
         2jSRMFXlgxzleDGvX7zeG5gbyMs3+PqCbMT+pjtEC/3T5R2Tm8A0M7WNV70wJkdJsBjK
         IxEmOOlLlO+XB6j5UHHwcVCKjqSx1H9Nbvjmfrg0C5VCPeK9ERr5tF206HiIBgNjmd1e
         8oWXu01oZtVlbUNDjyYeX7bySaZyBsv9nazQ72zctNmbLWJLUrZceA3HDUwkCqYAZJNB
         PKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709298903; x=1709903703;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c4xVhW5kr9a0VX3KhZQL/39tJeDBtJNO1wfa+ART7+Y=;
        b=VAKG3mIaxeuGzrbXcFl/IfktZrB7nSOLYmPFSwyh0CdN072Q9UInqTi/awkqJizeh6
         +Yu932/im8w07XnPQDz6eutPFBy/wq04xtuGSNaRdRSGZO6vAdKIANC0i6tLt+1ZAW0n
         AnQrJZ5wzUXavAGtQgXRk6Ob1Q1sDbjfBfINSFwRrKIYgOKTLA24+QYq8Ic8NqRR0lrH
         CuCiEuyqBraeLRpvpN7fIeBfhhiQUbZDwvR1yRJNcoFIbTXeizbrL9SVNfnFlxFY79HZ
         D4iB7jIQkINk29S26AgaKtnUrBPKsCVC4oevEaednlVCzwFQ3PbG+T4ZhYUpsOQIKCXE
         d1vw==
X-Forwarded-Encrypted: i=1; AJvYcCUsInB4ZKDWBwj58f3DtNJ7mM39cs+YFEPVDsYQvU6OolNlZtM2VN74dite8ifkbAKJNAHcp/l2CLvLgoJ1t/1kKDqeLRnQ4J0NUg==
X-Gm-Message-State: AOJu0YymKDuJKst/JVljTJlopkigo/emDo3zwKQsA4cGSamc7EZQxkof
	EXJuI/l15laJ6jNeDYYi3LkFodLkA9qAX3mIN0q3Y6kf65DpueLXLXv4I17bpw==
X-Google-Smtp-Source: AGHT+IFNQNung36bGOpauELwOxEpRzqKfYOr0NMTDutbY+58U0qNhiw87Xd4mLrwZVZOKEO0FVJvYw==
X-Received: by 2002:a05:6a00:4218:b0:6e5:37cb:64c4 with SMTP id cd24-20020a056a00421800b006e537cb64c4mr2771504pfb.9.1709298902835;
        Fri, 01 Mar 2024 05:15:02 -0800 (PST)
Received: from thinkpad ([2409:40f4:13:3cbc:2484:3780:dcff:ebcf])
        by smtp.gmail.com with ESMTPSA id i1-20020a62c101000000b006e56d880015sm3116152pfg.140.2024.03.01.05.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 05:15:02 -0800 (PST)
Date: Fri, 1 Mar 2024 18:44:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/12] arm64: dts: qcom: sc8280xp: PCIe fixes and
 GICv3 ITS enable
Message-ID: <20240301131445.GA5414@thinkpad>
References: <20240223152124.20042-1-johan+linaro@kernel.org>
 <20240228220843.GA309344@bhelgaas>
 <20240229100853.GA2999@thinkpad>
 <ZeBbrJhks46XByMD@hovoldconsulting.com>
 <20240229122416.GD2999@thinkpad>
 <ZeCCPRVvYCNfMYnd@hovoldconsulting.com>
 <20240229135407.GE2999@thinkpad>
 <ZeCktwcEFAfCEVkV@hovoldconsulting.com>
 <20240301122406.GA2401@thinkpad>
 <ZeHOF4p1LlNDiLcy@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeHOF4p1LlNDiLcy@hovoldconsulting.com>

On Fri, Mar 01, 2024 at 01:46:15PM +0100, Johan Hovold wrote:
> On Fri, Mar 01, 2024 at 05:54:06PM +0530, Manivannan Sadhasivam wrote:
> > On Thu, Feb 29, 2024 at 04:37:27PM +0100, Johan Hovold wrote:
> 
> > > I'm all for digging further into this issue with the help of Qualcomm,
> > > but I don't think that should block this series as that would leave the
> > > link errors that we hit since 6.7 in place and effectively prevent us
> > > from enabling the ITS in 6.9.
> > 
> > Sounds fair. I will report back, perhaps with a fix based on what I get to know.
> 
> Sounds good, thanks.
> 
> > But I think it is better to disable L0s in the SoC dtsi itself. That's not only
> > because there are patches to essentially disable L0s in 2 of the available
> > platforms making use of this Soc, but also you are enabling GIC ITS in the SoC
> > dtsi and that may affect sa8540p which is making use of this dtsi.
> 
> I did not do so on purpose as I'm only disabling L0s on machines where
> I've confirmed the issue. And the assumption for now is that this is a
> machine-level issue.
> 
> > The users of that SoC may have not noticed the errors as you did before, but
> > enabling GIC ITS will certainly make the issue visible to them (more likely).
> 
> Sure and that would be good to know as that would give us another data
> point which may help determine where the problem lies. Enabling the ITS
> will (hopefully) be done in 6.9 so we'll have a whole cycle to disable
> L0s where needed. I don't think this should be done before then.
> 

Ok. Let's see what happens :)

For the series:

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

-- 
மணிவண்ணன் சதாசிவம்

