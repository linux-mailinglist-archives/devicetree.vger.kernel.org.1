Return-Path: <devicetree+bounces-145496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11583A31783
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 22:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99784169053
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F55266F1E;
	Tue, 11 Feb 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SuTXjTZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20474266F09
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 21:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739308792; cv=none; b=CNyDvjJ3K3vp3EASsWQIiN/K29BKvnlgZVbbZxKfFPXMbWCFLs7Tt15Pn+WhZ1OfN9hWizUQxB+zOVAZ7djS3J9aj0xLUK1phnSnHdjXTs3cmGdo87MSxc9uhcFPp/awM27aA/hqHAetPTD2QyyCMMEId2tuQqCCrwRJjeX1tYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739308792; c=relaxed/simple;
	bh=v+NotQmkypHRHE+nHTFJOTzrbxnNJ6Og8Bo7qTcrXqM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q+DCQmBNlbM6IHCbNa2ktO+ZryxnkhOGjFcZnHu7okGXkswUQkaX/rr2fGp/kYjig+mhd2OcURTEyGzu4ai093ucT35ssg6Q0l2SbDO5Y+K+ITZPK0pIGuef0WWhTkFDY0pvq8j9wpxkP+Z03wPH28cvdq0Lq7pMaajRwUSyFAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SuTXjTZ1; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6f754678c29so55167187b3.0
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739308789; x=1739913589; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8vMpnOzz24XlelaJjtEfRnOqqAth0NeggjrcIGJFxfY=;
        b=SuTXjTZ19A00FUPjfW5OIYpo1Pj7eXvnzezX2PSBJxCZFMy3+xCG+hWTjB2jaEIDpp
         r1yomxBrNYd9IoPPc573d51xwZSGdEHbMvAHDMCw7RfK13I/BObzcJIoy2n75sXqpNaM
         rq1gakYpbMsWWRVB0K3XKyMbl18OZDuNSZgiGThJsLH63GB7eyz+7nF9ynT1GX+x96d4
         e5Qihpk/If7a0cWz2lTQy7yHbFLmS7phf/SbiTVUlrWVReoVlWTBxmutO3hhnPVBF+6F
         TqqFHR2art6vHV1f6BHNGY0t4rm2RVQReGSXdSkfsgB6IaXy1Z0Yd5pN0r7KmEswCkkD
         3HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739308789; x=1739913589;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8vMpnOzz24XlelaJjtEfRnOqqAth0NeggjrcIGJFxfY=;
        b=RjBgDcVQnzeH/kVHDpoY8GZLNjl3wmnTRp5ABccnA/xQfKkFVPqvPXRp6LLfoSlSo3
         FcmJzoSWlRcgn2y+8MHmPU8IOjFuSwSm4FxYVbIYlrabm4QOoWkL/Arv1Hj1Sb4YTkYF
         Yk9nI8fW8bznLYcjIZsNEYMd+cwk2m80GZqJwCsEX+xP+j4mwSO3rda2+4lNHs2F0I9w
         UORupGdKutLMIUjTFmL2pXA4XteA6pnW5Fsu1P/X9ccEAWvp8Tbu/sCTTUUFsiRbaU3Y
         yBSfb9lvUSN/JrEmQ+jCKCXNLYDDHtuV8Qvl4HNjvhfAVGtAQYg7hXWUwMSenP4nbwXT
         ChlA==
X-Forwarded-Encrypted: i=1; AJvYcCUUqhyDg72T+wVpvD2o8EKNWOT0RdxxWmmkqXwbZ+fqRjxQ4UCCSS3lyI970z9VIo7WFdgc+kjxW4Mg@vger.kernel.org
X-Gm-Message-State: AOJu0YwV36kvHojAoC3a9RDK1IcNoRZExUSi0UZa1h/Dj0YbaKAfRvvB
	VxSIw0pOJfzI7Xyw9QJ+vQio+h0gG1U5o2kmPt3pZaclo3ebuGgijNUqgJeDsTVNttuYT1l9dx+
	7pZNNK2Xdb/gGjjJnL1zKC5Z13LvPKgErcn6R+w==
X-Gm-Gg: ASbGnctcQTIon1Xgtye4OdPE6V7zst8EmOIjNdwfKAiXWXwtfJ8rh9CHnfk395EjeoE
	OmHnXhcroFqvQIiWlpaIw3emqT/hNw6EBa6SNrq8mscwn1e2cYOZFG5BGZreniK9q1fuV0y5Wpj
	HPqeheJhxcPsPV8fu/Cnv2MEEScFoQ
X-Google-Smtp-Source: AGHT+IH9PQWCcTuU3a/WUrp8QtPQgxzfoa0eG9D03GuXuge0++Qcj4dBm/Lk+WFXHD1fsOGrWKTo04Qt3z/nEYlknZk=
X-Received: by 2002:a05:690c:638a:b0:6f9:88ba:aa5d with SMTP id
 00721157ae682-6fb1f194f3dmr12585947b3.9.1739308789048; Tue, 11 Feb 2025
 13:19:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org> <20250207-rb1-bt-v4-6-d810fc8c94a9@linaro.org>
 <6e5bb2f7-a23b-4fab-914b-e67911eaf408@oss.qualcomm.com>
In-Reply-To: <6e5bb2f7-a23b-4fab-914b-e67911eaf408@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 11 Feb 2025 23:19:37 +0200
X-Gm-Features: AWEUYZlP4_dHB7Swwx_XD496R58hsBttKN3cXZEWV8-yu1YbBT4qWLOogarYxpE
Message-ID: <CAA8EJpq504V48qqSX0mzxCffUkq_xpu_UE+qubB46A7zon=0iw@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: qrb2210-rb1: add Bluetooth support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Feb 2025 at 16:52, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 7.02.2025 9:41 PM, Dmitry Baryshkov wrote:
> > Add support for the onboard WCN3950 BT/WiFi chip. Corresponding firmware
> > has been merged to linux-firmware and should be available in the next
> > release.
> >
> > Bluetooth: hci0: setting up wcn399x
> > Bluetooth: hci0: QCA Product ID   :0x0000000f
> > Bluetooth: hci0: QCA SOC Version  :0x40070120
> > Bluetooth: hci0: QCA ROM Version  :0x00000102
> > Bluetooth: hci0: QCA Patch Version:0x00000001
> > Bluetooth: hci0: QCA controller version 0x01200102
> > Bluetooth: hci0: QCA Downloading qca/cmbtfw12.tlv
> > Bluetooth: hci0: QCA Downloading qca/cmnv12.bin
> > Bluetooth: hci0: QCA setup on UART is completed
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> [...]
>
> > +&uart3 {
> > +     /delete-property/ interrupts;
> > +     interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
> > +                           <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
> > +     pinctrl-0 = <&uart3_default>;
> > +     pinctrl-1 = <&uart3_sleep>;
> > +     pinctrl-names = "default", "sleep";
> > +
> > +     status = "okay";
> > +
> > +     bluetooth {
> > +             compatible = "qcom,wcn3950-bt";
> > +
> > +             vddio-supply = <&pm4125_l15>;
> > +             vddxo-supply = <&pm4125_l13>;
> > +             vddrf-supply = <&pm4125_l10>;
> > +             vddch0-supply = <&pm4125_l22>;
> > +             enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
> > +             max-speed = <3200000>;
>
> I suppose we don't need a power sequencer for this smaller,
> tightly-integrated-via-snoc chip?

We can (and should) have it in a longer term. Currently none of
wcm39xx chips have a powerseq implementation.

-- 
With best wishes
Dmitry

