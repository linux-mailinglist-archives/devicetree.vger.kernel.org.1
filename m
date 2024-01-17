Return-Path: <devicetree+bounces-32867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F2D830DD4
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50079B24DE2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 20:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361E424B25;
	Wed, 17 Jan 2024 20:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EGesZNk6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDFB22EF5
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 20:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705522559; cv=none; b=eWNtXNiS5/xe9xClgVIEJcY2B9OLGrxcD7HXuYUQhqNBm+Ag1r5E9MJCE2bf8W/b6ovndKclfzGyQEWWUG5zMEF3QRpH/tLyyOa2Qn0t4YzMBrEw13P0T1ZXpgIo4d0mX59HCdjIkwVCNHqBJKuhKfspj8v8RXZJ15S5Sg/PRIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705522559; c=relaxed/simple;
	bh=ZtCmtaY+wb4O/4dYs6eMRhrbA354BTp1CNtLDUkfs7c=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=iroHTaUZZ0seUY1guXizWnyh5b0NGtwoI7JDspKYulQava9i6xrsGpSt2XFzenUp4IMJFPwqDPmBb9CoAu4yclZ7fTO46pR64TzUmf+AzhJTjkE0Wa+W9gSfX0IJqED1DsO02Xk/CphjCLS2gSWRoUuj8dS7JMUlQztDY/pdako=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EGesZNk6; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50e759ece35so13560175e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 12:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705522555; x=1706127355; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wffrKACYiwhCemNTJ2adHv9qr4lw6zEwO+YIXcSMwPo=;
        b=EGesZNk6FeL2umPMoi3M9kIP/NN8z6yqFLStUfivaPaNoU2HtXzdU9f/2+8w1omHjE
         29TMJ1vuhZV39VHPRMgH/APGMqWoBHfNV4gFoTQvai5uhxc8AvI1/cUipwybgzMtN5vx
         0V9rOLWeTfZ/LvzsDNFwfU+lrJjLo1UosezLcvSucIf69KKKSfE7c0c//vsU6mHNlX9U
         PeVwsywQ/Sh1o2kxuff20K0pig3AdY+RubuGI+gEcfyFuLyFarJlIHS3eu3x/XPiNaTh
         hTJDKc9EGuPL62BVA3b0uQkB0kwDL2AOov0FfV0Z8e5S0c1VpBMxP1mHn2Fr+q9049Dd
         2Keg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705522555; x=1706127355;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wffrKACYiwhCemNTJ2adHv9qr4lw6zEwO+YIXcSMwPo=;
        b=QNC5UTgwjgDh/cbyYJFQzQHQrKH5E2T5u1PZSS1gnxJcLAhVlse9btE4Jx+D9Widqf
         14c02+Kc6tkixaBAbd07z/eDwQbIhZNhmDHVjnOo7Q5wCor8K8yGGI/tAkglfgE9RrBk
         3U+HkRHdmXpnuWc9HI5a0sW04o3pFc+xRNX6cQMN55coD6FZT0GL9O8hbrldLF7hodSp
         vAjH8+JC0/hT52ZYKKV3c1iLIPINApxZIw1pbrAT96pCiljPMBL8OJLRWOMboo9imvP9
         7UMQJ4wL4deWry/b5wv32sWQGNZ1ulHo7f0b4JRxCbSNEAmQDDSXPHpc+k5Jz142h7+D
         CzRA==
X-Gm-Message-State: AOJu0YwoD9UV+0iPHGeCDFYwuc/49dN59s0eVRB43SSOkAJBaiBPCM0j
	VimF0MdT78EqJibsfL/kezVebIRO/1exlQ==
X-Google-Smtp-Source: AGHT+IG0yfsNlOgbpAYwYnf4BQc1QpssehfpeF0imZ0M+byKLE7KGfXZjzn54tq4R/CQpVvnGQXsJQ==
X-Received: by 2002:ac2:5b1a:0:b0:50e:745f:b0b7 with SMTP id v26-20020ac25b1a000000b0050e745fb0b7mr4371280lfn.52.1705522555333;
        Wed, 17 Jan 2024 12:15:55 -0800 (PST)
Received: from [172.30.204.151] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x5-20020ac25dc5000000b0050eaa1a35f4sm359621lfq.303.2024.01.17.12.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 12:15:54 -0800 (PST)
Message-ID: <6980738e-207d-4cf5-9ebd-dde40d5d7c37@linaro.org>
Date: Wed, 17 Jan 2024 21:15:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/7] firmware: arm_scmi: Add QCOM vendor protocol
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, sudeep.holla@arm.com,
 cristian.marussi@arm.com, andersson@kernel.org, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_rgottimu@quicinc.com,
 quic_kshivnan@quicinc.com, conor+dt@kernel.org,
 Amir Vajid <avajid@quicinc.com>
References: <20240117173458.2312669-1-quic_sibis@quicinc.com>
 <20240117173458.2312669-4-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117173458.2312669-4-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/17/24 18:34, Sibi Sankar wrote:
> From: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> 
> SCMI QCOM vendor protocol provides interface to communicate with SCMI
> controller and enable vendor specific features like bus scaling capable
> of running on it.
> 
> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
> Co-developed-by: Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
> Signed-off-by: Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
> Co-developed-by: Amir Vajid <avajid@quicinc.com>
> Signed-off-by: Amir Vajid <avajid@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

[...]

> +
> +static int qcom_scmi_set_param(const struct scmi_protocol_handle *ph, void *buf, u64 algo_str,
> +			       u32 param_id, size_t size)
> +{
> +	int ret = -EINVAL;
> +	struct scmi_xfer *t;
> +	u32 *msg;

After you apply Dmitry's suggestions on returning -EINVAL
directly, you can also sort definitions in a reverse-Christmas-
tree order throughout the file.

> +	msg = t->tx.buf;
> +	*msg++ = cpu_to_le32(EXTENDED_MSG_ID);
> +	*msg++ = cpu_to_le32(algo_str & GENMASK(31, 0));
> +	*msg++ = cpu_to_le32((algo_str & GENMASK(63, 32)) >> 32);

lower/upper_32_bits()?

[...]

> +	if (t->rx.len > rx_size) {
> +		pr_err("SCMI received buffer size %zu is more than expected size %zu\n",
> +		       t->rx.len, rx_size);
> +		return -EMSGSIZE;

No other driver seems to be checking for this, should this:

a) go to common code
b) be ignored

?

Konrad

