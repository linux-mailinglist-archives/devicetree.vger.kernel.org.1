Return-Path: <devicetree+bounces-61663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A26768AD8F5
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 01:18:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C23461C20F30
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 23:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE3B3DBBC;
	Mon, 22 Apr 2024 23:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KfQM2Q2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BEE3D98D
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 23:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713827874; cv=none; b=JprcKc3iPrOOfdN/uOYnKd0v7MCqYNhSuy/Fveyt6Dc8utcUCCNYaTQhMAfBlu8BqzHAdzEiAJnk27gVU0x/rPx/3I07uZMThlZL02XC+C73pFhuBC2Sy+Q0W/T3cbReYmK4FTaGdWDjtIXZxihIjD5AkWtXeWLe0OyTtloUmuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713827874; c=relaxed/simple;
	bh=95M91JY8+nuOcyOjPUKnS3Keb921esgNWQMhEdPr5k4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EWw+IO+OSLhmERO3cBmpoPFupY76PWOsCHKA4X9mkfmpV4d6SYBPcrBOqtTfei4rgVKIF3VT0QzaVRCOE8dUHdFqXviG+suaRQXLYja5Siw8k7swNocitra9GC5sTCXhvoKVeHQ6YW0PUjN1S15odoazbQzL+nl/dKDrd0VeBQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KfQM2Q2J; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51ac9c6599bso4437792e87.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 16:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713827870; x=1714432670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hLh3lBOz1X9lw4btxC91Q3jMd7oQ3OP123MjQh856S4=;
        b=KfQM2Q2J2gBjtpS25E++HT8JeGdN9WwDYYOYaQd3MrDJ8k6lxLGDnqZX2qdbxiraAY
         noudw9SYDzAIiCcpjit0yUFRad8QPW+fQFdYaEjxwKipk+ejaokEbuRoxDQLa/sGQvsr
         cOGifysAGo/nDKlY6yqTehxBSFGUR1DskYuA9vhrFc0v11rtW873vjB6Jj8SG4y9d0kx
         BgRpkBrUX9Pg7b2azQucoY9/GK++xb/XDiouNFC0nnCGy+fPpOc46oUcfoQ67cDBA3gp
         YNnIPb2AB1HFD6BrriM55iARf7OCnuCgsUHrnXPjdK9LtEvcP3QPFxhS0TKjzaFSvPvu
         Rxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713827870; x=1714432670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hLh3lBOz1X9lw4btxC91Q3jMd7oQ3OP123MjQh856S4=;
        b=ckqAA6E3WNS+RPW4SworQF1t1dZN4Uyf4bZ0/n/UKTcgRUzsOkVWbENqKYN9iEcu5T
         GVRuUroaGYQdgOslJwdD0L7wmZV+PHo9u9GvJ40E7HhnUJatWjVCHykdJAaKTxgi7yVJ
         /dABuUNZstZL6XLtA9zLBdAA26Z4B7rsxt/58aGkYJ/vefQdVR7tcehwuf6pXeZthtUr
         iVnNjjNPHCT8k964edOCSWV6psEnzW72ZN7oktAe/2LBot+yjkkKgk43L+E5Hfu//rF3
         Ruj2dhFAIxOkMOPwK8EwDbjp71IpW7zgewPaIG3PbHj2zKOpR98UAKrmPYCo98Qr6IjW
         j+7g==
X-Forwarded-Encrypted: i=1; AJvYcCXF9yz0TD9rfsDW2hqqi/SauF0rrp5JzsHRNO78TfX4SrN0bP9BogDzcwcr5z9EjlKyquarekX1oe94mXjfsKOAGgCv0rtdNUN04w==
X-Gm-Message-State: AOJu0YyXYlcOyGO4/tZZj22Ey7Y4MAfSxh+PbxWue1nofBw9UEZLr1NF
	U5Z5lxnhnvzufrFpEgD5ly8bo9Q3jFrjURu2Tn3w3+lNQ99p26QAiWyyohszDFhlPKJjolmROAK
	a
X-Google-Smtp-Source: AGHT+IF0Sza2zvcIVhCthLW/B02Rjs/6ysWPCzn4LIEFLBIeKc6UZkGj+27NvYlP8RShDOBuRbFquA==
X-Received: by 2002:a05:6512:10c6:b0:51a:c44d:b95f with SMTP id k6-20020a05651210c600b0051ac44db95fmr9685360lfg.28.1713827870290;
        Mon, 22 Apr 2024 16:17:50 -0700 (PDT)
Received: from [172.30.204.103] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a21-20020a19f815000000b00518a37a7c2fsm1847861lff.51.2024.04.22.16.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 16:17:49 -0700 (PDT)
Message-ID: <d6052413-5706-446b-b508-2a5ed839acc4@linaro.org>
Date: Tue, 23 Apr 2024 01:17:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/5] mailbox: Add support for QTI CPUCP mailbox
 controller
To: Sibi Sankar <quic_sibis@quicinc.com>, sudeep.holla@arm.com,
 cristian.marussi@arm.com, andersson@kernel.org, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, quic_rgottimu@quicinc.com,
 quic_kshivnan@quicinc.com, conor+dt@kernel.org, quic_gkohli@quicinc.com,
 quic_nkela@quicinc.com, quic_psodagud@quicinc.com, abel.vesa@linaro.org
References: <20240422164035.1045501-1-quic_sibis@quicinc.com>
 <20240422164035.1045501-3-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240422164035.1045501-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/22/24 18:40, Sibi Sankar wrote:
> Add support for CPUSS Control Processor (CPUCP) mailbox controller,
> this driver enables communication between AP and CPUCP by acting as
> a doorbell between them.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

[...]

> +
> +static int qcom_cpucp_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +	struct qcom_cpucp_mbox *cpucp = container_of(chan->mbox, struct qcom_cpucp_mbox, mbox);
> +	unsigned long chan_id = channel_number(chan);
> +	u32 *val = data;
> +
> +	writel(*val, cpucp->tx_base + APSS_CPUCP_TX_MBOX_CMD(chan_id) + APSS_CPUCP_MBOX_CMD_OFF);

Just checking in, is *this access only* supposed to be 32b instead of 64 like others?

[...]

> +
> +	writeq(0, cpucp->rx_base + APSS_CPUCP_RX_MBOX_EN);
> +	writeq(0, cpucp->rx_base + APSS_CPUCP_RX_MBOX_CLEAR);
> +	writeq(0, cpucp->rx_base + APSS_CPUCP_RX_MBOX_MAP);

If these writes are here to prevent a possible interrupt storm type tragedy,
you need to read back these registers to ensure the writes have left the CPU
complex and reached the observer at the other end of the bus (not to be
confused with barriers which only ensure that such accesses are ordered
*when still possibly within the CPU complex*).

Moreover, if the order of them arriving (en/clear/mask) doesn't matter, you
can add _relaxed for a possible nanosecond-order perf gain

> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return irq;
> +
> +	ret = devm_request_irq(dev, irq, qcom_cpucp_mbox_irq_fn,
> +			       IRQF_TRIGGER_HIGH, "apss_cpucp_mbox", cpucp);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to register irq: %d\n", irq);
> +
> +	writeq(APSS_CPUCP_RX_MBOX_CMD_MASK, cpucp->rx_base + APSS_CPUCP_RX_MBOX_MAP);

Similarly here, unless read back, we may potentially miss some interrupts if
e.g. a channel is opened and that write "is decided" (by the silicon) to leave
the internal buffer first


> +
> +	mbox = &cpucp->mbox;
> +	mbox->dev = dev;
> +	mbox->num_chans = APSS_CPUCP_IPC_CHAN_SUPPORTED;
> +	mbox->chans = cpucp->chans;
> +	mbox->ops = &qcom_cpucp_mbox_chan_ops;
> +	mbox->txdone_irq = false;
> +	mbox->txdone_poll = false;

"false" == 0 is the default value (as you're using k*z*alloc)


> +
> +	ret = devm_mbox_controller_register(dev, mbox);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to create mailbox\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id qcom_cpucp_mbox_of_match[] = {
> +	{ .compatible = "qcom,x1e80100-cpucp-mbox" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, qcom_cpucp_mbox_of_match);
> +
> +static struct platform_driver qcom_cpucp_mbox_driver = {
> +	.probe = qcom_cpucp_mbox_probe,
> +	.driver = {
> +		.name = "qcom_cpucp_mbox",
> +		.of_match_table = qcom_cpucp_mbox_of_match,
> +	},
> +};
> +module_platform_driver(qcom_cpucp_mbox_driver);

That's turbo late. Go core_initcall.

Konrad

