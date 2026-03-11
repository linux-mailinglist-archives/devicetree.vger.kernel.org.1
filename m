Return-Path: <devicetree+bounces-273801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WF3nK4vSsGmLnQIAu9opvQ
	(envelope-from <devicetree+bounces-273801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:25:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 423B825AEC9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 792A5305F7D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C240930BB94;
	Wed, 11 Mar 2026 02:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FY2bT0go"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0D4283FC5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773195911; cv=none; b=RJOvyNFDQoMFooWqmsKa+lul72aeUm73WLs2qpylL2ZzhPQJDsilFD6KARuFmvRME4X5xstNk7NRuJUJlLpaJ3JJ14wnd6kFzCp5yhusHWeqrBjOrvNRHiEQe8Trw5uAVn3ThS43PW4DZ8akBqofLzFWuWJ0JCFHAMte6NtiARc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773195911; c=relaxed/simple;
	bh=x3oA4b9XXpfnN8kUiNhtlS/tc1BuEX7AW97CTEgFyIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HBUH8lZTUR7eFzJmqeWi7XP/PtYiHUXpKBVr3qIApOhYHTreodXVP7v2axmEOiicL83Sknhx+o8BYebmP2pzfDke7CPXilsZIGpJFeuKe7EiBOC6WnPzin5gCrBI1DcKQ7JR0cmvY8x+HI1KCOh7gMwpY8E0Qricq2IP//kk+RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FY2bT0go; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8cd8576a512so54304785a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773195909; x=1773800709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pdOODwOyqf2HXTJor8x6+j1U0inwH0LLdlGvfoS1Vfo=;
        b=FY2bT0goJi+eGxVKUdDcVzRwoQgrQnVLnDcA7loJJil0P4Ni8pMG46aYtZLbnzYCmL
         ttG0XvTy8yd/gnIaI7o5qrih4Kn+rgjI47B8IO3PTeKTbFI+kHx1XjLEs5+eaM4nB2e1
         +DYVbLzQRgvKCQr8i0dsxeA03Z3dbFuQyDMtV8NIGYZCX5VpgkgYDtaWauNrOv9jXteO
         dCe3Eob7ZRKNsS2XQ4HujfFkZZBi7CuGsR+y9/w6OLKI3CM8ihaDROZVBmSR5h8CTnLN
         rWHfL7sy3cHpmKkxD7DcXmXWeaY/5qn2IElaygmHlm3aEjYk5glgV5tSpCh9/lLyx5P6
         It4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773195909; x=1773800709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pdOODwOyqf2HXTJor8x6+j1U0inwH0LLdlGvfoS1Vfo=;
        b=DfcTyobfM8VSEUTU9/YMutKoQDtzMjUlr+sVnP52RJrp11eGR8ggZj2B8+QVImKDOl
         vyzEsOlwGfSdDgmJwlbrk2xlpVBQcxW0ZymkAk2NLORhUtMmDjWWRLSqLoGi/snT+qYV
         f0fjUdFl7bgjIPg3C+fBixocKWvIMc6SFSN6G7gIWNZ9dQdffw49P89Fps7TvUf/9Olf
         quH3SaY//WfBoiYHYERVyF+7QEYjS9XXUE7URyywi0aVLKEMIKkbv8F7FczsjtyKWT6t
         HhagaO2Nfi4lS1WRxPslofR2xbIFd1wvuMdL0ofGG0Usg2YvM29mOOcc/cRYWutC/9mB
         oC3A==
X-Forwarded-Encrypted: i=1; AJvYcCUPxTsBHGaVYdgwRU4xfS+1DL81+SPq63OcC18ZbfEGngYYQqWfFAJN3IrHluFREF2aV3+UIlr43yBx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3Op5gIJvxC/h6goTCr/0qgmndkscjeTdzABVokau25UXw5mYz
	OpmVBYnehMdxgCLgnv8YvtNAXroaB4FXf5dGYDTmUwaxFTp0wKo5dP9p
X-Gm-Gg: ATEYQzzZII56M/kIhl6/vM8p/NCSCH9Jjr67p6nT0idZ/aizLOjQ/SmnyCv3fMzSsU/
	CRDAD+MBwsuyz5+C/mVs2s0f4ALjVbc0sIVQY02k7W8xyeYTkKVSQAkPkVJrKzLu774U4c72LUP
	cGOSMbGPjHk3bBWva0gMtvdLvN0Uw/1Tu//LJTxMGkyQ4KCVRYzB/097NjzCQoCyc/zdRbyDznQ
	XcWyYkq4M+vw2ZthCq104HpGYbqpD7eQq30qw9LVEe1wGkeWyg1tNegXIWr/gVytfmOoItna4Z+
	+Mjhql5TzaJl/ReP83sLHe2OGxPyv7SooPmv4Y8dpvnS9Jkoo+utPaHpzWm6Txsc0KPS0Y+eaPe
	aTO7KPxV/44x4xnRZ8nW32ZX6s7PTaPQ3OIovdyrd3ptRa3kJpAhM+dE7GFOSVJhW5M+gR/691h
	r753P2kjczxiOHtO6f+bD9t4GEEA==
X-Received: by 2002:a05:622a:1111:b0:509:1be4:97d1 with SMTP id d75a77b69052e-5093a19d134mr10124061cf.34.1773195909341;
        Tue, 10 Mar 2026 19:25:09 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50939ec63d6sm5194251cf.12.2026.03.10.19.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 19:25:08 -0700 (PDT)
Date: Tue, 10 Mar 2026 22:25:40 -0400
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v9 7/7] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <abDSpE3BNb0jFrqx@rdacayan>
References: <20260217002738.133534-1-mailingradian@gmail.com>
 <20260217002738.133534-8-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217002738.133534-8-mailingradian@gmail.com>
X-Rspamd-Queue-Id: 423B825AEC9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273801-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,1a:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 07:27:38PM -0500, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/sdm670-google-sargo.dts     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
> 
(snip)
> +
> +&cci_i2c1 {
> +	camera@1a {
> +		compatible = "sony,imx355";
> +		reg = <0x1a>;
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
> +
> +		avdd-supply = <&cam_front_ldo>;
> +		dvdd-supply = <&cam_front_ldo>;
> +		dovdd-supply = <&cam_vio_ldo>;
> +
> +		pinctrl-0 = <&cam_mclk2_default>;
> +		pinctrl-names = "default";
> +
> +		rotation = <270>;
> +		orientation = <0>;
> +
> +		port {
> +			cam_front_endpoint: endpoint {
> +				link-frequencies = /bits/ 64 <360000000>;
> +				remote-endpoint = <&camss_endpoint1>;
> +			};

This also needs data-lanes.

