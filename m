Return-Path: <devicetree+bounces-230847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F73C066DB
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 15:15:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F40C4E85E6
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC1931B803;
	Fri, 24 Oct 2025 13:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iLUIc9EV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6F8313E18
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 13:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761311691; cv=none; b=u2N+PoWqA+u+F0s59MMBGVy04nhd7p7Dqp8j2r9EmNllj1YsBeNBYRA7jgDYddd6Z3JK0zb0sKewR0Ku5KZaZFNWMRdQF7LVuFNIteq1YaYaOh4Yq805zW2lJuTAZHKg6lTHuVMaONk3drWW7wkvYpz5oorNbgKyvVZHt1VIlhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761311691; c=relaxed/simple;
	bh=B/J4fSXBxYjahTVHd6bJx8SmdiExewV6JSag7qLfJVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HIgOB5imoa42ud9srmjOrIzL1fbWA5b8b03hX/SZo8hHIbl9afWsxbCxWemh1IwuKWbuw/sj/D3fdHMyyQHN5QZPGLNOefrxX8K0iNVMKjTFbndFSwI77KBgvFjoUrV+RD1ibAWSUOAAMfzph9U2OcGDCmi1MSOw11f8pkZ8LBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iLUIc9EV; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-471b80b994bso29096765e9.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761311687; x=1761916487; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aw3s/Ngv5fWq93/LfGGZRypt+nWW9NzGjLCsQdxHVyo=;
        b=iLUIc9EVHB8CPOYr/8Aosec0lmNS9mPRCPjto2946ZJMD9XWMeJW4r0Q7fu367bnlt
         wi+Y/ZM2XORF1mmNd+77e1RrmYO3gAkyGooMaT8PSUQ1M+ih0phuEaCBGjUvSLgX9VwU
         pWQrdjwYepfXQ+MBuzvKo6zw8+aAKFyKLgZ3w0xGkt2/Z64CT2J+9Cst5RMewwFCgQt1
         79ibxE/AGJQbg/9HWrODN+bM0djG6udhapUO4bUK0INXeDH1J1KA18dSEV8uEDNew7vu
         tcsqbUT7N3cbXaMBgOagia2fysdhyqiGTkX65G/T6Zv0BytNPU/J9T1TC+7c0qZa0xG6
         WNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761311687; x=1761916487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aw3s/Ngv5fWq93/LfGGZRypt+nWW9NzGjLCsQdxHVyo=;
        b=ihg8ysqA40rjGEzIsgIPDIQBB5rCfjR/lPlXKMusPNfzc6rNjioacoqwrHjntvdUq5
         WytjpyraV9hYUwfnNkZVHde0DoTBIIJT9Odk3yDBVZdk6sk7VC2HCgT0yO2cLabRF9Lf
         lod2ecxeIUyqBEG/vchr9JDBajYXDOcy5axCAd9lhaZ+g35WwKETtaYq5OzbDTHgdviI
         5WGtlu2N7LV+u/7rbD7FpPeeoQiZhJlpdZALpPuX5pDKF/eHwJTva6ydoQdsecWv6PVG
         Klen5NQgj8HFLO/hJZgM3NULIBD5W1inz2tILMEKPD9R1NDt1dhm4qU1YYZIZ+V69Tcx
         WXCw==
X-Forwarded-Encrypted: i=1; AJvYcCXoGW24HM9XuA+kBbXPSuY1g//qlNqTaa9X477D+M++6omqKEnBK8dI/tEbl0fEAjOR5zsxmwLkSqYH@vger.kernel.org
X-Gm-Message-State: AOJu0YzKWPbV/TXNnNaWvrH9ixG8clJHlEZImv+9GYUCwOlWKBIV9W8f
	BKxAbIZ6Txvbe/WCpFTZN+WoBoauf/Tp8MPyk6z76HWN1TH2NsalgpZidLPl8nAzVNE=
X-Gm-Gg: ASbGncvXVxRGL2LQIzUtADlvdbz8exa4kN2Ft6fvqzxH5f127Cfv5C9iWIsvNBxxTjL
	rwE8Y4AW5rUgx75jtJYT/qDbyzcs5zixSRfQwaH/nNLlAAA1UDxgQ3P4XngdKEJ+M20j9xbtgj8
	dGhR2NlY6lwLj6wRazztSekCNDZ/cYra8/1Wl4hxkG9FhppbVfBgc+vDGZ0fst0/hlBCW1RJqxc
	Vkrcjw8WKhhyOJPx0f2S8KMhvhe0cCVCpJfFjszP04gq28peqmU1LhrQQhXlEnJq+6rIKQ7YZT6
	FERSKDmrothTDaCPUiLZjrrR1/rHUyLVZPcnG1CGL+v0Lw72Kp9vxOFHppF/a20GBSPExXX9JaQ
	Q75g2Mg6LphivBdedbtIxVF0oKsqt6MdxyR2Wa3Jumn5kkuy+CkdwQ3i6S87NPMyRQ46KI3iDVz
	r2WqInQoM=
X-Google-Smtp-Source: AGHT+IG173mHKY9AS/3Xa7nR0RgEEWZWPFN6mBkCz/tfbOlzz/oOa+s0Yjnu+DHdEWhOrllzlsrkKA==
X-Received: by 2002:a05:600c:6291:b0:471:a43:123f with SMTP id 5b1f17b1804b1-471178a6882mr222738315e9.9.1761311687001;
        Fri, 24 Oct 2025 06:14:47 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c427ed3fsm175699395e9.1.2025.10.24.06.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 06:14:45 -0700 (PDT)
Date: Fri, 24 Oct 2025 16:14:44 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
	Shazad Hussain <quic_shazhuss@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100: Add missing quirk for HS
 only USB controller
Message-ID: <a2cjvvt36jcnmbmsgf22a6b6p52aoejpvwbo4phsd5gc6xclba@havatemgahmd>
References: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
 <20251024105019.2220832-2-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024105019.2220832-2-krishna.kurapati@oss.qualcomm.com>

On 25-10-24 16:20:18, Krishna Kurapati wrote:
> The PIPE clock is provided by the USB3 PHY, which is predictably not
> connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
> quirk to  HS only USB controller to disable pipe clock requirement.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

