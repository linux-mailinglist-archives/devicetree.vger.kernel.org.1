Return-Path: <devicetree+bounces-181229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA90AC6A75
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 15:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD0C43ABD4A
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D58D286D7D;
	Wed, 28 May 2025 13:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QDm/OLtB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DBB257440
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 13:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748439072; cv=none; b=L+XF4HkpG4jUInoryvV67De8FWN84d0vPRBV6F48wbAfLGW89Opn9WlAp3t8qe1p8ZWUiAGNL8Lzg+EXH/iljhVhaoruifdseUSig2PelcWubvBY7hPjeyWykG/2Hr55UJk6D2oBQfdiCO6/4YB8EDYzl6WnjACTKAiNGX/Hb9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748439072; c=relaxed/simple;
	bh=Vg+FrRbGTeA8f3PlM/x8Z6doWF3ojO83xJlLB1B3f6M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KGDLHtauwPtIw3wq2sMsab1ot/kQmvb6QBm/x8TAcTc/JYkVmzRL1ckL8L3TN+/90ksh3Bvo7zKdcVoXCyBs7vfIZUTY8JJZjOfTquJcWNtRV2mBzNRhr0m2pUMRFSrAneolGFgrxRrTAfa0bPQ50c+qe54XtbTgMyQjYDlF+aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QDm/OLtB; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7406c6dd2b1so700657b3a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 06:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748439070; x=1749043870; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8UdvRNXq8aAecD2U0dxQ0wWai5QzfjmCr8Z4Xq1f1YE=;
        b=QDm/OLtBHw+gGCXuqIxydGAHuyck0tTiBNtReqL/f1zP5YQUuIjSEdSFEPbgONw9vj
         sgAumuToC4b1b3Jxs22ce1/+CQaBhVby+GVjXwH0ymAWwlKwWiaJBNiz++gEJQG0rH5B
         Gwa2h5BB+WnC/rg2Ih6eCELqxAN+3tt3IGhLKIape1vYGECzDWKKsGtf5UtWTxZ/mw+2
         +OTdRRN0holGgrR866/8OgZ4tkY8kYG+KVrpPHDdoe0wN47ZGESs/oytgfVP4Esfd3FT
         hB8WLgpBkWV1xxbxUAwtHXdvPxeyA9jFQ6haXjuEigHwjb8Nd8d/+ngfgGbyJfjn5PlG
         YSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748439070; x=1749043870;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UdvRNXq8aAecD2U0dxQ0wWai5QzfjmCr8Z4Xq1f1YE=;
        b=jvW2NOQeqPb7Noh6KlQf3luzwgyTr3Gqz9eWCyWpU+ACTiVViv/WnQFn3gDobwm8mM
         i0sHw06smcsgArcxj8Ya0To8LAWR0ax9UcBntUyBkUn7Wi2EK2fKsIdNodMWFasMfgNl
         /dt243zU78pkKyCO0xxRYFtJC3v+u3jY3aaX0SFVGaXRHGBLKQNXMV7yYf+2Gzy/Zyn5
         68heHxhRonrWR7yMkbscKIyWEce9TFHGNPQj54McYI9ktwrhNB2zlTqwu6Qar6q/SZGg
         KMLp7EsYQYXLMJTrJT+OAqaSZl4BbA5MAJx0is/tZNhpv88Owb20c7hakjhV5YJxFh6I
         EMdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvP5r7BE2w20LRTyPrITnA+qTCe7IUcrelj/6wBEZ1HxXzsYHMhrXBi01XbRsrNSm3lZ+jFRRqCDAH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2BcobXcRBGoBxyFXjS+8EequgyD051obXDacirmkmX+b76fTk
	rr0ANvVA98xfdpQuL+XBAnRuwocmCQNLriAcI841GRbhP/aj2npSiuJnoC5z9kcbAI9tEiAQso3
	SUSBH/veu6LGal6E399HDf/QFRaE4JgbhwotO3xbZ5A==
X-Gm-Gg: ASbGncvBwbXnUq7RSabD8KiW7YOdrwpL3nblItmRdLQBOCMXj5aKEmTcpTypptTEs/8
	b8Vitn1pPr/s+Yhlp6a8eK4x81a/6Ox6xqG7HzhsXNY1/33XUO3f1uhNX6YP3tL3sCu5DEUOCpj
	oZvi28HHc/2aYYuvgRrEZ9NRS7XfMuQNqiz/7Cpk/HueAl91eE7EoRnuLjSM+KHQRhDw==
X-Google-Smtp-Source: AGHT+IG9j6POnBtn5e0Q2pGrtNN2Sbh3sgqFrqPfg1VSh05XHmn/iVMWNJ6bEEiFKPdnKFJUg0aWvLMjuZxJtWY11l8=
X-Received: by 2002:a05:6a20:cfa9:b0:218:574e:830d with SMTP id
 adf61e73a8af0-218ccd94689mr6594968637.21.1748439069932; Wed, 28 May 2025
 06:31:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250522005016.2148-1-jie.gan@oss.qualcomm.com>
 <757925b7-3795-409a-9419-b33767c49e2e@oss.qualcomm.com> <2f010e28-121e-4e60-bf48-5ee5bcd0cbea@oss.qualcomm.com>
In-Reply-To: <2f010e28-121e-4e60-bf48-5ee5bcd0cbea@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 28 May 2025 14:30:58 +0100
X-Gm-Features: AX0GCFs8sPqVEo-rRNs0GPnAqg3ldJr20mhUWNavfYnn9A10EucMPhXNzc1P-NU
Message-ID: <CAJ9a7Vg7MtLaud715JYEo5JD6x4WmHq9TsSSor1-TYq5M5u+cw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: fix a crash issue caused by
 infinite loop for Coresight
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

This is clearly a platform issue - loops as you describe are not
permitted by the CoreSight architecture specification.

We should not be trying to fix issues that are out of specification in
the drivers.

Regards

Mike

On Mon, 26 May 2025 at 01:40, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
>
>
> On 5/22/2025 11:06 PM, Konrad Dybcio wrote:
> > On 5/22/25 2:50 AM, Jie Gan wrote:
> >> An infinite loop has been created by the Coresight devices. When only a
> >> source device is enabled, the coresight_find_activated_sysfs_sink function
> >> is recursively invoked in an attempt to locate an active sink device,
> >> ultimately leading to a stack overflow and system crash. Therefore, disable
> >> the replicator1 to break the infinite loop and prevent a potential stack
> >> overflow.
> >
> > Is it something we can fix the driver not to do instead?
> >
>
> As Suzuki mentioned in other mail thread, it is very difficult to
> observe the scenario that there is a loop in the path by current driver.
>
> I tried fix the issue in driver before send this DT fix patch.
> I will continue to seek an option of fixing in driver.
>
> Thanks,
> Jie
>
> > Konrad
> >
> >>
> >> replicator1_out   ->   funnel_swao_in6   ->   tmc_etf_swao_in   ->  tmc_etf_swao_out
> >>       |                                                                     |
> >> replicator1_in                                                     replicator_swao_in
> >>       |                                                                     |
> >> replicator0_out1                                                   replicator_swao_out0
> >>       |                                                                     |
> >> replicator0_in                                                     funnel_in1_in3
> >>       |                                                                     |
> >> tmc_etf_out <- tmc_etf_in <- funnel_merg_out <- funnel_merg_in1 <- funnel_in1_out
> >>
> >> [call trace]
> >>     dump_backtrace+0x9c/0x128
> >>     show_stack+0x20/0x38
> >>     dump_stack_lvl+0x48/0x60
> >>     dump_stack+0x18/0x28
> >>     panic+0x340/0x3b0
> >>     nmi_panic+0x94/0xa0
> >>     panic_bad_stack+0x114/0x138
> >>     handle_bad_stack+0x34/0xb8
> >>     __bad_stack+0x78/0x80
> >>     coresight_find_activated_sysfs_sink+0x28/0xa0 [coresight]
> >>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
> >>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
> >>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
> >>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
> >>     ...
> >>     coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
> >>     coresight_enable_sysfs+0x80/0x2a0 [coresight]
> >>
> >> side effect after the change:
> >> Only trace data originating from AOSS can reach the ETF_SWAO and EUD sinks.
> >>
> >> Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
> >> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> index f08ba09772f3..b67c1f8a1118 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> >> @@ -1902,6 +1902,7 @@ replicator@604a000 {
> >>
> >>                      clocks = <&aoss_qmp>;
> >>                      clock-names = "apb_pclk";
> >> +                    status = "disabled";
> >>
> >>                      in-ports {
> >>                              port {
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

