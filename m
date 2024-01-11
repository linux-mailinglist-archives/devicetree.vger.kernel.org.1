Return-Path: <devicetree+bounces-31376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD68582AFB1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F33911C23C8E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 13:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B82171C9;
	Thu, 11 Jan 2024 13:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tz9BXRNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED392171BB
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 13:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5f0629e67f4so57319937b3.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 05:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704979883; x=1705584683; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kR4iLNoZiwG/7QwKJJ9btHkikLkNjD3TWvfuaGmalOI=;
        b=tz9BXRNa8qp2maBq94QSYH9wVNNzjuqtDneoqgLkPDSOE/Qv9XTuAWO39g7/d2NNLc
         LDHqi9v+povp4CnkLyKcyJa0zPD7dKSYnu5DzbtgO3FzQHSbhuzQCBTIw3qkPR4mz47R
         58tfL5++UOvpWalXIzEp1BKkUENxMJ4PP7sSfm1T7d8VnzEocJ15XAHPMWtj9XEm6Dsw
         dnelVWikozVcx4hfSHtwvff5+havxZPYf4YhypBE1Xo4SFaxregjB6Xbaun4D682KxUr
         xiyjID7zz8tUiG8WnaU+lvsyH3Km2c27QW9OS5MScx4IvR0oIjMJ4wkpCUcxYVDlJiv5
         IsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704979883; x=1705584683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kR4iLNoZiwG/7QwKJJ9btHkikLkNjD3TWvfuaGmalOI=;
        b=A5V6fmYmV2bkZGXfiCXjW5+OFKvPpviQg9XmSzP+brIiavawJyuS0jc0sUKZpziYmo
         r7o9ckiE2bXtMP+aDDed8DV2kBe4VbalyVBrQBzplgw5l8puaYLwk+iS1NxDLGmr1NtR
         wRmkhbu5WT66NUkPxfoh0xS/Qo7prKFU7OLObOqcDVPidPrueYcJTlNf/X1Mj7h/nNrj
         s6gFaW/aN5YIs6NWOEg8eV/ffKAPJ/zun8UogbUVA+cac18E2zuEwd7IjyeYEqWLPSbO
         NNQfBvIozVYL9tXiBXnU76/0t8s4pCU4l3oTMIkN0moDQJV2vmnTzPaw+COA71EZCRhL
         UGJw==
X-Gm-Message-State: AOJu0Yxzc1eqkSmfxpfC7Wkoja7HEbAeB7CNYt2BnHl/z5x7XO3Amw9E
	hHm6kWcyNmndS3rrcbVBinU17xq+i3HZJETLiMch/Im6VxXP7A==
X-Google-Smtp-Source: AGHT+IHFXBgcqQL8Xcd10mab8p43dzDdPPpnSiAY63imAg2nnprwbdnPqjTZIjXowFSc3VUfHSYO0G9a7psNfKzPkB4=
X-Received: by 2002:a0d:d74f:0:b0:5ee:6c5b:b1d with SMTP id
 z76-20020a0dd74f000000b005ee6c5b0b1dmr581799ywd.10.1704979882903; Thu, 11 Jan
 2024 05:31:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240111-qrb2210-rb1-no-cluster-idle-v1-1-cec14ec15b02@linaro.org>
 <046a7bd3-3791-499d-a604-ef408d3d8aa2@linaro.org>
In-Reply-To: <046a7bd3-3791-499d-a604-ef408d3d8aa2@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 11 Jan 2024 15:31:11 +0200
Message-ID: <CAA8EJpoBmzqxuCzAK6APtCzbaU15Uehw8BTp0SjEDSFaMo30dw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: disable cluster power domains
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 11 Jan 2024 at 15:09, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> On 1/11/24 03:01, Dmitry Baryshkov wrote:
> > If cluster domain idle state is enabled on the RB1, the board becomes
> > significantly less responsive. Under certain circumstances (if some of
> > the devices are disabled in kernel config) the board can even lock up.
>
> I got that $sometime ago, but can't repro now.. which devices being
> disabled would cause the hang?

It was reproducible with 6.4. without this patch. With 6.6 I can not
easily reproduce the hang, but the delays / responsiveness is easy to
reproduce. Compare for example 'ps' output with and without this
patch.

-- 
With best wishes
Dmitry

