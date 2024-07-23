Return-Path: <devicetree+bounces-87569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A92E939EC4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 12:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC492283100
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 10:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669A214D710;
	Tue, 23 Jul 2024 10:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O1czTTXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C997413E034
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 10:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721730806; cv=none; b=Fb9aD2IomWQ0tIxy6i9VJLfHG+fqg2tyC3oauPTP0dstWCgen+wKyS6Rm3iW86QsJlmbCsp7yUe4+NOSqXp0Vozr8Nd4FfxywDJSQ+eu9iiNO9RSZUijXgYNFYgb3JxfxywEV1117vHFpzRGtKhRvUXmeyoxzTG63FnjP+k6vEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721730806; c=relaxed/simple;
	bh=m5FZdSlKSn2HH1WK/8QoH35aY2wLvBYaB1dz9p412/Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Re6+7G32lmTGqkZ0EayhXWDbWYpt+99zrMMT9M1OAz/36tG9LZNyk0gRoC9g+DPaNDCzsVr3G/s893AXjefK4k7m8+S90lmBYZl8VgUsezdM2AA4/kEZtRfh9fsvBMIK0e0gITr/aJmJWUjQDw+oUgxEPSYS7v8AnlSFykWfvVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O1czTTXx; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e0871f82ff8so3016570276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 03:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721730804; x=1722335604; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+cYfTKvKSj7lLoJokuJJ1LaOPnzxS1ubH2/iuemUb/w=;
        b=O1czTTXxBv7hIsLjrT7Wth+zQcXcVk93479T+TDZu3p40qhTehJ/NtUBbK1HQ9cW7H
         0kzJgwb3zuvaflqowmUH/yajv2sGhoX/RAo1f2Jn3MrgwV0CsPPGL67XrxYVNvoVrnWW
         WsuAxvNpsvtv1rR9RyMlXRSXaQLPk3hOWtdm3Mhn1N9wFsKowrMqOj3AXkSh2kjePN+y
         mR9kVBHrCW4O6MKYmqa83tzVLpO4S18k3hZ/iLHwbWRllWTFOlix9FJWZthVaCSHVqlV
         K5Asg4gUUVDiiBgA7NPYfNuU1wwg02o4lfzJ1/p2FOWCgFakFz/d8MCYug7WnbcwYwTE
         m6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721730804; x=1722335604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+cYfTKvKSj7lLoJokuJJ1LaOPnzxS1ubH2/iuemUb/w=;
        b=JX7vrx/DiF0Gl4FXcvS+NavjQvoeR27mvWMya0zUPxCGXcGIoJUrh/czFEEAzV+Fj+
         2B41DiPM/fetsP3ojpdAkaStrRwCr2pyr2BgBfdh6HxTqgGRAMl9JV8XSFAMqJiv7J8D
         Q3Fo8Nmnuhy3d8mLppXglp95/BGFhc7DTatdo6k+GASMVKazHZYWmbQTAoRrZEIGvmpE
         TFG8hVMN2KOQxpviU/w0yhsw0FRj1fuXsxeNJ7d6Cw7DRXU1YCddEasJPEEYUVQQMscO
         SiDdTXvmGvjwC2qM5p+tUfFFDQxXTjkdjY7O5WbgFJSF/SfUbpguCMoGGOuLuXXboe9f
         H4ng==
X-Forwarded-Encrypted: i=1; AJvYcCXuG8HQa7o5wz6snIKiDXgE8OUhZYZfZOJ5qzUbwVh+rvEuePBVPkoPbctJV+81tBKTtROknL5qDShDSFCF8p4YHhr9xvUkcq3e+w==
X-Gm-Message-State: AOJu0Yx12eoPNZFVaQ8NoYI7GPZyo2Vs2iglcyolwBIBF8gUHzGjVO2F
	9ElzG04n92IGvLNvyt0HjzwsMNoJFwedyuK4MiR5rkk9a5ncdblgs/OCqp0Gticix8OroKIrsGs
	eO3XLqBV7VocKBwqKo4VukusZgzNGMdb9+fSlvw==
X-Google-Smtp-Source: AGHT+IE00J2zhKrMFAIQ9tWF9/wq6znQzjO6mWhp+k6HEoTeyFAK8Bt9BVV2ly5zyAI3/BeUBiSvs/jJzJr+pm3H9bE=
X-Received: by 2002:a05:6902:2486:b0:e08:8aba:644a with SMTP id
 3f1490d57ef6-e088aba655emr8727052276.19.1721730803694; Tue, 23 Jul 2024
 03:33:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
 <20240722-miix630-support-v1-1-a6483cfe8674@linaro.org> <cac3d7ba-2a62-479d-94c2-c6dc4d7a5ba2@linaro.org>
 <CAA8EJprROf-aJgJvUMb3D+dCzOUO-eRzM3khM6ZY8b+z+_gByA@mail.gmail.com> <2448216d-344d-4ffa-826f-d077ab9b1958@linaro.org>
In-Reply-To: <2448216d-344d-4ffa-826f-d077ab9b1958@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jul 2024 13:33:12 +0300
Message-ID: <CAA8EJppu3eaWrgz89Qkx3ZXrQoWVgL1ODoX224g7FYh1pX=Ydw@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable touchscreen
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jul 2024 at 13:01, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 23.07.2024 3:09 AM, Dmitry Baryshkov wrote:
> > On Tue, 23 Jul 2024 at 02:22, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >>
> >> On 22.07.2024 1:57 PM, Dmitry Baryshkov wrote:
> >>> There is no point in keeping touchscreen disabled, enable corresponding
> >>> i2c-hid device.
> >>>
> >>> 04F3:2608 Touchscreen as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input1
> >>> 04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input2
> >>> 04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input3
> >>> 04F3:2608 Stylus as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input4
> >>>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>  .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 28 ++++++++++++++++++++++
> >>>  1 file changed, 28 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> >>> index a105143bee4a..118c55f5bcfd 100644
> >>> --- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
> >>> @@ -11,6 +11,24 @@ / {
> >>>       chassis-type = "convertible";
> >>>  };
> >>>
> >>> +&blsp1_i2c5 {
> >>> +     clock-frequency = <400000>;
> >>> +     status = "okay";
> >>> +
> >>> +     tsc1: hid@10 {
> >> weird (and unused label)
> >>
> >> very non-specific node name too
> >>
> >>> +             compatible = "hid-over-i2c";
> >>> +             reg = <0x10>;
> >>> +             hid-descr-addr = <0x1>;
> >>> +
> >>> +             interrupts-extended = <&tlmm 125 IRQ_TYPE_LEVEL_LOW>;
> >>> +
> >>> +             pinctrl-0 = <&i2c5_hid_active>;
> >>> +             pinctrl-names = "default";
> >>> +
> >>> +             wakeup-source;
> >>
> >> double tap to wake? tap to wake?
> >>
> >>> +     };
> >>> +};
> >>> +
> >>>  &blsp1_i2c6 {
> >>>       status = "okay";
> >>>
> >>> @@ -35,3 +53,13 @@ &remoteproc_mss {
> >>>  &sdhc2 {
> >>>       cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
> >>>  };
> >>> +
> >>> +&tlmm {
> >>> +     i2c5_hid_active: i2c5-hid-active-state {
> >>> +             pins = "gpio125";
> >>> +             function = "gpio";
> >>> +
> >>> +             bias-pull-up;
> >>> +             drive-strength = <2>;
> >>
> >> Since there are no other pin definitions, you can do better and not
> >> copy the old rotten style ;)
> >
> > Both node and pinctrl were c&p from c630. But was is rotten here?
>
> yes, we stopped putting a random newline in there quite some years ago

Ack

-- 
With best wishes
Dmitry

