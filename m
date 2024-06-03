Return-Path: <devicetree+bounces-71736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF008D7CD1
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F13C1C20FB3
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 07:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE974F20E;
	Mon,  3 Jun 2024 07:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jqJ2WTOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A6D4C631
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 07:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717401150; cv=none; b=S4slclKYw9kGs8itSesWQvj1R6wxmzuCe8SkXgOuoC1mv3+5ANsbYEyKD3iw5arIiw9VPctDy2e6LrGCGqo3HFIN1gdm2icn1Acmgcw4nO4JLjPCTJnF3eH4HkGANS3d277vFAVujCJNXQGmM9hhZAzbTJGJLoK0Vku3oo/KvRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717401150; c=relaxed/simple;
	bh=EasYFqeOqEz2XMj0eBIehUFvDd/gDZ6qmd6Ory/qY48=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cHKxBFgRwFDiMlDTas3cxYdBJSY8m9YX/XNWPp5u/mzDqkI7AAoSXDQtcB2s5FXSXnEz2RrMHqe70AXpk8Zy1pYrdlcL7PmGYFbspVN8sfnlfj1dJFzGk2EolEDq/Bwzj6mwD8Auu/h4qjb7DRXQjN2tDH0Jgl6EIlOUeVxk4qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jqJ2WTOn; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-62a2424ed00so41636947b3.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 00:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717401147; x=1718005947; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RMbAbJUJRVwX4BQuP5CnsSXY8BFtWrQGAFlKLZmvST0=;
        b=jqJ2WTOnVPYt9eQfUDTzq6Z12zflO5w+Ke56VBU8uviSWmrZx7h/xwqEbiTCQ05rqG
         A62tQI+2p3eFDgXpJ4yBcG9cW8DkY/6el28zCkZuyaBNfiKpYNQ3jJC6J5ISag0ivNes
         9g94Z1cskILe6THjxKvlX6ZXQgRfgNSe13IeO2/5pPNYnMi+LmNqtyiIsyjV3TJrMZs/
         XHEJcMChm6aWy/CEpHXlK2q3aQ+bHYZ5XgqQOMsRfXIoC498yVeszSre8La96zMqiE2d
         FxMBBHW18JWQX1en+FdLlkxRRUopfK+5HpHpFWuw+RMOaIsjro0Nc9WxAgXi0/3fysft
         qFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717401147; x=1718005947;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMbAbJUJRVwX4BQuP5CnsSXY8BFtWrQGAFlKLZmvST0=;
        b=I0lflhNHGymDYBe31ql2LyWeKF9+W+7bCP+gimZQYVQZ1WKsFUCgSmZX5x+JyGQBRY
         +JDV6969ZaPRq1CgxwMRkJcEndNU8eQuJTH/LGp40JamLgJQRI7yAXypvfxS955IR3bE
         FjZxEh+KWNXUBHJbqYvX1hCNfoJeoKZ0eqA19vLYpr5NZGKNRS47OMv/BMivMsSNpRb/
         8r7bpfXTsK9FmNDXYQRkkqNill4a3wvwqUIC7u3UvbGr4HMcEXxvb99HFHJ/ucKMGJmk
         WhCwdXLLxpLVdTMlkIJS6/FQct7BU7L9pOfytfPORDrnwwkWIAk6g5nSP3DFaQp6run2
         CKLg==
X-Forwarded-Encrypted: i=1; AJvYcCVM2Q3Zprnm/KsbHD8nC+w58DNbEaBdIvhzAgwbmlcwsboOB/+/RMIPMyQ+fh4DkqtB3oF0a5H3yA0nQftC9CaHbLiExl4iQnpJ5Q==
X-Gm-Message-State: AOJu0YzB3FyFtVEXh+vyeJZ23faDoEgyUchVeE9ohL0TBuHg4huZIfA6
	Ae7lMLaWhmY7LWsUIaBQdqDkB9Z5J8YKCMH5UMJH609mI2JtzTVW6dEzIzrCe0DtS+NVwFAa+W+
	quG0YLbMI1fxU/UytZAS2v04usPGoIprIRKDwEw==
X-Google-Smtp-Source: AGHT+IFlOZnjvHXI27nltZLKKPabNPuVcaQaCuOztS1tt22EDADTyNFLd9Mut2KnQUbH8mNQ0TOnrISHuT8xGerJKjA=
X-Received: by 2002:a25:d3d3:0:b0:dcd:19ba:10df with SMTP id
 3f1490d57ef6-dfa73dbc904mr7760984276.56.1717401146985; Mon, 03 Jun 2024
 00:52:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240529100926.3166325-1-quic_tengfan@quicinc.com>
 <20240529100926.3166325-5-quic_tengfan@quicinc.com> <s5gt3p6zsd5ebrkop4dhd33tykln33f6ahu3pibymecxsmakyd@lg5wfgec6dat>
 <205de8b7-507f-45c9-83ce-6eceb1466cb2@quicinc.com> <CAA8EJpqFq=6YFcUpjdkKikN54iQ76i8Rk_z+mLH1Tt0zFFmciQ@mail.gmail.com>
 <89c5c663-df8a-43d4-91b3-0a84b0c9a324@quicinc.com>
In-Reply-To: <89c5c663-df8a-43d4-91b3-0a84b0c9a324@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 3 Jun 2024 10:52:13 +0300
Message-ID: <CAA8EJpoBi+iWeZz3JLQkRXCTP-9xnCV1hGAGr8J37W=GUd5CPw@mail.gmail.com>
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: aim300: add AIM300 AIoT
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com, 
	Qiang Yu <quic_qianyu@quicinc.com>, Ziyue Zhang <quic_ziyuzhan@quicinc.com>, 
	quic_chenlei@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Jun 2024 at 10:38, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
>
>
> On 5/31/2024 4:38 PM, Dmitry Baryshkov wrote:
> > On Fri, 31 May 2024 at 11:35, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 5/29/2024 11:18 PM, Dmitry Baryshkov wrote:
> >>> On Wed, May 29, 2024 at 06:09:26PM +0800, Tengfei Fan wrote:
> >>>> Add AIM300 AIoT Carrier board DTS support, including usb, UART, PCIe,
> >>>> I2C functions support.
> >>>> Here is a diagram of AIM300 AIoT Carrie Board and SoM
> >>>>    +--------------------------------------------------+
> >>>>    |             AIM300 AIOT Carrier Board            |
> >>>>    |                                                  |
> >>>>    |           +-----------------+                    |
> >>>>    |power----->| Fixed regulator |---------+          |
> >>>>    |           +-----------------+         |          |
> >>>>    |                                       |          |
> >>>>    |                                       v VPH_PWR  |
> >>>>    | +----------------------------------------------+ |
> >>>>    | |                          AIM300 SOM |        | |
> >>>>    | |                                     |VPH_PWR | |
> >>>>    | |                                     v        | |
> >>>>    | |   +-------+       +--------+     +------+    | |
> >>>>    | |   | UFS   |       | QCS8550|     |PMIC  |    | |
> >>>>    | |   +-------+       +--------+     +------+    | |
> >>>>    | |                                              | |
> >>>>    | +----------------------------------------------+ |
> >>>>    |                                                  |
> >>>>    |                    +----+          +------+      |
> >>>>    |                    |USB |          | UART |      |
> >>>>    |                    +----+          +------+      |
> >>>>    +--------------------------------------------------+
> >>>>
> >>>> Co-developed-by: Qiang Yu <quic_qianyu@quicinc.com>
> >>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> >>>> Co-developed-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> >>>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> >>>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> >>>> ---
> >>>>    arch/arm64/boot/dts/qcom/Makefile             |   1 +
> >>>>    .../boot/dts/qcom/qcs8550-aim300-aiot.dts     | 322 ++++++++++++++++++
> >>>>    2 files changed, 323 insertions(+)
> >>>>    create mode 100644 arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> >>>
> >>> [trimmed]
> >>>
> >>>> +&remoteproc_adsp {
> >>>> +    firmware-name = "qcom/qcs8550/adsp.mbn",
> >>>> +                    "qcom/qcs8550/adsp_dtbs.elf";
> >>>
> >>> Please excuse me, I think I missed those on the previous run.
> >>>
> >>> adsp_dtb.mbn
> >>
> >> Currently, waht we have released is adsp_dtbs.elf. If we modify it to
> >> adsp_dtb.mbn, it may cause the ADSP functionality can not boot normally.
> >
> > Released where? linux-firmware doesn't have such a file. And the modem
> > partition most likely has a different path for it anyway.
>
> Firmware releases can be obtained from
> https://qpm-git.qualcomm.com/home2/git/qualcomm/qualcomm-linux-spf-1-0_test_device_public.git
> after users sign up for free accounts on both
> https://qpm-git.qualcomm.com and https://chipmaster2.qti.qualcomm.com.

I'm getting 403 when accessing qpm-git (both with my Linaro
credentials and with gmail ones).
If I try to git-clone the URL you've provided, I'm getting "Not found"
when using a gmail account and CURL error when using Linaro
createntials.

error: RPC failed; HTTP 302 curl 22 The requested URL returned error: 302

Not to mention that the URL wasn't mentioned anywhere beforehand. So I
can hardly call that 'released'

>
> >
> >>
> >>>
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&remoteproc_cdsp {
> >>>> +    firmware-name = "qcom/qcs8550/cdsp.mbn",
> >>>> +                    "qcom/qcs8550/cdsp_dtbs.elf";
> >>>
> >>> cdsp_dtb.mbn
> >>
> >> CDSP also as above ADSP.
> >>
> >>>
> >
> >>>> +
> >>>> +    te_active: te-active-state {
> >>>> +            pins = "gpio86";
> >>>> +            function = "mdp_vsync";
> >>>> +            drive-strength = <2>;
> >>>> +            bias-pull-down;
> >>>> +    };
> >>>> +
> >>>> +    te_suspend: te-suspend-state {
> >>>> +            pins = "gpio86"
> >>>> +            function = "mdp_vsync";
> >>>> +            drive-strength = <2>;
> >>>> +            bias-pull-down;
> >>>> +    };
> >>>
> >>> What is the difference between these two?
> >>
> >> TE pin needs to be pulled down for both active and suspend states. There
> >> is no difference.
> >
> > So why do you need two different states for it?
>
> Dividing into two different states can provide a clearer expression of
> whether the corresponging functionality is avtive or suspend.

How?

>
> We can also find similar settings in the other SM8550 and SM8650
> platform dts files, such as sm8550-qrd.dts and sm8650-qrd.dts.

Which means more items to cleanup.

See the discussion starting from
https://lore.kernel.org/linux-arm-msm/36f22383-79a3-427e-bf17-35ce2e1dd620@linaro.org/

>
> [1] sm8550-qrd.dts:
> https://elixir.bootlin.com/linux/v6.9.3/source/arch/arm64/boot/dts/qcom/sm8550-qrd.dts#L1052
>
> [2] sm8650-qrd.dts:
> https://elixir.bootlin.com/linux/v6.9.3/source/arch/arm64/boot/dts/qcom/sm8650-qrd.dts#L1098
>
> >
> >
> >
> >
> >
>
> --
> Thx and BRs,
> Tengfei Fan



-- 
With best wishes
Dmitry

