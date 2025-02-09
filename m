Return-Path: <devicetree+bounces-144445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D5DA2E16F
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 00:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F1977A2294
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 23:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E322E1EEA56;
	Sun,  9 Feb 2025 23:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yco7x0gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AA5146A60
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 23:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739143143; cv=none; b=muHBdUeaLjRSYUJ1putOuXMxsLbhuuX30ZoyXxlubtBC+yKRrg/Q7bUwem+hmQZ46NCzq11d8u/AoEGIBu/aofXvn00r6cjD6O2cMIsU8MJTgYSw7INoSdpVGgNhbkjK8tOAwjTIZ9dhFKL1Eyonnbctni3eNus3Z7rreTBmF0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739143143; c=relaxed/simple;
	bh=rszgRj3NwhWkiN0CdYsTuTKC/8cqBo5K8xVb7QGC3Uc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tPSgXuXRFLPS1pUla91ZcyWP0OL7yJ0yrGpkxcGoKzKlOigdsIgXwYBeImpjGMJp6cY0EoOrfSUwI4/YjccqK4xeEtj/8+0UpEU5SlYdexapFC/oZe2i2uqXm/qhX2V1uJB1jZ1z3m9E2s25My+VtkES3qkRWpBDoViyglScGfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yco7x0gZ; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-545054d78edso1332221e87.1
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 15:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739143140; x=1739747940; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l6CnvZUnsw9udf0ZXFbInP3vAxxI8mGJaRGUFTF+U7I=;
        b=yco7x0gZzVR25agxphJ6OJkB78fMBGy8G7juGG7/RldwEf9e8TcWmktttmruukd9bj
         RC/QB1ofDS7HW3eY42Ee51f3YCrWmMd2JHdJX5dxtycTrZyCsxl79Z9ixR4vpmSqkoqD
         GGihABikwTFZdr7UQ2tRkcvb8uddym5LNnThPhVXpigLtyhG/9l9MUJxtsTZN/HHuyCA
         DO35IxZX3u4uxOUg3dCWWZQfZRypvI3gD13/0MdOvgw9L8Fsdw+O2qiXr9RiFOqyz8P2
         vVUbcoOWsBnvgTDUA8+BP9/Wq1aI78lyz7o3jK4MCs9hkXuYDlqzNU8DpucLit3wZSh2
         /dsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739143140; x=1739747940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6CnvZUnsw9udf0ZXFbInP3vAxxI8mGJaRGUFTF+U7I=;
        b=cUxH0+G2/ptmszqPmQumrDyCh5SPeAumXoWYkLQUajS9oejGalzG1LIdcMd7mHPy+1
         ZTUD6O4wIzZJsXziq+5p/XIOGSMnzX3ns+vOVGsj0BtOgbVVvUYHLVwtBKSgjsn883AZ
         WGzAlCMnzgtj/p9otuL38QfeZGDaynCtdQag5a6gzdu0eD9mF0JCKe+N9WRTei0l4l+8
         OyUiFnoMILcq5+U5fmqxmmgAc4Ekl82UhhSVDiQ4CkTuGejqswY75UX9JZq+u6L4NjoA
         Von6A5GshXH5zrArvDhh91G6K6/yoL4KFD2/Xnj8MjXGiUhjsfIy3RYBIKyNjIo3WPg9
         Hv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUlHsLPGWDURHc12IDv4FXFSXVv0zVlCg4ZD9hyV5hV8m6oyfbuLCHwpp8wVmxltOT5WKlCP3avh6Lj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt3XCqo1E+Mxefcy1bx7hUTj4AmXBnXLyl+t6yCkQKNI1JqV4j
	cdk2XbiixITOHNCnnqiQ2TOpUYUqjBBmaKr0n/zc652MGMoTBazdYo5wSn5qKwI=
X-Gm-Gg: ASbGncvpUWO40KR7LUjk7mhWgCTM/1vQd2axpaIdwLwwlLuOSBIHiOoekAmcq7jzv85
	G0hd6Zak1+Xi30cCg+LTEpY2uoB3LjKB+0KIV9fYU40ZjF+2kDPTGVsICRb8wnnGGq6CkN5GtLH
	fTUIlw8dJltieOQNoy+uv400uLh41B6/aaIktkSxg148B5BJduOKfM8cjAjvQ+CqARt5gn+Vd9Z
	ep2Ck1DPp3He2lfQ/WtsyUeUWkPubioTgnKDnLZcq02SkEPZ9yvUVOr9hTT8PIkmryCKr/IsCwI
	0Rc+divNY/sDH3BkR55nALyA2PJ30KU6mNLQLagwt/pkYHklKlUMi/bfRs5Qu8KYm7+B/hA=
X-Google-Smtp-Source: AGHT+IHcXJtP320S7JR6jpYgriqZk0+Tqz/hq6HC6F86RvGWyZmZUW3pqNMIDEOADnMK5kEm/Dfmng==
X-Received: by 2002:a05:6512:234f:b0:545:aa5:d455 with SMTP id 2adb3069b0e04-5450aa5d5a8mr764576e87.15.1739143140089;
        Sun, 09 Feb 2025 15:19:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450d6f6e13sm82253e87.89.2025.02.09.15.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 15:18:58 -0800 (PST)
Date: Mon, 10 Feb 2025 01:18:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sam Day <me@samcday.com>
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8960: Add BAM
Message-ID: <6t6ho5ovwabr7gzr7kzpsz7c6pclpxa5mdr37p4sycg4jbi66t@bg323llk7g3n>
References: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>

On Sun, Feb 09, 2025 at 03:09:12PM -0800, Rudraksha Gupta wrote:
> Copy bam nodes from qcom-ipq8064.dtsi and change
> the reg values to match msm8960.
> 
> Co-developed-by: Sam Day <me@samcday.com>
> Signed-off-by: Sam Day <me@samcday.com>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Changes in v2:
> - Reorganize sdcc{3,1}bam to be after sdcc{3,1} respectively
> - Link to v1: https://lore.kernel.org/r/20250208-expressatt-bam-v1-1-8794ec853442@gmail.com
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

