Return-Path: <devicetree+bounces-144591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A85C7A2E8CF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 11:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32DF51889BCA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747001C726D;
	Mon, 10 Feb 2025 10:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mj5b6uYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB00E1C6FE7
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739182427; cv=none; b=Dx1WS/LxJMI521CW+POnGir9SA3gdsPzhqVhopheejwMvBklnEfXSZmPN9vrsVkLG8/GCR2+E2Xmw3OJcXj4qI9mPZhjva+btElkVCHriLq4BD0ZJNgpwE0k6mBNHW0guRgcBnEeNSjWeixWRZ3PXYxtCkT2Dlz8z32o2vycKH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739182427; c=relaxed/simple;
	bh=yj9rNLDdRjUxGP5fU6NuyeHJVUHXyiKig/1natwetyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E9DWyQwf/sjKFVj5sxcNMGXupgY8k/8W8AKM7ky6wMglykVZadBwAKcAk96OuuTydRm6N7s9zprCy4AfJzCXUJ6Vv7XexYw8nTBc58XFU4L0i6DiudC7QWvSuX4y7Wlj3aKmgDzjIbGNWVge9bAh3Kp9jY3AJ2exOIF/l4nzI9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mj5b6uYH; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21f62cc4088so35675885ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 02:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739182425; x=1739787225; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YVno5Sq7zwbs75yBnVZY8GdclIkXa079v3wSCbF6j08=;
        b=mj5b6uYHOl13szZ59naCjJ0synW1GL5Tae4JBeX43Ddwjmg7kdxrW2GON3IG0bw4iR
         UMLdf0ef6S/IxmYfxDugx8BThvXDR5LnO0E9njC02HCRLZLr8JqMdws2Nq8T9STbmgo/
         rLsDDNDmL6WMEebre6TxDHkgoJ78id9L9pqb0akSOtDKRTAyJYNK+xM5+2ArSp752RUS
         CLF4rrtdGAHv9FXgefNkVb+7tc7up86Wbzsq1KTuUc2Bi1/5VIWJ4GZrR3OOwnSf55DM
         2IolmAJUUAz/f1L0dsVtVmRO9u//7tS4486HvFHiBNSi2VCDGaz0g0bjPB/W5u5f/1QU
         V8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739182425; x=1739787225;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YVno5Sq7zwbs75yBnVZY8GdclIkXa079v3wSCbF6j08=;
        b=kpTmEAQFh0wkN0OPv6iuhSx3xHwg9I3if/Y3tLT6i47y0vLLLpARPZg2fOlu5luUn6
         FIy/k7EIW8xtaudSYvHV1E1fdn71QJ1uz3bVAWZJJ0NiN4LIZkTttt4vwYI83w1Ehnsq
         uWdTHhL7LdUu/R8DNewRuc04GGjg7KOamfVh3XB4nuG3p+bachxMpoOUIrfGy4Gg09WI
         vrCjV3pmhjkvVGrACnd8KaFbz9kcNr2ISk+UhiO7umcD+Pd+m9VrPZ6yhpw2hAQIfvdw
         8OKeyZ/gd1vSBqf0tZkw9+QW1DboBiGnQ4gyclahAG569WpkhfCe2CfGfsKkNrAhHaK6
         SwgA==
X-Forwarded-Encrypted: i=1; AJvYcCU5AFphvmgE26p6DUL73Nj9Jb9InU/bfRf6pkn7wcGrZ9e6qGyWiCrNhvOKG1kplUSXXS2qRWfWPu9E@vger.kernel.org
X-Gm-Message-State: AOJu0YwqY041s6usKvExo7SCw3ptqMAgdaB4mHE9K3KIeiHT4JqMW8fs
	HLd59naTibeHWLJLgEpOBaH7N++sDIfXwOZsbrNYXZXr3owqh/tNM9OqcVFEzg==
X-Gm-Gg: ASbGncuR/slINDjij2HP0JfUy2LORgMLWx9ky5Hb/U30kASxCAD7TZRRRhTBSjibbSQ
	dga0FkHN273UB9cqRjES1PBVWFhx/UC3Ex7VuuK5Sb/Y4SwTb8qeh914oCTB0Xt5wRZqTgBQYrR
	5corF9irPmLIOUMk/3cFB6QEzwniI5lxWC7eaSnDLcQp1sbQP646lIsrUt4JguvHDlGVVCN+6/5
	uilCu7D7xbTxQzGnBQcAV4DO6JZEPkltSLo92+aCqLWY4cjQaPOhLwU2mDSGBB+jIhZ3zXkKn8K
	PC1B2CNp6PXwg30vji9h3Cg9f0V3
X-Google-Smtp-Source: AGHT+IGUVt1XLeTQyYh8zx2PixPGHrQEZjH5CD8Qy4yBx4PREyPgzsVLxt7fw++6KdqziWtaewNdvA==
X-Received: by 2002:a05:6a20:d705:b0:1ed:a72f:dab5 with SMTP id adf61e73a8af0-1ee03b64561mr26246724637.36.1739182425181;
        Mon, 10 Feb 2025 02:13:45 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ad54e4a0049sm2072320a12.63.2025.02.10.02.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 02:13:44 -0800 (PST)
Date: Mon, 10 Feb 2025 15:43:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: neil.armstrong@linaro.org, quic_cang@quicinc.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
Message-ID: <20250210101338.boziqlrxl2cei775@thinkpad>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>

+ Can (for the MCQ query)

On Mon, Feb 10, 2025 at 10:39:04AM +0100, neil.armstrong@linaro.org wrote:
> On 09/02/2025 16:21, Manivannan Sadhasivam wrote:
> > On Fri, Feb 07, 2025 at 11:47:12PM +0100, Konrad Dybcio wrote:
> > > On 13.01.2025 10:46 PM, Melody Olvera wrote:
> > > > Add UFS support for SM8750 SoCs.
> > > > 
> > > > Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> > > > ---
> > > > Nitin Rawat (5):
> > > >        dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
> > > >        phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
> > > >        dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
> > > >        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
> > > >        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
> > > 
> > > You still need the same workaround 8550/8650 have in the UFS driver
> > > (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
> > > that was the case for me on a 8750 QRD.
> > > 
> > > Please check whether we can make that quirk apply based on ctrl
> > > version or so, so that we don't have to keep growing the compatible
> > > list in the driver.
> > > 
> > 
> > That would be a bizarre. When I added the quirk, I was told that it would affect
> > only SM8550 and SM8650 (this one I learned later). I'm not against applying the
> > quirk based on UFSHC version if the bug is carried forward, but that would be an
> > indication of bad design.
> 
> Isn't 8750 capable of using MCQ now ? because this is the whole issue behind
> this UFSHCD_QUIRK_BROKEN_LSDBS_CAP, it's supposed to use MCQ by default... but
> we don't.
> 
> Is there any news about that ? It's a clear regression against downstream, not
> having MCQ makes the UFS driver struggle to reach high bandwidth when the system
> is busy because we can't spread the load over all CPUs and we have only single
> queue to submit requests.
> 

There are hardware issues on SM8550 and SM8650(?) for the MCQ feature.
Apparently, Qcom carries the workaround in downstream, but I got tired of
pushing them to upstream the fix(es).

Maybe Can Guo can share what is the latest update on this.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

