Return-Path: <devicetree+bounces-142561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD05A25BBC
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:05:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E379166568
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0582066D4;
	Mon,  3 Feb 2025 14:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V9V84eji"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D014205E08
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591240; cv=none; b=I5z3g14aE8jynNWIECyhgvRjIJBqKsd0dGFucm29+f8R2XOqrFE5BM3n84lvwEWanDia0EwLOnltjQtvLzyaCG6v9ei3hZc8Dbj29WEd+b5DCs64ZiWncq3ElluBWqTtdTHLMwWWIII8uiQ2HrJl4aGm/V0VMQzhufaHoo7nz3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591240; c=relaxed/simple;
	bh=YEBc9w8PsnWAIH0OCO/5q9BJSPFXkTLscni1Aov5z9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CpXizrEMDjsi7XosZiBYLQet3xwEn9oQW4igGgeNstSBEgG9xyCz2qo9OKxf9jRBByfeBZBg/XjWiwfKkkC3GW204HDCCrlmTiW32z+9js/Hmv44TjU7TCdOKVz61/TKewAfIDt5G6BDwS9dvHADcII7Fsird1HoKYZiBSlgni8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V9V84eji; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6ef60e500d7so26700527b3.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738591236; x=1739196036; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3ZAg9pl88KjIvs5mS1f1EZymy0dyDgkN4GT1M3eKZY=;
        b=V9V84eji9P0HdcWV65pg2VDRgL/ECXM/J3o0xCoJb+98/pWGKI8rmPrjBzlqhwNVlV
         m+IQRGRUBT2/BKK1IblkVojJGo3u2oLoucIEhnsY2uGRQBiR30eqHJwDLJDkO5H69TEc
         RFWAn91/KBOM1pDeu0tFpS8lCIPKFkxM6oOnxVGWD79uKuRYi3xbXaDo6wHfB2eie/sE
         v8EGbHywSl9nVjIBs5RLqX2HrRvhYjSKkkX6ziKpviwCf1QZnsDjKOOy2F3tvGyrUSxd
         maGkyCQqhdqXRzP1uiyWUJSkuTB5GFbwxmw0aXIZ1u4uMRsSWIp1TrhVLsVZsqvf2Q5w
         Pz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738591236; x=1739196036;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3ZAg9pl88KjIvs5mS1f1EZymy0dyDgkN4GT1M3eKZY=;
        b=mqp4G0I1axAoB+Ji/d2bLvSUJlvFONMS+yFmq7S8uTttDMSAIxpS4JPgCT8LYYYGkB
         uc+z9Ri3FDZhwWIf5Xm6vbSYOSYCuohrKk9Qe7Ox2BtPKFr92d/po+L+smNE7Bdk61gS
         45HEL9NnaZIEg8Piq5zk3gb8QKUJbazzEFLgcE+sIprS2oVTdRtmXYZmhta7Nfd6TjJK
         8ctMLWnDmrICc4y5QUMIQhkGshQa0vQ8Z14D9L5ZdT+LF6M6oAQob4d4p42yKlzrrnRT
         6d/0ThvqkMYWaQFjIepBuy1qhn/odB6oxQSZyhjz3FDpiRyx72+MDm5caAUmCwUNzcMq
         +tNA==
X-Forwarded-Encrypted: i=1; AJvYcCXGsIDa6RJkOBI4c28na2i348dFdWp2UivkPRytsrrzDauR2U9QBUNpoLbkauke0TuxOTgiWoQVZFQ9@vger.kernel.org
X-Gm-Message-State: AOJu0YzwlByuTS/ttJc0Rxpt5XiYGbju937KSm+EmZyhPXS+WwY9oPAf
	0kkTTV7RmW2Tb9v3JFP84EALdlT/xuG85Az/XdjF2S4opkiAh+a1GS2oellidREmGnaJA+xEsDG
	lcDYpbgTmUfnifqJUVlQ7T3BjW/e59kOVdlccgg==
X-Gm-Gg: ASbGncuskg8OPMv4QwWUoiOHkuYnxlxppb3lLg3MR7kMUgoE4Mc82QM/MpffkqZRjJG
	u32arbcdvRBq2Az5eIHkbu8EFaOdoo2iDpuR8CK4ejjPlSooZ5Wh88NPd33fEbA5P7zWorA==
X-Google-Smtp-Source: AGHT+IHuL252vql+MeLPa1il2bPxNj6ynbBWo3mzurFA8SbfqbWEn52CWFCkQZHR2nMMtJaAFqXqFRxN0N0x3eiX1YU=
X-Received: by 2002:a05:690c:6486:b0:6f6:c8fc:61b1 with SMTP id
 00721157ae682-6f7a83fe138mr161266737b3.28.1738591234763; Mon, 03 Feb 2025
 06:00:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org> <20250202-rb1-bt-v3-4-6797a4467ced@linaro.org>
 <d5e1e6ae-b773-4ec8-a66b-2e1830827164@oss.qualcomm.com>
In-Reply-To: <d5e1e6ae-b773-4ec8-a66b-2e1830827164@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 3 Feb 2025 16:00:26 +0200
X-Gm-Features: AWEUYZmz1ECIXn-mrFsqggOTDVeuYLmbYaHev8MsZuEQbvNP_yfferj5PUkoYTw
Message-ID: <CAA8EJppMVzuRLLakNJd4M9MRbW5P-0x=rTf1p9kj0zj88SOOGA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: qcm2290: fix (some) of QUP interconnects
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Feb 2025 at 15:50, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2.02.2025 1:16 PM, Dmitry Baryshkov wrote:
> > While adding interconnect support for the QCM2290 platform some of them
> > got the c&p error, rogue MASTER_APPSS_PROC for the config_noc
> > interconnect. Turn that into SLAVE_QUP_0 as expected.
> >
> > Fixes: 5b970ff0193d ("arm64: dts: qcom: qcm2290: Hook up interconnects")
> > Reported-by: Konrad Dybcio <konradybcio@kernel.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > index f0746123e594d5ce5cc314c956eaca11556a9211..6e3e57dd02612f3568f07f1e198028413f463c69 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -1073,7 +1073,7 @@ spi0: spi@4a80000 {
> >                               interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
> >                                                &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
> >                                               <&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> > -                                              &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
> > +                                              &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
>
> Still incorrect, this should be &qup_virt SLAVE_QUP_CORE_0

Hmm, why? qup_virt has its own path. I think this one (using CNOC)
matches the usage on other platforms.

>
> Konrad



-- 
With best wishes
Dmitry

