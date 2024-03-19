Return-Path: <devicetree+bounces-51699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4749D880185
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02A81283667
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335E481AC9;
	Tue, 19 Mar 2024 16:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ES9j3iV2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893F081AB3
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864643; cv=none; b=uHLIFCIEh3VOs9RHR6dPVxUS98ITEruw+jEJxU5aDXiZ6O6rs8lqefLVhfRF72C3Fh7EYVDs6LkgFcAFMghyMbzIYXU/t1iZw1TWFF48NPMQy7Mr/QH+UrnbAtivI8+Ws3OMIa3j9OGTPM940Jis2XrbLEkMShJYHyxPsHrJ9sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864643; c=relaxed/simple;
	bh=4BDyA1fp80l7JzPfJ1e9Vcia9HkvY/RtUdxfuRXBrig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uQthsZmLCDD+ixrtOkGGrNDy9PODWRlFnn7LTgnUpKfTxynv9vTP+8Salu3Bw0xp2+xLuwZ6IhED879h3lQPf0munZ7+LWyDgfU1QV3gEc1xqUvb772mA+L1Qn5R9E23jx8NEt5SuNooXCj0D/2QaijLC5PiJqp2ILl+0Gwq+3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ES9j3iV2; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-690bd329df2so39681826d6.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710864640; x=1711469440; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/L6WBF/yO8q1qFXY+u+U+qwB52PYKW+UCvdVhNRdhUs=;
        b=ES9j3iV2JBRMkvAan48pxSiBUveza/4c9K0/dDfwc09aOzmZdkhz1smErukihYnfuj
         NOoc4XxH9Je0U6HtJWckEac3HeoMmqKcVDGP9CEe2H5MT1YtM1IJyksu6P377sGaEXrh
         GRfCrPYB1a+6U9elDBRxvJS3okcwMc4hdktyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864640; x=1711469440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/L6WBF/yO8q1qFXY+u+U+qwB52PYKW+UCvdVhNRdhUs=;
        b=tY2v+FzNOuZj1AMGrTeSr82zXShralWhDTeDjB+nN1HMqIaDMEZrRPEecE6vmdq4iP
         oZe65WC0IPBB+vpzKimeRt4h9d4lczt1bFk16R/8CUhJ85vVO91rW2tBXxOOzJ+rgzTl
         49lsZQbfmK+2qdtjchcd4gV9U53ey3GLqK64TzV2jaB176UyUfZvb9WqhHxlAioI957I
         imGRkmnKaZjvcITyj31W1GhACac3vYtjAISPEYyIX/fGUyh/1qXrRtXLi+XRITaIKoDI
         WJXJMICq82BAJ8wekNPE1qj8xc4WwPkwc6V6YxmEMTJcd3HteRnhTsFCbIrfMGXEI/f1
         OMfg==
X-Forwarded-Encrypted: i=1; AJvYcCWSfGQoSq2Zh0O/d5xRJCvh8LywOMizzBVBBvlR8++dE6oJXVNv+HrMi7LYUkrW98lD283IooKibDRP7VLqunfHhmQoiMSYSfH4sg==
X-Gm-Message-State: AOJu0Yz2dqMSwkcLjknB0WRCFIOOpuZ7TmaJjWtyfhPsggoJVOk2Df96
	wKjtWyrX7QrloX8wdqjdkjme8lkAD8EKu+bcbsSqiUClf5u0OWYhM7I4MIkmD6G6ZdAUhT0POO0
	=
X-Google-Smtp-Source: AGHT+IFRAMnnjiXa6CGXpouF2VaAbsdKy66kMJfxe/Tk5vcKfn1QYHVwgvUQnjNtZ8Ra+OvmcnNGhg==
X-Received: by 2002:a0c:dc14:0:b0:696:22ae:eb67 with SMTP id s20-20020a0cdc14000000b0069622aeeb67mr2731245qvk.33.1710864640538;
        Tue, 19 Mar 2024 09:10:40 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id 8-20020ad45b88000000b006910b474f4asm6515817qvp.71.2024.03.19.09.10.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 09:10:40 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-430d3fcc511so264141cf.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWqFW8rzX4wABAoYrew6bylqujIDo5Bs+8Ix4HKq5tt7H/+Xh3OYnWIbtCzmL6c6OxcyykHawBUhqA58hgMTnRm67HF0msxYl/mOw==
X-Received: by 2002:a05:622a:11d5:b0:42f:3b05:dc8f with SMTP id
 n21-20020a05622a11d500b0042f3b05dc8fmr390619qtk.8.1710864639829; Tue, 19 Mar
 2024 09:10:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319152926.1288-1-johan+linaro@kernel.org> <20240319152926.1288-3-johan+linaro@kernel.org>
In-Reply-To: <20240319152926.1288-3-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Mar 2024 09:10:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VUFodCAXEJgfpSqZZdtQaw5-8n_-sX_2p6LuQ2ixLRpQ@mail.gmail.com>
Message-ID: <CAD=FV=VUFodCAXEJgfpSqZZdtQaw5-8n_-sX_2p6LuQ2ixLRpQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] Bluetooth: add quirk for broken address properties
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Matthias Kaehlcke <mka@chromium.org>, 
	Rocky Liao <quic_rjliao@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 19, 2024 at 8:29=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> Some Bluetooth controllers lack persistent storage for the device
> address and instead one can be provided by the boot firmware using the
> 'local-bd-address' devicetree property.
>
> The Bluetooth devicetree bindings clearly states that the address should
> be specified in little-endian order, but due to a long-standing bug in
> the Qualcomm driver which reversed the address some boot firmware has
> been providing the address in big-endian order instead.
>
> Add a new quirk that can be set on platforms with broken firmware and
> use it to reverse the address when parsing the property so that the
> underlying driver bug can be fixed.
>
> Fixes: 5c0a1001c8be ("Bluetooth: hci_qca: Add helper to set device addres=
s")
> Cc: stable@vger.kernel.org      # 5.1
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  include/net/bluetooth/hci.h | 9 +++++++++
>  net/bluetooth/hci_sync.c    | 5 ++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/include/net/bluetooth/hci.h b/include/net/bluetooth/hci.h
> index bdee5d649cc6..191077d8d578 100644
> --- a/include/net/bluetooth/hci.h
> +++ b/include/net/bluetooth/hci.h
> @@ -176,6 +176,15 @@ enum {
>          */
>         HCI_QUIRK_USE_BDADDR_PROPERTY,
>
> +       /* When this quirk is set, the Bluetooth Device Address provided =
by
> +        * the 'local-bd-address' fwnode property is incorrectly specifie=
d in
> +        * big-endian order.
> +        *
> +        * This quirk can be set before hci_register_dev is called or
> +        * during the hdev->setup vendor callback.
> +        */
> +       HCI_QUIRK_BDADDR_PROPERTY_BROKEN,

Like with the binding, I feel like
"HCI_QUIRK_BDADDR_PROPERTY_BACKWARDS" or
"HCI_QUIRK_BDADDR_PROPERTY_SWAPPED" would be more documenting but I
don't feel strongly.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

