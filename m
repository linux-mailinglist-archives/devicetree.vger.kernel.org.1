Return-Path: <devicetree+bounces-129601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB379EC4AA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5586C188B50E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C318A1C07F7;
	Wed, 11 Dec 2024 06:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z2xr0OLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7CA2451C0
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733898062; cv=none; b=N+B8iFGmzudvaJUyr9pJkmlWSUWk5W+QgslEKiv6Cd1vfDpcIBVIcbrer+9FwrRGqQ9zQGiQr1qM4oJssB5JuNKrVF1WznSajz68LDzduwZIWo+w4uhWyQeZJ7nO/xyeBAV2Gx+IEWWvL/JBhXxXI7MGMORZ+jNGkNvPj69+S40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733898062; c=relaxed/simple;
	bh=xP/3mFAEUu5jGusceunPOkWKJ2FbuC2oApaFvMz9n7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MWPaZK3HDOLGyt0HOGIoxojvtorsmu/zAnr8dZwYre44MFBDKny9ILJbQvjSBvVnSBte9HgKRTrjsv8tj8xrfhkmkrBCNtt0Q6qqJc7PkJe13PO5A3ct02PFlHl74kJ3peoCEgCzRJNrf1/tfyeX6ie1X7MjvZHLbXbklYrNu3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z2xr0OLS; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-725d9f57d90so2761033b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 22:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733898060; x=1734502860; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0d5CzVXzJ7EqY/542DTDjPbVEeRALSf1iz2hJWMyrGs=;
        b=z2xr0OLSC0FDc3zS1dL4jVmtckR7p7MjYHnqbv9sGNTUE9cJGdNbxkTTCbrkGAa99U
         9OaDDRNXeWcUaGl0hEJ9XDTU1WwWNHZAF5rvYrNs9DnXAgSX1YAoUA3FBuac9c83vQfn
         ObMPRDE1go2eQTRy2qz2OrBX0EOgJ/YRSx6T9b2DzjOpVnw9X4z3WPsTtb08JaE2pQyw
         VZ1Qn6s5tRTkDszkAbw7FKog/tiqiFh9C8PGEWiHBArQIS0OyeuBQT1gWgyKHQSI3bbC
         Hw1IOWKbpZ/0rcVsL9eGxigOO9P6Lfn5LMvFWvWEWt2B4PhwII6F0BDa5iucy0cH6X4P
         ABww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733898060; x=1734502860;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0d5CzVXzJ7EqY/542DTDjPbVEeRALSf1iz2hJWMyrGs=;
        b=hiQgmVh0JD1PHZ2rUIY3ZaYVRp5kgbgUW29GXcLvL0zdvHXfKqoo0IIbLM8H898bmq
         Uuk/drrOHKo2iyZx+g0E4q6sKyBQZVxgigEqqogI7Wfg+5yXKQL40Mexovfiv7LZMbPZ
         4mpzTPv7nuB3gFd3A+ddkVdEX/uCPrXH3nduV3yXpZpPGk8eYDKpxwOdh6IXuKzsaFsx
         I/LGHcq2GGbMO63CgU+mtrjXRcel/PCcdsBtUZF/BTlnxgyY2Nq1OIvlRCwf9g0LPQGx
         UIG5VbQw/WZFir2JRkrtmlpTdNrPP+nfkWWfBecH3pJ2ZKDT1iJyjn4RCHJKRceDimsn
         iZzg==
X-Forwarded-Encrypted: i=1; AJvYcCWo3P9ljNtI2Gi4nw1orqOQQcgfhCzeJBpcXU3nAg2HxzwEKJzSlWnVxrxYKeHcae3c8TGbChATTqeA@vger.kernel.org
X-Gm-Message-State: AOJu0YzDvyIyBKY1vfDQGVGITpyscjkuC4SN0faH33AmtYfNKfcIYN2M
	bWle1/aOiaqnlVk4cSKTcdulManS0HdRcOA2NvK9gCZVMVUnlHQdXaJJvlTG+g==
X-Gm-Gg: ASbGncv+ZS1ryivt4SYtdkrZiMCFxl4ICn/NELunNQfLkhSzHAKW98/VEn6FnGuv0Ki
	aGFW3raM8yltxGtLeVJSXsOjGohqBmlYLNMEYHD/3+sf+SWL00yaive2rXdZMfXR3UpP/XoVava
	obEFumwqQd2OARsyBpheJJ/YvBhjpeMjr1sh0a+gAxlU2pQZtNph5A59BlZOjRcE4eRrvLSzgGk
	vVq+SE0STzj4qwgsUPm9y55R5wvOrE4/3wh6im4xfcdWIKb93qucLIw0eyXgM4=
X-Google-Smtp-Source: AGHT+IFWvDNrqEB23z/oBgRJDSkzxDUqR7wA2A2btM/Mtu50Ib91aDIP/XMJYo9C7ZTzBqiKgwPjGA==
X-Received: by 2002:a05:6a20:244f:b0:1e1:bf3d:a190 with SMTP id adf61e73a8af0-1e1c13832f3mr2505278637.30.1733898060524;
        Tue, 10 Dec 2024 22:21:00 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7273c7f3f1fsm3124018b3a.13.2024.12.10.22.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:20:59 -0800 (PST)
Date: Wed, 11 Dec 2024 11:50:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional
 current load properties
Message-ID: <20241211062053.vxdpovlmetvyx3za@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>

On Thu, Dec 05, 2024 at 11:23:11AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Dec 04, 2024 at 06:52:47PM +0800, Ziyue Zhang wrote:
> > On some platforms, the power supply for PCIe PHY is not able to provide
> > enough current when it works in LPM mode. Hence, PCIe PHY driver needs to
> > set current load to vote the regulator to HPM mode.
> > 
> > Document the current load as properties for each power supply PCIe PHY
> > required, namely vdda-phy-max-microamp, vdda-pll-max-microamp and
> > vdda-qref-max-microamp, respectively.PCIe PHY driver should parse them to
> > set appropriate current load during PHY power on.
> > 
> > This three properties are optional and not mandatory for those platforms
> > that PCIe PHY can still work with power supply.
> 
> 
> Uh uh, so the downstream comes finally!
> 
> No sorry guys, use existing regulator bindings for this.
> 

Maybe they got inspired by upstream UFS bindings?
Documentation/devicetree/bindings/ufs/ufs-common.yaml:

vcc-max-microamp
vccq-max-microamp
vccq2-max-microamp

Regulator binding only describes the min/max load for the regulators and not
consumers. What if the consumers need to set variable load per platform? Should
they hardcode the load in driver? (even so, the load should not vary for each
board).

- Mani

-- 
மணிவண்ணன் சதாசிவம்

