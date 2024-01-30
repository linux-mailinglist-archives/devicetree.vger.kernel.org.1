Return-Path: <devicetree+bounces-36880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F7A842F72
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 23:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A278C2836A2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 22:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6C67D40D;
	Tue, 30 Jan 2024 22:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DLYKVGPw"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6324F7D403
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 22:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706652946; cv=none; b=WUU8TcsPQgLD/iSY4ZTia/fp+CC1DKDXmtTHTjnKd5tjBnyI3orPzmTvek3X260KnV45RGqW9ErGlJHzGcBOt5Zc4tHR4NA0WRfKUAFqZtjilWwa2h7AnnIwLaN2FW7SgCzNY59w7zYewsN0sffMtodqvFrNYdDE/VOUmrb2lWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706652946; c=relaxed/simple;
	bh=p5XT6Nu5EoivBXhR3C7wW8pO0ajuHoZHPFfjAWz9Y4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYHLBycL1YeHWRnElg8L35mPuiDfep0V2e/TPAR48cIg1jTtSwrpmQvZc8xfYb+wPtWzij6v5fKqtIReOpobh8n34HZie8JG5z/QOuzqfSQuaAsGH/dCY/q8Fo6UOaK3UAkgpvepHhYzDQsgHitsDiR61nqVl6vvXGuC+4bPMPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DLYKVGPw; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1706652943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7OBLocajFnxfsUX6y3IeQvRjDnwJRDZ13qL3o2UwSYA=;
	b=DLYKVGPw5SL+pWj/KKOKkPypUdFgF/4YOAGOEAvm2FVMPQ6jEOi2ova0We34NeP3hoBJc/
	8xI4MmG+cVJ2DPH+dWxZjF3KkoKBg5XlXR5XiYecOXVZmVMjHtSZ3Xq5RCu5sYmA91OCNq
	xmx8ZNI8VtISXG5+o+DxvoE7j2/60YU=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-0GGRZD-mPwCe6qltvVdtdA-1; Tue, 30 Jan 2024 17:15:41 -0500
X-MC-Unique: 0GGRZD-mPwCe6qltvVdtdA-1
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42aade06774so33378171cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 14:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706652941; x=1707257741;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7OBLocajFnxfsUX6y3IeQvRjDnwJRDZ13qL3o2UwSYA=;
        b=adEiFV/WVH9Dr4pfp1FEzYkAszz6fKjSkPKc6ofPqM23A84VEDDKvtD+QwB6tn19x6
         6tHEIwYPL5XOPDDOkoGXg9GOf8aedBkYx0xtLUfyrQzUmfTKyIeBis0zPAWunqpmeIxu
         fRkcgpvkAG4PBkx/ucCPv2v3KZG1Qx87cFuJzO7tyX4pq7zx4bzVQQrHEIoy5huKZNE8
         L6r67Gn832BVtzKzfUojFc5LXNHY0WmCPzI9dPIBwJZ0MN0ABnOYz/87hwWukoe7vlla
         G9KLIsCVpOa6SxqidNtIkgWTUoQrigDQGJnbQXkIn6zm6XnGseUXFUeU7HdpoiYJ0QBJ
         DaeA==
X-Gm-Message-State: AOJu0Yyv5jA+yWgQr4m5XzryvcaxJuSBqgIhosIQ94aPTeAiecGwwq6g
	0fqq29FI4TIlc4W5yVEmu/HM8WiQ3yPbI3Fvfai1lgBEwYQb3RH3DE+rLX0PO+lwK6bNSaG+kOL
	ZNa3f/avLA4Moj9wB0thYj00TASwQwVdViG15rUSvlG8htilFIWUtIKnggik=
X-Received: by 2002:ac8:5704:0:b0:42b:e3f8:59b1 with SMTP id 4-20020ac85704000000b0042be3f859b1mr9680qtw.7.1706652940886;
        Tue, 30 Jan 2024 14:15:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRFj9SRA43tibDOgbc8/Ff1PMq3IJRrHrv4p3cCJNa2EcqIj2pBgxuENh8xi82gzxQihGkEQ==
X-Received: by 2002:ac8:5704:0:b0:42b:e3f8:59b1 with SMTP id 4-20020ac85704000000b0042be3f859b1mr9662qtw.7.1706652940625;
        Tue, 30 Jan 2024 14:15:40 -0800 (PST)
Received: from fedora ([142.189.203.219])
        by smtp.gmail.com with ESMTPSA id d7-20020a05620a166700b00783da2644besm3956478qko.136.2024.01.30.14.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 14:15:40 -0800 (PST)
Date: Tue, 30 Jan 2024 17:15:38 -0500
From: Lucas Karpinski <lkarpins@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: Re: [PATCH v2] arm64: dts: qcom: sa8540p-ride: disable pcie2a
 node
Message-ID: <u3jekcxdu55zs4tq6mljcdgsvanuhj5dydew2swiidj3wkf764@twbz27a3fexp>
References: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
 <mfdvit7jgr53qlhuedkrq6mtgjjmgfoejsuh6pgy6gusqq7vxq@rkufgqtht2ve>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mfdvit7jgr53qlhuedkrq6mtgjjmgfoejsuh6pgy6gusqq7vxq@rkufgqtht2ve>
User-Agent: NeoMutt/20231221

> Why are there interrupt storms? What interrupt(s) is(are) involved?
In the earlier link that Andrew mentioned, the DesignWare PCIe driver
uses a chained interrupt to demultiplex the downstream MSI interrupts.
This meant we couldn't identify the MSI interrupt source, so it is not
clear what is causing the hw to misbehave the way that it is.
                                                   
> Do you consider this a temporary fix?            
This will likely be a permanent fix. Qualcomm disabled pcie2a in their 
downstream kernel as well, quite some time ago, so this may never be 
actually fixed.
                                                   
> Are you okay with pcie3a misbehaving?            
Yes, it would be great of the underlying issue was addressed, but at 
least the boards are usable with just pcie3a enabled and the nic will be 
available.      
                                                   
Lucas  

 
> > Signed-off-by: Lucas Karpinski <lkarpins@redhat.com>
> > ---
> > v2:
> > - don't remove the entire pcie2a node, just set status to disabled.
> > - update commit message.
> > 
> >  arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > index b04f72ec097c..177b9dad6ff7 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > @@ -376,14 +376,14 @@ &pcie2a {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pcie2a_default>;
> >  
> > -	status = "okay";
> > +	status = "disabled";
> >  };
> >  
> >  &pcie2a_phy {
> >  	vdda-phy-supply = <&vreg_l11a>;
> >  	vdda-pll-supply = <&vreg_l3a>;
> >  
> > -	status = "okay";
> > +	status = "disabled";
> >  };
> >  
> >  &pcie3a {
> > -- 
> > 2.43.0
> > 
> 


