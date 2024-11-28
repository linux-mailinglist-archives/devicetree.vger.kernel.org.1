Return-Path: <devicetree+bounces-125307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD449DB84E
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F8CD163012
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2486E1A08BC;
	Thu, 28 Nov 2024 13:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NPEVjmTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5648219EEB4
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732799419; cv=none; b=smQ5te6Z3ouasG6BMx/IKTPFOUeMT+nQigllF6SijJFsNbIWcOoa1U08rwO1UMSQQje2/jkzB8PcpAAZQ1ySkFsXfU2OvTkTyrS9puem5mieQ5WWNV5xP1cas5kJNqkiMwRUjSfRoC56QTM9fu+9Vlby4EmOoXApoBgafthyWbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732799419; c=relaxed/simple;
	bh=zBLn2JOZfSzHc56+BeQX/NmVHS7xKilS78jdBA6NbSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FXpJ2zNKU8jn0HTwp6JaY63y5tICdOmClgULAMs5HLXBS1dmsZxwK2tk8gijq4ABwgjBrZKxfZIxN9j/R2TvjbM84kKIOPbcRlab6u35xy3MhOAHziBWnzBbLTwtZoSqNB7yAa5SQYUWNEZ9NFui8zSfpDuE+6EFSD4VncNQKcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NPEVjmTS; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53de8ecafeeso886217e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732799415; x=1733404215; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kvNTzzEU4BAq35zkQFeqCy12uHiqzI5kAmvUt7YoTww=;
        b=NPEVjmTSxBL2zQIRXcJ5dmiDTggmF3xsg/lHnptCjNUU9FhOmKD8qFI817S7W4al9H
         pGBfp8UOzrRaES+pDlWnQRgDzi43+tiV2bcGrxSLtlQCOMD7Nq97ShgNA01pWau894Do
         vGY4xKFoF+7q/YeP0pgfjVT5CeKUMxYwssFQQaOy2wHkusP+YPC2PxCjX8iWu5+CDWd3
         OEoQqilO27wwrhXtZTWfl6QHaPGP3NZICKBIEYXxUlD0ZaYkF5zoQvQQ/OAKE9/GKU34
         ALolMvNcQ5srzLO4aAg7wF8oGwjAn1PH0yYX4IoTIO1YVX+ABN0+Ihra6/auQrVMGicI
         qoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732799415; x=1733404215;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvNTzzEU4BAq35zkQFeqCy12uHiqzI5kAmvUt7YoTww=;
        b=c6S4fulQvklVOjCTHKjFIiZv6NL8zrOvpEP/0zwNCp1fHjORF3nOP1bhPoz2HFAZs4
         rs/8q9F8uZGx1imLUcnWAkohRU84hvVphnzfrxptyMBSkGx9u0OYCm5qN0s6EPseXBZu
         ugVSe9oblGY8xsIi9MIuUaVXU+x4H+NUkm/2e/FHrKJRGu7aKTq0bjrGIYIsYpZSer2n
         8LAKR7K5kyOeR0pQ0fufFlZy34DBQHedOvYJ0Gfx+rdZNE2hHpUMHoxFlC+bK+uMunMX
         gR0XUiOV6LzYVbxOkZxfBq3WhVM4Ub+FnFv/9zQ09KLgLi0cl+Cvw8uecgY5LSvvkjbC
         E5wA==
X-Forwarded-Encrypted: i=1; AJvYcCVNtR8f0VvuzSUHO5h6wFd4rJDGidD0A0I37Gp4H6Dsu18l0kAWW40CCOMMlHx1+a3cN0eIFYlViFAq@vger.kernel.org
X-Gm-Message-State: AOJu0YyOmxzQ9U5r35EtyGBbQ4OM61HSIWq+ltxzP0oIe7FiqlZIygLh
	vzOwKpTBBX/z1lXVz+xLI5wz14RlPLtFw/2TVUilEPIYav8JWoDkajGJH8pyqgE=
X-Gm-Gg: ASbGncu2BT/uwi09IsI20ihqSjfV9bgi5jqbcb4Ony9AR1wjknb2h7zIzkorVTvpzVr
	ECMw9ine3yNuUm6tD2sDcYGEy/jgFdSgsO7VE4q4/5mlIscRkMorP7RdiOucHD1QN78FWsIy236
	hFOSJvmYbt03+32jpilvoLltGRi4Ymq3pGELhrrfeb18U/htcL9a9Ihx27sgkBtKL9DU4FlU6dG
	BGTCwaPcsAhv7i0G6TMLfmHLUooGahYzSRpnULm3dvrk4uRACyzg8SwDYKvQluOtSFnVpp7I+aH
	7nDaHezqGiUVzviv365Mc5cXB/AL8g==
X-Google-Smtp-Source: AGHT+IGOYh91Xj2WHbsqMNmtrL4jcUstcbUPpfSyD4+4zap0RPFXLe4HzprRrtHMAghWKtNFtt8YIA==
X-Received: by 2002:a05:6512:3502:b0:53d:eef4:8acf with SMTP id 2adb3069b0e04-53df00ff76fmr3871217e87.45.1732799415479;
        Thu, 28 Nov 2024 05:10:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f15asm170927e87.138.2024.11.28.05.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:10:14 -0800 (PST)
Date: Thu, 28 Nov 2024 15:10:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Adds SPMI bus, PMIC and peripherals for
 qcs8300-ride
Message-ID: <sxbjxywwjbep5rlndxoi5k62hqs24biryslkwbcxtvz3ilypvl@qi4omifueyqu>
References: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>

On Thu, Nov 28, 2024 at 05:40:15PM +0800, Tingguo Cheng wrote:
> Enable SPMI bus, PMIC and PMIC peripherals for qcs8300-ride board. The 
> qcs8300-ride use 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> 
> This patch series depends on the patch series:
> https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
> Changes in v2:
> - Fixed comments in community.

comments in community? What does that mean?

> - Added arbiter version(5.2.0) in commit message.
> - Link to v1: https://lore.kernel.org/r/20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com
> 
> ---
> Tingguo Cheng (2):
>       arm64: dts: qcom: qcs8300: Adds SPMI support
>       arm64: dts: qcom: qcs8300-ride: Enable PMIC peripherals
> 
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 22 ++++++++++++++++++++++
>  2 files changed, 45 insertions(+)
> ---
> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
> change-id: 20241122-adds-spmi-pmic-peripherals-for-qcs8300-0a3c4458cf7e
> prerequisite-change-id: 20240925-qcs8300_initial_dtsi-ea614fe45341:v2
> prerequisite-patch-id: 73c78f31fa1d504124d4a82b578a6a14126cccd8
> prerequisite-patch-id: 5a01283c8654ae7c696d9c69cb21505b71c5ca27
> prerequisite-patch-id: dc633d5aaac790776a8a213ea2faa4890a3f665d
> prerequisite-patch-id: 9ecf4cb8b5842ac64e51d6baa0e6c1fbe449ee66
> 
> Best regards,
> -- 
> Tingguo Cheng <quic_tingguoc@quicinc.com>
> 

-- 
With best wishes
Dmitry

