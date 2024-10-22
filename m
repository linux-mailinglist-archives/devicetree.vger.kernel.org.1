Return-Path: <devicetree+bounces-114219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 587DD9AB031
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 15:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19076283EED
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 13:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D731A08CB;
	Tue, 22 Oct 2024 13:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tS056dqB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099EB1A08B1
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729605369; cv=none; b=lwPKRcZj8NkCnse3+Y+wL4t+K9KGFT/o+MSgG7BAwuJmwoem4s5v6sCX8X6ifcrsqBi0Kx/LJbtxe4sYblRa0I5HkRNLaSauZla0Q16yGn5pXKbvhJUBh7zvet09iN02DXLo+i7NjjnytB8jNFqfk2jaBvN0mI9j12oI/20Pcqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729605369; c=relaxed/simple;
	bh=/pS5vqqoSRD872l4pw+0rXrLxLdDPnIUcYWrbdyEl+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jOW1aBNajFFfc7Of6lwK2LK9blx2zpDTiHNEykBTamIuZNVo+sGN8vs1l3doOpCHTVzL/R300B5U12bhz9JfA57V5LiR2+TjBq5GjbFm5X0K8iQkgggBYJhxQQNj8p5UOsg7gO5GTzuW5qHXjZxyGAYb8uRJpDk4RM73wtiVq40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tS056dqB; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6e5fadb5e23so22903437b3.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729605367; x=1730210167; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cDLtvhMz6PcWfZhVz6kUWAuewo8GBV/2rwOJwr5Q+iQ=;
        b=tS056dqBTKGzg23vC6WAfeoazPOS8TnK5xrLI6Xs7otPTl2sBc9CCoY2UCyAKYDq6f
         xzC4eGpXtV8xi3X2FfyFWEKM0KyMNXFSbbzRQyiTPP2AiaTdwUBALXzpfzVVg5gWYoUV
         qkiE8y84xpU/UE0ZVKn9PoLW1Tp39CI6qCosvAJjAsTG1NaJP7dcgh/hiv5ERs8JFuNL
         OMgCyVSvN0PEY/HbRttkuvnMmatMIpCvydZiILma/+o374/+0K2msBuiR6Q+bByrcJCn
         xbNrYJsPWFU15f+YwIzx//+nB+Q0V/ZSrwYFSWk/y+BI0OAbjC+PugkMWg2Jveos8XYD
         94fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729605367; x=1730210167;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cDLtvhMz6PcWfZhVz6kUWAuewo8GBV/2rwOJwr5Q+iQ=;
        b=Z5+kPz+sPx1wItSxnmz5ePMk/7N6FnritzZJx4ER8jfBVT679W1FGbcDsoZZLB5YxH
         RH9DwhveqjtKBq+aSaQSgJxVmC4huEal5K1lacuRkhkIP7ewNA9e1jkD20EALv6XnLiX
         +r5IOdoUnLwUgQ4zcRLy2W9lht+i01KQqmbCiVG0liCeGF+ur192FhOudnzJW+ZuDQ0n
         +HM2/aZeaLkzjMQ8zpMRiYj021PYJ2/4VJDoyYUj+aYRV6Vrl3E8BBe2jxmLZ1pW5gmi
         kMVt6cIuO3dzZWtemx9fEIPR6JpGl9/m/VJ8ZFTlp4wdk5XbOsTdHJV2nJBs+fhIuM8z
         ggtw==
X-Forwarded-Encrypted: i=1; AJvYcCUvqDl/YsFWtidghY0OLr1oOebrtIOXogDkk/E3/fWaZeQUcV2rLyGTZim4U3gKLSiTUXqx4SO6Eeo4@vger.kernel.org
X-Gm-Message-State: AOJu0YzVcm8XSaXZuHn7HG8iwfz6mFxPPHIJZt0B3qsQtte0vf9PLzFp
	dQfMbIJfU/NQ4KA17M3icNi1DTX/lrRUDI/9Dxm0zh6l3YLCYJWSsNteSjbvRQ4PNou5sQtHFPR
	RKHGw0Cp4m3ALqAAzp+qZ7VVUMYjgKX+DIPID/g==
X-Google-Smtp-Source: AGHT+IFpmhM2z2KDin6GRhjxZIQ5R+mLzT187UDQAB/1orWo3bN3jQ1rEzWwIZFAogs3JWkBJ+YU+ZNAkgJe/aJbZl0=
X-Received: by 2002:a05:690c:f8f:b0:6d3:f9a6:e29c with SMTP id
 00721157ae682-6e5bf9a0846mr144026337b3.12.1729605366851; Tue, 22 Oct 2024
 06:56:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001033053.2084360-1-quic_miaoqing@quicinc.com>
 <20241001033053.2084360-3-quic_miaoqing@quicinc.com> <smgbishqbin4kcpshqvue3ivvfko2l6rj2w4ikwydosbkq6kde@pdbzhklj7znm>
 <1c5f5c93-db06-4490-af2e-bbce2d184c94@quicinc.com>
In-Reply-To: <1c5f5c93-db06-4490-af2e-bbce2d184c94@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 22 Oct 2024 16:55:56 +0300
Message-ID: <CAA8EJporsVmyhvYV4QDnTJPh82A-JZz3u1RkChe=MumGidmLSQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] wifi: ath11k: add firmware-name device tree property
To: Miaoqing Pan <quic_miaoqing@quicinc.com>
Cc: kvalo@kernel.org, quic_jjohnson@quicinc.com, ath11k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 22 Oct 2024 at 13:20, Miaoqing Pan <quic_miaoqing@quicinc.com> wrote:
>
>
>
> On 10/22/2024 5:57 PM, Dmitry Baryshkov wrote:
> > On Tue, Oct 01, 2024 at 11:30:52AM +0800, Miaoqing Pan wrote:
> >> QCA6698AQ uses different firmware/bdf/regdb with existing WCN6855
> >> firmware, which is customized for IoE platforms. And the 'pci-device-id +
> >> soc-hw-version + soc-hw-sub-version' may not be enough to identify the
> >> correct firmware directory path.
> >
> > Why is it so? What makes it so different from the existing platforms
> > that you can not use WCN6855 firmware?
>
> Just as I said, a new customized firmware for IoE devices.

This answers the "what" question, not "why". Please provide a reason
and a description. Can the hardware work with the default firmware?
Does your custom firmware provide additional features? Is it just
signed for a different SoC? Is there anything else?

> >> The device tree allows "firmware-name" to define the firmware path,
> >>      wifi@c000000 {
> >
> > You are describing platform node, while the commit message talks about
> > the PCIe devices. Could you please clarify, whether it is a PCIe device
> > or an AHB device?
>
> PCIe device. The change is for sa8775p/qcs8300 those non-AHB boards.

Then why are you patching the AHB schema and why are you providing a
platform-based example? It makes it harder to follow your arguments.

>
> >
> >>          firmware-name = "QCA6698AQ";
> >
> > Could we please follow the approach that has been defined in the commit
> > 5abf259772df ("wifi: ath10k: support board-specific firmware
> > overrides")? In other words, instead of creating another directory under
> > ath11k, create a subdir under the WCN6855/hwN.M/ which contains your
> > device-specific data.
>
> Sure, thanks, will update.
>
> >
> >>          status = "okay";
> >>      };
> >>
> >> Tested-on: QCA6698AQ hw2.1 PCI WLAN.HSP.1.1-04402-QCAHSPSWPL_V1_V2_SILICONZ_IOE-1
> >>
> >> Signed-off-by: Miaoqing Pan <quic_miaoqing@quicinc.com>
> >
> > P.S. please CC linux-arm-msm for future respins of this series or for
> > all other submissions that concern board-specific DT data on MSM
> > platforms.
>
> ok.
>
> >
> >> ---
> >>   drivers/net/wireless/ath/ath11k/core.c | 12 ++++++++++++
> >>   drivers/net/wireless/ath/ath11k/core.h | 11 +++--------
> >>   2 files changed, 15 insertions(+), 8 deletions(-)
> >>
> >
>


-- 
With best wishes
Dmitry

