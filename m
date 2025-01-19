Return-Path: <devicetree+bounces-139580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04093A16416
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 22:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2598B3A2C43
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 21:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8365D1DFD8D;
	Sun, 19 Jan 2025 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="gKgAISDa"
X-Original-To: devicetree@vger.kernel.org
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6C519CD1E
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 21:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737323783; cv=none; b=grZJOxMn27vfx9ZkVFt/dfhN7pWcuvCde38T+twjf8EebviSeAsIas929zOUDnN59l26RPch0p6YfGnqSOShcbIXXDH5Ugi9/OrJev6B5rQxHEXLw5uWpj3VnHaVob8QdXwAx5DBV8DKqI9rcH68IsnPB2wBY90l3snN6Gn/Clc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737323783; c=relaxed/simple;
	bh=qwG1J9GgSTCBG8+oB6MogNboYhdxCPYbZJMCQX3qeMw=;
	h=Date:Message-Id:From:To:Cc:In-Reply-To:Subject:References; b=OXT5XC+vZNpffeZHvQUVo3UTH3x58Lcn4Nmq8JaUl0XraGp+y89BL1qImdl9/kr+f4GqUrwVPIitgaBdhJStFY6F3OzlsFmj/A3nIwv4yjcxYxfHhy7HFeDEvImCVDOcy8o+Zb1+BAxcYdhB64F9XPuOK6KHn9voxFWDLtHIIKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xs4all.nl; spf=pass smtp.mailfrom=xs4all.nl; dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b=gKgAISDa; arc=none smtp.client-ip=195.121.94.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xs4all.nl
X-KPN-MessageId: 622fddcf-d6b0-11ef-9401-005056994fde
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 622fddcf-d6b0-11ef-9401-005056994fde;
	Sun, 19 Jan 2025 22:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=subject:to:from:message-id:date;
	bh=eK8DdGkdqjzJcS/S74b+hWCSLuoRA9DJhomj7bVdk8k=;
	b=gKgAISDatTI5qcmXlZgoYOkqp1GXmGS6TwdRIzlu/0i3PCjVsM+AGcMCOxjxhTU49TaIH0E+Xmf2X
	 ihJl5rhW46db2DGaBiKgkrUCK6+/+mhU7aNVt7O3KU+e/Eod+V3yzEDHl6RiF4B+m8s58omaNjBKmJ
	 YpmlvSxxtXfMaCq/s0nmZojrV34CwkmdbQqvMGtoIrH+hbSRDLxOLhy7OZ+/sEXBJSDP4mWCgkHe5a
	 7K7kYQZLxFZJd+QiAxFaO+4sOHGj3A0TCbjHhpmeFBh70SlmWzQCxqoinJeClF/k15DrP0Js9tHCln
	 2ADv1J/lIcxXfjDKQU/9YCcl051R0eg==
X-KPN-MID: 33|vCpVemgNHsH+JxC3K0DxEwg40i7dNY1LW7WWH322IUe7vrYfoP2ju5dXYMDTydG
 mC8emdcqPEizBG24HkLzgoKoG6+9HYVDIi73Mm+56I3M=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|aC2eGKONaVTGJPH+arZDL6TEsme+clKWjYy5cTkz7dtNYPi6e5SYSJzOH3YBjKX
 fI9irrt6CWZJHDow6OSiO/w==
Received: from bloch.sibelius.xs4all.nl (80-61-163-207.fixed.kpn.net [80.61.163.207])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 0ef2fd0d-d6b0-11ef-b69d-00505699b758;
	Sun, 19 Jan 2025 22:55:13 +0100 (CET)
Date: Sun, 19 Jan 2025 22:55:12 +0100
Message-Id: <87bjw2tqnz.fsf@bloch.sibelius.xs4all.nl>
From: Mark Kettenis <mark.kettenis@xs4all.nl>
To: Maud Spierings <maud_spierings@hotmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, maud_spierings@hotmail.com
In-Reply-To: <20250119-usb_a_micro_sd-v1-2-01eb7502ae05@hotmail.com> (message
	from Maud Spierings on Sun, 19 Jan 2025 15:50:52 +0100)
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-vivobook-s15: Enable
 micro-sd card reader
References: <20250119-usb_a_micro_sd-v1-0-01eb7502ae05@hotmail.com> <20250119-usb_a_micro_sd-v1-2-01eb7502ae05@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> From: Maud Spierings <maud_spierings@hotmail.com>
> Date: Sun, 19 Jan 2025 15:50:52 +0100
> 
> The asus vivobook s15 has a micro-sd card reader attached to usb_2.
> 
> Enable usb_2 to enable this reader.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)

Reviewed-by: Mark Kettenis <kettenis@openbsd.org>

