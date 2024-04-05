Return-Path: <devicetree+bounces-56592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B97899D85
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 14:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C5AA1F2254F
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9DA16D32B;
	Fri,  5 Apr 2024 12:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rp6+rZ9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF816078C
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 12:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712321403; cv=none; b=IGo2Rc1YiO3apuPfUuKzVwTKGUZoL+2SwZZ4HP21c8HgyO9HuCvMRRgv0Jy0l9ZgkjoSMX+NYz7PACEhf4/MdfUU9yWjCIc8FYXOmR/n9AkSyuFQxSNtnxM1DJspIHSKilKyGIzr5etNM/pzYgQkDLvSIrz0pL66hgoUozQSJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712321403; c=relaxed/simple;
	bh=/h5ZKUyP0Cry0+mHbTzooNJMYvg5n+9KMU/0TdwKBUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ncHpMbN0ktUeQ2VhpawilxEQNqP6mV71tDef/T7k2BoKNAMCXT/dybReuIzqpeIAMpo/ott4KkobykKWT16FRN+iGoJbD9PBCnWy+9T4vISt9+q9js9hT4seR/NRk8ZN5mhVz93O2FaovcgHJG3Ii8QOheiu41zqR+zPtXP5XJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rp6+rZ9/; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-ddaad2aeab1so2056922276.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 05:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712321399; x=1712926199; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/h5ZKUyP0Cry0+mHbTzooNJMYvg5n+9KMU/0TdwKBUE=;
        b=rp6+rZ9/wlE3O1qClOfG0L8PLIxmbUpZOenVR/srWXYqtseT5+l/ULqHIHQRUqTg0d
         CxbC/CWYDL0m09UAH+BPoYzSeYKU4E/75//5bsPidPrNtsrJj/N5fEQki5WYTd3QFcLg
         ASZbgcUNZhu2OVD0neIgiQb0moNPJjGr8x9CFAE7tqd8BufL4M2Z5S29VMFYYxQhlfUS
         kOMHK3oB+dpM5AnUveKI+8c9QUfoeZrLOy5xxaFDDjqKRL3e0PYP6UnHFQMmJA0DrzfH
         LCEtqxiCSdlv+yXU7Qxk0QRgbIZTXaq4pPCAoWM4t20icObba1xNokmKqYrWfQJpouMM
         LWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712321399; x=1712926199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/h5ZKUyP0Cry0+mHbTzooNJMYvg5n+9KMU/0TdwKBUE=;
        b=hgjQm65yLls/iydcumVpGtN7RQxyqHnykM5ckOD0ywO2N8a056tzc/D/qEU4C81pUT
         Yu2LfDQKyBAJl+XLJeWdU1rlPd2yJTKwxCauiX4U3y+hTfF7qXlGSr8B3UkYrONbseaT
         5zix2trSRZ9bcEgyoFEoishCSDRCCRXQIKt00Ch8wzpMvEq+UJvLcJIAIMEf4V2dsNFK
         U3D8/rk+3WGLNPR9Usb0FkmC4sk16GXDeDnpeLU78SPS5cBeV4CUcAQPWgSzG1hRtVSP
         kmfqzQ0U+Z/+Gu1UfEu4OGJ89q06lCY4yJLRfvInFhPmKNduVkSmtTkzI0g/lU4tMISo
         HE0w==
X-Forwarded-Encrypted: i=1; AJvYcCUtB1mGlv7d2u5xRLAYfI1MzhppXJ7XG09ixzSPEkc7oEahkACTk6vinNv90LGe3MGt6P+wXXDZ88KyKb2HUd0skt2ym8kvU0xjdA==
X-Gm-Message-State: AOJu0Yz3KDBBmPss2P1qPX+gwn4FEF51/vD7Nmek5yilk0vi1bM/KGGS
	NYVEYbC2Svlr2SZW50iYOcaYgr3LF6v0/mh8EKTUTSF3Z5J7hOXLyEgD2Tnne8iuIcVT3KMipOz
	7muIFU+uoNiCT65PA+I6D1sS6PpqSjsEOOHIO+Q==
X-Google-Smtp-Source: AGHT+IF+uYN0V7kj1WIHdUIWItVzS1wQ6IV2lWWc/0drhKwFzKBD2YiWPAiRHKjXhywplhFwsAgFyDg/DQC+/Ij0EOk=
X-Received: by 2002:a5b:9c5:0:b0:dcc:4b84:67cd with SMTP id
 y5-20020a5b09c5000000b00dcc4b8467cdmr937832ybq.9.1712321399265; Fri, 05 Apr
 2024 05:49:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
 <87plw7hgt4.fsf@kernel.org> <CAA8EJpr6fRfY5pNz6cXVTaNashqffy5_qLv9c35nkgjaDuSgyQ@mail.gmail.com>
 <87cys7hard.fsf@kernel.org> <CAA8EJpowyEEbXQ4YK-GQ63wZSkJDy04qJsC2uuYCXt+aJ1HSOQ@mail.gmail.com>
 <87v85wg39y.fsf@kernel.org> <CAA8EJpq_XLUEMC67ck2tZRjqS0PazCkQWWMGmwydeWxTETHwcg@mail.gmail.com>
 <871q7k3tnq.fsf@kernel.org> <CAA8EJppASEmj6-Jt7OCABAeqr8umSgXaDDha9nn2nRafuZ-Gvw@mail.gmail.com>
 <87sf002d8d.fsf@kernel.org>
In-Reply-To: <87sf002d8d.fsf@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 Apr 2024 15:49:48 +0300
Message-ID: <CAA8EJpp4J4b1mpkkeVCsnjVw83E7jmu+3yHActTNEeGcOKHPrQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2 0/4] wifi: ath10k: support board-specific firmware overrides
To: Kalle Valo <kvalo@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Apr 2024 at 15:41, Kalle Valo <kvalo@kernel.org> wrote:
>
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
>
> > On Fri, 5 Apr 2024 at 15:01, Kalle Valo <kvalo@kernel.org> wrote:
> >
> >>
> >> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
> >>
> >> > On Fri, 8 Mar 2024 at 17:19, Kalle Valo <kvalo@kernel.org> wrote:
> >> >>
> >> >> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
> >> >>
> >> >> >> To be on the safe side using 'qcom-rb1' makes sense but on the other
> >> >> >> hand that means we need to update linux-firmware (basically add a new
> >> >> >> symlink) everytime a new product is added. But are there going to be
> >> >> >> that many new ath10k based products?
> >> >> >>
> >> >> >> Using 'qcm2290' is easier because for a new product then there only
> >> >> >> needs to be a change in DTS and no need to change anything
> >> >> >> linux-firmware. But here the risk is that if there's actually two
> >> >> >> different ath10k firmware branches for 'qcm2290'. If that ever happens
> >> >> >> (I hope not) I guess we could solve that by adding new 'qcm2290-foo'
> >> >> >> directory?
> >> >> >>
> >> >> >> But I don't really know, thoughts?
> >> >> >
> >> >> > After some thought, I'd suggest to follow approach taken by the rest
> >> >> > of qcom firmware:
> >> >>
> >> >> Can you provide pointers to those cases?
> >> >
> >> > https://gitlab.com/kernel-firmware/linux-firmware/-/tree/main/qcom/sc8280xp/LENOVO/21BX
> >> >
> >> >>
> >> >> > put a default (accepted by non-secured hardware) firmware to SoC dir
> >> >> > and then put a vendor-specific firmware into subdir. If any of such
> >> >> > vendors appear, we might even implement structural fallback: first
> >> >> > look into sdm845/Google/blueline, then in sdm845/Google, sdm845/ and
> >> >> > finally just under hw1.0.
> >> >>
> >> >> Honestly that looks quite compilicated compared to having just one
> >> >> sub-directory. How will ath10k find the directory names (or I vendor and
> >> >> model names) like 'Google' or 'blueline' in this example?
> >> >
> >> > I was thinking about the firmware-name = "sdm845/Google/blueline". But
> >> > this can be really simpler, firmware-name = "blueline" or
> >> > "sdm845/blueline" with no need for fallbacks.
> >>
> >> I have been also thinking about this and I would prefer not to have the
> >> fallbacks. But good if you agree with that.
> >>
> >> IMHO just "sdm845-blueline" would be the most simple. I don't see the
> >> point of having a directory structure when there are not that many
> >> directories really. But this is just cosmetics.
> >
> > It is "not many directories" if we are thinking about the
> > linux-firmware or open devices. But once embedded distros start
> > picking this up for the supported devices, this can quickly become a
> > nuisance.
>
> Ok. Just out of curiosity, any ideas how many devices/products are there
> with wcn3990 who want to use ath10k?

Just for the DT in mainline I can count about 30 devices that have
ath10k WiFi node:

arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi:&wifi {
arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts:&wifi {
arch/arm64/boot/dts/qcom/msm8998-mtp.dts:&wifi {
arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi:&wifi {
arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts:&wifi {
arch/arm64/boot/dts/qcom/qcs404-evb.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts:&wifi {
arch/arm64/boot/dts/qcom/sc7180-idp.dts:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-kingoftown.dts:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts:&wifi {
arch/arm64/boot/dts/qcom/sc8180x-primus.dts:&wifi {
arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sdm845-db845c.dts:&wifi {
arch/arm64/boot/dts/qcom/sdm845-mtp.dts:&wifi {
arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts:&wifi {
arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts:&wifi {
arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi:&wifi {
arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts:&wifi {
arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts:&wifi {
arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts:&wifi {
arch/arm64/boot/dts/qcom/sm8150-mtp.dts:&wifi {
arch/arm64/boot/dts/qcom/qrb2210-rb1.dts:&wifi {
arch/arm64/boot/dts/qcom/qrb4210-rb2.dts:&wifi {

The list doesn't include e.g. PIxel 2-3-4-5 or some other phones which
are still on their way for the proper mainline support.
--
With best wishes
Dmitry

