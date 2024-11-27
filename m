Return-Path: <devicetree+bounces-125041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9324E9DA98B
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5F07165808
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147431FCFFD;
	Wed, 27 Nov 2024 14:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kdp0xkxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8E61FBE84
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 14:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732716179; cv=none; b=EQuTjGDh7iX+dc+p4VxVHDnW9LHN08ppcNQriw1woENONc2A7RWPEbCCzB4lTqeOygd8TsmvwOaEIOOOWTgM/D8RUIQ7ixg1euSUDu0Fz2zW9/frkHu0f4WY15OlD/4x+PKHtKpmsMC30gONHgPSAALUtWwZ62Uv8KGOleful7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732716179; c=relaxed/simple;
	bh=TUPT2Vj93/kyEbrXqfOFEH096hxvwGyIPajMGlJp8xA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QGgykQiH0NaMMjglP4m5gYVeF9qkg9ec/vDpq3EbprEC2G/CbxSPPnh+kB6Sc/vUyFzdraa/Iclb0Fy3YT5HJ2XWFTh82EBx/IPqyyUwyjwNhFebNp+2KsKh2Pr807haHi6otX3Ruh8d2RFxFY1SGtzwbv78fx1vnqY6LCbBlaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kdp0xkxj; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53de8ecb39bso2231129e87.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 06:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732716174; x=1733320974; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T01FX8+ifMzh7FdT/3RYrXgZQjd2w/xyGf35CNWYzZw=;
        b=Kdp0xkxjdipnSnpoAfJH/ID8ZhUz7QlJIUqtiA1lA7sRn3lZE2FRl8Wrie5RLWOZOu
         +nS/edCDmeyaq6snRRuK47idAH0i4+ndakXWNoY5h7O1iIkknPi3mZOa/KrVFhlBHC40
         L8KYFJB80qc1pNrOdOQpW1/bIq6mvXztylLU6LUwAQD84JnjiFV7RYjrnYxqanNvBF06
         zj7W44eIHmVCQUUCj3aJMGE6LfDJbwthLCobJBjdakXOzwHOiYOHMeEoI4f1tiWila8D
         W+xYIJAOjnYjlswYnL8K32uyFyJZ93JGD8Wu9DVlmjo2tMqsiQ9pTChj1oFDK8ncTB2N
         HsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732716174; x=1733320974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T01FX8+ifMzh7FdT/3RYrXgZQjd2w/xyGf35CNWYzZw=;
        b=p3Agkd/9Iphivlz2sRNnZhpLTmK0p3nCH5uMmITKlvY1gPQN/VX2aGsL4DO0yX13u4
         eZFMFECmmUvPeLtQjb88fBExqNeRZADVP0InXV3bOaSD1GIEglmccLHX6ePIZZwLRkTE
         SEnVIpyJ+/Nlzctlvr2lNoiNtI7Y+oEcDBZ3tMxeMCc5uBiUoFkH6oh0wEvBg2JF7oOf
         pDnB3EM9z4JV1xFe/Fl73+WuOn4NwBe1ZWQCDaaYR4+A/3AD5hnY3lHs69BwToSjkBkA
         UQPO+HAxS8c/0/wKCKGLBXstNXA5pFXDzx6Zf99LS0Pi/JBbK0Y06p79KCSe4o7UD/f9
         QK8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUh6j3tvW076m4StLGZpvrcEPTYtEATAvoJUZgMimlaWgvXzA6keH1HnkEDCto0cVZW7TFT2aGVpnIx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm9/N2TL3xLO6h9iE5CKvsYkNgxhMRUMsmbsdR9OR/P7/L9iet
	BwU/6I4UTQU9qIzongDSvWzU5qyAJhdiZFMaiXEb/RlIofCjPYnSpOVGjtyZHvk=
X-Gm-Gg: ASbGncv0QP9SZLxMqpWOx9X4hn+M3qAfIPrhBX2PK7mXKJnWziFeZmXOyCS+7essIgp
	5kPHp+FxcQ8RTSWu6LrxOe0JyPiHgjZ0E5ckt+GZ3l3exqrxhaofjaJ6zZ7r0jVYB/ZsZdkTfoB
	6oKt+H4LTDDLPe168yLWkOqhyged1y2AS3Q1WOJ9F+Ox1WibO3tpd5iXw+NcjtmWcYueK6mwN07
	xKEgBIksVJmvjrjA2PJk0smb/+g7KCjMkWQ+ejMPuhwYypqpgIP4olRLYi1GFwvMeMiZAHDei1s
	OwsxxL0DS+tvO686wvdzepteFKTOTQ==
X-Google-Smtp-Source: AGHT+IE4PFY/jEkiwyrm8o+Db9OLNXgxUMj7QvjWWz6uR+5Fh5KVZpx+UZJ77BHMmy7vJiZ7cMIV8g==
X-Received: by 2002:a05:6512:398c:b0:53d:ea3c:2ba0 with SMTP id 2adb3069b0e04-53df00d12afmr2027772e87.16.1732716173570;
        Wed, 27 Nov 2024 06:02:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd3c852ccsm2274613e87.253.2024.11.27.06.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 06:02:52 -0800 (PST)
Date: Wed, 27 Nov 2024 16:02:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: sar2130p: add support for
 SAR2130P
Message-ID: <2hka5j3iyml32czhv6k2gr6ss2jthsgaljva5izhzzcoc3l4eq@slsmyp7s6ars>
References: <20241102-sar2130p-dt-v4-0-60b7220fd0dd@linaro.org>
 <20241102-sar2130p-dt-v4-2-60b7220fd0dd@linaro.org>
 <ff7c9b83-0ac7-43a0-a86a-2fed66728a32@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff7c9b83-0ac7-43a0-a86a-2fed66728a32@quicinc.com>

On Tue, Nov 26, 2024 at 11:32:59PM +0530, Krishna Kurapati wrote:
> 
> 
> On 11/2/2024 8:33 AM, Dmitry Baryshkov wrote:
> > Add DT file for the Qualcomm SAR2130P platform.
> > 
> > Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sar2130p.dtsi | 3123 ++++++++++++++++++++++++++++++++
> >   1 file changed, 3123 insertions(+)
> > 
> 
> [...]
> 
> > +		usb_dp_qmpphy: phy@88e8000 {
> > +			compatible = "qcom,sar2130p-qmp-usb3-dp-phy";
> > +			reg = <0x0 0x088e8000 0x0 0x3000>;
> > +
> > +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > +
> > +			power-domains = <&gcc USB3_PHY_GDSC>;
> > +
> > +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> > +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> > +			reset-names = "phy", "common";
> > +
> > +			#clock-cells = <1>;
> > +			#phy-cells = <1>;
> > +
> > +			orientation-switch;
> > +
> > +			status = "disabled";
> > +
> 
> Hi Dmitry,
> 
>  Sorry for asking this question after code got merged. I forgot about asking
> this last time when I commented on your patch and provided the HS Phy IRQ
> value.
> 
>  In SAR2130P, I remember that the lane orientation is reversed. As in on
> normal targets, if the orientatin GPIO reads "0" it means LANE_A but on
> SAR2130 it means LANE_B. Can you confirm if superspeed was tested only in
> one orientation only.

Thanks for the notice. I don't remember if I had USB3 or just USB2
connected to the USB-C connector. I will take a look and report
afterwards, but it might take some time.

> 
>  I can push code for setting orienation properly for this target if you can
> confirm that orienation is read reverse on SAR2130P.
> 
> Regards,
> Krishna,

-- 
With best wishes
Dmitry

