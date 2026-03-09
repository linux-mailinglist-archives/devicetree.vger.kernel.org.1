Return-Path: <devicetree+bounces-272769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGYuITiNrmnlFwIAu9opvQ
	(envelope-from <devicetree+bounces-272769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:04:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA92235DCA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F45030268BA
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60431374E46;
	Mon,  9 Mar 2026 09:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LuMzkjiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ECE37473B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 09:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047015; cv=none; b=ZMTCAJtjzZiCeqFWSsRmhdUDTZszdhAE1mdpSFF480DtLeVbmZvd7hCk7K+wbr3E1f76s7h1JpJ7GWOO09DFF0ATQg+pmYpQY0svwZWSHszitaTSWV3ZnrU+oAkrj3D6c4pSJv1DvXcaLWt0rYfmbN1vSCHfUiV5naOVAXrFNpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047015; c=relaxed/simple;
	bh=qGEB3XD7gojHBWJ9RE8VBAzc/uVj0p2b7U2dsgQKD9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJSEUbel7/fo6yXLXlx0E1rQZmcdjc/yXxi3ToqsIBJ6mvriJJ7dkD8w6hPZTcEVuimPTPOnDMESh8OoCI2imF3Hv3mkfrYaGBLpC9SXkeiFnyIyGXWBSVFK9bZIPrFAFpeRf81SwLzBb9xqT2GmVxbRQkEFikEMBTbsGZQ9/84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LuMzkjiE; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so7967826f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773047012; x=1773651812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+w3bS1I8COac0TzNO6kOqZWAWD9GoIWZqJcCyuzMZC4=;
        b=LuMzkjiEOmVWJO8cwjYZNfIY0YmyGwVVFLU04pqrJt5UJTdG7CqS9rbxNMDHG7jub8
         YxRPM6O804SvFCFGxywERjTVWPQP9LSTJODMPlWDMUK1QrwKIPt1YGal0XZ3t545KSXU
         kC4TB5X6Fmq/7sO8GJ5XpVoWfrTLOP32A8hIAxWS8vC4qPNHfOdlbxtAnAKn3iJ/58S2
         rvehWGP86jeAVmM5JqbnkLKVVLti0fRUOB5Ya2EbB2CFVbcqc3qoxtui8SXGfVzvs/YB
         jfGQ5Eu9tui0OiEdTGuYfEW0wJAKfzQOZWHBnQgAV/I6GYYCWNfQbDKDn+kXYv3Q78Xm
         7ASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773047012; x=1773651812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+w3bS1I8COac0TzNO6kOqZWAWD9GoIWZqJcCyuzMZC4=;
        b=LClZ4sDOglb4L/nOFShZOrkQDG02GL6x/2XAR0IATZefnG2QQAtUGNT+gdOZGTfHWI
         qMZ6ucv0o6SrR/vr4mH8QDm71Hr0KufVriVgoGYNT0meUoyLcligRGHyZYp2UhpwvDOC
         FSWe4TN04I6oBhdhohNPZ2pmsmVOj9CsuS40Lop5dpOr0lgWLkZh2p2SUBLPOIJd8Yam
         ajoJ1vKkfPowS5IRt45lCHtISS9NlW6WvFuE0Ran0HkXiAuWRo5aR8AdLjT5qeC2tQtq
         fYHIDOylX2xda0IsNDH9pIlaqWI1ZDgAAj2KFYvE5PLanvvaKj/Ev4NuC7ZyGaU7CuPU
         bGJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmVinMjzza0v/aEQuRIiYKSOzhNwhB2aezZlWV+nHN1rn5n8r1rjFptG6RAUgvvtjFzJkjYsJ+wW4q@vger.kernel.org
X-Gm-Message-State: AOJu0YxlzVuBjqeh4F1eVokcMmRbO2rul0VGIoEAAqxovt499FDz1N4f
	8nlIrAv6qypNiOZQexO2lE3iLW4pm3iNymf/uKhSV04V/nqa7oU8YeUD30OqX9ItzrI=
X-Gm-Gg: ATEYQzwWJlCzvOLzRLHJN2l0CutB9NIu7uVpRPGBojJNlRn0qXHFvXvgh124DhWuXen
	lRoh5wfYsL+6zigcnUO4Mo17STMvYkW1Rmn1f8teXrqrR5KLZIthqlvNCDQiQhnMoVx1iBfRnEk
	8kNu+aPSzdO4bPtAo/vFUiWKlrTVK1ms+mJ3fuz3CUvHFJ4OhpVH+qPsEhJIEH+GwkRs82emvu8
	NNzd9fbd88frN2yZbJDd+el6fYUETd2JMA+jkMSNXQLtMrI5Rl3miMRnqXpYTDnF9rjzgHOZI8H
	APgjIMwjiVzxR9SlBtuZH2PWGr9nZBPFtpg+UZaD4bFJDTeUTh3PzgkR5LE8Ajem+4WuUJoSJ2m
	qsGLkxReRC4nSD77g3LabvW1OJqknD24Pl1NR/UkC3USykJS/McbdJNECPHOGFFt5IZsixpli17
	sfQg1FcDYxJv2feZNmvr9L3nNKYVfc
X-Received: by 2002:a05:6000:230f:b0:439:b7a2:60ff with SMTP id ffacd0b85a97d-439da8820f6mr18217513f8f.32.1773047012102;
        Mon, 09 Mar 2026 02:03:32 -0700 (PDT)
Received: from linaro.org ([77.64.146.222])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2ba06sm26267747f8f.24.2026.03.09.02.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 02:03:31 -0700 (PDT)
Date: Mon, 9 Mar 2026 10:03:21 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, bryan.odonoghue@linaro.org,
	ilpo.jarvinen@linux.intel.com, hansg@kernel.org,
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V3 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
Message-ID: <aa6M2QSXW72xqYiB@linaro.org>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-3-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308233646.2318676-3-sibi.sankar@oss.qualcomm.com>
X-Rspamd-Queue-Id: EDA92235DCA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,linux.intel.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-272769-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:06:43AM +0530, Sibi Sankar wrote:
> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
> reference boards. It handles fan control, temperature sensors, access
> to EC state changes and supports reporting suspend entry/exit to the
> EC.
> 
> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> ---
>  MAINTAINERS                            |   7 +
>  drivers/platform/arm64/Kconfig         |  12 +
>  drivers/platform/arm64/Makefile        |   1 +
>  drivers/platform/arm64/qcom-hamoa-ec.c | 462 +++++++++++++++++++++++++
>  4 files changed, 482 insertions(+)
>  create mode 100644 drivers/platform/arm64/qcom-hamoa-ec.c
> 
> [...]
> diff --git a/drivers/platform/arm64/qcom-hamoa-ec.c b/drivers/platform/arm64/qcom-hamoa-ec.c
> new file mode 100644
> index 000000000000..83aa869fad8f
> --- /dev/null
> +++ b/drivers/platform/arm64/qcom-hamoa-ec.c
> @@ -0,0 +1,462 @@
> [...]
> +static int qcom_ec_read(struct qcom_ec *ec, u8 cmd, u8 resp_len, u8 *resp)
> +{
> +	int ret;
> +
> +	mutex_lock(&ec->lock);
> +	ret = i2c_smbus_read_i2c_block_data(ec->client, cmd, resp_len, resp);
> +	mutex_unlock(&ec->lock);

This mutex looks redundant to me for the current implementation. You
don't have any read-modify-write sequences and I think the I2C core
already has internal locking for the bus itself.

> [...]
> +/*
> + * Fan Debug control command:
> + *
> + * Command Payload:
> + * ------------------------------------------------------------------------------
> + * | Offset	| Name		| Description					|
> + * ------------------------------------------------------------------------------
> + * | 0x00	| Command	| Fan control command				|
> + * ------------------------------------------------------------------------------
> + * | 0x01	| Fan ID	| 0x1 : Fan 1					|
> + * |		|		| 0x2 : Fan 2					|
> + * ------------------------------------------------------------------------------
> + * | 0x02	| Byte count = 4| Size of data to set fan speed			|
> + * ------------------------------------------------------------------------------
> + * | 0x03	| Mode		| Bit 0: Debug Mode On/Off (0 - OFF, 1 - ON )	|
> + * |		|		| Bit 1: Fan On/Off (0 - Off, 1 - ON)		|
> + * |		|		| Bit 2: Debug Type (0 - RPM, 1 - PWM)		|
> + * ------------------------------------------------------------------------------
> + * | 0x04 (LSB)	| Speed in RPM	| RPM value, if mode selected is RPM		|
> + * | 0x05	|		|						|
> + * ------------------------------------------------------------------------------
> + * | 0x06	| Speed in PWM	| PWM value, if mode selected is PWM (0 - 255)	|
> + * ______________________________________________________________________________
> + *
> + */
> +static int qcom_ec_fan_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
> +{
> +	struct qcom_ec_cooling_dev *ec_cdev = cdev->devdata;
> +	struct device *dev = ec_cdev->parent_dev;
> +	struct i2c_client *client = to_i2c_client(dev);
> +
> +	u8 request[6] = { ec_cdev->fan_id, EC_FAN_SPEED_DATA_SIZE,
> +			  EC_FAN_DEBUG_MODE_ON | EC_FAN_ON | EC_FAN_DEBUG_TYPE_PWM,
> +			  0, 0, state };
> +	int ret;
> +
> +	ret = i2c_smbus_write_i2c_block_data(client, EC_FAN_DBG_CONTROL_CMD,
> +					     sizeof(request), request);

I think it's nice to provide users a way to override the fan speed, but
is this really the main interface of the EC that we want to use for
influencing the fan speed?

As the name of the command suggests, this is a debug command that
essentially overrides the internal fan control algorithm of the EC. If
you use this to turn the fan off and then Linux hangs, I would expect
that the fan stays off until the device will eventually overheat.

I think it would be more reliable if:

 (1) The default mode of operation does not make use of the "debug mode"
     command and instead sends the internal SoC temperatures to the EC
     to help optimize the fan control. (This is what Windows does on
     Hamoa, not sure if this is still needed on Glymur?)

 (2) If we provide a way to enable the fan control debug mode, there
     should be also a way to disable it again at runtime (with
     EC_FAN_DEBUG_MODE_OFF).

Thanks,
Stephan

