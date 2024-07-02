Return-Path: <devicetree+bounces-82285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC8A923C1D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:10:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A0A728774B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 11:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCA515A849;
	Tue,  2 Jul 2024 11:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PX+uurSk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9BD155735
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 11:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719918627; cv=none; b=F0XdLdJB19PTazJu9s09Rkw3m2qClZA5TdBeNOHIqoWyCuVcfyl4f3vG6XJsxGzF9UloghJzZ6TvzLqE/QuvxmhUckcjmTBDbewQBPy8MxJR56gzjh1q4wqRiHmX2mqgcXvm5iMtcTa8wW6CpGJ8vxZjxWAlweOjsnQQE3pdxbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719918627; c=relaxed/simple;
	bh=SfEjw4cFfxixrvq6qtIfO/ZWv+HyMAbCOPeV0PYn3fw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwwnlZksatofxTbpqKRxO3vfGU/1swvZAtILkkFJD3UeScfE5WfbfKcNCBypKZuLPmKbG57bzJRR6ihC4XVTpdIxiw6gfqlKtcHtCt3jnmj9mDQ5nuLSPtU8viLd6e40t7DbAks+7CRo41Lj/UkH5R1XjAw9b//Bh0fszhyyknU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PX+uurSk; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52e8cdc6a89so1897974e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 04:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719918624; x=1720523424; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GUL6InU1s2oamDAjQ14QR1sgjo5CD0g2L+SSERlRdFs=;
        b=PX+uurSkYHA1OXCMSJiiocGz/VMb6MGfNCpF9I17uoPpoPG6CXxgi5NMmn02ea5UiC
         UmGyUuKbwePN7euLN7YLoRTG0ZJ43SIhKLyMnzZnG93mXMzM0zrkZkZTK84//LLAYrOn
         fKn3OUHgPByZjw6vrwr73varjOKs4lBK83v9l/KkWgraRvLgw/brJz/+DBetzxe/v33n
         JC4MXeaSJ7XU0+aYgLx8626K4HXBi/k89ZBlSTlSXlcLaujLorWpUvGmnkCjNP4Wxt3i
         waayR4dzXvH2SB0kyEggRy1eH9QccRjngkEIsKwxU6E1U5E7O2GYr9DxVbbRpqeS1BMq
         i05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719918624; x=1720523424;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUL6InU1s2oamDAjQ14QR1sgjo5CD0g2L+SSERlRdFs=;
        b=JBbbTKYcMb2J7RPbqgrr019AeCSTVv10jgJblbr1bvD03b/OiJ0A9F7YUyuEgFN80K
         LaOW9UEX/NC8k1yFgV9kOIbiq4AEjDzO3GtYKvTlWvyFbEfVkZ0PTWdl3hdg94O/ZLxi
         ySuoevmP5Yk8ix6XPpl0K3ZdVef4HEJrqYNY4ggsv9SbUd62Q7f1312R4X1EN9Q9pqnn
         eZjMyuNXACdKOfmmWh/UvtZJiuLsOWlhrLGb1w/h7iff12Xmt7IBbaLDuUdH5oKmA455
         oCnJxpFBffCtGEeXNpKEPLgyNvTxcXuGMyIaAvqdLlhI4+NvSQSjiKsonit9LMW03rSy
         pEnA==
X-Forwarded-Encrypted: i=1; AJvYcCUwEFQS2EaRdkxteAQJaBwSfiWmcILoqWTxDMz/Ki3otj52Zk2W5hAOEbyXnpVJw5CONzWXWNnEBARkkZcHtAZD60h1L0tAocDUsg==
X-Gm-Message-State: AOJu0Yx8MSxGgmztvo4rY5Y8XTcbuGfXwXA0WRCRmUlZ9ReDhy5DUptf
	vAP9TFl9Oh0Bn4cS42JO0NpHA+PFz40GnNdoYuG1kve5nm/I1ayMembZNp91AjQ=
X-Google-Smtp-Source: AGHT+IHsgF9I8uZJmqTmWCz+zNt8GwFkL2X6pxZhrZeGft31aGGDWcnY7hGJ7WQ7OHecVueU0YVRJA==
X-Received: by 2002:a05:6512:3996:b0:52c:a1ad:18bd with SMTP id 2adb3069b0e04-52e82651a88mr6252854e87.6.1719918623990;
        Tue, 02 Jul 2024 04:10:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab30a68sm1775997e87.242.2024.07.02.04.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 04:10:23 -0700 (PDT)
Date: Tue, 2 Jul 2024 14:10:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Amit Pundir <amit.pundir@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	dt <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8550-hdk: add the Wifi node
Message-ID: <he7q4mzj7u7t3c4pndu565m727e6hqpf2srrqgbdltjdffugdl@x3xrwteqpki3>
References: <20240702091655.278974-1-amit.pundir@linaro.org>
 <8ba07bbf-e8b1-4244-882b-ff2575368b20@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ba07bbf-e8b1-4244-882b-ff2575368b20@kernel.org>

On Tue, Jul 02, 2024 at 12:42:02PM GMT, Krzysztof Kozlowski wrote:
> On 02/07/2024 11:16, Amit Pundir wrote:
> > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > board.
> > 
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> > Kanged verbatim from 490812872449 ("arm64: dts: qcom: sm8550-qrd: add the Wifi node").
> > 
> >  arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 97 +++++++++++++++++++++++++
> >  1 file changed, 97 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > index 12d60a0ee095..c453d081a2df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > @@ -279,6 +279,68 @@ platform {
> >  			};
> >  		};
> >  	};
> > +
> > +	wcn7850-pmu {
> > +		compatible = "qcom,wcn7850-pmu";
> > +
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&wlan_en>, <&pmk8550_sleep_clk>;
> > +
> > +		wlan-enable-gpios = <&tlmm 80 GPIO_ACTIVE_HIGH>;
> > +		/*
> > +		 * TODO Add bt-enable-gpios once the Bluetooth driver is
> > +		 * converted to using the power sequencer.
> 
> I don't understand why hardware description should depend on the driver.
> Either you have this GPIO or not. If you have it, what does it matter if
> there is no driver who can play with it?

Then there is a conflict between BT and PMU, which both will try to
access the gpio (or at least the pinctrl).

-- 
With best wishes
Dmitry

