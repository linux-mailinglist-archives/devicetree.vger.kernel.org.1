Return-Path: <devicetree+bounces-201637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1DCB1A058
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 13:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A7EC1897706
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 11:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD89254855;
	Mon,  4 Aug 2025 11:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dlw3pFsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D008252912
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 11:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754306026; cv=none; b=Swc9W1rKzAja7zZbibJLFhYVsExbSMht37T2+3XY63RkOZh/pP1OTkXPKDnT77lRfhSx4cmCXB2phGAz/NF1QXz793LEKSYTwXmka9uesr5Jq1mf0ymr1pkc7hn3IrLdlksktkdbFQS8XYGg+KZ3pdHsmDSidWtWWAy91jPx3Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754306026; c=relaxed/simple;
	bh=/yT6SIbwMsDyXivBPq/u5jEb7k18emFAPJlUdi6+mro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0Jv1zlf1rkD4w85NupaBBqT7YOwwLw81xgrFQjUuCS59UzxKD3jgw9kDKW1Wzvm6arth+eoRzcZIGqyWiTSEmqUVe6N3hgNt13VA6Q7LP0WwSzmvwiELy7FtkhTUKjsbrtrhkxKJQK3XDxNtK9TvdyxuKZyZQMqIri0BW3L7z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dlw3pFsq; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-76bc55f6612so3604923b3a.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 04:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754306024; x=1754910824; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WYxFvBBR753en9vuNva6YOR53xSyO7VCvwj1GDT38Q8=;
        b=dlw3pFsq+p9GpRztCVrhzKP0lJcpdn5txTF0zArhvSwBI1CV4XDYWXofEwTCLcZYg+
         fVtPrkSWcdS02TXPg+Uv7kkqnqWeWwIpHQ+xuc+WBxbwUW7PAtfFt85cbfSsutXrxzS9
         rpceV+yfasP5YpzxuiCBe8Sx7zS0/8FGZc7DpIZ8HfzCiV+ZsKrmQ/ppSQ1KOAeU3qGk
         j7J5hetgKsB/9jBVI2g5ohM22iSIUedveBQkoGcxtgYXRmdT4ABkyaZnr2Ej0g2MRES4
         4qVmNVuqDDTarQElVNS4NtkI/SJokDkeojnnQQeBQFElpH/w0U0Xaz6b0mvEckv/vSgu
         Jp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754306024; x=1754910824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYxFvBBR753en9vuNva6YOR53xSyO7VCvwj1GDT38Q8=;
        b=FPtkS3qLBSeeHx2TqWjb5+qi3/gCGMG+42tE23xc22Y9dorR7WurLLaDJL0CGVjf8z
         KKTAyToByWA/XGLuGD3OQ4DnEkO5CsxaW3UJ3NmM6O89yGLwoDFKnTNK4YksUQM8fR6B
         mAYEfglrNM6gki4S5pfOW27TfkHXqqoljxzetMibp4kPUbdXwGjcnqro38sbRLXasaNx
         WdOS/WgDps/SzIaJ9L2XeOcPMlTI4LMk1mQOZbdxzaAivuxBTla5SwUKWEL6VyEKDSNl
         NJ4Tqc3w66uF8z2+8yrIdE0B+fB14+GnuXUdExVC53GbnK6qKPK8KBNKqYxNmECYH8Pa
         q45A==
X-Forwarded-Encrypted: i=1; AJvYcCUCxhA25RWxEmjzuNLEPYhjtpVrOfPrjj2dkYosCeD3GQKCJq2yaXL6OMzJu0q0L32YdbtRWC+8EXlK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh2KzPF7hAIYBIXew3bmWBse+sepsej88buVRwmQy/Jmdqxjgi
	PKCo82J230d/hvbvUTiEfnfjBoybmhHVhVrJU28tnepJAy39+VOS4sTFU3zWojDUFNQ=
X-Gm-Gg: ASbGncssMXP6kIdz3cXezxgN8ltOFEBBSkAQvi+bco3LSe91eIGqWtdSVkX925jD5fc
	BU9F/nkSTHN/NDh7dzUxfva4t2hT1hWaLUtaSD+6cmLRFQiNg5JF7SAxU7qMVzGq9vZAsja3gnl
	SSlEgxayTu4+7FgOIttNX+5832P52p2fWxROtaijGBbXrJMdo830S0/2jTwcDr8WUxd/pO4O1xz
	z6nCfCZMEq3tO1XfRQruJ/+B1JUFBYYj7qcENgtkhoACKo/mqMBbaPoONqrQgmn4mbqx3g42hi+
	4hsKXIYvPgQMoiH6aVcwWgWUscLOqM8LQJi1FK2qODFTLzaEQlxI/NayLg7N1FGa3i8deNNABjG
	EXooJ6fdryfep6Cr7UN/yBqA=
X-Google-Smtp-Source: AGHT+IE3KOgmXKzWVwIXatZUzP0SpT7zF9MWUThR1kMx49+PPbc0ii9e8sraQgCudSaaczTwkfvsEg==
X-Received: by 2002:a05:6a00:ae15:b0:76b:fdac:d884 with SMTP id d2e1a72fcca58-76bfdacdd96mr5449606b3a.3.1754306023713;
        Mon, 04 Aug 2025 04:13:43 -0700 (PDT)
Received: from localhost ([122.172.83.75])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bfc270514sm3545933b3a.12.2025.08.04.04.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 04:13:43 -0700 (PDT)
Date: Mon, 4 Aug 2025 16:43:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] opp: Add bw_factor support to adjust bandwidth
 dynamically
Message-ID: <20250804111340.t62d4y2zg77rr3rp@vireshk-i7>
References: <20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com>
 <0dfe9025-de00-4ec2-b6ca-5ef8d9414301@oss.qualcomm.com>
 <20250801072845.ppxka4ry4dtn6j3m@vireshk-i7>
 <7bac637b-9483-4341-91c0-e31d5c2f0ea3@oss.qualcomm.com>
 <20250801085628.7gdqycsggnqxdr67@vireshk-i7>
 <7f1393ab-5ae2-428a-92f8-3c8a5df02058@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f1393ab-5ae2-428a-92f8-3c8a5df02058@oss.qualcomm.com>

On 01-08-25, 15:05, Krishna Chaitanya Chundru wrote:
> Currently we are fetching the OPP based on the frequency and setting
> that OPP using dev_pm_opp_set_opp().
> 
> As you are suggesting to use dev_pm_opp_set_prop_name() here.
> This what I understood
> 
> First set prop name using dev_pm_opp_set_prop_name then
> set opp dev_pm_opp_set_opp()
> 
> if you want to change above one we need to first clear using
> dev_pm_opp_put_prop_name() then again call dev_pm_opp_set_prop_name
> & dev_pm_opp_set_opp()

dev_pm_opp_set_prop_name() should be called only once at boot time and not
again later on. It is there to configure one of the named properties before the
OPP table initializes for a device. Basically it is there to select one of the
available properties for an OPP, like selecting a voltage applicable for an OPP
for a device.

-- 
viresh

