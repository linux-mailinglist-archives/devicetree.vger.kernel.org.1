Return-Path: <devicetree+bounces-140917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 407C6A1C4A3
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 18:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4AD191888A7A
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 17:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A974278F5D;
	Sat, 25 Jan 2025 17:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DExYhZgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B5925A62A
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 17:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737826344; cv=none; b=uplRC/FKRZqO9zoDoU05CO2OTud2cP/lQISDWywO9GnMntAzNhiekuBZ2wdw9STT0gnZL7hGXwoub4LRUL/wevL7fiFiZxt+HrWB6mMGuZFaokf3EckUCaIdPhp0rDB26rHUVcgGx9HBiXYD1xDSbcV/5nJPVF2d/hFDmW+a2uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737826344; c=relaxed/simple;
	bh=+CncgCx12/7s9Aqe57tDdzmN7kxUIZdrXndsgAgPZCg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjcqJji7fUKy/yBTtqytWcP49BWjsjGkVwVjjjEjQVA1GXXlItXE0NbPCIDcNwR+MzyY6Hjs/g2iyRludEpTpl8dau4dKjkSUvAVE0If1ifLFdx65ppYCI3rbd9/XXB32rQltr/NppKsCcJ73DKLqJSltLm59YOkvS9aGUgr6Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DExYhZgF; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54287a3ba3cso3934948e87.0
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 09:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737826340; x=1738431140; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9VTKxkEAePwEPt+V7eEDuXn6aqMYuyS335t11P98dTo=;
        b=DExYhZgF0EuvzTv8WLj8fa4GwAI9psPiP4d2NNPLXH0Ik1VFwAZ591E4US0KDlWn07
         sAJUIE/lVL/RojNqhc+0k1O4sysEiAUiZkCkpLK1jXd/mJkAEnOaFWwLOBPBIarZGaiv
         +zFFT3wII2yuV9xWwKQATa+aLkiR66Pqg8uFm9RDzqiNZCt/IwDKdmbYVeqNUocC1wpY
         3LFavCT1tRLs1eFooJ0wcu0MmY1E7OkLPYPqMicGpb1Y0wVjkJUUjHGZn/xH2YdFrBSy
         89U9wn3tjavdI5xXuI3Y/vfEQqTu6CHXdvaLynRPzHJv8271s38ShJUumRMc6OL6MESG
         VHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737826340; x=1738431140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VTKxkEAePwEPt+V7eEDuXn6aqMYuyS335t11P98dTo=;
        b=YgBmzjwy6UbowhBeCGPumzv/Q682HMtmPM3yjS9Mz1UgBzE5TL9R+1GqI9dOvqOHTv
         zF8mJrIiQuQoxMCZiHjhKHd6lIv1ev2DQIFO+l78x9+N8WPWb2VBkjMKCA9/7EASriHt
         dyI38msCVC6YZS2Dv2rS5sv7MywXSfYnBu7EBUQAX6cU/Ze0yW9SQO0p+HsbDgfacTTa
         mglDtjiMgrPl+HvMWnPlmlPqYO+jiei/u+fGlH1WRjYUvU/7RIcUQ9byMJFjlUDaHI2Q
         JMzTUPqiK6XtZY08rxss78N0FLLuSPFise6ZUVBjG4lb5xBBp6TbqQmvpGrEr77VmNEX
         YTbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGjbCvphjmxmOgaDXfEuTSJ39BZX7MXRSRNtEGd6PVyXspOoKayaFWiLCczj4itBQFan/y2zeuXP7n@vger.kernel.org
X-Gm-Message-State: AOJu0YyEu8u5IfDBWTEI/ykTSMMElP/hhR2E2DCYgLGChoKzlwKrKipn
	3pnvsv6iPwTc/y+gFl2UbPylnnpFz7S+vI4uQMrlfX2MA2tZEM1vCO9fvhRnUfo=
X-Gm-Gg: ASbGncsLkT2uuC2l3bRFgt8GPHSE6hgISO1HbxArE3hk0/wE58Q3QFdcb/KZsDGjEP1
	9YkGLz7+muvzyCsQg4eGjnpXCC6p+uO8cJu1ys7W2P2qbiP0SmP2YhjHwNzDprbibD2ucvidZmV
	nKImdTLmxR6lWJZpmhtcCT4NeI1APe82Vx4S5b0w/l2n+9wSRsFwUwUP4TGqvHoGthguh73tyx+
	9ZFRXw7kxgoJokS7S0OfhDx3C+aYtSAUGRhnZ74ZcTzpgGz8Qn8g7rkOjpJMnFEVSkGYKaKSzJ/
	7obJvXS8jZwzqBCg/hKaecrv8hCQI6s4DKd3qbDfsJRwU1M4G9g0A/eZAImt
X-Google-Smtp-Source: AGHT+IHM/qxpChUH+UJCNurb4Af2EPjax/Hj650FqV7s35DU657fh9sG+7Ox+WQZxY3Bclz1CNSomQ==
X-Received: by 2002:a05:6512:3f0e:b0:542:1bdb:9a61 with SMTP id 2adb3069b0e04-543c222feb5mr4471511e87.19.1737826339672;
        Sat, 25 Jan 2025 09:32:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c83682ffsm666153e87.115.2025.01.25.09.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2025 09:32:18 -0800 (PST)
Date: Sat, 25 Jan 2025 19:32:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/6] arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR
 resets
Message-ID: <s3d4tc3rstno6rtzlmpab6jho4dixjljo3u4b64r7luaszqlmp@3djmby5d3gij>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-4-02659a08b044@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-4-02659a08b044@oss.qualcomm.com>

On Sat, Jan 25, 2025 at 04:31:20AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Asserting the NOCSR reset line keeps the PHY registers in tact.
> This allows us to avoid programming long tables of magic values in the
> operating system.
> 
> Wire up these resets to PCIe PHY4 and 5 (it's there on the others).
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

