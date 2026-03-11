Return-Path: <devicetree+bounces-273944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCHdF4kosWkBrgIAu9opvQ
	(envelope-from <devicetree+bounces-273944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:32:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB45925F5DF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36D6130F67A4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BA13AC0FD;
	Wed, 11 Mar 2026 08:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ne7W1lko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D9435DA7C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773217740; cv=none; b=A0DDEw25l6aHLx/I6DjjgFX/TYsBkCvtlGWWrJzLXb5PLzPfLPTJmTH33L2CqVMmY8B+6NsvSpeIRa7Te2/GAHqRt9ZFYUrvUWNNb25RiRcUPsLd4eh2OyGfgK7YlQarTHJlk00tBGlfsMPMZnbOFAXbjY1iNXfe4dO25+xaQn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773217740; c=relaxed/simple;
	bh=eBpv+uJKhLTXdoUvn0kOvaW5xYXHP6HF9h6xB/Z8cZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AT3IEUOVeaCKpMEMfxOwPDnv/Xp3rdRALeyBqQA0DyFOsJCzj9RI4VLkGaxuPUXbmmxbJRKdCaR/opuDX/YI0IBfbU9g4fcDDp89WIi3N6UJbRMVnHuiFI+P8dW6x8230FP/ThBNysorqrG0XM+f0zYN+6d0valx+Rsnu+h+W+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ne7W1lko; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so10356457f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773217734; x=1773822534; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y9oM+DK/RV/qo3ukczy7o4IQTGNLI7O8hgWG97LLkMs=;
        b=Ne7W1lko1b5H8TTSWp+QKGbIiUiSZq+s0INE9MiBPboXJHv2M/WO33ZN1uEdTXxYjh
         L272IEQe4W2IC/CKz4gSZ9vmyfcm9zsHqWCYTSiR20Dcg+z1OQZwppcVKMIdvRnNGp8b
         QzNT+N3mNHF50ktgmKO0yBSDNhL+KZJykKrXXNNbsVFYe9MHRvjUs5AAP40eNU3tZIJO
         0dnS6l/EmvJCo1cOfI3C8flRYfbnai2nP15lrCWs9Ez7a8oyx6d/AWCSpcH89wqyx0tE
         WjmnjJhvC3m16D1Gih2o22nLqPtvzubMWOAnKU7K1/XUeEe73DoczemyjpJOujkR13nx
         H3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773217734; x=1773822534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y9oM+DK/RV/qo3ukczy7o4IQTGNLI7O8hgWG97LLkMs=;
        b=k/XW7I+bfpy6rTu1hTvO9Iy2VTVGaxKD4uangJeOjFlQ4Fw60DeSraNSiAXiF4hJh2
         eASlLAH5eDHw16JZkcD4iOWqmbIL7gWltQYE7K6gb8aas96/d+YAC5pmlmu6rxWwvZnX
         kEm2MZ4yh1Ui8EecCAfLtlrObZhtrfRmPsoCxWuMKbknqnlTyOqf3NcBfK6mQqC0UTIs
         8E160ty6ByRvX9Xhs1Yc8lknOfWLj4WljIF97mgWYpTVPGXIg5EpsFfUmpKoBnsJb9v+
         WOhLzG7b6OiKeUfWkNlCy63EIq7SFPhRE7Sp8wd3ThPRCOQQzlHNQeZ8S1YCZVxoPsbX
         3FGg==
X-Forwarded-Encrypted: i=1; AJvYcCWm+lYR6UWEaOWL8zh8YTvW1pbioQCaz7i8T87NE19plTizBtDCsvGimRI9J4lHbqXIrY46Nyyojcqf@vger.kernel.org
X-Gm-Message-State: AOJu0YztowsvEvScUhyiFh3NvbEVKd7TtrLSIqneR0LueWPPq+lLoEp8
	REcCTh3H2bIZ1lgYD07LUYsW9qihZy+HH4X1yVzWDC4/4Xd+fdeCLb6qpWHiq4jLDfrznT8VPzA
	OljT/
X-Gm-Gg: ATEYQzxYsz6Yl/Fi/E1CYlAfehOUQWeHd2jfI1wfkNwYsqGuUamtrAOchZ3mhPtK9sz
	7RL8KO9CpgZ2I+1UhQEjkXHiWdUomkHiDQIQzwFqs4bmzH0qyIkLYQuLjay2VqnCOQ4SjaW2RRG
	Q5rPXg5Z80jXzetTAsDa/+Kuco7Pib4ZoQQj3IjiTSETxi2I7GzRhdLIrkVgbHr27rmgMjjjSAR
	RtJJT6pLLz/Ns2hp8a+fwFJM8Kdy1ugkUGrRmLIhtvLaHf9sLoOEA26epFN7DPAp6nsiFG50PIH
	6yVaTm5mq3qTImOxodcUyKfAwwbhBvVRMP35pqLweH5nY7hhzI0Bi+mThSAMYv0cXs2kpaEQL4j
	d7lwhKoEGsHR6HgJhSl1xYrzxLvKChY+Xoubj4DKd1XR1ptKzcpnBcq58S6BH0IPM+pTqnb9X+D
	TiPpIelUWni+rhrHyP0ZMAt9sYHwsXDTFE9go=
X-Received: by 2002:a05:6000:22c6:b0:439:d928:d783 with SMTP id ffacd0b85a97d-439f8209999mr3197757f8f.30.1773217733955;
        Wed, 11 Mar 2026 01:28:53 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff23:4441:1c2c:7aff:fe45:362e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f81a0239sm4977441f8f.10.2026.03.11.01.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 01:28:53 -0700 (PDT)
Date: Wed, 11 Mar 2026 09:28:43 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
	yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gokul Krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/7] remoteproc: qcom: pas: Add late attach support
 for subsystems
Message-ID: <abEnu_ID-wIMYpMB@linaro.org>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-6-0a91575e0e7e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-knp-soccp-v4-6-0a91575e0e7e@oss.qualcomm.com>
X-Rspamd-Queue-Id: EB45925F5DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273944-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 03:03:22AM -0700, Jingyi Wang wrote:
> From: Gokul Krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
> 
> Subsystems can be brought out of reset by entities such as bootloaders.
> As the irq enablement could be later than subsystem bring up, the state
> of subsystem should be checked by reading SMP2P bits and performing ping
> test.
> 
> A new qcom_pas_attach() function is introduced. if a crash state is
> detected for the subsystem, rproc_report_crash() is called. If the
> subsystem is ready either at the first check or within a 5-second timeout
> and the ping is successful, it will be marked as "attached". The ready
> state could be set by either ready interrupt or handover interrupt.
> 
> If "early_boot" is set by kernel but "subsys_booted" is not completed
> within the timeout, It could be the early boot feature is not supported
> by other entities. In this case, the state will be marked as RPROC_OFFLINE
> so that the PAS driver can load the firmware and start the remoteproc. As
> the running state is set once attach function is called, the watchdog or
> fatal interrupt received can be handled correctly.
> 
> Signed-off-by: Gokul Krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/remoteproc/qcom_q6v5.c      |  88 +++++++++++++++++++++++++++++-
>  drivers/remoteproc/qcom_q6v5.h      |  17 +++++-
>  drivers/remoteproc/qcom_q6v5_adsp.c |   2 +-
>  drivers/remoteproc/qcom_q6v5_mss.c  |   2 +-
>  drivers/remoteproc/qcom_q6v5_pas.c  | 103 ++++++++++++++++++++++++++++++++++--
>  drivers/remoteproc/qcom_q6v5_wcss.c |   2 +-
>  6 files changed, 204 insertions(+), 10 deletions(-)
> 
> [...]
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 46204da046fa..4700d111e058 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -36,6 +36,8 @@
>  
>  #define MAX_ASSIGN_COUNT 3
>  
> +#define EARLY_ATTACH_TIMEOUT_MS 5000
> +
>  struct qcom_pas_data {
>  	int crash_reason_smem;
>  	const char *firmware_name;
> [...]
> @@ -510,6 +521,80 @@ static unsigned long qcom_pas_panic(struct rproc *rproc)
>  	return qcom_q6v5_panic(&pas->q6v5);
>  }
>  
> +static int qcom_pas_attach(struct rproc *rproc)
> +{
> +	int ret;
> +	struct qcom_pas *pas = rproc->priv;
> +	bool ready_state;
> +	bool crash_state;
> +
> +	pas->q6v5.running = true;
> +	ret = irq_get_irqchip_state(pas->q6v5.fatal_irq,
> +				    IRQCHIP_STATE_LINE_LEVEL, &crash_state);
> +
> +	if (!ret && crash_state) {
> +		dev_err(pas->dev, "Sub system has crashed before driver probe\n");
> +		rproc_report_crash(rproc, RPROC_FATAL_ERROR);
> +		ret = -EINVAL;
> +		goto disable_running;
> +	}
> +
> +	if (!ret)
> +		ret = irq_get_irqchip_state(pas->q6v5.ready_irq,
> +					    IRQCHIP_STATE_LINE_LEVEL, &ready_state);
> +
> +	/*
> +	 * smp2p allocate irq entry can be delayed, irq_get_irqchip_state will get -ENODEV,
> +	 * the 5 seconds timeout is set to wait for this, after the entry is allocated, smp2p
> +	 * will call the qcom_smp2p_intr and complete the timeout in the ISR.
> +	 */
> +	if (unlikely(ret == -ENODEV) || unlikely(!ready_state)) {
> +		ret = wait_for_completion_timeout(&pas->q6v5.subsys_booted,
> +						  msecs_to_jiffies(EARLY_ATTACH_TIMEOUT_MS));

I have asked this back in October for v2 [1] and again in December for
v3 [2], but you still haven't really answered it. Please answer all
of the following questions:

 1. What is the use case for this timeout?
 2. In which situations will the start of the remoteproc be delayed?
 3. Why does the boot firmware not wait until the remoteproc is fully
    started before it continues booting?
 4. If the boot firmware gives up control before the remoteproc is fully
    started, how do you ensure that the handover resources are
    maintained until the remoteproc signals handover?

v4 looks a bit less dangerous now since you don't enable the handover
IRQ anymore. Still, I don't understand how this would work in practice.
Removing this timeout would be preferable because then we could actually
support firmware versions that do not automatically start the remoteproc
without having to delay the boot process for 5s.

Thanks,
Stephan

[1]: https://lore.kernel.org/r/aQHmanEiWmEac7aV@linaro.org/
[2]: https://lore.kernel.org/r/aUsUhX8Km275qonq@linaro.org/

