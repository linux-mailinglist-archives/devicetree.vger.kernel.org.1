Return-Path: <devicetree+bounces-123184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 013FA9D3A02
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE8F61F25863
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3764819F423;
	Wed, 20 Nov 2024 11:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bFi4ievt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6268619F41C
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732103703; cv=none; b=GBpwQPQ08XKn+6hUedlFzW581ryz2UzIq+O5/yYHkDcZXBepPUycWtW8y5SS0E224V/shzCyEn3PDeTI0AdwrAQ1zG9M4yT0O5vagtqmC9MjMfiT4b1L9kCxUkkctgu9BGS60DohBtcFFnPJWGnKcrcGrtLxiSuVdVkLhhYWk1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732103703; c=relaxed/simple;
	bh=KyL3kYPj+ynCqBkkIgRzK6ppMn8Q42vYTthv6ynTbZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dK4iN0jNLVHob947MpyHccVm4BVwRIR/QHlzrD7Hq8VfDYeC/WklxAGdx063xLRQxjv8nyASM9DI2SChfFHX9osHhRnuLsVumvF7emDkOrkiQYbmpBk6D78H5NYgh0kFp+JBJDSQhQ7Uiopfr1y9lb7GuczcVaW3vtJ4rlh6v4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bFi4ievt; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53d9ff92ee9so2564107e87.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732103699; x=1732708499; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cYPtpbT0rYtV4i05WMfOS2O/bZheBplF9irAJrqd1/4=;
        b=bFi4ievtEScwmDM7Bx35Jb0KUYHv1qAtn0XgyOLgEcgXDSXWC7niq7/DDAo/IG8Zaz
         ULFzEsIwP+WpE4keSDZ5Dm5OphVKgkTeKk9JD8kMFYu+RDpmo4KcFKt51zymazfTTHt6
         zvJfgrnJxaAC4AhqKzqRSC38oVc1Xq2NX3H7gEzjcOqh3QqLTNgczPUnxOo5Efm925Yo
         Xmg0jwbARwdx0LQgAXeTGqZ1x+0dYa5G8G1XSXMVfUkotPsqHiHKntB1x6RpyUxhxUXy
         AEncxeZtAwxGlnbre2njF29IoEpiUSAAuYjXchH224bGIfV88ijV/Pvyy7iDz//2m81g
         eURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732103699; x=1732708499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYPtpbT0rYtV4i05WMfOS2O/bZheBplF9irAJrqd1/4=;
        b=bNQIu+LNIaJtpLLMe4WFctlu0ElS2FFPSNpWLTL3IhD8tnRms96ynoBPIokd3rcsqw
         if7ewftUAmDZlWPWBzHKem81b9dK2VMNgKCRufNSxvNDWaqAI3emgCOoLuzL6xJBXbDy
         PhWDQ60NtXyC9vkQ164vDNtA4DnmDhDMFgyBcXN+YxsFO3Q1EemiMd/S9fJUlMB4H+ch
         ++kUN90UpoUua6EJPciTzvAC5FgwITqr0sRF7T7SYwv3nBRNxCTd8DBVSZO1I774sp3b
         emPP+e2T2HN4QgZJP+ExOQve6Ez0+EmPAhGh2zxfWHy9X9RU1o+FBfvILRdgA0V3rTel
         68zg==
X-Forwarded-Encrypted: i=1; AJvYcCU2JZ0XyEGIm5/eLdV2sjizXQ4VRP0BISSQF8wjwSpTpQsbZQv9Ep9Dg6vYHUmem6gLVynmsoLhicD5@vger.kernel.org
X-Gm-Message-State: AOJu0YwjE/3OHMYTbj3D2z/IQRSYBzjYC+8PLmv9uZ3/sESNY2dIOAUd
	GKYeIC+WG+gxRrpivY6kwO0yfS8Gi1b808iy2v0yXCAOFJZhnC5m2Sr8ZezhztY=
X-Google-Smtp-Source: AGHT+IFMequDT4bdY6LP9O3I5AvvXInQUMDuGlgE0eHlxcbATY6rHghGabLIkWJMyNfHChGofJMPQQ==
X-Received: by 2002:a05:6512:1303:b0:53d:a883:5a3e with SMTP id 2adb3069b0e04-53dc1369cb4mr1005535e87.39.1732103699572;
        Wed, 20 Nov 2024 03:54:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3edd2bsm608508e87.43.2024.11.20.03.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:54:58 -0800 (PST)
Date: Wed, 20 Nov 2024 13:54:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Kuldeep Singh <quic_kuldsing@quicinc.com>
Cc: Pratyush Brahma <quic_pbrahma@quicinc.com>, 
	Bjorn Andersson <bjorn.andersson@example.com>, Konrad Dybcio <konrad.dybcio@example.com>, 
	Rob Herring <rob.herring@example.com>, Krzysztof Kozlowski <krzysztof.kozlowski@example.com>, 
	Conor Dooley <conor.dooley@example.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_tengfan@quicinc.com, quic_shashim@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs9100: Update memory map for QCS9100
 Ride and QCS9100 Ride Rev3
Message-ID: <rnrxb5e7xcgnjp4y4id5m5dyswii6xipry3bvtpit2f4c3iqfy@qghr42jz6oze>
References: <20241119092501.31111-1-quic_pbrahma@quicinc.com>
 <30fda0e2-f314-49b8-8c1c-bf4fac87050d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30fda0e2-f314-49b8-8c1c-bf4fac87050d@quicinc.com>

On Wed, Nov 20, 2024 at 01:41:03AM +0530, Kuldeep Singh wrote:
> 
> 
> On 11/19/2024 2:55 PM, Pratyush Brahma wrote:
> > This patch series is based on Tengfei Fan's patches [1] which adds support
> > for QCS9100 Ride and QCS9100 Ride Rev3 boards.
> > 
> > Some new carveouts (viz. gunyah_md and a few pil dtb carveouts) have been
> > introduced and the size and base addresses have been updated for
> > a few of existing carveouts compared to SA8775P. Also, tz_ffi_mem carveout
> > and its corresponding scm reference has been removed as it is not required
> > for these boards. Incorporate these changes in the updated memory map
> > for QCS9100 Ride and QCS9100 Rev3 boards.
> > 
> > [1] https://lore.kernel.org/all/20240911-add_qcs9100_support-v2-4-e43a71ceb017@quicinc.com/
> > 
> > Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> 
> The memory map for qcs9100-ride-r3 and qcs9100-ride is exactly same.
> A good churn you are first deleting(based on sa8775p) and then re-adding
> for qcs9100-ride*.
> 
> I think it's better to move common qcs9100-ride* to a common file ex:
> qcs9100-ride.dtsi and keep specifics further to .dts files?
> 
> This will ensure common entities are present at same place with no
> duplicates.

I'd second this proposal.

-- 
With best wishes
Dmitry

