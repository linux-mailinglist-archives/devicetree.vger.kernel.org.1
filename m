Return-Path: <devicetree+bounces-55921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08760896E30
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89D98B2CE11
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AFF1142E97;
	Wed,  3 Apr 2024 11:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IyGuMKYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778CD1420B8
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 11:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712143297; cv=none; b=DhPqQjrnMq88bH63CqHiqQyhc86eCclSnZCevhsprQzVJ0sV8WnqOVv+44cOraXImZPlNFfcyOuyoeWd2sLTTgNB/HrHcXyME9P2jmSkymV+XSF5pt9rUuKucIH6FMtI+Uy/N0xm7vWvqepMK6blIu/zBXurSaCjwvbc7U+Y9Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712143297; c=relaxed/simple;
	bh=14A2zGvt71HCwM6O6gK42NmYjcKdFxMOyjGXH9M8uaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OK7/1dIEEX+jIXjCw2Qqnv0S3JqBs9UdRbm4tSNc40ILPWnbBdgDW5yQDnVzfNPxamMIHKkkNYs6hYc0nlCEtQI9DEP1G8NKOWQa8yQyXBo+d08jx+dm9OQVbBWjKYzKzEImX509+uYDRMTel0TibqiGpRzvHYwZX4nF4lGBCFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IyGuMKYC; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc6d8bd612dso6290806276.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 04:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712143294; x=1712748094; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lF+T4bxnDZj7vHWxhdfHcPO4VDzU3zVkWYi0IqT5ix0=;
        b=IyGuMKYCNcOdj5zfUJMfwLXjQxs/QumlNmkmfT3cw1Til7Omi0PtrwB/QZHbGgMzKX
         SjRMQWV+hxVdIFkbklSq+gOhEywIm0JKTe8lKi4D9AHXowyOd4fuR8/kH3CfFgfJpayj
         LLiUy2+frpgvRV4C8icpjezhPAT5ekYkBpETxXo+4qtTBBTNRkoGBaYQROZYcWRgY1Ay
         ttB+RYBzWxe6OqOVDXQugdOkbNVbp7Tb9R7UKTUXRAKVWdKDn0l3CiDaeTIRoWusCO+L
         hvb8jNJ+ML76ZA4v9mRde7zB7y0WpQ7Y1m05K30IqUjnTXFibl3XWOVpjcW23ipUjuxp
         nZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712143294; x=1712748094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lF+T4bxnDZj7vHWxhdfHcPO4VDzU3zVkWYi0IqT5ix0=;
        b=E3YCoRpvAdgpIKhhL7S3eOnq19/xqHCtelsXCMU41fcytspo/JaT09qVvNfNMiYela
         iRVqP7SVrk0X3QFF0ZUyPlzkbuepPawPiS8PZ8ihpoLjNv2F0KdSyiU4zk5AMlfU6XcG
         k/KU2/AHhxYlY8btJ1LuKaxgMdO69v3JTvRY6lOtthSo1YKAwHMzE8LXI2u8gylYRxUW
         KXYEa/r3yKNnl2wo3cqLUh/9pKEjZRaQnnPdOmpvVyuil6zLFhOLkx2q2OwrTLazBNGz
         sVV1ighgv8hA2ekuxX6DSB2/ledVj8/gcqa8GxChJzNRdIlLH8ubFOB0G9jFMyuhOjXd
         Zqhg==
X-Forwarded-Encrypted: i=1; AJvYcCWCsdw1tNGN5ws/S8NiqIzhs1uvh8A0BZXYidDk6oQMLEb6xSYRkWSF22vw6SRIVUnZnXDqd1mzKFD0Gsu8g+cg4TrzJlNCfrHatw==
X-Gm-Message-State: AOJu0YztmeJIq3bRINuP5fV84zdSwOaLHOPxNHE7ZTFurVtihZ5bnRvp
	VrfjsefiOLYOJ3tc5s3RHmFyuEEk3UVVtCwLSd27xpLXAxQH77XxDCIlPv0TUeVnzyx8FDDjC7b
	jnK/HLRsRplnynACZS+u57YrqrE7dm4Nt2hQpKQ==
X-Google-Smtp-Source: AGHT+IFtc7mBgFp3kaw9P5n/Or46d3MjVihrSW5DyRrTli9K6KFjlNUz651nVrW1gUHor3EUrMSY621ZfPcAB6Oktbw=
X-Received: by 2002:a25:b198:0:b0:dcf:56c3:336e with SMTP id
 h24-20020a25b198000000b00dcf56c3336emr13726871ybj.35.1712143294469; Wed, 03
 Apr 2024 04:21:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328095044.2926125-1-quic_sibis@quicinc.com>
 <20240328095044.2926125-6-quic_sibis@quicinc.com> <Zgvnh0J2a_fBH0bR@bogus>
In-Reply-To: <Zgvnh0J2a_fBH0bR@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 3 Apr 2024 13:20:58 +0200
Message-ID: <CAPDyKFous+aoopf+=ZRugR78jyekobODqn7tqWRCyirPD+=eYw@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: x1e80100: Enable cpufreq
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Sibi Sankar <quic_sibis@quicinc.com>, cristian.marussi@arm.com, andersson@kernel.org, 
	konrad.dybcio@linaro.org, jassisinghbrar@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_rgottimu@quicinc.com, quic_kshivnan@quicinc.com, conor+dt@kernel.org, 
	quic_gkohli@quicinc.com, quic_nkela@quicinc.com, quic_psodagud@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 13:10, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Mar 28, 2024 at 03:20:44PM +0530, Sibi Sankar wrote:
> > Enable cpufreq on X1E80100 SoCs through the SCMI perf protocol node.
> >
> > Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 27 ++++++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index 4e0ec859ed61..d1d232cd1f25 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -68,6 +68,7 @@ CPU0: cpu@0 {
> >                       compatible = "qcom,oryon";
> >                       reg = <0x0 0x0>;
> >                       enable-method = "psci";
> > +                     clocks = <&scmi_dvfs 0>;
> >                       next-level-cache = <&L2_0>;
> >                       power-domains = <&CPU_PD0>;
> >                       power-domain-names = "psci";
>
>
> Any reason why you wouldn't want to use the new genpd based perf controls.
> IIRC it was added based on mainly Qcom platform requirements.
>
> -                     clocks = <&scmi_dvfs 0>;
>                       next-level-cache = <&L2_0>;
> -                     power-domains = <&CPU_PD0>;
> -                     power-domain-names = "psci";
> +                     power-domains = <&CPU_PD0>, <&scmi_dvfs 0>;
> +                     power-domain-names = "psci", "perf";
>
>
> And the associated changes in the scmi dvfs node for cells property.
>
> This change is OK but just wanted to check the reasoning for the choice.

To me, it seems reasonable to move to the new binding with
#power-domain-cells for protocol@13. This becomes more future proof,
as it can then easily be extended to be used beyond CPUs.

That said, I just submitted a patch [1] to update the examples in the
scmi DT doc to use  #power-domain-cells in favor of #clock-cells. I
don't know if there is a better way to promote the new bindings?
Perhaps moving Juno to use this too?

Kind regards
Uffe

[1]
https://lore.kernel.org/all/20240403111106.1110940-1-ulf.hansson@linaro.org/

