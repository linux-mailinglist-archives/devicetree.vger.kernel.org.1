Return-Path: <devicetree+bounces-34701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D70183A9F6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8BCBB22329
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E183D76910;
	Wed, 24 Jan 2024 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Td/2QOCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360BF60DEB
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706099883; cv=none; b=ruRop2PHR9WuYJiLLNrnOKFoh2RqpgPmdcvIHRxLCWyjQsQcpz907zRrQBXRqOBOXCV3FvhvY8ru2xmkZsumNv2LMnw90WRP0KFuOqDIeOyzB/NQBACHJqNGW1GxDH3AfB6Ee3tnq0ubFch8uHq8lRnLdNdD/xJYkDGiivNy5Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706099883; c=relaxed/simple;
	bh=7CarhI71VUD1zKHMgASvmvAH19o4krLlyNn9Bb24P2s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ABH8zqmtQ+Se4tCwUPFmogU8VB9WdwimHlTyOnkiY8d4nmAsKB+al/LC7dkfOQnX0TGhsMPPC+syPBrRuWo312WrrCDYpUs5iqFQiPT6dgCSy1a9bJ+achaim75Ku1WRhpHx2d7hoRSBaAJBzLF+wIN92n13HSB8WT9ZwtkLFic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Td/2QOCl; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a2e0be86878so1211281066b.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 04:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706099880; x=1706704680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oOF3NoLpgCBI1PndLI5a5LAEUzAbeXf4T/xw5vWVsC8=;
        b=Td/2QOClgn1QdniGt+/axJkDJ6grPUoQKjo3DBWnTz3/6ocRsbXvj5UGtAkQjq7WJq
         eaaUXwwG7FwCuCm57QF1GjZUa64zcYutUiF0Q30xIXFsfXg5TVYczBoT30EWjXdEXMh+
         jplMWqi8rMfHu+zIL6YNlxIsXCxzwRf4lpzEB4Rb6UVwNHZ+nyINiCknNbFZXJz6Kr4M
         KTi22Tb7LQasGEi3DMsrP3oRMZS8HnsNmsNZs/K0Hx9dxpbC1GdGWMEPvqQyD3QA3nuO
         mW27EAd/5ye34NRzAqr64nlrPflNa6Q0owucSIKxIAEpDWu0icWkJ96Gw7/BTJYKP0k9
         6zYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706099880; x=1706704680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oOF3NoLpgCBI1PndLI5a5LAEUzAbeXf4T/xw5vWVsC8=;
        b=DCxurU/pbPr/QElSRxh6OkveX1BFW8j4ztj6kS3PiLlZyfgWTSJgZH1RUgROMdw5Qd
         2oMSLY23E+4Ii5lxRXZGp34kVo8zSXMYmm11ssLy3tC+aD4zDg2gILd1VAdyOJfJt5bF
         oxu2He9l3oxlqqKqGcuoAS20iLfE5uHM7RqOPEFvxZOjoS85tKxnd15t2FjZpE/nOnmZ
         6MVqU0oIJFbQBlzZJb63gV5c19FG/P2+VkR0bkDaRDiGmWrsp9o4TQm8xKahxfZhsCAn
         jPHwuV8N832r2WiyZCk1tVkaWkcdygk2uQFAVbH9ceO94TbBTNs0v/p4OIeoYdgUHVU+
         vRsw==
X-Gm-Message-State: AOJu0YzC5g/Wj5mcn4DThPwJ/nXjBbiu2g8n9gC3cf53fbo+XsuFR43x
	1/WBmAjccGQdZCr6b7d9hHGJGgTa5enBcIGMgi4kAkFVBO3EpMIBDK3QPKnZP6U=
X-Google-Smtp-Source: AGHT+IGq9JzPGv4Fh9W1QWnPuQcV5i2Pysemez2A+1m9vVG390zE0ZZYQ29psjZ0hm6Eo33fa6uHlQ==
X-Received: by 2002:a17:906:594a:b0:a31:3164:8569 with SMTP id g10-20020a170906594a00b00a3131648569mr577123ejr.76.1706099880319;
        Wed, 24 Jan 2024 04:38:00 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id tk10-20020a170907c28a00b00a2d60194466sm12593625ejc.52.2024.01.24.04.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 04:37:59 -0800 (PST)
Date: Wed, 24 Jan 2024 14:37:58 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 04/11] arm64: dts: qcom: x1e80100: Add ADSP/CDSP
 remoteproc nodes
Message-ID: <ZbEEppK80NpwqUT7@linaro.org>
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-4-072dc2f5c153@linaro.org>
 <e1313275-ca10-49be-ae68-ce783c3262b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1313275-ca10-49be-ae68-ce783c3262b1@linaro.org>

On 24-01-23 19:22:35, Konrad Dybcio wrote:
> 
> 
> On 1/23/24 12:01, Abel Vesa wrote:
> > From: Sibi Sankar <quic_sibis@quicinc.com>
> > 
> > Add ADSP and CDSP remoteproc nodes on X1E80100 platforms.
> > 
> > Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> [...]
> 
> > +		remoteproc_cdsp: remoteproc@32300000 {
> > +			compatible = "qcom,x1e80100-cdsp-pas";
> > +			reg = <0 0x32300000 0 0x1400000>;
> > +
> > +			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
> 
> Is there no PDC mapping for this one?
> 

Nope.

> Konrad

