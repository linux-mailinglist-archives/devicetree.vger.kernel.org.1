Return-Path: <devicetree+bounces-224106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1ABC0BE9
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4AC3A4F535D
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4012D63E2;
	Tue,  7 Oct 2025 08:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G3rSDdVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32AA2D5920
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826180; cv=none; b=CzbdrA+/Ez5cUI+L0Mv/MCe4+rf34IomvukJ5ANOOUI+rhK57ylW9i7tNJEaEuujtwLNY9H2phEnkIEHiz1nnW6mkwE7yxdEV3KQ7JGAEpFhYmUm3Dszhf8BwZxsW9BwX/1Iw6GjDxwUzYTrS7Xjy8rh5zA5ykQTzp7FertlOsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826180; c=relaxed/simple;
	bh=hclHZaPwvU+Or/kgDq9GYsNnRsFBBmjtWca90LyRtXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JoYEtocwkr4Tx7lmpNelKDZ2MKVJxovxvUVhK7Befo6QU4KWV0ahe8TpSZ1IY7U3qgfUTxroUgO0HQMsovAuiXV8+ASKuYtFSLPZr16QCE+KVOUDRnh/AgEfXLGCsTR9rK8Rz58J2vNZBfe0/ysXfflMZizG9PmyooaBUf/XT7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G3rSDdVb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46e61ebddd6so55500705e9.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759826177; x=1760430977; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P/Puk0DGClgU/d0N9KPCXsJda8f3CNcdxuN1BPXv0d4=;
        b=G3rSDdVbIEkxIEUR5jo4ejt9aPv88tOyhobo9qltV+JH7QORuUESnDPrQkwHOGVivI
         ev7JzUfrlXAZNcnXgRVoywyEzQPginE8TQrKiI9HHW1KXMQ7HygMUtZNBP3XkUyu2fQ8
         aH7WPDF+THlD0CO4ul6KVe2zLVHQ1cmR8x4E1ThgfOMMkAsXQhZb5a/PuoDbaeYeQESc
         7kS6Xd56WuS755Rd+d3izKqWKa6iLAbttfLvgkfeY79rqEm6hqf/eklKvJMYPfqsIXga
         feHu/HJ1TlRzm/bNrCQT0FmMHJrcY7n8dvLRvfDFvXcrfurCdOyEewiedTCac/7peusj
         jpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759826177; x=1760430977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/Puk0DGClgU/d0N9KPCXsJda8f3CNcdxuN1BPXv0d4=;
        b=PXKuRwcj8tYFrbdvbzOBQtCXOYEOw7uDc9k/pRifAGMz/gQcuRcgKXrPRSkjlm824L
         fTo7yjbZjSzsi6YLYBk1P+Y2ZQriiniZufS23vwuIlP8r9IEbysmSswOvIv5Tnum34rZ
         YzDyIWjBl/qynWf5Us8fUJRKulOJ++jY9ub0aGdK3KUuYAROqhCPaBHklE1MdJigZnVx
         nYTngt3tccDNJSfxTWGw0rtXlfjwsYNRZThYtrZQkuc+mdTqazO9kwNBLDzPlEogEqBb
         BdZ4VW7qkllF1MzkRrGUMGlGvKGyonRf4iVSAmtU7o+Cd/q50eDhBIj916bji1QtbcWi
         VHnw==
X-Forwarded-Encrypted: i=1; AJvYcCVTj955ieNRoWtcvpXAtBMX2HzMXmmC7pKkcuLwCaysvCaU8BVGDD4Z2cABSW8kaFIjhgk5P2i7+Etf@vger.kernel.org
X-Gm-Message-State: AOJu0YwA268V+L0M0vne2kuV+sjHzZXY2G2PZU+4wg/FXVrTv5sxxUYd
	OtuC6rLA/vX1qeBfKk8lzr8pvYw4TWB3H2K7C3gAukHP5655glJMQ3wR1xjzlO84mBg=
X-Gm-Gg: ASbGncuO8wTUClf9xE+tzZkyMHaV7PcJ17jBOt/q530oP+U/82Sbd3Gf389j9hXhHUB
	1KdamM6mhm7s0HU+jtbRRtxGgrw31Nci3W9aUHMDriw0LVjdw6Q8z/TGv+M6zqRyTJ/FduSJSOR
	D+jMJK5epX4fs7RTRxVTif1/cH8Hok6STjckHCbpWXBSf+UeWxwivsuDVk3y37Wa79mXzRKBn/s
	WSMGhpcUujTNAQTfBQzEMrPqAykM10eAVD0iB9dH6OT7MZdbEvhezqXpp/kSamoN4N21Ndx9mkZ
	Qe14b5xEchMlRT8ZUuHyo2n7vyQzAlegBRYHsltGUZ4UDxrSPGPB+ja4C08WvqS4BUXjHYMzFS3
	WyvUFK4AEM8Z5GSNgU8a7SNtJSRa3P6cGAjiTY8cStKaB3bg=
X-Google-Smtp-Source: AGHT+IGSw3Oke9DIjL+Gqc2rIqeM9+dXoWrNDqM+qZ8Vk9YiyMWaLjloD47BAFLjtVPGVOkVw7GP4w==
X-Received: by 2002:a05:600c:c4a8:b0:46e:4c7c:515c with SMTP id 5b1f17b1804b1-46e711549a1mr93067795e9.34.1759826176991;
        Tue, 07 Oct 2025 01:36:16 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e61a0241bsm284196215e9.11.2025.10.07.01.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:36:16 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:36:14 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bryan O'Donoghue <bod@kernel.org>
Subject: Re: [PATCH v2 2/3] clk: qcom: gcc-x1e80100: Add missing USB4
 clocks/resets
Message-ID: <i4vpoy6bgkclazobrozspxmza3j7kyynbbs5lgdydtfxsk7daq@aqf435db4n2p>
References: <20251003-topic-hamoa_gcc_usb4-v2-0-61d27a14ee65@oss.qualcomm.com>
 <20251003-topic-hamoa_gcc_usb4-v2-2-61d27a14ee65@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003-topic-hamoa_gcc_usb4-v2-2-61d27a14ee65@oss.qualcomm.com>

On 25-10-03 20:14:39, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Currently, some of the USB4 clocks/resets are described, but not all
> of the back-end muxes are present. Configuring them properly is
> necessary for proper operation of the hardware.
> 
> Add all the resets & muxes and wire up any unaccounted USB4 clock paths.
> 
> Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

