Return-Path: <devicetree+bounces-79618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFEF916064
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D457EB222B6
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 07:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB888147C9B;
	Tue, 25 Jun 2024 07:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VS38ITQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490021474CB
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719301853; cv=none; b=J0BbmAkgkrz6bWZWcC/eYe1uKqOBxQMyN7GADbO85IKUv6TtB9n9cWhOfnKAjBM/sfYNcZ/BcSIrCuisgYd18WeciItTdLhWgJj+DJKVyKX2rmUNqIQc6YSVR6Pr5NdIccwvafDqkHO+2v3s1Xq23BzQ46nliiwCAT9yHd91hbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719301853; c=relaxed/simple;
	bh=8jxcS8tRiE+LFLUa/aufartj472cje7N8ZY+g8JTF0k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=owlFwsAX/XsAn5PpMKKXuKaKJSolouTmYBA43u0N4KR54qtyZf4jxZuCG4vG+DU+9vjWr1bxMknC+SjRr6KN+k1waW2TckfieBrXLnLmuqETHK9klt9TzFYjMAjXLy85eDuT8+617Prmx5+xUyGqHt6kvSFYLqiHZg4AozQpl08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VS38ITQi; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dfecd065b0aso4261200276.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 00:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719301851; x=1719906651; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0RTZZV3+tH/geYdSF4ruzYz0JFAprmpnlQN133kk76E=;
        b=VS38ITQiRMwGC1+u/9xemE1zv0NLpgbDMwRTLRxiMb4baqTlOmR5E/+p7Rlcbtdkye
         ujeL7Kdhm4bwY8izNNZSApnCuyR6itlpnMJ03fCJ03Dl5+fvl+n5VphuOuS4X60N1SFA
         JbHpFuEjgSFQJLWMIm9SLKHHViUZKBDJWY/O9byjUr0Ew92kvgL/EpuJJ84Dc5ORUQxc
         5ZRNftUEKaq8CDNS2qCxIKhB+mhZCHpQrXq0EUqctGSIfsS1y73w8jFq6QwWE2T4FlPW
         GPL54RT2YxRfuuIAmAEm0DOHsfFjUUAG7S7YsuWKpcwa4bM0JusdTjOGO0yjcgHaHard
         qM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719301851; x=1719906651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0RTZZV3+tH/geYdSF4ruzYz0JFAprmpnlQN133kk76E=;
        b=CI0qNxIL2KHydfSVOpkRz4pjjSF0+i1ALZSpY54T/iRMVv98JTIela0rd9o3WlcvNH
         ygD6sfgP9EGJqKWQ5MukZBcrBsSwkTd6a9rbOGDikkYWjZ09DdS3Z+O4DDTJsQhMBBrj
         Drq5n0j5zsCMJ7RWC/G55V1G3IixkvnXGVdpit2aP0/dCBussZKUwMIBe/tHV7HoowYE
         4i8wv7bIbNnFMqMchCoGZjQOSJ8ZpybvcPWZHeC9mV6sbJzxH05p+mc8mjTUd29WgbI8
         +OuOx923+pRN4t6VLIg/jTZDqnVOMTPn+D+j3FuF91YPULPHElF5yZvsB4VnqtCfo5ce
         3Q7g==
X-Forwarded-Encrypted: i=1; AJvYcCXHgOwiH2HN/3CfRvtbqW+NWlnyJu0L0c9wt/O1GAJNTBYMH1Ti9nQiSl22zAx/vtrhJsNoCZRwAaU9amt72lUvJ13YizU42lSDrw==
X-Gm-Message-State: AOJu0YzXhU9pohSc8Uc4F1LrUMYOTswYk05fz2fcpq3ov9XB2KyxfcVf
	TFboLG9LV8F/cewdC0BE01nJzI5/qJqFFwSA7H4MT8GZpBQbqvvs9w3JTs9rRnXZ3zqVAhpCFUI
	GctvPvrdJWQFgxbVPUor6xPcCXEWTy31GXxdwBPBlEmBJ6cA0J5A=
X-Google-Smtp-Source: AGHT+IGQ3OTSR0KC1/SpE/IADAGxFrimSZmnBj4lcnGkw++5Ft8jUp7w1CXLdHosE9cv9AXQbpTdIr7RsWD+lOF76b4=
X-Received: by 2002:a25:dc0c:0:b0:dfe:2488:c056 with SMTP id
 3f1490d57ef6-e02fc29d8d8mr7663761276.23.1719301851256; Tue, 25 Jun 2024
 00:50:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417133731.2055383-1-quic_c_gdjako@quicinc.com>
 <20240417133731.2055383-6-quic_c_gdjako@quicinc.com> <CAA8EJppcXVu72OSo+OiYEiC1HQjP3qCwKMumOsUhcn6Czj0URg@mail.gmail.com>
In-Reply-To: <CAA8EJppcXVu72OSo+OiYEiC1HQjP3qCwKMumOsUhcn6Czj0URg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Jun 2024 10:50:40 +0300
Message-ID: <CAA8EJpr3GYimirDz39f4n-3hDAxFWzo+9fdY6MAuxaNguouVFg@mail.gmail.com>
Subject: Re: [PATCH v8 5/7] arm64: dts: qcom: sdm845: Add DT nodes for the TBUs
To: Georgi Djakov <quic_c_gdjako@quicinc.com>
Cc: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	iommu@lists.linux.dev, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, robdclark@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_cgoldswo@quicinc.com, 
	quic_sukadev@quicinc.com, quic_pdaly@quicinc.com, quic_sudaraja@quicinc.com, 
	djakov@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Jun 2024 at 21:05, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, 17 Apr 2024 at 16:39, Georgi Djakov <quic_c_gdjako@quicinc.com> wrote:
> >
> > Add the device-tree nodes for the TBUs (translation buffer units) that
> > are present on the sdm845 platforms. The TBUs can be used debug the
> > kernel and provide additional information when a context faults occur.
> >
> > Describe the all registers, clocks, interconnects and power-domain
> > resources that are needed for each of the TBUs.
> >
> > Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
>
> This patch now prevents interconnect drivers from hitting the sync
> state on SDM845.
> The TBU driver is enabled only when the ARM_SMMU_QCOM_DEBUG is
> enabled, which is not a typical case on a normal system:

Georgi, before I start acting like a bull in a china shop and sending
reverts, any update from your side?

>
> [   26.209151] qnoc-sdm845 1500000.interconnect: sync_state() pending
> due to 150c5000.tbu
> [   26.217228] qnoc-sdm845 1620000.interconnect: sync_state() pending
> due to 150c5000.tbu
> [   26.229926] qnoc-sdm845 1500000.interconnect: sync_state() pending
> due to 150c9000.tbu
> [   26.238008] qnoc-sdm845 1620000.interconnect: sync_state() pending
> due to 150c9000.tbu
> [   26.249068] qnoc-sdm845 1740000.interconnect: sync_state() pending
> due to 150cd000.tbu
> [   26.257127] qnoc-sdm845 1740000.interconnect: sync_state() pending
> due to 150d1000.tbu
> [   26.265159] qnoc-sdm845 1740000.interconnect: sync_state() pending
> due to 150d5000.tbu
> [   26.273189] qnoc-sdm845 1500000.interconnect: sync_state() pending
> due to 150d9000.tbu
> [   26.281206] qnoc-sdm845 1620000.interconnect: sync_state() pending
> due to 150d9000.tbu
> [   26.289203] qnoc-sdm845 1500000.interconnect: sync_state() pending
> due to 150dd000.tbu
> [   26.297196] qnoc-sdm845 1620000.interconnect: sync_state() pending
> due to 150dd000.tbu
> [   26.305201] qnoc-sdm845 1500000.interconnect: sync_state() pending
> due to 150e1000.tbu
> [   26.313207] qnoc-sdm845 1620000.interconnect: sync_state() pending
> due to 150e1000.tbu

-- 
With best wishes
Dmitry

