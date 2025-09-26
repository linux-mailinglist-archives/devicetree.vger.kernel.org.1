Return-Path: <devicetree+bounces-221743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D2DBA2932
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2935C2A2F2B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 06:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA08227E7DF;
	Fri, 26 Sep 2025 06:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LsgsQepp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC23127E040
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758869570; cv=none; b=Coof2TFv2pooKGCEV2lPpWT8+yOGwiD7JczDBkuIUuPtbYaKlbDSNunOsEQVAGQOqkXtd2iBhX9zdWaA+KGuznDzVXsN5KDb89PmBn371hhq3fhKm+uK90GP6N4Bebf5CrSauNGRnvp4KE5ulBoIGGa7c/do4Qc86nhkd6kaNGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758869570; c=relaxed/simple;
	bh=b6ZKAv499VFPWlZnjzJkLC3vtFedefMkFojpCq3xoJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JDNnDDLCwAf/eb0cxJNLI2IL9HkETxRzD6WyY86UbjBQYpnagGKrqKD8Jw7BbOC4kZIfwF3DiapWzZjN31j+0Luw52GTeIrw7NNT9T/zU7PhzqDRnw6yz5oY0gFgB1Izrb1VW1ITojEIAYSDgfrfMJdTVBzpqvuTcRZq+oceHk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LsgsQepp; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ee130237a8so1283041f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758869567; x=1759474367; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cb6AqBb6fW9MZc+lYACgw4a/Y2tXZeUAquTmyt8CTwg=;
        b=LsgsQeppe6iMq+adrryOy6Y5tnR7q6sn29nCFdqWuxgHRZOZRcgElO0Y7GOSd4tkA0
         z/nwHEszwiGWQjgp9f8JM+FCm/fVP5x/F9zbILGrOrvO7UrtKKZRWgfR9xT+fcgRqHck
         j7RNgY/JiLes6groTdCPdq0TQ4Qfbkd1jJc1SqGP8YpMyBnctoSQ1cNFsXTz/HOlpE2u
         pVWByqCz2YaygqbNvB/at/JXkPo0wg/y4joRuKh3NF9tvlS9qI0T1T5iytSDlm+2nGvy
         f/ZicCB3UxOlIsNaATPfYmzy+QM5poWzT1PAdU966CPvATrw2Ze8f30CGQzt15/VVhYB
         Bs4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758869567; x=1759474367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cb6AqBb6fW9MZc+lYACgw4a/Y2tXZeUAquTmyt8CTwg=;
        b=UbCkLs/smEwQd6EAUKb1deNG+u6JVd3XDiSG6vhmTqhEcsEoD+aV6hG0ox8/PizSCZ
         DysiiMsJtV2AcFy0pCeKFb2CowSYE/+bLFEkYheTQ6PdWRDmmLd5m0zyfS0xqYhuBehZ
         NSg/y962xa2iyurgNqv1ZuqTZY9zswJj7aDt/lUFheaSx99Wi9XMN3q3VEttt0oMR5wH
         DTAleaJYvDUH/DeAGpOgD9lQqg2+3QMnE2u3JB2Nuvdqplr8APqsaPP+Rr8h0JlzKlpy
         pwfUjwm4gvVReN3p1RqFkVTTnThYllolIO0I3rRk/VyyeKXE37AR/omMNDmjrX95iRSH
         BkmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYwyqwHz6Sjo7UeKXAbqnN0zIwEfdcrHXzKmqEg6zL6GB5r82kKL7DmU3XtJIbnid3pmmhsHFbV9Ad@vger.kernel.org
X-Gm-Message-State: AOJu0YwWOfAp5Bef2wKoj3RZCcL4QDhd7fWz2/7way4NEW1co5SWd5FE
	+HNq2eO884mwPSq+OKZHeHxaw+J3TvI+v0s2U2eXPMGjV9Ov5nS1y2CQnp/4auNGr2cMJQrE7Ek
	c8ujh
X-Gm-Gg: ASbGncuu/2vrjtFv1gMii8kwuZ8DnO0sZRzGGITP4VALxBUjKNFopfCKEMug/SRPosC
	DI0HuvI8zAE35lxd/ZaaU36uKeqdHRNGC9TUeV9eAinNcCiIEVlPA0nnzm+g0mmrRDM50c43fOd
	cDsBTVOEjSLL8mb1Di0prGX/b90MD5HEW/cT2fGB/o8BPREscF7QBfT31oWj+F7Z5ukcNT2nsYI
	j1hkEizPUobFUmcCYD3knJBVNzrolc3Usbw8M9DjCk8cCTnhp/lLdWruOMey3UJFZdLw+9Fca0V
	9u2aOnCnx/j14NiqGjlyIhaKYhnVV/9VH6Q97GY/R5Kc06bZDvhuhe3Ge0cGT9AEXpTT4hvAnLA
	wz3bJ3RAPEeKZS2f5s4DaOw==
X-Google-Smtp-Source: AGHT+IEYY8XchQpusLo9mXkJksDRrdwYhd7zVEns9EdpAQet0iFAo1DMOL7A0ElRmCcRVOjtwSPk5Q==
X-Received: by 2002:a05:6000:2385:b0:3e3:dc04:7e1e with SMTP id ffacd0b85a97d-40e458a9486mr5070069f8f.7.1758869567035;
        Thu, 25 Sep 2025 23:52:47 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc7d3780asm5678950f8f.52.2025.09.25.23.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 23:52:46 -0700 (PDT)
Date: Fri, 26 Sep 2025 09:52:44 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pankaj Patil <pankaj.patil@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: glymur-crd: Enable eDP display
 support
Message-ID: <5awvbmtwa5tzyyvwhz4yigyt6uccozvr7i4iqlnrkd63dgbge2@usksmh5sbhl4>
References: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
 <20250925-dts-qcom-glymur-crd-add-edp-v1-2-20233de3c1e2@linaro.org>
 <p7btiavlbu3wqcq62j25vyv5reusdqenz7wtqr3zspywittdfl@iivegwoqfjk7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p7btiavlbu3wqcq62j25vyv5reusdqenz7wtqr3zspywittdfl@iivegwoqfjk7>

On 25-09-25 19:46:45, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 06:02:49PM +0300, Abel Vesa wrote:
> > Enable the MDSS (Mobile Display SubSystem) along with the 3rd
> > DisplayPort controller and its PHY in order to bring support
> > for the panel on Glymur CRD platform. Also describe the voltage
> > regulator needed by the eDP panel.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 76 +++++++++++++++++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> > 
> > @@ -536,6 +552,52 @@ vreg_l4h_e0_1p2: ldo4 {
> >  	};
> >  };
> >  
> > +&mdss {
> > +	status = "okay";
> > +};
> > +
> > +&mdss_dp3 {
> > +	/delete-property/ #sound-dai-cells;
> > +
> > +	status = "okay";
> > +
> > +	aux-bus {
> > +		panel {
> > +			compatible = "samsung,atna60cl01", "samsung,atna33xc20";
> > +			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
> > +			power-supply = <&vreg_edp_3p3>;
> > +
> > +			pinctrl-0 = <&edp_bl_en>;
> > +			pinctrl-names = "default";
> > +
> > +			port {
> > +				edp_panel_in: endpoint {
> > +					remote-endpoint = <&mdss_dp3_out>;
> > +				};
> > +			};
> > +		};
> > +	};
> > +
> > +	ports {
> > +		port@1 {
> > +			reg = <1>;
> > +			mdss_dp3_out: endpoint {
> 
> Define the endpoint in the SoC DTSI and just reference it here.

Will do.

Thanks for reviewing.

Abel

