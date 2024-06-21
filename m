Return-Path: <devicetree+bounces-78628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E932D912EFD
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 22:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4ECC280FF3
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 20:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C1017B512;
	Fri, 21 Jun 2024 20:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YELr+Eh2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F43D155329
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 20:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003315; cv=none; b=EmYzpN+6VNkdo8T1JjPGsW9NnmNHqBZFC6eaXlt75eGlSUbLKm6gR2kEWDMLTvN/PIddVu0n3/J+AHfItae4hhwR/2PFMFaKJDNimH2Pin7PF0w5kIBMr+OJdOMkDpLcr24KUS6eJIZs7ahCaZNVquxI5AZZWLIRxKW+dJ9tzaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003315; c=relaxed/simple;
	bh=peF4abx2Enp40H1JySU70PY7r65RJgWciegJabZ4Gi8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJNoDJFeJG51wuApWq5vz/WJG4TEaaxd/YJCeIGbACRAm7nbPH1wMop5vOJY5W+7Jo7QuGtOMp0J6NnVLt39jAlTyIczKe6hlX9ma91dDLJrJUh2sTs+kKUk1NmGDlY7FK2quu3W09kgMWDQkIsS9JFO+ghRmWU/CU0zY4VwwMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YELr+Eh2; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52cccd44570so2868101e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 13:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719003312; x=1719608112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=teV96c5vA7DLhBEgwrKVCxeGizqEZrqPTkX+Tv57Gbw=;
        b=YELr+Eh2r5N3RplsypE3Eq7T9+8h0FnksydiutyMQ6fEQE1IM78fnZJyt/DvGCg7M+
         M4Ppp2aKgnZdL5F05Z7k5cWMUk8U57aww9latJGTjEOrGK30vtWW6I/JN7UHgsHepeAK
         eFH0aarp8mrC6ksv8d9K6vkl9fmSf9jAYLmARrHL0+Ke30/SE9X8ktAN+gylVSxV1fSK
         Xn/PmUa/N3uupTkdRXa8dCmG1Lutsdd5cuEfZPS0pWMnmtfRF3a2fTucALHkBGG5iPrm
         ctH37Ken2CpM8Zs6ilLnjFPOE0FfAT8bRzw4vanzwgHHB/NXSMw7+mRU9XvY5KfdBWT8
         hSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719003312; x=1719608112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=teV96c5vA7DLhBEgwrKVCxeGizqEZrqPTkX+Tv57Gbw=;
        b=ufT3sBhDivTF9Qva59iYaDa7kja94odI3s8alMK6uc1WxWtJFjyAGIp/oAlt7hxz3N
         UljHSgA489uHJDpE1onXtdgLcldAN264CV8BFjJWFbBdKliHgHnGSKLeXhIR28Zq49Qb
         ihr2UYyzk9T92WlRXBy/5Ft2Y4zv/2yLuNt31HE1/+B+hNo1Et6xe17qODHkCAW7Gyeo
         WW8wzmphoBb06BmboDLPu3BkalepdAxPLuJ22u50OU5rVF36/+yqEw1GVLrDpV+3Zjij
         IIoq+yGMl3SCTsBoQIzIqqJ+QkX7trOPxpyVGQRUPWTsBHJPmCOs3ukRXtiar80/pmkk
         /0Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWWiMWz8kxZGr8seZDBedYgFGaofhyT815GeykEYkXEMSy95TK2V06MbU+Yheb2dY78+l5X50lBC+sBspERkOciwPKi0k6gFsmixA==
X-Gm-Message-State: AOJu0YwCgkgFxRwHHfE15of0chVwIq9nalUODHTocPD9aJ+xTZ4H3fBP
	ARnct4OO/BxCzTY0z4RzkQli2wh8IwPVECHRvK7dEoolZU7kY9Yt7K0wKLyx8ik=
X-Google-Smtp-Source: AGHT+IGr9DQRILKCt4wYro86H6jwgu3cebwnOKFHARgk4thmX9HpDFT+uGY5brjELGkBIjgOmg88yA==
X-Received: by 2002:a05:6512:10cd:b0:52c:b008:3db8 with SMTP id 2adb3069b0e04-52ccaa60a21mr5883894e87.38.1719003312303;
        Fri, 21 Jun 2024 13:55:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd6449b53sm304190e87.274.2024.06.21.13.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 13:55:11 -0700 (PDT)
Date: Fri, 21 Jun 2024 23:55:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	quic_rjendra@quicinc.com, luca@z3ntu.xyz, abel.vesa@linaro.org, quic_rohiagar@quicinc.com, 
	danila@jiaxyga.com, otto.pflueger@abscue.de, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v1 3/7] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
Message-ID: <jqptvxu4ovvau3aqunfegtr34w5ynk3jjjza2iebhhkzyeuuib@bzvwscd57hoz>
References: <20240620081427.2860066-1-quic_varada@quicinc.com>
 <20240620081427.2860066-4-quic_varada@quicinc.com>
 <jfh2xygjdoapkno2jrt6w7thlylgyp2tk7oaczundhxvi26qel@ahtskgn4v6sp>
 <ZnUsFwQyc7JRTXl/@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnUsFwQyc7JRTXl/@hu-varada-blr.qualcomm.com>

On Fri, Jun 21, 2024 at 01:00:31PM GMT, Varadarajan Narayanan wrote:
> On Thu, Jun 20, 2024 at 06:09:51PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Jun 20, 2024 at 01:44:23PM GMT, Varadarajan Narayanan wrote:
> > > Add the APC power domain definitions used in IPQ9574.
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> >
> > The order of the S-o-B's is wrong. Who is the actual author of the
> > patch?
> 
> Praveenkumar I <quic_ipkumar@quicinc.com> is the actual author.

So the order of the tags in your patch is wrong.

-- 
With best wishes
Dmitry

