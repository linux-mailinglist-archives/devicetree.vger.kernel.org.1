Return-Path: <devicetree+bounces-100519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8739D96DF54
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46B52287EF7
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 16:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356DE19F487;
	Thu,  5 Sep 2024 16:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="bi7BbRdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF64B19D897
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 16:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725552862; cv=none; b=rim43et7ecMRgZZUGTz6JplyxYPB1cTdefr96NO/gYGu5aTa/K3OGtqA61uHQlAglDmHTLumBdL3819sLrgT8H8QeYfXFnbq79u8lHl7Qsx5heZCU88+t6z3GwVQLVSiZMoqmOgJHv7nxvkdGgwxeP+JQdCB76UWlRpbah1tgog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725552862; c=relaxed/simple;
	bh=pO7EaXwN+HDMElTFjT9hXVmi2mp0g0SDHVahBbNCq+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tRySLfyGI4w3SGWQD6gtyDt3X5Cn1CX3EpY6v88luE+NcTcfyC5v4yQntP9PioEhaau7bLpUMiPP+uozrzcWJup123oSwgeTMrCHJlXmOikYn5cmLRiuwmdhZ3ifpoBLLKT/jPA/7aIwCY+Fi5hf8IKnozgk68F7tRiSgLMEfTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=bi7BbRdO; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-371941bbfb0so657690f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 09:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1725552858; x=1726157658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SQCzkFNF6R0y5OgjwiBOcxXDxjjM7SPAsOwwAJex/C0=;
        b=bi7BbRdO/Ze4w2q9XXbUcoEFLHd+AOeSdfBswdnT2OVyJhRDywNWxj41JLpMUkQJEz
         qm/a8MAO7+0us5UjeoXpkOXqRGztolJgML2MJcl03JTP5CGHa4LIjrL4ZmTVj36h22vP
         1gIN+x9gm/Or2tfOmPpIEGWppAWPfxnZU6Tz/djKvR2yuUmCgsBMIRm5jiir1Dw6aG/5
         XSIvlTPBF0cXw84SvvOblMli2DFHfGY2tMgw5ml1GsHIM6VnlZFy2jGHBEP4bZBH+eVj
         4HsUjkjw+y7tdNbKYyvN2+gmuLQvIMgH65/zske394nebPzx5GqUGDNdnH7yZrdtDR3B
         TqRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725552858; x=1726157658;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQCzkFNF6R0y5OgjwiBOcxXDxjjM7SPAsOwwAJex/C0=;
        b=UfshGG72DoSzypSIKBOmJlEoclPk2P85b/35CVNl/rd/hlq5xhJ9MDLP6Jqq1KO79E
         7JA6feBT4rP8SHBdT1hMMdj+BWsjHXatLsDG3MnT9eesuIJt5PboIuyMxrbHJ8YrM6TO
         riOkR5w3L6c+c9ji+sTQqE1IhbsxjM6NHonEgn6+5JJzZtdIwNjupxYcYjmd0Mg+ADFi
         s1EvsoeEutbttMVKXDfjJwPUQnGNSl5l7FvFL1r+/gNawsPigYhknFsqgRQ+dDQ5cqYQ
         pgIpW79kZDExr4Enz1Lj9RRX/qGz2VRIj3W08Txk4p/mJX41BLnSmZYucb6uj7DgI1+y
         JzGw==
X-Forwarded-Encrypted: i=1; AJvYcCUjiVCI/IzVkeGWIvGy3QgZk9BKyexauMnl1CY52wpCBjxi+JXPbKgO4CpXMzSWMrwPiZXStje+v00G@vger.kernel.org
X-Gm-Message-State: AOJu0YzdpMWYyqCpAH2DyadcJqxm8nQnNXSxwhwFz5VADZze17GeMuZ4
	yIWxmD96t9nfQzgiWRYGQ3OuZMh2ue4vKuKLmegbI23zJhpIXtTAL4Dlu6B3MtkLVAqZsfniTjc
	8
X-Google-Smtp-Source: AGHT+IGTeRidPfzjWMeiTd2JcaXWh07h5yeyFVwKWBYencGxKEZw41jcBDd8CO30rx53dbUA3JWpWg==
X-Received: by 2002:a5d:6991:0:b0:374:c7d1:2ac0 with SMTP id ffacd0b85a97d-3787e496687mr2221867f8f.47.1725552857141;
        Thu, 05 Sep 2024 09:14:17 -0700 (PDT)
Received: from [192.168.108.50] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c6543ee3sm12569790f8f.12.2024.09.05.09.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 09:14:16 -0700 (PDT)
Message-ID: <747218ab-86a1-4308-b34a-98064ccdac30@freebox.fr>
Date: Thu, 5 Sep 2024 18:14:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/6] HDMI TX support in msm8998
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
 <172550712143.3299484.1580127137460046609.b4-ty@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <172550712143.3299484.1580127137460046609.b4-ty@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/2024 05:33, Dmitry Baryshkov wrote:

> On Wed, 24 Jul 2024 17:01:33 +0200, Marc Gonzalez wrote:
>
>> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 
> Applied, thanks!
> 
> [1/6] dt-bindings: phy: add qcom,hdmi-phy-8998
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/8886def25eef
> [2/6] dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/656810411b1d
> [3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/a61eb17f40e8
> [4/6] drm/msm: add msm8998 hdmi phy/pll support
>       https://gitlab.freedesktop.org/lumag/msm/-/commit/caedbf17c48d

Hello Bjorn,

Now that the binding & driver parts have been merged,
(Thanks, Dmitry! And thanks to all reviewers)
am I right to assume that you are supposed to pick up
patches 5 & 6 for the msm8998 DTSI?
(Hopefully in time for 6.12-rc1)

Regards


