Return-Path: <devicetree+bounces-51698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 096DF880180
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64D48B22157
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA27681754;
	Tue, 19 Mar 2024 16:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OC1QkiCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1918003D
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864629; cv=none; b=l5GXGqlab4EWK/gj3fMX5jiNB0ypAhOvzPsskDkJt7Phf4MaVwaxLCRr6zbIAX/8iUuB8NWt+4sMWWtzMUGgmnn4VeMmlLxYa74YbQF8brJximbxUk4UCNp8tzESfcuHKOzu3EW10gL0DJ8s9sROGwD1fMS6rzqA56Ca8olb3Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864629; c=relaxed/simple;
	bh=FWs6LFKM/xcvvgakZ39skUFNVfNPQgC7Bo//2KPJp+g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CP1SSMtanBS40x6dTgkFsusXmyIQ3LUoV7dDEesvOeJbNqRD1IZKLRSqQ3I7nEM11qhlnet8TVHehh+XBQlGntb4oEEf15m04BmX7budhwL/dwJG9BRijilMM1FHqRziYtbiJAbFnOYNGjGGnW9VN2gAuqdjSKwYc7pPvLfe5o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OC1QkiCv; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-690c821e088so36657576d6.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710864627; x=1711469427; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Suh5QCHeNsdbI/6JZV91e5lppTR9YIcMyoALsn6PjZc=;
        b=OC1QkiCvf841xMG0qJiz9fHUOQ0aDpCXlNCuj3RuDl+cbtWdwNnVJ9AIsuoHdFMJmt
         msug8Yu4Qnt/n/jvDvQErD1qgYCKe5YUAuVf/vnAEXXqnIJUReNT6KVEf//dwEc2PJHE
         /iwsclNAVFoiUDKTlC4kFJrGBamAfoO8R3DLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864627; x=1711469427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Suh5QCHeNsdbI/6JZV91e5lppTR9YIcMyoALsn6PjZc=;
        b=LW9DTtSI0f1bosaTlfDpIdBP9hvab3z092cUx5TuQhORpJRV0zqebxTFP4sPc2pFcx
         9PwhNNRmfgtQvJdqWVA5SKfA/HRZSVtwZG8fziER4Z6zcAs+Bu6jC3uFv/iurMRvxvUf
         h9+CJuuO9I52skhByD+ghJivwVtp7cQ5V3yfJeIouDp9qf/AIqVIeKWd8RerG+3DLxHh
         ZKfKCmP5HGIH3Xsr4MA64y5T9YCbrhXNPa4O+WElCge+B59sFtuMK4p4PzSbmvwN4mnS
         ZFzl1eITcNSJEFnWKGp+WQfvbVuhbkGsLC1Zt6cejIwk5jVcW0+rn7f6JBiSDkZgXnYl
         lQlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWivVlMBAxtPTu0OEsxDsnnOzrGnnTxWgCd4ipftlk8uvpfi5opfGkrZv0Zb85QSqcNFqwKHc/pomZZkRNLoIr5rjCcxd8NrVUw3Q==
X-Gm-Message-State: AOJu0YxoUaT88tT9mSbFyax1QgBwvrOzlPoWGJVD6ShoMKr1Os2Kt3+l
	e5Fce1LRfiJNj7y0vgYh/4Py6sgHGdZkGZq0W3BbubIpH2SU9oySk7rgDfkgCgAZzTxLLP+w+ms
	=
X-Google-Smtp-Source: AGHT+IHXeEkaF+wBwEVOE2KETA7nOl3Eujuyybe+ayDftIE/r/JSfj5OWBZWaLNsvQhj0RJgoaJ+xA==
X-Received: by 2002:a0c:e14a:0:b0:696:1ed8:4672 with SMTP id c10-20020a0ce14a000000b006961ed84672mr5937832qvl.13.1710864627097;
        Tue, 19 Mar 2024 09:10:27 -0700 (PDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com. [209.85.160.176])
        by smtp.gmail.com with ESMTPSA id s14-20020a0562140cae00b0069102f97e08sm6566199qvs.97.2024.03.19.09.10.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 09:10:26 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-42ee0c326e8so322901cf.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWeb99qSEwWomot19XToQgFLePfNbOgTmqRG4tumE5sxE7ptAa83d/sT0wtw0hhBTiqSm6a0Fhr/tkY+GNLPkqn5ZaaBb4CmEOfwg==
X-Received: by 2002:ac8:5991:0:b0:430:eb3e:d599 with SMTP id
 e17-20020ac85991000000b00430eb3ed599mr197066qte.28.1710864626281; Tue, 19 Mar
 2024 09:10:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319152926.1288-1-johan+linaro@kernel.org> <20240319152926.1288-2-johan+linaro@kernel.org>
In-Reply-To: <20240319152926.1288-2-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Mar 2024 09:10:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XJ+yAvDn5NyfCSJdg+DujPrWO+DZu=BmcqbJS-ugEGMg@mail.gmail.com>
Message-ID: <CAD=FV=XJ+yAvDn5NyfCSJdg+DujPrWO+DZu=BmcqbJS-ugEGMg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: bluetooth: add 'qcom,local-bd-address-broken'
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
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 19, 2024 at 8:29=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> Several Qualcomm Bluetooth controllers lack persistent storage for the
> device address and instead one can be provided by the boot firmware
> using the 'local-bd-address' devicetree property.
>
> The Bluetooth bindings clearly states that the address should be
> specified in little-endian order, but due to a long-standing bug in the
> Qualcomm driver which reversed the address some boot firmware has been
> providing the address in big-endian order instead.
>
> The only device out there that should be affected by this is the WCN3991
> used in some Chromebooks.
>
> Add a 'qcom,local-bd-address-broken' property which can be set on these
> platforms to indicate that the boot firmware is using the wrong byte
> order.
>
> Note that ChromeOS always updates the kernel and devicetree in lockstep
> so that there is no need to handle backwards compatibility with older
> devicetrees.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml  | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-blu=
etooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-blue=
tooth.yaml
> index eba2f3026ab0..e099ef83e7b1 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.=
yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.=
yaml
> @@ -94,6 +94,9 @@ properties:
>
>    local-bd-address: true
>
> +  qcom,local-bd-address-broken: true
> +    description: >
> +      boot firmware is incorrectly passing the address in big-endian ord=
er

Personally, I feel like "qcom,local-bd-address-backwards" or
"qcom,local-bd-address-swapped" would be more documenting but I don't
feel super strongly about it. I guess "broken" makes it more obvious
that this is not just a normal variant that someone should use. If DT
binding folks are happy, I'm happy enough with this solution.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

