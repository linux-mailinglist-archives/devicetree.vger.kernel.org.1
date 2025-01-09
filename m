Return-Path: <devicetree+bounces-137229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A97B2A083A5
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:45:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 995CD1662BF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 23:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F3F2063DE;
	Thu,  9 Jan 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m8v6Tdy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42EB205E06
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 23:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736466354; cv=none; b=Luv9CIO7QPNEbDCFbNXfcBbYe/hCZNtDFhSjSXZvSzCMpbk4VAZqDbV/+eyLbr/Rh10mBG63aIFY82o06eaW5cwuMn3N8D9+Cm33qgh6R8jKhg9X/zb8KdjnY0yyVpzpADcaxwp//2UuCnZGBfz+lGPn8MzSP3Pd0NVX6hTlxk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736466354; c=relaxed/simple;
	bh=8Fn5tpVxQQ8gfYVSYC9d+1uDg2CraF9og34DhkJKWIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RRS1VTee0/REYcJ2De5ermAry4BQv+nq4GUZFWQBlKTP+13du/RcRtUBQ0VWbxtWJe7B5ZrmuoM5Ett0GnpG/QAUSvym2cLH1NjOg5BZh8xKLjcnfxLrkQ9vIrW+5G15Iu4VoGbelVXHODxXU4xLD5qAxeBzm9hWdMTLdDoAMYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m8v6Tdy4; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54024ecc33dso1556212e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736466351; x=1737071151; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ifd3ai3biKTaNdzvBUxlg/E6YILRTZjA+4tT653tYFI=;
        b=m8v6Tdy4LQPEbBePJGn9UjyfYUl+qdgW63TRlUGyiummSqbbz9vYHG35rkyqvCUdCC
         eJawDuEF1lj22SqgVt+4UsgRzFYXBhbWobHn2yU3avqBTemOQofRInDvJWKm5HwlpTJa
         NvqdAPX5mmsAkvB1yz3vgr5dYd/5/b4nIW38/EQCiXAq9kLXVrfhbnvcih4Kb5Hkt0ED
         yCgOdzVVwqwjIV3bLiAnyv/J+tsaRELqLqWGUw8wJUmaeRTRh4FXMGLTE9ide/gPHN4c
         AAAMKdHrm1NtqDIX2burdYrgYvf1yXQObAuf65RF3WwGsISCyeCy19ulHgTHgXAZi4ee
         B5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736466351; x=1737071151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ifd3ai3biKTaNdzvBUxlg/E6YILRTZjA+4tT653tYFI=;
        b=Xf/KQ01uTolsJQCfc+IyvkD+BMvUb+JEzd7VGcCaWlSZPS5yVLziPGAorcD76v/2P9
         sIvNKA0ZXk1WX5He7Lt+Y0AxlnN1b06XasuS5hcPNotcED9bu+z5EZQBTwXF0w2a/YQz
         uYqgf8AEhkfx6bovLSKtW6C6hm1t9Kf05TCDDhIUtiidUKjbw2K/OJgzKpNc4xMj1r2k
         KIafATTWQt0k9MB3LG9KEeBN3EtaZm0bKj+D080+N3KHKElxKBB2lFjdizrX8tJ47Ta9
         Binxz971nrubf0VJTdjvgHVhz4KFe4NnOzFbd9mTPas/0TiHuESI2nWXAoLn7aF7sayC
         4+LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjyecjViK2mfkErG7LxQ9/qNmtlrwPXJRzdjyqninz2M+3K7jGbpP6krQNl7g+B6PB0nzCKuP/5F9B@vger.kernel.org
X-Gm-Message-State: AOJu0YyzR5OG/WBATlHB6f2xdwlEAMGyaTh1hK8kX0OvMbzRvoq8glp1
	vn0BrG2zm0YT1XIB2DC2Q8D3Z1CQUhqqPA93GfhDlyJJmyiYP4gJ1dPd7rhxWak=
X-Gm-Gg: ASbGncus5iwtSEMw9Fmpqoz4hZdPnL55QAM8ubAMKRXPj/j4WVu8veMjlhRpyVMFIVX
	GVCFIUOIxEh3qqX7rw7dTxW4XLLjsArTyYQUInFw+UI4uC37UDJK37BAh1o9vbMNDRMJkhF6ufV
	j+O0aijhQfTTQAcBKGmLTsXjJ2mLnMO0rhLI7OO4av/1LI11uPLwNdT+IBFSQkL6OzjZ5RmFcPY
	7cvq+fo/tgl30KFB42vq/2QNWMg6z2+5bh+XAWibWoPh/8H8f4vrr1z2IfV6lR3pZU3Bqf+UMMq
	IOv8vvaJO1/TEw8apDcKKPlsSltcddolB3La
X-Google-Smtp-Source: AGHT+IFE0TD0xLOUiVIfjJiuGh9UVHHNy8CtrSGHCWyGYMHymyrvfqIdJCqZCoyf+hgFwIwzU5DqeQ==
X-Received: by 2002:a05:6512:2205:b0:540:2542:cba6 with SMTP id 2adb3069b0e04-54284527758mr2364630e87.21.1736466350748;
        Thu, 09 Jan 2025 15:45:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becaac3sm333191e87.229.2025.01.09.15.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 15:45:49 -0800 (PST)
Date: Fri, 10 Jan 2025 01:45:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Stephen Boyd <swboyd@chromium.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, patches@lists.linux.dev, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: Re: [RFC PATCH 6/6] arm64: dts: qcom: sc7180: Add SoC specific
 compatible to soc node
Message-ID: <x6smfgtq2ojzl774jd6d6fsilxj5dte4jbfypbvxvdmaqd7pem@nnpcnyzz4l4i>
References: <20250108012846.3275443-1-swboyd@chromium.org>
 <20250108012846.3275443-7-swboyd@chromium.org>
 <n3fn5mnrrinrgrvadqgymv3cx355qpx5kk27nlrz2emoxfmjyt@ymwpfxf7lv4r>
 <0ab00013-0265-4336-bc30-f49492e96424@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ab00013-0265-4336-bc30-f49492e96424@oss.qualcomm.com>

On Thu, Jan 09, 2025 at 03:10:33PM +0100, Konrad Dybcio wrote:
> On 8.01.2025 2:02 PM, Dmitry Baryshkov wrote:
> > On Tue, Jan 07, 2025 at 05:28:43PM -0800, Stephen Boyd wrote:
> >> Allow an SoC driver to probe for these devices. Add the SoC specific
> >> compatible to the soc node. Leave the original simple-bus compatible in
> >> place so that everything keeps working.
> >>
> >> Cc: Rob Herring <robh@kernel.org>
> >> Cc: Bjorn Andersson <andersson@kernel.org>
> >> Cc: Konrad Dybcio <konradybcio@kernel.org>
> >> Cc: <linux-arm-msm@vger.kernel.org>
> >> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> >> index 76fe314d2ad5..257890a193e6 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> >> @@ -782,7 +782,7 @@ soc: soc@0 {
> >>  		#size-cells = <2>;
> >>  		ranges = <0 0 0 0 0x10 0>;
> >>  		dma-ranges = <0 0 0 0 0x10 0>;
> >> -		compatible = "simple-bus";
> >> +		compatible = "qcom,soc-sc7180", "simple-bus";
> > 
> > If the new driver requires this compatible, it will break compatibility
> > with older DT files (and it should be avoided).
> 
> IIUC the intent here is to provide backwards compatibility through checking
> for sth like IS_SOCPM_MANAGED(), sorta like HAS_ACPI_COMPANION(). In that
> case, power sequencing would be done by the socpm driver, whereas if it
> doesn't hold, the resources would be toggled by the device driver

I think that this way we end up having PM code both in the device driver
and in the socpm. Ideally in my opinion we should be able to migrate all
pm code to socpm, keeping compat with old DT files. In the end, if this
is the only change to the SoC.dtsi, then we should be able to live
without this compat change.

-- 
With best wishes
Dmitry

