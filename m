Return-Path: <devicetree+bounces-125793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8209DF4F5
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 09:09:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B1EE281552
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 08:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A301176036;
	Sun,  1 Dec 2024 08:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OmuqTzGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F385554277
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 08:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733040550; cv=none; b=nvg6yDCQA1VZABFTK5vX8r/ruo5dOnAYcvUm7bVaywBHzOTr/qwfKLbngDZfjm0oScB0QoehPAhChixO4D9WCc2xAGHLxNQPQliRuP/liUrdJzfU4S2vh2JHvgJSjIDNG1fEx5rYST5hgpSEajzskzo8fNMwrzbaNvYtsxoL8BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733040550; c=relaxed/simple;
	bh=q8Xflx4nuwr8WqlZznZzM4Larjd+ngbLhcTfJqHMm8Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b7LpsBxXy3u/kn0Yo5zJWZsHDMH8TLxuNBzKN+vyx88kDCSNVWEgbCmPDZnkpWbZNXjUN6ZV1/89jhd+GXTNNg5J48zwdi9sKwZ5X0Rq4DdOQM2jrAE9SF5BWhyt1mdLv9YZGSjuUfow/SiuI49mcARQgx+B5m36aKTVpI1uZyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OmuqTzGj; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e398dc7864dso1520206276.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 00:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733040547; x=1733645347; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eBUL8rUioKfjIFVURgDKGycrpqU7QDcXSGd9jkBZ2eA=;
        b=OmuqTzGjve5ipbfyuEnZ0RwZNlGmL+QCPAIOcSazD3ufnChAOmU/omj0jBQ6aZmlG2
         9VtnVVxZs1tARTZC7M/3YYhBkv4eS7UTtojiLdYjAJmbgFGz5o6qHfqgqbWLDDgMz8LZ
         abT5b5OvgFjcSDtkBCWYrEDkfNQWpRnNt881nGsQgzoN0UKcGx0QleWJdYzxQlFEVHma
         rHxu9y8uX/Tljq9PYZJvOAowu6lKIfwffn3JxNP6AZqQFjvYoSfSdXL0fwFAF09FpvNk
         2t+bS3HqF+6KjYv793LskHDG+kTVAtWqM1g0qM3nTU0WujjJLFw2AXPLA5VFtiBw5/1I
         MDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733040547; x=1733645347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBUL8rUioKfjIFVURgDKGycrpqU7QDcXSGd9jkBZ2eA=;
        b=DT4I4O0BFJZDkmxf1yCsTIbj6vqk2FZPZ4N1LYykdTxK0OTt2lteg9MFjEEoRE/qAL
         zr1v93q291TgjrpgdQUfamsOFtJArxSDKW1LpOa0DDrrdutflOjZeF733mxKeglzaB1K
         BTfh0N4Mm/WOMqER7uoW+kFQbAiPuSSeugiQ6pnac5MGjA9tFPlCM6EBYKQoe2R4vplC
         WYPnNtjs6CysbLWYqvJxldHuTzhCaalmvwW52JOmvsrdgT5o7QDOQKSUHgAYDEw82900
         rDDLf8XDldvVYskEv4v2ZBQbvh1JwsOBq5U4L3dglv5XCrOisJQrleGyVFGUueJDNxxI
         Zfqw==
X-Forwarded-Encrypted: i=1; AJvYcCXYsIeGjT59xCRR/d+3KwayIaICC2xWx36U8EuZ8AoPnAwThlT69k3qnGV/Bs6sD4EdcGC4YeUq8Z0C@vger.kernel.org
X-Gm-Message-State: AOJu0YwqZfnqMk96wB1JDwbCSN/J1VcwhiBaKlrngfAwZnD0gzQ4G4Rw
	HYQ80y7EbPWulsUl9NtKcr6wcbolXFkcZQ4Isg9zZn95wtWIXWZf6DONz2v6qPQHQZHvcCILHvG
	Z3uSftQzio9RwakMqz/Ph7N9M+6GpzkskNhnj8g==
X-Gm-Gg: ASbGncv7ulMuKhAwTf5VnxKe9V77ZXXOJVoZilGT66YdPYq/cBUJxJ0zSV/yZw7GSuM
	izV7Jeaj02osNvnak6l61B7SQvRpyodk+xTj4QG9SkU25yg==
X-Google-Smtp-Source: AGHT+IHcUUm/krwD5SmkbEnJqxOYEzdgb5XkJH+JZjAtMBagBkTNtc2cjtKvaJA+Wck0ATJv6E5fRH2nqSTIAV434GI=
X-Received: by 2002:a05:6902:150d:b0:e38:b889:7eff with SMTP id
 3f1490d57ef6-e395b870d38mr15606436276.6.1733040546860; Sun, 01 Dec 2024
 00:09:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>
 <sxbjxywwjbep5rlndxoi5k62hqs24biryslkwbcxtvz3ilypvl@qi4omifueyqu> <c425b639-20a8-439c-9e9a-8b5095f8d3b0@quicinc.com>
In-Reply-To: <c425b639-20a8-439c-9e9a-8b5095f8d3b0@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 1 Dec 2024 10:08:56 +0200
Message-ID: <CAA8EJpqyQ32TNr-_0owXqbCzbwRcr7enmUV2TYoX3yWHz-Vn4A@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Adds SPMI bus, PMIC and peripherals for qcs8300-ride
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, kernel@quicinc.com, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 1 Dec 2024 at 09:13, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
>
>
>
> On 11/28/2024 9:10 PM, Dmitry Baryshkov wrote:
> > On Thu, Nov 28, 2024 at 05:40:15PM +0800, Tingguo Cheng wrote:
> >> Enable SPMI bus, PMIC and PMIC peripherals for qcs8300-ride board. The
> >> qcs8300-ride use 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> >> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> >>
> >> This patch series depends on the patch series:
> >> https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
> >>
> >> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> >> ---
> >> Changes in v2:
> >> - Fixed comments in community.
> >
> > comments in community? What does that mean?
> Comments given by the opensource community in the Email list. Sorry for
> not being clear about this.

Please in future describe your changes in changelog. Saying 'fixed
review comments' is not enough, as it's hard to tell, what was
actually changed and what wasn't.

> >
> >> - Added arbiter version(5.2.0) in commit message.
> >> - Link to v1: https://lore.kernel.org/r/20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com
> >>
> >> ---
> >> Tingguo Cheng (2):
> >>        arm64: dts: qcom: qcs8300: Adds SPMI support
> >>        arm64: dts: qcom: qcs8300-ride: Enable PMIC peripherals
> >>
> >>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
> >>   arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 22 ++++++++++++++++++++++
> >>   2 files changed, 45 insertions(+)
> >> ---
> >> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
> >> change-id: 20241122-adds-spmi-pmic-peripherals-for-qcs8300-0a3c4458cf7e
> >> prerequisite-change-id: 20240925-qcs8300_initial_dtsi-ea614fe45341:v2
> >> prerequisite-patch-id: 73c78f31fa1d504124d4a82b578a6a14126cccd8
> >> prerequisite-patch-id: 5a01283c8654ae7c696d9c69cb21505b71c5ca27
> >> prerequisite-patch-id: dc633d5aaac790776a8a213ea2faa4890a3f665d
> >> prerequisite-patch-id: 9ecf4cb8b5842ac64e51d6baa0e6c1fbe449ee66
> >>
> >> Best regards,
> >> --
> >> Tingguo Cheng <quic_tingguoc@quicinc.com>
> >>
> >
>
> --
> Thank you & BRs
> Tingguo
>


-- 
With best wishes
Dmitry

