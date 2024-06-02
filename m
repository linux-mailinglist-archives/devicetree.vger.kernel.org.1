Return-Path: <devicetree+bounces-71549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7792B8D73F0
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 07:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C3361F215A3
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 05:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7930F3C2D;
	Sun,  2 Jun 2024 05:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dEEdMbWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54671CD23
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 05:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717307371; cv=none; b=H/2edlWSbMLHlxmRzU+VAB2+MzpbjV4b1ExqdquB7QEJfa2N4nZRrgpbWg0YfZdhBLgS3hDYKegY/jpsMQbmnrEBBrmZkMk+CzUnpHOc9PUI/jm3bW3YDtUup7Bg3cpVldyWxaTp6CMwNA0N2x5cOL1w3ssAp3ckoAmuZkws064=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717307371; c=relaxed/simple;
	bh=S5zfxGoD0u3tBX7WTi3pbIcGb/gN6RB7VM+Jl3fS25I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cEVKlScuOSoh1uf7KIMKx4yo5XCLYOudSmBwCpHZhBclC2Yef3k+3m7y+QiO8XXynnrhpGld64TkRXfmknhi8JjjniA9kDCBdP2LiEQGsmNoD2VscpssihV21g0UNxf08SklZgeEFfnY+39eQHhnktNoIT4vHb573PCtosRHKfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dEEdMbWH; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so166061766b.2
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2024 22:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717307368; x=1717912168; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MavawcbK/TMPV5EqBDmNojVHFfhCMUbwiSiZcjCdMBQ=;
        b=dEEdMbWHS+2xmxBJq1iCKsZL5ym0dBkkGPP3rMDfiJzHbZc0oxkh4Irl7EPJ5brIeh
         XPaoya6KEp0abSP5ZjTilqeEjDASXUUt0VVL/ptQiJXqrzboi6X7NVmT+itW6/mVtZHG
         05HlaszGSgUKrfhCS3DCA86v+StMwXbqreZuUWafT8YZQMXQRlGs0r3eoJny8ycri0AB
         +9NxBsWLxVTyn+6fetRFeTKxYqc5gW9+IklMz23cts+EcQYEzEpuHLQsA1A8xHdYRb9o
         WsYReFcih2r63lju5c5YzobZZTl/ON4PjMRCV1UY7wynspedlQc19RQ43AffdGhEJJHS
         FFBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717307368; x=1717912168;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MavawcbK/TMPV5EqBDmNojVHFfhCMUbwiSiZcjCdMBQ=;
        b=EbYYrAZ62Wce+BbJPjZP82MNj0tSxnFFzeu/u95Ycwc6cEkOv6f8nUKWZABL/0ijcv
         ANS1h+fsP48RoP5T/zcodtViWsF4vp96B79dd2zwvkLo0TYUWyhstN36cSlCVWNaswet
         yimg7lJq2vDsCuVydApjRhoGR5Y3wGxhM0cj5cibpT8nNYKYvj2ufWWIQJV5LkheAXJJ
         y9mSvM1QOHmy0FgpJVLHzEO13Yk3Pt0/4U7vKxQPiNPnxjzq/swjnB2ylizOaL0Kndz6
         8Ov99E/kZU0bN08Vq6VUoYaPwRQOK8SMunVO3dDwVC5TMCUBSb5IvkglX6/7XO9gpK6b
         RHBw==
X-Forwarded-Encrypted: i=1; AJvYcCX9OwBCOOi0eP+l6aLIPCN0gzo0e4H9Ug5y6i7Py9mVY164tNzf0GR/enLCXnZqOb2jWR5neAhPDdsvpxp0410Ib5HVTNTyh9qqyw==
X-Gm-Message-State: AOJu0YyxJDVoBFkx4laRmwTEhcsKm/Ov3BGWD9nRn+54WfeiYntT/Yqq
	UUHiOHlzr8brP+uofO3o/PvOMza3YUBQ3jdgv+W4dIUUfvsII6Po9rGnbfcYn68=
X-Google-Smtp-Source: AGHT+IH9FF9p3WS/bkS5Rwx2qGx7t+VkpS8ZMjcquQyTyU410/RKXSXcsKTTlfJmJ9PVRV8OGp4U7Q==
X-Received: by 2002:a17:907:119d:b0:a68:6c51:f571 with SMTP id a640c23a62f3a-a686c6138b0mr374437366b.74.1717307367772;
        Sat, 01 Jun 2024 22:49:27 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b4b09cb9sm156347066b.178.2024.06.01.22.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 22:49:27 -0700 (PDT)
Date: Sun, 2 Jun 2024 08:49:25 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-qcp: Fix USB PHYs
 regulators
Message-ID: <ZlwH5aZ1CwDnB90S@linaro.org>
References: <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-0-6eb72a546227@linaro.org>
 <20240530-x1e80100-dts-fix-usb-phy-supplies-v1-2-6eb72a546227@linaro.org>
 <fjawzjf5squniqse43r3xwshguwhcg5ofqzcjvmrn5v2ji3e7x@eve4fhsftnhw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fjawzjf5squniqse43r3xwshguwhcg5ofqzcjvmrn5v2ji3e7x@eve4fhsftnhw>

On 24-06-01 17:58:19, Bjorn Andersson wrote:
> On Thu, May 30, 2024 at 07:35:46PM GMT, Abel Vesa wrote:
> > The 1.2v HS PHY shared regulator is actually LDO2 from PM8550ve id J.
> > Also add the missing supplies to QMP PHYs.
> > 
> > Fixes: 22b82135c02d ("arm64: dts: qcom: x1e80100-qcp: Enable more support")
> 
> This isn't the right hash. I'm fixing this one up, but please check make
> sure your fixes are based on merged commits.
> 

Sorry about that. Will double check next time.

Thanks for fixing it.

> Regards,
> Bjorn

