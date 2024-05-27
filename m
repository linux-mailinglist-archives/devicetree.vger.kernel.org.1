Return-Path: <devicetree+bounces-69274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D99428CF74C
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 03:36:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52ACCB20A21
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 01:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8B91A2C08;
	Mon, 27 May 2024 01:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SmPVREhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E8263D
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716773806; cv=none; b=E8SzvKWFDobvlVzY8Wd161gQ2D+oOiUwtrxa5pSkTzykp4/frROpSC4UxWBW/9hMccHoOqn1yTpHhjSb8kwiShWdjA/K1TJX/N3QTuSjqc5i5HofKQGER4ATxX28tSe+M2E1mL2q2+wM8wUDh06vVP8buxAyqRYF6g3wtDZ2FEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716773806; c=relaxed/simple;
	bh=YtnlFOF0QGC/+Mg7mh1Q4ZWmoToYRaiNJ50POwvrxn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gfst4zz0hnkzOLOssC9+ASDNO7zcPlzoRF9ODkGd7W9ZbsGMTLbySrrJv1naijFOMyvTAPw6TlGzvTb/XFLNySiJNaS9VOhskRNkTcWNvWRjNipmN5j25fBggqZ+CRNbrT+pbmqDGBNxu7xnODa84RmG1F+hHJiKRCvmdpLt/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SmPVREhX; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e95abc7259so27354941fa.3
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 18:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716773803; x=1717378603; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zo5IdJlte2J+fKtUwGqjfCwmWS6Byprw3w7YuA0KA6I=;
        b=SmPVREhXaYhbduumTFRPm76JQzycDHFj2WmKbiFtk99MNG8oE8l/QG/uASjSasFaTO
         xDbK9MdRA4U8vjOxDlg5JjKW9XqzVOy2g6XdG2oWb92pOebldr6KLYK8Y0x5LAY60sir
         v/ThySdgmGpcJ87gS9BUrLmqVgxCouM8LxcrA+y8ObivEmSUyCBDEj6FeqW1Ph+sZllP
         Mny3/tXz3rzc90snl6sU6BSIeLAeuTC2YEN0/ZjssCe5w//+YVQh/E3IFcPunBVAk4Xc
         y6W5E1sT2B5x+Bs86dlxQ1iyLzgcEhIXuQxjnYkPal3bi3WmRNqIkGVLwLRBzMc+BKgD
         0cZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716773803; x=1717378603;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zo5IdJlte2J+fKtUwGqjfCwmWS6Byprw3w7YuA0KA6I=;
        b=iNrG4LHKOgezjFDqc3XfrZ0xMZ0nQM3FT3fWDPZzzPU5kGEasQ0xBPkQCuGbTO97HB
         4M78SGj9mpJhEaArUQTodQgflFCSHQp8agyuZ17fm1+odWa+K4mH9IZ0LxJ2Y/4toc65
         gHLnWloDc9uzLu9AmPFffQlnT1h8l55YKsf0DWiOmpUaXpYi9ZxM/+Ipt73xUI6sMbRo
         GLrJkXFZZyYkPevzLzFaQv/MZnepQiG3M+ZQ8xyngv/3a+nFJ/oPQkX89siU4/f0kywW
         GBXlz/e4p8lMaeFRVPao61hSKRrfeJLmhGV7g8G7T08i5joiZhRi7cesVEyTC7go9rsj
         xlbA==
X-Forwarded-Encrypted: i=1; AJvYcCUlbjC5cWA6PhXxc0MvjO62Mx6qhQS6FK2ot5IvSGvAT88d0XNabeOqZt1D83pkFD1SRY1p6unkkqbe0Pj4an6bcQfcYyKjT8/mGA==
X-Gm-Message-State: AOJu0Yyw+FxtHrO3EQt+WA8W6b2Oh7DG595CQlsu5V8Jc7+PbMTsoPGg
	EN4ZOqgeengnL4hbwEyyLu0cHc6kuH0TUDWp/Gu96v8cGDIi28lmANHCgFsRpMo=
X-Google-Smtp-Source: AGHT+IE1pBCviitcwNaHJGTCWOe7thf+aAwQwOphz0e6MVHW8NiQpkRko6kvQwB9S6CJ8XZ1ZN5Mgg==
X-Received: by 2002:a2e:98c8:0:b0:2e9:5ec3:a781 with SMTP id 38308e7fff4ca-2e95ec3a817mr43873311fa.47.1716773802482;
        Sun, 26 May 2024 18:36:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95be05301sm17267561fa.114.2024.05.26.18.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 18:36:41 -0700 (PDT)
Date: Mon, 27 May 2024 04:36:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Komal Bajaj <quic_kbajaj@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, quic_wcheng@quicinc.com, quic_ppratap@quicinc.com, 
	Jack Pham <quic_jackp@quicinc.com>, Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Subject: Re: [PATCH v3 0/3] Add devicetree support of USB for QDU/QRU1000
Message-ID: <zaczfygxrjlkfyrgxo4ec3kjyrbsizrfjxivt5lmz3rgxxrtxn@xyehy3eilgzu>
References: <20240502090326.21489-1-quic_kbajaj@quicinc.com>
 <CAA8EJprPLqj7GQM0vmN25U2+3kDow=NH8=-VC2N-0p92Ub3iCA@mail.gmail.com>
 <km2c2tkd5j3vedrmttpn4nydqpfhhz4bwgtzmngwbok4vic6q6@nshjtqcqmklm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <km2c2tkd5j3vedrmttpn4nydqpfhhz4bwgtzmngwbok4vic6q6@nshjtqcqmklm>

On Sun, May 26, 2024 at 07:28:42PM -0500, Bjorn Andersson wrote:
> On Thu, May 02, 2024 at 12:09:41PM GMT, Dmitry Baryshkov wrote:
> > On Thu, 2 May 2024 at 12:04, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
> > >
> > > This series adds devicetree nodes to support interconnects and usb for qdu/qru1000.
> > > This is based on previously sent driver series[1].
> > >
> > > ------
> > > Changes in v3:
> > > * As per comments on upstream[2], to get role-switch working on QDU/QRU1000, it was recommended to
> > >   use the actual TI switch driver. Since driver doesn't have the functionality to provide role-switch
> > >   based on gpio, thus reverting back USB dr_mode to peripheral and removed the remote end-point nodes
> > >   and usb-conn-gpio based role switch functionality.
> > 
> > This is not correct. The recommendation was to describe hardware properly.
> > Which means adding schema description, adding  ti,your-switch
> > compatible to the usb-conn-gpio.c driver, etc.
> > 
> 
> In addition to wrangling the ti,switch implementation (and binding) into
> something that only deals with the gpios and not actually talks to the
> chip, this would also require us to add support for fishing out
> vbus-supply of the connector and control that from said driver (or from
> dwc3, or from dwc3-qcom...).
> 
> Given that I find it acceptable to pick up the peripheral-only support
> as presented...

If there will be a followup, I tend to agree here.

For the series:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Regards,
> Bjorn
> 
> > > * Link to v2: https://lore.kernel.org/linux-arm-msm/20240319091020.15137-1-quic_kbajaj@quicinc.com/
> > >
> > > Changes in v2:
> > > * Changes qmpphy node name
> > > * Changes dr_mode to otg and added USB-B port USB role switch
> > > * Dropped maximum-speed property from usb dwc3 node
> > > * Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120859.18489-1-quic_kbajaj@quicinc.com/
> > >
> > > [1] https://lore.kernel.org/linux-arm-msm/20240502082017.13777-1-quic_kbajaj@quicinc.com/
> > > [2] https://lore.kernel.org/all/CAA8EJppNZrLzT=vGS0NXnKJT_wL+bMB9jFhJ9K7b7FPgFQbcig@mail.gmail.com/
> > > ------
> > >
> > > Komal Bajaj (3):
> > >   arm64: dts: qcom: qdu1000: Add USB3 and PHY support
> > >   arm64: dts: qcom: qdu1000-idp: enable USB nodes
> > >   arm64: dts: qcom: qru1000-idp: enable USB nodes
> > >
> > >  arch/arm64/boot/dts/qcom/qdu1000-idp.dts |  23 +++++
> > >  arch/arm64/boot/dts/qcom/qdu1000.dtsi    | 120 +++++++++++++++++++++++
> > >  arch/arm64/boot/dts/qcom/qru1000-idp.dts |  23 +++++
> > >  3 files changed, 166 insertions(+)
> > >
> > > --
> > > 2.42.0
> > >
> > >
> > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

