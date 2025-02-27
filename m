Return-Path: <devicetree+bounces-151836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C18A47450
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 671A23A74A4
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9844B1A38E3;
	Thu, 27 Feb 2025 04:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oRog99tJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C314D2B7
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630136; cv=none; b=mGRcz15OZ4aCFwi5WnveEuZqD4pxqZ33fUNrsPZTauRhH19DUMCJxrbFPB1gUp/7vRQyAYqdXfb96lrP+SLPYJYNORJFndlHBpMqZfwQwmsKbSKY+LPC3NOIGhwXlytfDfjzet8d2F54EGWbf5EgbTtQd/IyM4WFVwgn9TCgexo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630136; c=relaxed/simple;
	bh=5oIUiPUuW9/Wfa4lWUIfURolnu3e+cbmsD0Czuzj46U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NhYYEFH319PVu3i6zc1QXIyL+6XxB1q7npw8cCQ0ATFAHkxXBMabHsw97canAb3Q0ljae93mWEEku8Ft6h/QpPDxZtTtiFa2MgE17Kg2WNFUdm/Q298o+q3zZJQtCJeMssIol8S/JgTtBA1H6HuLT46UfwjwPq6VqMemcgldt+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oRog99tJ; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-546267ed92fso469098e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630133; x=1741234933; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EuAUHe2HvirnbniJws2V/C5qa0J/b2o5CG4USvlKN/o=;
        b=oRog99tJpPnueW6XTxb75LJJ5GtFoSaHHu09BtpB+DJoyvIVHgknmjAfbgoXn8DFiE
         ELDgOzq2tkJEVvlBy/yN5GCAwf536TmWe3C7yRVNQLgZR8oO0EcN1adS2RmdBjgeYFYg
         OtI2BpzXnm4crnRMdm2Gxvq9T/haAdT+GW58ohXTu2Hm5Q/OBha9bf+98X+PWltRMlSx
         e32EE4KT1Ll3UyBqRQqo+PZGW6JfdRW75yNx0VZacQVlASYTux1bbTJATYvnxQWqfrC6
         pG+gN33b0CNSHRGrFgjuxORq8QDiVdVE7fgXXJMkt55UtztKqLPBrXbtiFKJY0QYhvG5
         O8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630133; x=1741234933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EuAUHe2HvirnbniJws2V/C5qa0J/b2o5CG4USvlKN/o=;
        b=culVRx+v6X4Eazc6XT/i5sxtaPDz42JgCHW0n1kO9Oz73vY3MnVa7NVSzdOVzWsH4s
         a2+bgQ6LXxpjB4Ar/BgV7RVFJhf+39JduwdiHq7x6i85412/sa7tpirb7R41xYp1mQ8M
         Be0AWUELGGQtlWs+OEctgFDCTm7awnKQ2Z8PuiX34+t+uLoxotvp/LJR3XFC7XNCy2go
         z/daYFweLCSVeD5qDOUy/jn6CxOSqbVSEmzLM5RRc+yv97OAVrI5KNsxc+WEwxPvNLJF
         uT/Nu93GNCSU27ao1XvQG7tRcQSYdePUpdTeP/HLSR0Qsjxkbr+bzLtXzo2WobELIRHi
         hI8A==
X-Forwarded-Encrypted: i=1; AJvYcCU0BPYITJdQ38ruA5dHViLkMxVHGu9yV9l9cLhce0fY71PsOhnbkNGBoiDlCI9uEtgcMiV8te14kcXB@vger.kernel.org
X-Gm-Message-State: AOJu0YxCDR080p/+cxpFlNDp9gy/xVytbo+oKmbgl+Zb6jGngBYCKNTF
	3YSdwP5c5hHmN6OLpshtBnXVN1YFwCpcPk6AreqR5zwsuO02C5MzofTd+0SJ7KX1+C1tadn6btg
	otbgrgg==
X-Gm-Gg: ASbGncuXnmwM3a2bArqXw2DRwQmt8V6pXNMpECBv/6cGEKP7pzjBPPYEZl6MzNwn7E3
	aIC6aJTPrZjkq0xvKZRRhObDi8/vMp4ne7NY2ib2Yl9LJXU5eJEFI65Lnk/J7I/9A+gMbhvqDHb
	BrxHJsOBJ7+yviC8ptI30Ym8SLi7UWVJG7/LVnQ1mKx0rsXnzZSNUQe7cWcypjz4jiqx3/UfGoq
	Ui5TpGLLig7uYHHe+9lqCSGQ1DrL1HsJEMgo7BeL9XM4jh7WOajgGCFBoWhKmgUeTCV++0SV/0S
	1/GVXKdZ3Jv9J47VBQVoxj7/dUDukntYMRJJTRTQcJpOOsQyAnHHHUgyr8A5F5abGi2iitZXpq+
	k9fFPqA==
X-Google-Smtp-Source: AGHT+IFVuxcTMXSGELJtG6vGwj4u7x9DOeXvKGs8bHxJRAKA8hCr0W76iJG58PMKSr6dsn2bX7BIrg==
X-Received: by 2002:a05:6512:b98:b0:545:353:4d46 with SMTP id 2adb3069b0e04-548510d8085mr4709485e87.25.1740630132885;
        Wed, 26 Feb 2025 20:22:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b867c8f7dsm601111fa.48.2025.02.26.20.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:22:12 -0800 (PST)
Date: Thu, 27 Feb 2025 06:22:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, wctrl@proton.me
Subject: Re: [PATCH v3 2/2] ARM: dts: qcom: msm8960: Add tsens
Message-ID: <jt4o4btmvfxorguh24yqr4mxfy64o47h5uql4swtveqxlo4q2e@2ozfhduyvvst>
References: <20250226-expressatt-tsens-v3-0-bbf898dbec52@gmail.com>
 <20250226-expressatt-tsens-v3-2-bbf898dbec52@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226-expressatt-tsens-v3-2-bbf898dbec52@gmail.com>

On Wed, Feb 26, 2025 at 07:50:42PM -0800, Rudraksha Gupta wrote:
> Copy tsens node from apq8064 and adjust these values:
> - thermal-zones
>   - adjust thermal-sensors
>   - delete coefficients
>   - trips
>     - copy temperature and hystersis from downstream
>     - delete cpu_crit
> - qfprom
>   - adjust compatible
> - gcc
>   - add syscon to compatible
>   - tsens
>     - change qcom,sensors to 5

I'd say, this is probably the most unusal commit message message that
I've seen.

Nevertheless,

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 59 +++++++++++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

