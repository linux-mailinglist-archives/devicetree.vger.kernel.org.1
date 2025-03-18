Return-Path: <devicetree+bounces-158419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C5A66986
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 06:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31C67188AF83
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147051C9B97;
	Tue, 18 Mar 2025 05:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QLl9v818"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1981D47A2
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742276328; cv=none; b=OjuIWLNKxfZqheo+hLxp8ZRghKeIXC/ysEmvOdO0EP8EcEfqm0zIUte67mr9UqeY70Js1KMit1+jOcLy2ckvh+91V2e5emGXKwpWhIRHW9sJO6PvgdwthSfkjOfO5PzcPM2yxgiKkJi6z/2ISVfR1lc34rPFjKa+EGmAA4Q+7Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742276328; c=relaxed/simple;
	bh=P5iM0uabpaJ1AbJIJnKcL+VevuH5PXzgqzzKXmVjFEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RSQ5ZTm1cJxAV1GYxrsu/5O1vJ1bp6WGg/KGeNrh04MpyVbknoFW9A+1ZMG7RnyJfT2Qi1W+lvlT4X6l/720xScVvG46f7lEIgCQjdsBQwhYQ2/drIn9w98mhUlyX2GLJLRSAedEbBKEeUropqzoZFAzIyFqRIPqLeH/kanOSJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QLl9v818; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2260c91576aso31986415ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 22:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276325; x=1742881125; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tdaqatqISFRYNU0Pl5hfD9x9pMSiXYmVb+XBgyOMwkY=;
        b=QLl9v818V12gQj0t843raaAQ3YRcjybkx4tqoaoX3tZumoohYu9dBHxkiDImCIi9ph
         1gu9zg1gsV6DkAKiPqxbY0qB7FTbIRi7JTNuY/6dZoJQOn1ZmsUSMyA1IrcqlI2Pbzfc
         zTP5K4yzt5B8Lwsr6rklRmZzSCy9L/nUKT3/j+i1x5C9hVaoTe3TocaHt1zFkJHhwxnG
         0vkxGZVGJ36SFYvaoaUhq8bRUQxEq8+08AkBGEb3CDGExn/+uK7QSynrwTUi4inXOLOr
         9LW5/MFph9JSqbTfHHNfXWQjex+Ce59aZnyEICG4NIW2KOCxQKpGyXntw7d1RT9OEFJt
         VWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276325; x=1742881125;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdaqatqISFRYNU0Pl5hfD9x9pMSiXYmVb+XBgyOMwkY=;
        b=kZSX1iIZhz/hV5owIVsWYhZnnz9jtCFYqvpT53oqz1T1ehFmbzX0LgbFENlIJhB7/r
         3M+lu/Lxuk7duh7yu52TjKRKrPCRwD3cAKN3a2aopCprxdJHCuZd62+UzzP29rQpH2at
         qSEkLxUyy55MBsk0r9+wRm2Y1YSkLFwIHCCxZsqHzo++djtMS3xoaEQXXEaaK/Z/aZwd
         rmqT6h6kNhavOUMrFl8RVgJdPecERnv1/QpNbkE25DhZ0jHKSlrb/9Iu2S67JKDkNSIR
         oqKwk4gO6CibAxbbtfIxPzQea3Ab4tjZPmJar/Tq5EQNlSRETYvUZeBSjunifbZuGadK
         iCCw==
X-Forwarded-Encrypted: i=1; AJvYcCUG0cBK5Y+m2Z4GJdI2fJE+lA1MwlHnfEqI45+QOBuO0mlchngSrv9ONSDuUBdszDqkqons8KpUJihG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/zF80TkyZS9ZWCij70HjDdOqUDlLiommul8A/6R7nxmY1UpLH
	ysCUDNHIDDtTxO1FTeO5AfuU9kQSwNA8pLMgRZeHPr/Wu6W8Ti00kU6wx0ak1A==
X-Gm-Gg: ASbGncsjWuWBtseF3fMcPeGRhpn4wWWIUCtrNf9ee+rwPQTj4+xD7QaN2BXPJn1y7YW
	pXiGiv3XPxJroEkqvDaIeBDydk1rhmx+yuTMZFlu7OuBac7PBD8ZQYiWaPvcEMwGvaX9qxSm8nA
	YY8bhkNpwcdNUo/Go1AmB4FCdHC7M5I9CvdJK3sg53ziHrY/oJGnMdfRBA+7nZFZ7UVhotlq2QN
	1YlSVwmVAkzDKe/vEulBFJ7SxZqXLUnA4sU7DF+8W6fEiCSltcZCBoE5+LULr6XgOqN8XFXRX9b
	YHQgAPJTNCuYmQeiJzi5R2rvnFlJRQS+K8YDFbUt/GpG9fQLQP4vwAT4Mkbd3D9gsdo=
X-Google-Smtp-Source: AGHT+IGtKPupstxaJ9l2OYhRXppRqOSSephtsRZM9k0tdvFT4Iz+eKcqIdvaN6lvgoSbh8+SItbTKA==
X-Received: by 2002:a05:6a00:464f:b0:736:5f75:4a44 with SMTP id d2e1a72fcca58-737223fd0ecmr16558503b3a.22.1742276324825;
        Mon, 17 Mar 2025 22:38:44 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737116b1024sm8604240b3a.168.2025.03.17.22.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:38:44 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:08:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 4/8] PCI: qcom: Add QCS8300 PCIe support
Message-ID: <20250318053836.tievnd5ohzl7bmox@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-5-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310063103.3924525-5-quic_ziyuzhan@quicinc.com>

On Mon, Mar 10, 2025 at 02:30:59PM +0800, Ziyue Zhang wrote:
> Add support for QCS8300 SoC that uses controller version 5.90 so reusing
> the 1.34.0 config.

This is not a valid argument. You should mention that the controller is of
version <Qcom IP version>, but compatible with version 1.34.0 controllers and
hence reusing that ops.

5.90 is the synopsys IP version, not Qcom one. You should mention both.

> 

Please add more info about the controller like link speed, max lane count,
etc...

Moreover, cfg_1_34_0 has the 'override_no_snoop' bit set to override read/write
no snoop attributes. Are they applicable to this controller also?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

