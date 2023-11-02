Return-Path: <devicetree+bounces-13589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E0D7DF20B
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 051A41C20E6F
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA5715E90;
	Thu,  2 Nov 2023 12:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRW8Tc5F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6466013FED
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:09:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A021FC433C7;
	Thu,  2 Nov 2023 12:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698926991;
	bh=IwE9+OvFRLx91Mib23swemUFGjVhO8KF9WcxPps/jzs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=SRW8Tc5FZ8RxUVh+wdGHrbvjyKFIYpnUUNw2ZsH8qdEMiE0mEzoRZRaybRTTlYzDA
	 NlxH7vHPtKL0xnIFxITJPqC6pr4xMU7oFmTKcYVPm5Ze2CJf+qsbXtCyhhBgEvh00w
	 TUIsqio11IPhFjZK4IKJ6HTN2oFsZXKCxhHeRePwL2yuhU04m7c4LRsJL80RW1ETam
	 nT5l44sn4SnYmLPAT1/n9uVMPjd9ysMXaCtTS1NefKIW6AM40widFo4v2IC61Ui63R
	 PRm503pvXhyS2XsGk485oiiaq6n1PIo3xjnFWSZ4DiJFQb15aChjHPFh1Ie+6HXYzC
	 AQvxUrpbeF2Rw==
Date: Thu, 2 Nov 2023 07:09:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add OPP support to scale performance
 state of power domain
Message-ID: <20231102120950.GA115288@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231102053013.7yt7pxin5awlu7w7@vireshk-i7>

On Thu, Nov 02, 2023 at 11:00:13AM +0530, Viresh Kumar wrote:
> On 01-11-23, 17:17, Bjorn Helgaas wrote:
> > Can you expand "OPP" somewhere so we know what it stands for?  I'm
> > sure everybody knows except me :)
> 
> It is "Operating Performance Points", defined here:
> 
> Documentation/power/opp.rst

Thanks; I meant in the subject or commit log of the next revision, of
course.

