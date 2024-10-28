Return-Path: <devicetree+bounces-116397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE219B2BB7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D4CBB22B99
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C970B1CC8A4;
	Mon, 28 Oct 2024 09:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QHglcP8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C5192D70
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730108518; cv=none; b=VXdltAOCBubysLQmqTdO+6XBX80daNhILxRmXGl86AaOoEHArIqSictDPTVERQgfRKog58Y5qSV4cT43LaRkK5iPkyFs6vO8bcVajlFAHYNpEq8XPDE/DA6l5iNvjqZ9PJBiBOJNZPf+KOLW+1nSpR4Ys2CyMwobbSOuDRT4Ow8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730108518; c=relaxed/simple;
	bh=Xv9M5xfOc1wxGZrwaqn1SfRj4pgqlBBcSc1XElq37/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HRiVCxfoJgIetn+7pT4qBlMPIS/sYSRMMCnrhoTb+UO3BZVvVnZvjykmMfn7cLs9PlMo7C/mre8DXCz/UJB5hywdun4xgDUYXEpKtXX8ng6X4APLtdwyw8HsWzIOR2oBGjWDU0TJqINUyt56GqUoiJH0L1ervZKQbGyLdBBbMFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QHglcP8V; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6e5ef7527deso42026347b3.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 02:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730108514; x=1730713314; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oiX/iT3MGW/8gbZHj00AjboGGe8ICnr6A2PFnCy1ZuU=;
        b=QHglcP8Ves/5ssZORq/LhM2Iw/l47GOe4idmUx8D9K6RvdQcRUVcWoQmuZGHVZ1J5A
         Bop8yZLMV6cmyuaMlnamQ7tNL05i23saEIbK4mYw1AVX78/N3DR0foLW7QvGwltRFLDc
         w5HH52L+t0AFoeSXARNwP3wjxpzu23xL4hF+OP6+mQNPKbJM8rMVCTMFttWEjHe+5mni
         /F/ST3uCNJX+YSzIv45W4v+U+hcVDe7ObDJBVwvAd5tpZAQRpT9B/Auh6V9eKA5gSdjr
         8fU9b9g23rgbibJjZ6wLqGTta2d2nOViTX0FojO2+BSi2baqdtCtu0o0pYqOsPXumRGR
         x4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730108514; x=1730713314;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oiX/iT3MGW/8gbZHj00AjboGGe8ICnr6A2PFnCy1ZuU=;
        b=PFOp8gntQgfQ/pYCQ+0nI7yPnMWAmJzm/ukvNhLFDiHqwXFVthHtsOKpuqDBcxZsDD
         PKtRTj6u4ZSf1VmSjqp/2o/tG1EdWjGfqheVfBOmXQekmJGYUzPJJrbVT6ng27hkpyN3
         0Ogvu+sVNPAfXVU3RyNbIC+8boFeIYdGtKOwVSitWBRT+YqDgTc/tUV/CFU4OKS32kux
         +xOLftQcBK4f7XdWbUjl1qvsSiU3v22Uzo8s1O5yQNO383nH+tBLBFcZufESE4xWEXZl
         aJh5auP7KZQbyF9oFa9CqIlraBowunmpxXvy4ZnkBcYKaaLdN61gJ4A4pji8O5MhOxhG
         v8Mw==
X-Forwarded-Encrypted: i=1; AJvYcCW8Ert+WN5fLMtdgc0jnbpoN1C/SQf7bIi5gJs1hwtdPTeiqc+PK5WEOK49VAvW9+9sQWnxP1AvKLrh@vger.kernel.org
X-Gm-Message-State: AOJu0YwTSmrp6pSaDpyxHw3i32y9HTkfaK9pwiIICL6l3mUBG+eCgCD+
	bGSDHONCg6ncZt87fYAgvUDZYidPGDos0MGrXBSKbAyIM0JiMWUAEuaA3U31Rowz/5u9v37b66y
	/HixGCTNri84p0j6JZBkl/XvoqkR2FmiTEvH5aQ==
X-Google-Smtp-Source: AGHT+IHrOCxCyJ8ThUv82DKoxK74MLXsAExLltokn+0bupLwZqHCYVLbaaRKX5qboWle+dvaUBIdAPCllC73pA7SJH8=
X-Received: by 2002:a05:690c:6c04:b0:6e8:497:49d7 with SMTP id
 00721157ae682-6e9d88e765dmr69472497b3.2.1730108514314; Mon, 28 Oct 2024
 02:41:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-0-f0778572ee41@quicinc.com>
 <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-2-f0778572ee41@quicinc.com>
 <j4ggfrynyoriseef5r5x6uwgo6cespll2np7uitc64yagoa6pz@r3ro2cpqrrry> <38cceae8-5203-4057-bd8b-f20fe3656474@quicinc.com>
In-Reply-To: <38cceae8-5203-4057-bd8b-f20fe3656474@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 28 Oct 2024 11:41:43 +0200
Message-ID: <CAA8EJprYHjYVM58e7i7Sxj64DSth4hhW_cUZ3hGqX7u0ecZFQg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: Enable PMIC peripherals
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, kernel@quicinc.com, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Oct 2024 at 10:40, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
>
>
>
> On 10/28/2024 4:23 PM, Dmitry Baryshkov wrote:
> > On Mon, Oct 28, 2024 at 04:03:25PM +0800, Tingguo Cheng wrote:
> >> Enable PMIC and PMIC peripherals for qcs615-ride board.
> >>
> >> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 15 +++++++++++++++
> >>   1 file changed, 15 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> index ee6cab3924a6d71f29934a8debba3a832882abdd..37358f080827bbe4484c14c5f159e813810c2119 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> >> @@ -6,6 +6,7 @@
> >>
> >>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >>   #include "qcs615.dtsi"
> >> +#include "pm8150.dtsi"
> >>   / {
> >>      model = "Qualcomm Technologies, Inc. QCS615 Ride";
> >>      compatible = "qcom,qcs615-ride", "qcom,qcs615";
> >> @@ -210,6 +211,20 @@ &rpmhcc {
> >>      clocks = <&xo_board_clk>;
> >>   };
> >>
> >> +&pon {
> >> +    /delete-property/ mode-bootloader;
> >> +    /delete-property/ mode-recovery;
> >
> > Why?
> Because boot modes will be supported on PSCI module from another patch,
> reboot-modes are required to remove from PMIC side.

=> commit message, please.

> >
> >> +};
> >> +
> >> +&pon_pwrkey {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&pon_resin {
> >> +    linux,code = <KEY_VOLUMEDOWN>;
> >> +    status = "okay";
> >> +};
> >> +
> >>   &uart0 {
> >>      status = "okay";
> >>   };
> >>
> >> --
> >> 2.34.1
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

