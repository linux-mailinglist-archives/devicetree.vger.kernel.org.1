Return-Path: <devicetree+bounces-119867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE49C0535
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 13:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9669E1F231FD
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 12:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0288120FAA7;
	Thu,  7 Nov 2024 12:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="URPzzogG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492A81FF059
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 12:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730981052; cv=none; b=gv5sAlree/HCHi43aX69KF2C+OqtRvTbzm2z/yLiAHufIbTHKQ3yptEwzF3NfxEZfStCu116aC+i2C7u1wBdRRvGo/TCHmT/8Sv2CYY13R0s8SXYQMiQgB81sy7QLRGy/qps+9PecBASKtb6t4MFeRf6mV3mFj441PxdFyQOeFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730981052; c=relaxed/simple;
	bh=FD9SybItjrWYCxkvJ10uBzmtydWDzUdUjR+CbBgU2z4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N45pOcb4006aVc8JFDmh7pBqzcqtazL9a04B1UX65QI0OSOtUw9VM8aOzPR0KXFSvtHx/g2wPaB5GEMVZ5qEdixmofaIPH7t0dBY9tPo8nQMPhnPzyq0a+Zrmy2VxycyO6F2SQMSbKLWLo8OjLVlyAkP6s+eHVyNtTzmart4Y/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=URPzzogG; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e290e857d56so857194276.1
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 04:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730981049; x=1731585849; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NSPWmvzriU7n4zt5eFjV3QM91IvIEi4Is4DeNEfxm2U=;
        b=URPzzogGZXqR3LeNLyVEpXgIKQVLMXcyS4Bnh5CpQjV4LnwmW3w+aaaMyImetYPqG/
         Qn3iLtTZtm6D23NFtq07fykN7jnmyQaoh2Ogi+BhSqcm2/o8owZwsDk4DE6I7APQn0Oo
         ghQIfGfTXSZRcPhZsni7CmAbGKHuA8Ib0HrS/MWKXt5odw/BfFQPsL8qFSOyBsJ6IeHh
         vHA5Iqt6AOHIX1Ei9eXg1wXJl6lTx3TosSX8ov5EQ156d5+JTNSqjO5ZA8By669VLfxS
         AaN7qTexAahzU8frZOQ1FnQn4mT0vlgmEk6Qcc6C4Ngyj0M6m7vdwfeFZ99Tx/8MKkZb
         ijqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730981049; x=1731585849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSPWmvzriU7n4zt5eFjV3QM91IvIEi4Is4DeNEfxm2U=;
        b=a2i45xjjF6HD7AAE015j6TmNnKJ9TgIjU6ENmxWZh6fEgpG4AHSvuALv70kJOvL8z9
         fqQ5I1zhx93w1v3u45mOshlyjOr0KgrLH61AHCcy2a1mh1iWRgf6y2wAGRQDgXZ8UrWZ
         7eQDbuzUzBa6aFnFfqPST9bWEev5S5VTbdIgBcJARWiUXG8z95PRI/n1RDdze4UXYAOx
         kq9RE6/OkWeDMFwxrmZFH783tKcKgKCxwpyFsak1cdA0Dophs/2g0HeZyJ28rW+9yazA
         HZ/B0SThr6v6yK8DhPXgyfpUmpQjgAMRsdSRy/wEZeB/05nRZ4b7nS2YvFrq8yLCtQ38
         So1A==
X-Forwarded-Encrypted: i=1; AJvYcCUPsBapx7hGKuBaLVLSb/phF15H+0wKTX2vOxEvbGwaFOBKO9WKeXFMZcLPAaYc/u99+MT3k1BtR5Al@vger.kernel.org
X-Gm-Message-State: AOJu0YxseUIW7OX1sYjzGB8qtQXeEsWTKP4dXK0hTCPRFRvrik/SKAIe
	04khOLmeM9DCQJ0S+cAM3SfALmFMjufg/jGZPJ65Z27XJSKeESmno/VzNeMFpREcQ63ZlGTMJHt
	JFegG/ExEA26GElG5HlbbHZtd0+i7AOniGGljJw==
X-Google-Smtp-Source: AGHT+IHv9mgUbimlGT5mX5UyhqitGAJmHvxVkXQPT0TuyKjaYEJSoXqczA0NpCvvlC2PQwJhFcmZoanLH7+Ypxxf7Kc=
X-Received: by 2002:a05:690c:b98:b0:6ea:7015:99c2 with SMTP id
 00721157ae682-6ea70159addmr188580517b3.40.1730981049268; Thu, 07 Nov 2024
 04:04:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105180444.770951-1-quic_rajkbhag@quicinc.com>
 <49a6ec0d-8a0b-49aa-a9eb-1174cff930f6@kernel.org> <cmvfpctliqggra33u6ituguoxh3jxcuxiyjpbtcjbcgpu6lhoi@4zdthfkc2ed3>
 <692503b8-cf39-4d6b-b70e-910fcc710d69@kernel.org>
In-Reply-To: <692503b8-cf39-4d6b-b70e-910fcc710d69@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Nov 2024 12:03:57 +0000
Message-ID: <CAA8EJpqMCbyK0dodMNyfs8dNjV2QoB2nyWm233eOS9xo8BaFJg@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/5] wifi: ath12k: Add wifi device node with WSI
 for QCN9274 in RDP433
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Nov 2024 at 11:29, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 07/11/2024 12:06, Dmitry Baryshkov wrote:
> > On Thu, Nov 07, 2024 at 11:23:20AM +0100, Krzysztof Kozlowski wrote:
> >> On 05/11/2024 19:04, Raj Kumar Bhagat wrote:
> >>> The RDP433 is a Qualcomm Reference Design Platform based on the
> >>> IPQ9574. It features three QCN9274 WiFi devices connected to PCIe1,
> >>> PCIe2, and PCIe3. These devices are also interconnected via a WLAN
> >>> Serial Interface (WSI) connection. This WSI connection is essential
> >>> for exchanging control information among these devices.
> >>>
> >>> This patch series describes the WSI interface found in QCN9274 in
> >>> device tree and uses this device tree node in the Ath12k driver to get the
> >>> details of WSI connection for Multi Link Operation (MLO) among multiple
> >>> QCN9274 devices.
> >>>
> >>> NOTES:
> >>> 1. As ath12k MLO patches are not ready yet, this patchset does not apply
> >>>    to the ath.git ath-next branch and that's why the patchset is marked
> >>>    as RFC. These are the work-in-progress patches we have at the moment.
> >>>    The full set of MLO patches is available at:
> >>>    https://git.kernel.org/pub/scm/linux/kernel/git/ath/ath.git/log/?h=ath12k-mlo-qcn9274
> >>>
> >>> 2. The dependency marked below applies only to the DTS patch. The
> >>>    dt-bindings patches do not have this dependency.
> >>>
> >>> Depends-On: [PATCH V7 0/4] Add PCIe support for IPQ9574
> >>> Link: https://lore.kernel.org/linux-pci/20240801054803.3015572-1-quic_srichara@quicinc.com/
> >>>
> >>> v3:
> >>> - Created a separate binding "qcom,ath12k-wsi.yaml" to describe ath12k PCI
> >>>   devices with WSI interface.
> >>
> >> Thanks for the changes. When you finish with testing/RFC, please send
> >> proper version for review (just remember to keep numbering, next one is
> >> v4 regardless whether this is RFC or not).
> >
> > Isn't the 'RFC' being an invitation for review per the nature of the tag
> > itself?
>
> No, RFC means patch is not ready, might change. This was brought on the
> lists multiple times and some maintainers clearly ignore RFC. Including me.

Thanks, point noted. I'll stop marking my patches with RFC tag.

-- 
With best wishes
Dmitry

