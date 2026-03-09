Return-Path: <devicetree+bounces-272880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MPOEOm1rmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:58:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D442384D2
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:58:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FD9D3023DB9
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F68E3A4F36;
	Mon,  9 Mar 2026 11:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OIi9yxSV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F503A7848
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773057325; cv=none; b=dqAjHkhcYylQad/ORsd/zgq6PpSF7+Sv49fvBEgsEQB7KECdvlCbCE5VIah8o3+3pL1IM5VfiqBeC1I2Pac950hmH1JEDWJ8b41/4y5btQ7z+S+eF1NTFo0VAVeYSMLnoPXZJz9gcwxz39mL+OpcsLna67rgjDEz9AqovAeOL+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773057325; c=relaxed/simple;
	bh=tPGbrgCaMZ0DyZ19LOBd8Mpe50NT1GWQeSsYHmyqIe0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5k5Dj2yfJilTA5+g4b3lbpM+GfT2R2wYRRuglH6LR25do2PnykoS0E4XcPE4YIsVcx7ssicUzAWqCJRVmlzo9XU3v97Jal3n8GYxRJfJArTHLOBS8UMpQlC7QLIdCQYN1gFyvffRsGl7V3oiITiDbmyTpvhHY0pFvdom37DsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OIi9yxSV; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439cb5af25bso1908745f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773057321; x=1773662121; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7mQ7Kz8UXz7g8x61N7gNTXLc2y01BI63pf2wBEUFNVk=;
        b=OIi9yxSVWB1oNrx68Vcv25QKLF2qawBQF330ptE88+AMDpFBL0fNuGY1PqSK7zLqob
         qSweFmwEmfNAFqWq+Uy1c3qoX9p1aolgyHC1eWlEuBQF+6n+Ij9iMoveP+kX95Szlz3N
         KkFr0e77vUyt3NQHWpC4B+BczFKJwaduH2ayHsXG5rZEq8efEteBlURPi1VsmZr1R1yo
         i5iAwOaRE1zYmkxJfILhD5rVXRmm1sln3iausPiTQyjFZ1nnwF/BVlRGHfGv9zEaLYgJ
         FHAyiVqqk9AE/iMLXQjocnCqFKhk/7uATn1kwRR0DTb0tTyLqB/okQBdNTM031/rYuyQ
         7xJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773057321; x=1773662121;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7mQ7Kz8UXz7g8x61N7gNTXLc2y01BI63pf2wBEUFNVk=;
        b=B3hFnSJtFB5VtaWgudFo4aSbVNDWvOMs27uWEoxZedBeCuNuFem2F5YubnIyTQ9yS7
         wMM3SVXpvyZ5GKIqzoVIQqFufoG1gZetBx1jizjC5lhtzsrS5lhlicMoW8NX1KFWTNtK
         7LotdNx2+b1Sxp1eUvHwLp6HxDgNJ4gurqGYgz+fspqLWvuInG8G7dqjJK9Aq6vOpdyM
         ZMkvCQGa/dUikGjM8GNKIoYfvnDgxtU4o5U+Y2znJKgCXh8ExDlQcKn5+hxTPJGpSoCp
         LvksasvYULUYHuLK4jZo74WvNJM7rPeeJZJWaeakOaFDeZXf7zK2h/3iFcnzpuEwfBOY
         4ilQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZZotFxkZ7VBwjOJYZAUYpZz7Wvhnx0RFsvS1LG6NAU8e5/b72YMx4L9brbRWmXh+xxVDFvI0U08XN@vger.kernel.org
X-Gm-Message-State: AOJu0YxIGy0SnTwgx4zYX9AojDeKbRfXQh6pAIEtbHmRFkMJ7VmgfAkj
	4BgyG4BMvVFr1ksZrgIHOJcNK4gyYI5qZmVtvYWHzlnjnrwtsCk4QodwwcU7SlFJ6gA=
X-Gm-Gg: ATEYQzz8K2iz7F0fK+I/Hfr2w9H6uIvhXnHz+6b96vNaQcNQkSz+484ydPGDSHSN/sg
	nMzX/OVpz+ZX8plOKjQ7kLULSnrJDzIF1v38g72YDIAEwC+j4GGUNUsOoy4K1YE0ur8rYVzAJly
	o+k8zTR8cF/NxM3RkrMkVChd1DwAZQTlsoN01su8GrAZwRXcjfKepZ6CxenMC71nt8xFUxwPypT
	ejiMrAvRGe/9e5RDDLdjnA24X2KRXuNmtO9Cd52jD4PZcr+VUwMfD6nlvxSM4Cy4kUqJn0BZdNJ
	RbcyXlJHz+SgxvnR2GJ4fvwRSLSRToLj8O9oiYlhophF2WG7RXZKOZq7qGsqWlTwThpa6haosPW
	zoqVdv3ydAJwr2hs6iEcEvjiv2aPhXVgKcDYjdWcmbkEbqxvG99VEpx8qmfoHeBIbwVcw7//mzf
	dPhe4SHMFx+BP/RkX4t+YR5Le3zJ6hfInyVf0=
X-Received: by 2002:a05:6000:2010:b0:439:d6ea:7cff with SMTP id ffacd0b85a97d-439da354a83mr21218582f8f.4.1773057321360;
        Mon, 09 Mar 2026 04:55:21 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff23:4410:1c2c:7aff:fe45:362e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad97be5sm26979725f8f.11.2026.03.09.04.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:55:20 -0700 (PDT)
Date: Mon, 9 Mar 2026 12:55:09 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
	krzk+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	bryan.odonoghue@linaro.org, ilpo.jarvinen@linux.intel.com,
	hansg@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V3 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
Message-ID: <aa61HZOuz42C_R7X@linaro.org>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-3-sibi.sankar@oss.qualcomm.com>
 <aa6M2QSXW72xqYiB@linaro.org>
 <96f8738f-9baa-4528-8bc6-6ce20030e391@oss.qualcomm.com>
 <805525cb-ef53-4bdd-a73b-6fe7513228ce@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <805525cb-ef53-4bdd-a73b-6fe7513228ce@oss.qualcomm.com>
X-Rspamd-Queue-Id: 32D442384D2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linaro.org,linux.intel.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-272880-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 12:47:33PM +0100, Konrad Dybcio wrote:
> On 3/9/26 11:04 AM, Sibi Sankar wrote:
> > On 3/9/2026 2:33 PM, Stephan Gerhold wrote:
> >> On Mon, Mar 09, 2026 at 05:06:43AM +0530, Sibi Sankar wrote:
> >>> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
> >>> reference boards. It handles fan control, temperature sensors, access
> >>> to EC state changes and supports reporting suspend entry/exit to the
> >>> EC.
> >>>
> >>> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> >>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> >>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> >>> ---
> >>>   MAINTAINERS                            |   7 +
> >>>   drivers/platform/arm64/Kconfig         |  12 +
> >>>   drivers/platform/arm64/Makefile        |   1 +
> >>>   drivers/platform/arm64/qcom-hamoa-ec.c | 462 +++++++++++++++++++++++++
> >>>   4 files changed, 482 insertions(+)
> >>>   create mode 100644 drivers/platform/arm64/qcom-hamoa-ec.c
> >>>
> >>> [...]
> >>> diff --git a/drivers/platform/arm64/qcom-hamoa-ec.c b/drivers/platform/arm64/qcom-hamoa-ec.c
> >>> new file mode 100644
> >>> index 000000000000..83aa869fad8f
> >>> --- /dev/null
> >>> +++ b/drivers/platform/arm64/qcom-hamoa-ec.c
> >>> @@ -0,0 +1,462 @@
> >>> [...]
> >>> +/*
> >>> + * Fan Debug control command:
> >>> + *
> >>> + * Command Payload:
> >>> + * ------------------------------------------------------------------------------
> >>> + * | Offset    | Name        | Description                    |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x00    | Command    | Fan control command                |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x01    | Fan ID    | 0x1 : Fan 1                    |
> >>> + * |        |        | 0x2 : Fan 2                    |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x02    | Byte count = 4| Size of data to set fan speed            |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x03    | Mode        | Bit 0: Debug Mode On/Off (0 - OFF, 1 - ON )    |
> >>> + * |        |        | Bit 1: Fan On/Off (0 - Off, 1 - ON)        |
> >>> + * |        |        | Bit 2: Debug Type (0 - RPM, 1 - PWM)        |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x04 (LSB)    | Speed in RPM    | RPM value, if mode selected is RPM        |
> >>> + * | 0x05    |        |                        |
> >>> + * ------------------------------------------------------------------------------
> >>> + * | 0x06    | Speed in PWM    | PWM value, if mode selected is PWM (0 - 255)    |
> >>> + * ______________________________________________________________________________
> >>> + *
> >>> + */
> >>> +static int qcom_ec_fan_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
> >>> +{
> >>> +    struct qcom_ec_cooling_dev *ec_cdev = cdev->devdata;
> >>> +    struct device *dev = ec_cdev->parent_dev;
> >>> +    struct i2c_client *client = to_i2c_client(dev);
> >>> +
> >>> +    u8 request[6] = { ec_cdev->fan_id, EC_FAN_SPEED_DATA_SIZE,
> >>> +              EC_FAN_DEBUG_MODE_ON | EC_FAN_ON | EC_FAN_DEBUG_TYPE_PWM,
> >>> +              0, 0, state };
> >>> +    int ret;
> >>> +
> >>> +    ret = i2c_smbus_write_i2c_block_data(client, EC_FAN_DBG_CONTROL_CMD,
> >>> +                         sizeof(request), request);
> >> I think it's nice to provide users a way to override the fan speed, but
> >> is this really the main interface of the EC that we want to use for
> >> influencing the fan speed?
> >>
> >> As the name of the command suggests, this is a debug command that
> >> essentially overrides the internal fan control algorithm of the EC. If
> >> you use this to turn the fan off and then Linux hangs, I would expect
> >> that the fan stays off until the device will eventually overheat.
> >>
> >> I think it would be more reliable if:
> >>
> >>   (1) The default mode of operation does not make use of the "debug mode"
> >>       command and instead sends the internal SoC temperatures to the EC
> >>       to help optimize the fan control. (This is what Windows does on
> >>       Hamoa, not sure if this is still needed on Glymur?)
> > 
> > That's true, Glymur already has a way to access average SoC
> > temperature and even on Hamoa it can still be functional without
> > SoC temperature i.e. with thermistors it has access to.
> > 
> > The aim of the series is to expose fans as a cooling device so
> > that linux has a way of fan control independent to the algorithm
> > running on the EC.
> 
> I suppose the main question here is "what happens if i set the fan to zero
> and put the laptop in my backpack"
> 
> The driver for M-series Macs for example, 785205fd8139 ("hwmon: Add Apple
> Silicon SMC hwmon driver") hides that behind a cmdline param, since they
> have no certainty. I would *assume* that if the CPU hits thermal junction
> temperatures, our boards will reset, but we should be able to get a definitive
> answer here.
> 

The CPUs should automatically throttle when reaching high temperatures
and Linux should also do this for the GPU. So the chance of reaching a
overtemperature state should be low as long as Linux correctly
functions. The biggest risk would be probably if Linux hangs, the
watchdog doesn't trigger and the machine is stuck in some state.

As for the hardware shutdown temperature, see commit 03f2b8eed73
("arm64: dts: qcom: x1e80100: Apply consistent critical thermal
shutdown"):

 "The firmware configures the TSENS controller with a maximum
  temperature of 120°C. When reaching that temperature, the hardware
  automatically triggers a reset of the entire platform."

The question is if you really want your device to hit 120°C. :-)

Thanks,
Stephan

