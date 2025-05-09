Return-Path: <devicetree+bounces-175413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C40AB0D2C
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 10:32:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F8FE1BC6A1F
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 08:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DADF2741CF;
	Fri,  9 May 2025 08:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z7OEvrvt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11D3230BC9
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746779532; cv=none; b=ahQDIqlj6Lv8v6d8P8QwBKEPyTXlkIg8YNys9xu/mEDAKs8Bx5Ux2bLTgn1AvIyQU1N3jB+5rXEi2Nm4wmWWZ/ail5XYK/TfSItp0t8Tcr2W8OYhtvA/Xv6kXmi4c8vvvMDNQBg8990fSmDLj7llFblkPoKlnaCkyqKiE+WfL1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746779532; c=relaxed/simple;
	bh=mi786CI0+Ajj0O8fo9KC0phpG5QVo4LT3C2GYKvg2rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pcsuz04OA940lovrMofgV6/82R7TGuVPqLx2cONbD23/gIHmrFD3URy7rkzDL22CCqEDSw26Qpi9wkJOPHJskMq2UwENzK1dRfdCL97CoSxM++Mj9PvtF8cwaxgJOvkkmFpmJqO1IXK700sgiW/3HSMOyIQmK6eIE7mauK7jtww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z7OEvrvt; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a0ebf39427so1071887f8f.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746779528; x=1747384328; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jiF1pbiit8RXJodj15L4E9c2gnVhsdzQP7MvMTnz+gk=;
        b=Z7OEvrvtIbXeqP1l7ANG90AQpx/yU+GOR/tvIO11ys//hI0fR9nUu2TQ11ZjU4F/zp
         dqincUQXBYpoWwWBRY5kDoylcnUNNP741m7ENpzan55CDpHFH8L2bQHoBjvYrAE6iqdU
         Wu7QZdMZ61sSODErF16v7NNmLwvphyXkDw3gwpCnSyAebQrWOWT5k+5BGiny9wiQFQGr
         3rRjDKbHuAorYXVMYWlROLfqkwqWPLQPOZ1TBQcnorWal0Kp1QZTN88nX/pRKHLqvibO
         8ij+RBFSQUw7PN/JqSrcha0pLawJ07MxH9B1eLT9ekkw9RBRQa6V7L2du3nWrqcwI7YO
         ZNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746779528; x=1747384328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jiF1pbiit8RXJodj15L4E9c2gnVhsdzQP7MvMTnz+gk=;
        b=Q3h693SSjC/Qwibj0nLJvQacaVVWJ10/TaxyI9MsGQlN0fNOU/AqLi5UpAEaLsJxge
         fBgJyCGESNNs38o16YQw28t1xQ+WmgkiUyrDhCsumgbTsiKQ3oYZR2qKJDr9Zmk+K+Tp
         bHIYUBrVe1a9lMxkwTeFUw6DkphIB/Qdq6qKtAoy1TyiYKmXGBbFS4JD4Uj5dTGynpzE
         LgPWjCIQ3nXK115rpe+0Du7I4L51hqYyuc92VHcaaCRt0GPwd9pNlgFyH55xWENKHlc6
         kYaRcqlcWLvMy0quLTg5srwXPAgqqbFWg/IDmK+T5ASRHePvEbDIR5ouhDss0LIG/85V
         oC+A==
X-Forwarded-Encrypted: i=1; AJvYcCWnPbV63awD6W2Kc5JXHW/gEf2OAjCVcTytG72GS4f2kwPP1bgQwwmxNl9pAlDfZJjbMMnuanOlEFeX@vger.kernel.org
X-Gm-Message-State: AOJu0YwWljJzIXbVJphopbOzEx7SpJdccfT7ihP5ru1ryZJdhcVJUpVM
	9dSCbT6Z6UNDqqxpjd1vlwSS93ddQp1pHwHYL8rdmxoWgSLjPvxwCO52BUACAjQ=
X-Gm-Gg: ASbGncvxJkk6uKDaAIugZFQsd7ZdMUVa1wrCp3m0t+ulRN8b21RnxTpkKUc0aNHs+3E
	DbQmUWV9UYuWZMj+7Us2GxTgV1w8n64mfFfUfDHb8Y7XR1cUrKtov+1dbrjc40c3e6JkaFLUSry
	LySNNK+kaYZ3TVQL9O/JTHVSJah4fFIEzAofA4RxjwjP90OrldYvxvgFt47JE6h0maH+WSfEK54
	smq2W+3zey56mAxQNBmut7b+JRpI8Rj/CbT1KW7zYTddfgoO1mNKuYpEooKndnNlR1eio5bmeCl
	bxZuFcHPXHGqTvPVIZ7/pKzNbwkNBrjgUCys5ciRMDFXdQoYswleBXPc
X-Google-Smtp-Source: AGHT+IGo7ag956w5i3W9+O4Hysr5DbRbNHyxYYXKoci+clSYLagmnbvGr8QjyCHV5wNtMeLk2ElqtQ==
X-Received: by 2002:a05:6000:2485:b0:39c:13f5:dba0 with SMTP id ffacd0b85a97d-3a1f64328bbmr2116798f8f.13.1746779527863;
        Fri, 09 May 2025 01:32:07 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a1f5a4bbf0sm2480709f8f.82.2025.05.09.01.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:32:07 -0700 (PDT)
Date: Fri, 9 May 2025 11:32:04 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Patrice Chotard <patrice.chotard@foss.st.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, christophe.kerello@foss.st.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v11 2/3] memory: Add STM32 Octo Memory Manager driver
Message-ID: <aB29hOrv0nU73RCn@stanley.mountain>
References: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
 <20250428-upstream_ospi_v6-v11-2-1548736fd9d2@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250428-upstream_ospi_v6-v11-2-1548736fd9d2@foss.st.com>

On Mon, Apr 28, 2025 at 10:58:31AM +0200, Patrice Chotard wrote:
> +static int stm32_omm_toggle_child_clock(struct device *dev, bool enable)
> +{
> +	struct stm32_omm *omm = dev_get_drvdata(dev);
> +	int i, ret;
> +
> +	for (i = 0; i < omm->nb_child; i++) {
> +		if (enable) {
> +			ret = clk_prepare_enable(omm->clk_bulk[i + 1].clk);
> +			if (ret) {
> +				dev_err(dev, "Can not enable clock\n");
> +				goto clk_error;
> +			}
> +		} else {
> +			clk_disable_unprepare(omm->clk_bulk[i + 1].clk);
> +		}
> +	}
> +
> +	return 0;
> +
> +clk_error:
> +	while (i--)
> +		clk_disable_unprepare(omm->clk_bulk[i + 1].clk);
> +
> +	return ret;
> +}
> +
> +static int stm32_omm_disable_child(struct device *dev)
> +{
> +	struct stm32_omm *omm = dev_get_drvdata(dev);
> +	struct reset_control *reset;
> +	int ret;
> +	u8 i;
> +
> +	ret = stm32_omm_toggle_child_clock(dev, true);
> +	if (!ret)
            ^^^^
I'm pretty sure this was intended to be if (ret) and the ! is a typo.

> +		return ret;

If it's not a typo please write this as:

	if (!ret)
		return 0;

regards,
dan carpenter

> +
> +	for (i = 0; i < omm->nb_child; i++) {
> +		/* reset OSPI to ensure CR_EN bit is set to 0 */
> +		reset = omm->child_reset[i];
> +		ret = reset_control_acquire(reset);
> +		if (ret) {
> +			stm32_omm_toggle_child_clock(dev, false);
> +			dev_err(dev, "Can not acquire resset %d\n", ret);
> +			return ret;
> +		}
> +
> +		reset_control_assert(reset);
> +		udelay(2);
> +		reset_control_deassert(reset);
> +
> +		reset_control_release(reset);
> +	}
> +
> +	return stm32_omm_toggle_child_clock(dev, false);
> +}


