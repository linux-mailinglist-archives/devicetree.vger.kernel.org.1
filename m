Return-Path: <devicetree+bounces-119549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F64D9BF165
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 16:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F62228379A
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 15:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B8B20408B;
	Wed,  6 Nov 2024 15:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FYK5+U5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6802038C3
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 15:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730906241; cv=none; b=b+gBYmFLkdinbCfcBqU4ASjoO1/uSEbS/uRlQSYp5qEnrfmd1G7kkhxmOyJSdXOm9gHF/R/2+9dWsUIouSHxLLjL5BRteQnN0Cc1uejKSInhTsHso3tVoT6EIAyACIb0ENQ0akMNAdnHHVS3yAEbxd7jLPlcWJ342yg1Njmz4bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730906241; c=relaxed/simple;
	bh=ic8cVOX8Eb6eg3pSMbWKLDgRehM3KQGs7TIkjwW/x88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qyR6wR7zMgsh0dQfQDK750lGo86eIiZfeI+rXYCqFXwFSJ3uS6/d6qdfhjKMj3vrQUifIl1LVQMsEYi/N2PmYWrugMLUNFABJzKAlxatTGMEBG0iqtDXQdQL4E3XUWG6grNuPVcYTOW7z6Z1xnsN9zJhLOHB2md7OBKaLMIml5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FYK5+U5i; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f72c913aso11014516e87.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 07:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730906238; x=1731511038; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fIEbwD5dLW8FMUuswU9FQws7jt6ecUWe6Cmn0F+XQJU=;
        b=FYK5+U5ipyfre4PXeV2yxoNp2To3yjgZKWPV3QPQjzQ0k4XUajA55xQDDoF8Im7mLq
         ZxUGW6avfrmOWrB/d/5VsJOgcAG9QFzS9hwuXDovtT4a25mBw93RRCzw1zPY2oWNK49q
         vu1DH3VocdLByW2VveC6ec+7NPcbwlli+mq0bfamWwSxkZtRf244U8InbDHXQx4fHEo2
         4BftKv/wicxhSUOANDlixvrPC+pGSx8iT9gzVVrqD4GD4SWDixpY2xCIZbYnP+vrxefn
         xsHBgDAy7VUtuZ815urDWJH/2pI6is/P/hGM9mh+tgwhE+OMjxN5lSEFWqe3PhgYeTuC
         G8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730906238; x=1731511038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIEbwD5dLW8FMUuswU9FQws7jt6ecUWe6Cmn0F+XQJU=;
        b=AjWaAgWHACYMrbqKJ0TDdQUaOiUmMPgdW0QQRvhmvm33R/ynUIquxsOXdu0Wj+QZV8
         S1qA88bk9BX2tOisxbEk7QjgCrLGhiUp0nHL8IlqLzsh6bFeAP+AZW4PRVyUUOcC7Mus
         trrjTF/PyHAL64YG43jfTrzs1n4PgQ8bevtvgVJG8ZvpWXnyvuttXu5oQbaqUCMoyOlK
         9LAvJ38+8QsfYAUnnlTSMtZrYOS6G8Jwr9zhb/cVy7tW15WjqIglPbWldp1ENi56oPW0
         XvemT3Jf3t8POqhojce3mDziz4fYBiu+Xws0Rulau2Neyp9iZiYBYsldx0KAk9JErQIE
         o0dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoI/WkFa7LjGcuHaIW8uebPrECNIDa9IsZkLYeydjMX+VT0uzZ/CUK9/Iq6X25HU8uTu+UbTmFDPiS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7kUl26njv4yf+LIa6KJ+l7J/HJGCDUusdmCsqyBW4is7uUb05
	jBNcbsW2jLQrOF5XLyE91tJlMU0BpzhlfzRh13/T4pFrZhfIutHKLSO8qC1Tmrw=
X-Google-Smtp-Source: AGHT+IG7dwaa2yN3o8y7YIOO0cvRLcrkbQ+DzFVy+RFiOkuyFesN3/6MQCXs3ZxexqpX8BK5K41+LQ==
X-Received: by 2002:a05:6512:3b1e:b0:539:f37f:bed9 with SMTP id 2adb3069b0e04-53b348c38d4mr21239539e87.8.1730906237946;
        Wed, 06 Nov 2024 07:17:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdcc305sm2520122e87.227.2024.11.06.07.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:17:17 -0800 (PST)
Date: Wed, 6 Nov 2024 17:17:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jonathan Marek <jonathan@marek.ca>, regressions@lists.linux.dev
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: enable OTG on USB-C
 controllers
Message-ID: <5mfq3xf2qkqyrtaybtfutx73rny737rqdd6exdbhljcebg7brs@fxaz6zhsy4pd>
References: <20241011231624.30628-1-jonathan@marek.ca>
 <hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef>

On Wed, Nov 06, 2024 at 02:37:43PM +0200, Dmitry Baryshkov wrote:
> On Fri, Oct 11, 2024 at 07:16:21PM -0400, Jonathan Marek wrote:
> > These 3 controllers support OTG and the driver requires the usb-role-switch
> > property to enable OTG. Add the property to enable OTG by default.
> > 
> > Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
> >  1 file changed, 6 insertions(+)
> 
> For some reason commit f042bc234c2e ("arm64: dts: qcom: x1e80100: enable
> OTG on USB-C controllers") seems to break UCSI on X1E80100 CRD:
> 
> [   34.479352] ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: PPM init failed, stop trying

#regzbot ^introduced: f042bc234c2e

> 
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index 7778e17fb2610..fb16047d803c9 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -4199,6 +4199,8 @@ usb_1_ss2_dwc3: usb@a000000 {
> >  
> >  				dma-coherent;
> >  
> > +				usb-role-switch;
> > +
> >  				ports {
> >  					#address-cells = <1>;
> >  					#size-cells = <0>;
> > @@ -4452,6 +4454,8 @@ usb_1_ss0_dwc3: usb@a600000 {
> >  
> >  				dma-coherent;
> >  
> > +				usb-role-switch;
> > +
> >  				ports {
> >  					#address-cells = <1>;
> >  					#size-cells = <0>;
> > @@ -4550,6 +4554,8 @@ usb_1_ss1_dwc3: usb@a800000 {
> >  
> >  				dma-coherent;
> >  
> > +				usb-role-switch;
> > +
> >  				ports {
> >  					#address-cells = <1>;
> >  					#size-cells = <0>;
> > -- 
> > 2.45.1
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

