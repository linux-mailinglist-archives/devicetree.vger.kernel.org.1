Return-Path: <devicetree+bounces-161566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E410A74977
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 153963BF225
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 11:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4138021ADDB;
	Fri, 28 Mar 2025 11:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qerq+QpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F21121ABCD
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 11:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743162494; cv=none; b=e3YgvVixib4aUfHGnkjjrtrq4OQAaHRAtV6yR9COVm9E/Qxbg4AGvVmmX93iKXZyHZQXHklmVKbK124nDqYD685RIQK5f8ixu/DQabF18kgPt1TN/zM/q5PUzxeot7PWiDMkuTNPGZpBC7EEpuOHnZptMp1KQUGlFiRPfm2DQfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743162494; c=relaxed/simple;
	bh=cE16fnSOvZivKFHC4zQdYYvzlgv6Zjj6Dj+eXgi5qGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRKKXHbf4HL7y5wWQqByaJXjPRMKU36Y31VpoCT3fIU9zrA+v5gKejIvAftosdwd/d/fmXGf13V1yngZ1hG0vjzBbZAPaarfydYQDc2sJ8ATjSEJNkTXrffaSaaeT4GhkEgF+a1nqD61bfqi0c6p/CibhOKsWMeQTZA4853nQF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qerq+QpF; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ff64550991so2518182a91.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743162492; x=1743767292; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Td2A/QQBRN6mIkZVEPKhOMec4rSaELJjaXeK/AIS/TM=;
        b=Qerq+QpFPNuq3OG7h2+SDzsnOb0G7P+pejPEpDfFIPlVNFlBhoxyedQK92JbQNC/1g
         +N4rXb5M9ZCVaM+4zYnWlgjsElM3lFnooZVkkcS62Ux7hKCH4yS5XYi96axk1NQTvQaD
         0o6XmRMAHt9Msoz+j7iava6YOfUEuH4EoV3IP2H6BVDkRl+wrYB/6UMfWiH8d1UecpXX
         J/Ce660t8RZmKihGNJBKsG+JsrPi1Tds2belHNHfm0K0+SLMNUSzijgwMb15p0uMCarF
         ipvWwievVPzTmU4+MStRK36IClIYI8yi8w49D59vkCcnpfwCI0iM4SGBuQp8OUzrI7Yy
         AtJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743162492; x=1743767292;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Td2A/QQBRN6mIkZVEPKhOMec4rSaELJjaXeK/AIS/TM=;
        b=t96MraWnJ/l6w1o94juL4V9epiYx8BofcnKkx8gBAPKXzf+P1ztzd74I3UBFDn5s5g
         otdpULEQE5EaVKaoi6+VLRvY3VKofuJQmVoGhQLkllbu2DcHbhrtms+2lQpREDBM2grd
         2hFyZ5U0kcoWQDBKtLZWaGCo0eUyMhUvHdkEFZ5XLKFPDkQKXcKSHWBMnYNkBo8m+c2c
         ym4tV4dhECbBpcf3pwqfvuhPwBKAPwHRgTP883WfqEuhre4MyLYl2P9ZIDbSTZjz3D/n
         A9mm6m6Uhp5FcGMBn+jBYfuGIQDGGXO0oqsrFkfIp7519vi3HYniz2t1HB2bm9YeBSUL
         YKQg==
X-Forwarded-Encrypted: i=1; AJvYcCUzkbnm5n+BFswk22crajTn1k+lbHp/Ke0AjrxKM6g8kQ16PMGTzyR/90WdDFULHDBCzYYbpXw6nRas@vger.kernel.org
X-Gm-Message-State: AOJu0YyYo/6GYtBQiEIxZ6Qx093Kig+HjP2y2iUrSPqKlzJn1OIGXdim
	anTly3Ur06r8XradkBEFbgW8vYNnnriNIfQWOVL8+uYw/zlkRiFT2e/AnT8DyA==
X-Gm-Gg: ASbGncu/uh9848JCQU6j7EpyE+cYj6Putd6/NDWrehWfdUUKNDkHwhRopjZH/FfdwP3
	RshguWl3GSxjLJtyajXs1oQd6TBMtqqCaIJhgRmaTj53J6QYs9syBe4oHGK7DWuP6eI8OsuPW0c
	LwP/uNVE7P2ubu6+JQH/9zL78qDwoNpxpnKSBkpzZ5iCNE5ShWh8+af/66cK3ZtLv0fotJnbAAn
	PvJ1aPjYGHLSjtbQ8TFQkzB1PKcESw9SidJwXxFh1cLKhf4no9oDI7ZO8Qy90P2RI+MFjslw/my
	smxO+atP9Qd84IeN4mFmbpCq/ea8cVU6R+NAutyNjiOuS8qRN5Pbtd9jJCgzTOqHRA==
X-Google-Smtp-Source: AGHT+IHkFyrQLO8ThGmZA+vIQj3/oOedMM4lGeaL5SeGczjykX6lPC7XrgIdUY3TMx68guIRyMVfjw==
X-Received: by 2002:a17:90b:1ccd:b0:2ee:b875:6d30 with SMTP id 98e67ed59e1d1-303a7d73279mr11051363a91.9.1743162491754;
        Fri, 28 Mar 2025 04:48:11 -0700 (PDT)
Received: from thinkpad ([120.60.68.219])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f1d4ba4sm3942816a91.31.2025.03.28.04.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 04:48:11 -0700 (PDT)
Date: Fri, 28 Mar 2025 17:18:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Jingoo Han <jingoohan1@gmail.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com, quic_vpernami@quicinc.com, mmareddy@quicinc.com
Subject: Re: [PATCH v5 2/7] dt-bindings: PCI: qcom,pcie-sc7280: Make elbi
 register as an optional
Message-ID: <23cjiqtpyzuprvhezrrrbayxweahazlnelswkv4axrc772lpra@tgegltyd2355>
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
 <20250309-ecam_v4-v5-2-8eff4b59790d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250309-ecam_v4-v5-2-8eff4b59790d@oss.qualcomm.com>

On Sun, Mar 09, 2025 at 11:15:24AM +0530, Krishna Chaitanya Chundru wrote:
> ELBI regitsers are optional registers and not been using in this
> platform. Having this register as required is not allowing to enable
> ECAM feature of the PCIe cleanly. ECAM feature needs to do single
> remap of entire 256MB which includes DBI and ELBI. Having optional
> ELBI registers in the devicetree and binding is causing resorce
> conflicts when enabling ECAM feature.
> 
> So, make ELBI registers as optional one.
> 
> Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Wait... I never suggested to make ELBI optional in the binding. So this tag is
completely wrong.

And the change itself is not correct since ELBI is indeed present in the hw. So
we cannot just drop it from the binding because the driver is not using it
currently.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

