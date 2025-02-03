Return-Path: <devicetree+bounces-142574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D097A25CE5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 440CA7A06D5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015F0213E9C;
	Mon,  3 Feb 2025 14:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zb+GY5TI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76FA213E83
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 14:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738593086; cv=none; b=YCfKbQoQ++kL9rZlxkB6bZ/ifPmtWnrFRLQLOvNv/W07WBswcshCvRYkMSbl7aiyz5r8WzKHsC1rqmu7iMgYGMj3iNn8z4/lDIBxr91TfK+HV5KfG6zO2VxD4RQOlK8UEWVWmDShNCB7JKQo61i4P/WgWqHcXs+U8OjrTkH/fA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738593086; c=relaxed/simple;
	bh=DQrineTon4oBDwNOMF4wAf5CmVWaPXA6hctLTPhSRGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OeUu2LRRu1Zm0bJ1lNJvwSI0bqo/b9Sy7DVJSntg/oTOXX3UOuSQH6Mb0SIqL+5AOmDlhhC3XYZzAJ5YBFZwKA1GV6/FE/U45BYCJvASix3YqFp6zDipzbnF1c/y6F5t/NGkav55bsz/YFmw974DYZ9uxfKuZ43Qt/iJG+RvNm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zb+GY5TI; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5439e331cceso5144640e87.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 06:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738593083; x=1739197883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TVDFcnyLh4wiaaDr8pcIi9tA5w30/ZdPI8YjayS2Hzg=;
        b=zb+GY5TIhM2nbK06gYj/ZNfnr2LTdO2txfz9X/A5chWrBFx2IU1ezNk9jPmQmSTxtv
         R8r9XlKzhmL0FqqVP8KgiDOZ4RLYBz6RTKPYeiaWb4MQ65p43NrBNtWzDB9vZ3um+ISA
         v179MO1PyEWcugimeTGIjyZQUFThabrzPgOpClQRrliD7Nd8xCZ3Yrvvkr9VBdnHjW72
         nNJJpFzuBSqn+TNQ7YfsG6BRHAjiEz6rhXeSWzNWIoL/woNu3puY+Ra10miLTNAwnj8/
         CD+i/kr9EHmNkfWqMre4Ja4JCl5z6jA7CetlwjY1GZr3w1qtdY44jFRrfS605EjY8TaS
         FQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738593083; x=1739197883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TVDFcnyLh4wiaaDr8pcIi9tA5w30/ZdPI8YjayS2Hzg=;
        b=Ja7jgv8l0pQ8YsgdTOQ62Lgi6eCy1qmYkCqRplui64O2OZdwSn0d6/q53rECfU3YnJ
         HT3faMs2MREyBE0uE2tvVhrojtRNxJtO3x5UshgW9zKbZvQgerlojzc97LmPlGX843p2
         eJ/AGP3i9dDWDOGBdbs+iszrfnyb2Ps+XXZ/ysOrVFZUbe/PkF67GhUrebJ6UG9HU/de
         oZlSzxX5hlc2JmtmiiGSfeQv0EH97S0NOfOC4/WhHu53l/G9ZCeNjNr1BzZ2gVRKIDjX
         Z3jT65e8EukZucMCi1C3mG68bIOGez9vfyPXkw1kQWNrW5NMJPcW4APaug1I7p1H5A+Y
         z2WQ==
X-Forwarded-Encrypted: i=1; AJvYcCUo0YjC/AsY1AEmuwcAVQ7K0X6nZFJulDxbzSEpcd4Q1tBm16DEmR/LNcGxiSNPhHaSQWdFzOU5qNgm@vger.kernel.org
X-Gm-Message-State: AOJu0YwzpgrLGp5x/JzOVX+ZRL9IcD6oveI2/MbRcYUqHJJ04PVtZ4nA
	0pBJDqPMkgRowQ/eNuVFObynVHI/reXAlRmJwstQzij7CUUp2mIYqEDTEa5Tg2Q=
X-Gm-Gg: ASbGncuQDUWU/Y1FJ629SNkO5FPWaJdKyn9u3xsDzR8JVgOJCXfyK4KsCPDiu5VPzuP
	X6Z7j1pRbs4OhTTES4YVGZ/g4f+c0VmLsXNQFfivdY8XWo3Ls5YQ5apAdEg4DpvXztpvqK82pbn
	9dB+4kXunVBlLwOH6z4a5O6PZbsU1zPm1ZJImZFAaWt+CTfuLN77iVH3X6sqcfpiW+XkNAVVRqC
	JQR4FyPtYpeQZ+6blr8Q0sO50A1bYdvffIfW2Ya9QH5z4RU5UWnGZI87LwOQfjBR0VEsWkimAPm
	dp5aAaliOCP0NMRUsHOb9r0FrA7WoEjHgx2n6tv58m8s5ZFerqev/bjPaksKC0tCgprO4C8=
X-Google-Smtp-Source: AGHT+IHUghVJimpcvkNuryRp2QSiMsGJ5k9kaBv83gYo738k+5t/tc8gK88ES/UIqhPDyfIJKtVIKA==
X-Received: by 2002:a05:651c:508:b0:300:33b1:f0cc with SMTP id 38308e7fff4ca-307968fcfb9mr89069701fa.34.1738593082745;
        Mon, 03 Feb 2025 06:31:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a33f7cd2sm14901271fa.65.2025.02.03.06.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 06:31:21 -0800 (PST)
Date: Mon, 3 Feb 2025 16:31:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210-rb1: add Bluetooth
 support
Message-ID: <ajojztm3jr6iciwqhlbc7xnndlhrq6z7z6bvbbnb7sjlybqjqq@e6sdxcjolmd3>
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
 <20250202-rb1-bt-v3-6-6797a4467ced@linaro.org>
 <a6fe746c-c5e2-4c39-afa8-46b225256cb9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6fe746c-c5e2-4c39-afa8-46b225256cb9@oss.qualcomm.com>

On Mon, Feb 03, 2025 at 02:50:52PM +0100, Konrad Dybcio wrote:
> On 2.02.2025 1:16 PM, Dmitry Baryshkov wrote:
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
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> 
> [...]
> 
> > +&uart3 {
> > +	/delete-property/ interrupts;
> > +	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
> > +			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
> > +	pinctrl-0 = <&uart3_default>;
> > +	pinctrl-1 = <&uart3_sleep>;
> > +	pinctrl-names = "default", "sleep";
> > +	status = "okay";
> 
> As you're going to resend, please add a newline before status

I thought I added it, but it seems it got lost during the plane landing.
Do you want me to resend it?

-- 
With best wishes
Dmitry

