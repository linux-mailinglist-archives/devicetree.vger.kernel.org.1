Return-Path: <devicetree+bounces-126589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BBC9E1D22
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 14:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3C80164B2B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220371EF0AC;
	Tue,  3 Dec 2024 13:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wzfxKmuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46671EF085
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733231342; cv=none; b=eExfgt49cp80t3CCkhRv8tC3BqOmKhw2AT+sSjCX9K6X6+ZiTQmOS3jr/lNkJau8KPxBX4/as8sFwWjTfoBuzaPSAY4rpZn2jZ5mNTmP7M+Ro0yn06iCoQd3NWI0GgfFXC2Maj3xKFw24gsuYrHYLhSPiV+WwprshR+pv8tDH+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733231342; c=relaxed/simple;
	bh=WoMHRJb0tkxTD9vjf51l2F+vHsZpZpKuGhGA2Oq1gss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OdGv+f6nAC7KkUuhHtHjRtdUdMWUmhUMfCYJrJIRARJTrZZ/uEMk4fAOCPgN3hQ9M8aqWMR/FudGvW/vWJiz+gbcrPGzdt/gxYbsMN1ayCed6B1PpcjuGX+6it9HHTJE3UVSYEuvicPJzYy6zv9QhpNRuKnxdBVDy07f6VPCiWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wzfxKmuY; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ffa8df8850so62525471fa.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733231338; x=1733836138; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I/lL5pAiR2kE/Mua5K3k92X0rB9806Pb8dHr6N7ntE4=;
        b=wzfxKmuYk5ozemAQGpcNecfNwB1VoPsCN0nT8udbJgCnd4C128IpW7bfZ7EmHeHFfb
         geQgPtClkssTwkbCqtfQU3Zo/VfMBZy+J9enEoSYswfL0FPFvnwKtBSuvCbna8fld9Z/
         88FyWdMGgHSp8Jv/uEKMnoBGJZl2fwCht80Ustv9gMstEyZA91OfbZpZidEekDR/lymH
         GYSFQRr2Xr6xJzKRxedoIMW7CgRDn9PtY1XJ/NVzKg0+MVTX7uJC17i4mNm+91aUxMKo
         X3jiuJa5hSZyXMviaywgKgzI+akl/s9cBFZF2qczSp15ktgGYgwf5v5P9fuymPaNlzjb
         Ml6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733231338; x=1733836138;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/lL5pAiR2kE/Mua5K3k92X0rB9806Pb8dHr6N7ntE4=;
        b=B3T8lElPSYCDv6++OaNnJu8DuxiR2aQFoqPH4W+Z4DM/lt0FdC7yOGdmnKQ5/BWvD5
         CUj787nR3GrgLMoUysWlmBc+zmdgz2gEUEx5OyRJoNu0xkrbY8STxkaKbjB1cMt0TJMX
         O+AtcJGg4O5HzMd32/HJ66GejXrFqRuBewVD/XYl8PpctboGsBpzZQPjUfT1H/IDQkid
         bhH/rj6WhIh/nREoG+F/Ay6vXxt75AYCNYlD3aF1YCvsRQ8ZiF2wXvakpM4UoKikA3We
         32Mkb7PHklH5FQIzrbIG8kDDOHQfaXeIK4gafIIvhsgQ4tCrDk5mUvdjrnudlNguS1jw
         ypTg==
X-Forwarded-Encrypted: i=1; AJvYcCUWy+Y2tCyEXEEUApqxn7iXLL0oSexm2CjQzqIIN1bZPfyFcprOjLDxpvBR9gHhOj9chWC65Pfi2XPT@vger.kernel.org
X-Gm-Message-State: AOJu0YxllWNjjNk1Fau7bMBEA0H3g5P6qOKddfxd4Bt0CH1JPHts0xhp
	R57cqo1zcvM9wnE5y1Z4ClVZxYLsU9o/g0Ceoe7oKK/g/gLZ84fvkZOXJHWh8PM=
X-Gm-Gg: ASbGncvb940alNCB8KVL0expkC+pufrn3xFrFBEgs6MD+wiprRa7lp9vUgwS/KjjQy3
	xFle52opfI5AjHgX/PtWkFfTtV6XqO5BIVf/IsM1O8T1SaxxXmYAhCqT1eo7HVWZ9fGCexCdKx2
	tWozPCDl9SVP+n6wtQcizO8bo+p56udR7h2AUDyqGz1J85BjAf+jImLNRka+1owrTfa2kxb08Wv
	jxlq2GbuVp/djTaFoIIc+ILnKaMwbIPipgtCWaxDq5W1p0erFijuye5dTO3vjmbQcGA3QN/HO7f
	HavLKoZjtentsgPDgqiNdBNyQ1AYhw==
X-Google-Smtp-Source: AGHT+IFThbwM7lX3Y2ipfgIhRvnqePc6hLDMc8QwYoeSkbRqOQTvnGXT+2fwk+HTyaWcY0FW9Hg0Cw==
X-Received: by 2002:a05:651c:503:b0:2ff:c349:8d08 with SMTP id 38308e7fff4ca-30009c73a30mr17954081fa.8.1733231338062;
        Tue, 03 Dec 2024 05:08:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3000a3fb991sm1970151fa.70.2024.12.03.05.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:08:56 -0800 (PST)
Date: Tue, 3 Dec 2024 15:08:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Yu Zhang(Yuriy)" <quic_yuzha@quicinc.com>
Cc: andersson@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, agross@kernel.org, 
	ath11k@lists.infradead.org, konradybcio@kernel.org, kvalo@kernel.org, 
	linux-media@vger.kernel.org, mchehab@kernel.org, quic_jjohnson@quicinc.com, 
	quic_miaoqing@quicinc.com, quic_vgarodia@quicinc.com, stanimir.k.varbanov@gmail.com, 
	quic_jiaymao@quicinc.com
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs615: add WiFi/BT nodes
Message-ID: <vpnvycgbjtksjbktiksaltb73w34ogdxt5satz7cpmel63j3mm@aqvih2idpdfw>
References: <20241203060318.1750927-1-quic_yuzha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241203060318.1750927-1-quic_yuzha@quicinc.com>

On Tue, Dec 03, 2024 at 02:03:18PM +0800, Yu Zhang(Yuriy) wrote:
> Add a node for the PMU module of the WCN6855 present on the qcs615
> board. Assign its LDO power outputs to the existing WiFi/BT module.
> 
> This patch depends on below patch series:
> - base
> https://lore.kernel.org/all/20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com/
> - pmic
> https://lore.kernel.org/all/20241202-adds-spmi-pmic-peripherals-for-qcs615-v6-0-bdd306b4940d@quicinc.com/
> - pci
> https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/

This doesn't belong to the commit message. The list of dependncies makes
no sense once they land upstream. Please switch to the b4 tool, use b4
prep --edit-cover to list such info (it will be automatically added to a
non-commit part of the email) and b4 prep --edit-deps to list
dependncies in a machine-readable format.

The patch itself looks good to me.

> 
> Signed-off-by: Yu Zhang(Yuriy) <quic_yuzha@quicinc.com>
> 
> 

-- 
With best wishes
Dmitry

