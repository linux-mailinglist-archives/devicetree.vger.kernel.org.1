Return-Path: <devicetree+bounces-168670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A28A93ECD
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 22:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB38A7B4AE4
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 20:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC27215076;
	Fri, 18 Apr 2025 20:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1z7L7iB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6ED78F29;
	Fri, 18 Apr 2025 20:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745007622; cv=none; b=H/jZxtB7JHjLx40ePjbhVQw9GZqAB9gG1wF+0D656prsUPAzee2lpVYHvHDc1tZfdZ3/wlpCRvoxpUsuD0MpW6kgQQeU9lbIyNsc8qMtJ0a6wKnx6Z7wf+PkmxOkGdUqSyzdLzw84mqYVZTUz8LxCRtogzW1XQ5fR6UbVxtBo/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745007622; c=relaxed/simple;
	bh=MVeJhPEmeexQpjg9M2wm0OGPImruejcEPAgo67i7vak=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=g6O/lPbP0GXFaZq+8YVQlGIyHxIiPnrss8f++PwnMl82UR+1m5OxCiskvua1SKMEaSjmjlDwtwKHJ8+YX3r1KrFpezoB0fxAEqME9aYwku/gLctkDSSamHAaMUMIHfyhztP0lakYdfLlZy/fXhpKAcOOF8Ck5bz87EF1Z9eTsJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1z7L7iB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA6F0C4CEE2;
	Fri, 18 Apr 2025 20:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745007621;
	bh=MVeJhPEmeexQpjg9M2wm0OGPImruejcEPAgo67i7vak=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=G1z7L7iBIZWWkH41VrRdvYugKdt1ozQMxCWQP7KGbx1wzKt6ryK2IZQBPCinF4yT+
	 9LigXAdZNnmr5kvxjqyN6onCj/j9ORdK6Oh/dhHVGaCrnerR3Xj/nywRtYZt5zYrCQ
	 kdoP5Xl1Uz7/MJwBDe/gyqcdr/65UxQhUHPPi7vGTbmgizOdd6RBws9KAry0/JKCcu
	 u8yoZGvlOlSo1iBG8+UpBI/vKt2fpgWrSBLUxnOzT2C5r74se+wdKRj6QtOLgi5EHx
	 G2kKC99y073P8WkbUA85xyDJAeLfCW+mHG00pdF7X2Uwy4HchCUeN/nYBxJG2MpXEa
	 13qxqXA0C9eHg==
Date: Fri, 18 Apr 2025 15:20:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
	amitk@kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
	Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v5 3/9] PCI: Add new start_link() & stop_link function ops
Message-ID: <20250418202020.GA81734@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250412-qps615_v4_1-v5-3-5b6a06132fec@oss.qualcomm.com>

On Sat, Apr 12, 2025 at 07:19:52AM +0530, Krishna Chaitanya Chundru wrote:
> As the controller driver already enables link training as part of
> its probe, the moment device is powered on, controller and device
> participates in the link training and link can come up immediately
> and maynot have time to configure the device.

s/maynot/may not/

