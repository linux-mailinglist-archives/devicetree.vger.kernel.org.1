Return-Path: <devicetree+bounces-136193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E78A042B9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 292787A129E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D60D1E5738;
	Tue,  7 Jan 2025 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jhbVWt/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E591D958E
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736260715; cv=none; b=LcHWE8GqexKEMgVQ4+K7gVOj98GFtKlVgT7M08t6mF5bbrG1f9QBxN5ZbHoMgLAnj1ODOW0/h08qXDMZaNrhR9+2+1PMO/wBS4owQ02HOg/1HfP/5Usf7xP53mNjLJsxAWEZEjZRx/gevZmzwMOx5kShLzfhpKLB4QpjIbmv5sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736260715; c=relaxed/simple;
	bh=EAOJ9Cy4whUatGc01tErXLm3u1bA9IGZtdlzgfVjk20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lPZGqX35QyEWDfYKOolhL/4HczeeWrMGajBhUJFJ7EFq5dcaIpiCwleQeDJn9KpBSt8qtRxDH+YzuDlQZJWfl3ClTdbWT7MqhNtilSbwOhtIOewLtzckYMKUjO0vEdvTQO+5oojLJLvVNiFZHiNVmg6jAAaExrZpNzCZWVk/IdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jhbVWt/P; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-436a03197b2so59433865e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 06:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736260710; x=1736865510; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qo9P0YtQuqJXCqr05Qb0Bv72irxJaHvuePVGR1s+GJw=;
        b=jhbVWt/PCJUaK4jCxtfVQcf/BqyhKHT1mcv/XIzkoA+pKCBd+kbyD2timM2jWDmKmt
         h32X3FdDoyFb/IpWQV3BY+zV8QJ3Fv2PECWFtSnueoyDe/xtsm1JZzTtASshXUkXRdqX
         uxuQZnHcs8va5viV5jlcO0NF9ZAoCTs39ZYAuT7pqPx54TBFc5eClGCdPLeOW8YYOtBy
         1FiSvzhj3aPmGWRWkvdtosm0UM9XE606VmP8myXSC5N2e9UeeEzPNeMcjOudu+Q6Cm95
         VU9q4NqZ4od6BacY9QNS9JLAri5TGpstkHHaWIYm4Ufx3YQJqqEZ0dWXpiW40SRQN/sb
         u+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736260710; x=1736865510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qo9P0YtQuqJXCqr05Qb0Bv72irxJaHvuePVGR1s+GJw=;
        b=EF6XO3Li59jcwcvvzFCSisYyaw7hf8p0zXCDqzNzkmK2+h7GZ42Zn4+Ot4FA3NYX6p
         GGHF9Ive3uzuLnFlr8UYDYpFM6JcBRUmmyESYmO3swQgf7YDunvnW6ILy7rsobTZOkbU
         QZzaRbEkR5G3EmXNBeLaFV2bZCjhXHepdYit+yNWsvwi9OJszpcN2kraok0Pjc6lD3Ut
         +HIKmsjhxkRzqIZVpxwaYd9qke/r5cW5svPI0JIR8nGRRktvomTzw/+tp8xZYqTnNfEz
         zkaceMeOokEp64lmh+q2RcS9lsSnI9eQZus3ismjtZAAjQhYLotjcs0keQUmGTPlWTcS
         FZXA==
X-Forwarded-Encrypted: i=1; AJvYcCXqqOeWni6iNa9EZCHe7zvDDwOpmzOJdOLrs8xMpZUteBOWB+kFT77pLvlfdxhijHjDHK8LvilQUN5/@vger.kernel.org
X-Gm-Message-State: AOJu0YwSf3Sqr4rFHYExRvYH68R5OWWAzCyY5Ypjf4vAii+AyBp4zcpZ
	3aADbtXe6UOJXkIhRq4XfNU7/sLu8oqgKtNgbU5NFa6xI8Ct4rFAF9hvoywARoE=
X-Gm-Gg: ASbGncuWMwWFJ8In9tLbjHwPT4ieWkR2k+mh/kYQP6EWhSor74S4013ENv1vhSuvmPd
	yrdeKKXhrzjgKlxxOenIVLyyvJ6ctiABhv5SYKe+xryYP8lDSaT4/s+3vwzcOVW27HVcL7E829R
	5mjkVq+gGE0OhkJJDMv5olkHWb8fifYSE2EL/oX4lyb2fKJGGyMWRl6xrYnciD8DhBG6gz7Zykf
	AD/8YrMWasydpA4KVMhz0gGyqva5qP0j3Nz+5RQaT6uyAqGpSrBr5s=
X-Google-Smtp-Source: AGHT+IFIF4I4xKP46VS5zqZ0+vproNT/iu73lhD9pH8Af1WZX6MRdbruwQE3ujvVRC8CO0SgR54++A==
X-Received: by 2002:a05:600c:68d7:b0:434:f270:a513 with SMTP id 5b1f17b1804b1-4366d357401mr499304255e9.29.1736260710425;
        Tue, 07 Jan 2025 06:38:30 -0800 (PST)
Received: from linaro.org ([86.121.162.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8acadcsm50023052f8f.105.2025.01.07.06.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 06:38:29 -0800 (PST)
Date: Tue, 7 Jan 2025 16:38:28 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e78100-t14s: Enable fingerprint
 reader
Message-ID: <Z308ZCrnsaLReaIX@linaro.org>
References: <20250107-x1e80100-t14-enable-fingerprint-sensor-v1-1-8fd911d39ad1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107-x1e80100-t14-enable-fingerprint-sensor-v1-1-8fd911d39ad1@linaro.org>

On 25-01-07 15:35:07, Abel Vesa wrote:
> On Lenovo ThinkPad T14s, the fingerprint reader placed in the power
> button is connected via the usb_2 controller. The controller has only
> a USB 2.0 PHY which is then connected via a NXP PTN3222 eUSB2 repeater,
> which in turn is connected to the Goodix fingerprint reader.
> 
> So enable all the usb_2 controller and PHY nodes, set dual-role mode to
> host and describe the eUSB2 repeater in order to get the fingerprint
> reader discovered.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Turns out that on resume a couple of things are broken w.r.t. to the usb_2 controller:

[   41.104913] arm-smmu 15000000.iommu: Unhandled context fault: fsr=0x402, iova=0xe2010600, fsynr=0x110001, cbfrsynra=0x14e0, cb
[   41.104936] arm-smmu 15000000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x14e0
[   41.104950] arm-smmu 15000000.iommu: FSYNR0 = 00110001 [S1CBNDX=17 PLVL=1]
[   51.420689] xhci-hcd xhci-hcd.6.auto: xHCI host not responding to stop endpoint command
[   51.420702] xhci-hcd xhci-hcd.6.auto: xHCI host controller not responding, assume dead
[   51.420720] xhci-hcd xhci-hcd.6.auto: HC died; cleaning up
[   51.420836] usb 5-1: PM: dpm_run_callback(): usb_dev_resume returns -22
[   51.420864] usb 5-1: PM: failed to resume async: error -22

So do not apply this yet.

Sorry for not testing this properly before sending.


