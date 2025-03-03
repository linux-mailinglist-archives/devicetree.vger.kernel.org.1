Return-Path: <devicetree+bounces-153202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F77A4B8A6
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 546097A71C2
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 08:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6FF1D63F7;
	Mon,  3 Mar 2025 08:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qw4KkNK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085955474C
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 08:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740989006; cv=none; b=Ggzejbp7/QyPOWXxQnyBWQ43O+XeeIC52zFfpu/3wIhTI5wrjaeSEC/kKiSTWGleQzTucRLwU/EEJhY2iVvbJQX55yGGxXWB8S5J/vGE2SDQ+pgr0HbLlQ8XfZkdA8ZGBQyYeC9T/C8otblMdvC5YE1RF7D6dIWnZsRudN1PAVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740989006; c=relaxed/simple;
	bh=jXmABgKlTV2rT+eRZ9rrvS2Qs32wSTbnbdHdyY3i1zI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lYL2oI/0nawxXT/vT0QDJVot3EzXRyLMf7w0Cl6oW9O7ZaozLuZE7qGeQuLZal/Tn+qfJDK53RX4ClcwZCt85w0cjzTi7sp0lueVupj0tQOz/i2WBM6+1Wwh8Ax43BcNR/2RnKACC+QuVPBwX0JzYi9XuV4DjOlND6Dqh/vp6xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qw4KkNK3; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e56b229d60so492128a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 00:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740989003; x=1741593803; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L/kOfm+NCxRWU3KiubFOyYUQosuGisbp/XscJHpDiwI=;
        b=qw4KkNK39YKUf3BeGHAcfRXZoWAhW4zvxMF/3RstXU/gmsOdO5I1kxey0L9liwXCNt
         3klQAZSP5No7NUOvzdi4KdhZjXTFD7+cn19gSdJi/hA46S5UmrTjSxjL9RS9b2q/a7KV
         vEbcW32gK0Gm9nA+bvBH2v8u0wlB3Jw6w0QlO4nXHFyY6tRlCXYmCZwvtDGWRzaSa9JS
         yN+rOjDqxnvjRXv3TommK6PeSaDOHW60d3vigc/Qoq6DC6eP1/07J8r3aOQDBxN6CfVb
         8TaDnJh3Mg4i3ik3V4AtTZr3Ne89cosBKIPxkFUfkf119BKRkLBHoJcv8RTiZPI7s2Lx
         rTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740989003; x=1741593803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/kOfm+NCxRWU3KiubFOyYUQosuGisbp/XscJHpDiwI=;
        b=dHGqvA4lqkQyX2wXF8mg36Yb+MN8OpM1VHubhY0KvAz7GpXKh+3KLuZAeV/1jYZZpJ
         XRyTVKtLj/K6C9jBZa/Q0JFJese2+l44tYoDotsG0MeGW3yNirle4Qglr+hCx7WeZ1Wr
         0RT2/UKfyaA5fUyuyTrB5wRlWb/hKtNJ6S9ILrIVxMFM1J0hN7OwzAHPnpbHXlJhnJkP
         F1Cwh54KBP8sjBHYlE0HH2a8fBSuxX9a8eE0wzpTtCL4Mcp2lKWg53GSPUToLY41cjhG
         d7yVKgJjEoamtDwjpcK/vfK+T4wHa4w5sXjLicD/IIWqfl9pH07Vl9aGLN8aBkUccNJc
         nqsg==
X-Forwarded-Encrypted: i=1; AJvYcCXPsJEpdBrL8V8RQZzjudVFx/HRK4cppzvlHAsDpM5vGp0rZ8er6ADOdoUK3HPVgSI4fUOI46Ig+0PT@vger.kernel.org
X-Gm-Message-State: AOJu0YzHRuTLbSAZXqUW641FQkj5cnm0eJVHtkzEXce1CyVwjOMIF9Iy
	4J7pHbK+TWhzh99+DIm6JMtU8914EvP7eQnYIFaQvmqUiltHenINRi/MhbbwYoU=
X-Gm-Gg: ASbGncsKkBXhEcUSzguGj6hcBG98kWZ0NVl/sSvcmxQbXfnJY4YtHWgCxEmM5Tu8AIz
	PRS+FXaw/65C5JZBmgV8bsfsc/wHW/W6JRLDZ2yNsD/R7LKJlE6Zo6W2ifYNycy1s1a6uULo6Uc
	He6H1eGD9p+6PH3XUk9YboNQqmyJM+Me6HU46yS5rFw6d/RodZDMnnexPISO+/1Y7PqRhmBcFZh
	t1ym8u8pXpE/oQKWf3W7QdpO1rIvBaOlPXZNfB7DouHBd5XbYEwCXzcTbw0Wgh0dPlC84pzW89Z
	ZrifeQQCeKv/pcWsgmTyp+JeFNWU19T+oOU4ZEY3xm94v5ujjA==
X-Google-Smtp-Source: AGHT+IHSJwyoyFbSkRa1UEg1HQ8PZPp0oWijLI/xxUyJmjC4df5Zae4YdAsynhyaSb+1Hid60bmPNw==
X-Received: by 2002:a17:907:7f26:b0:ab7:f853:1445 with SMTP id a640c23a62f3a-abf26883e80mr1335907866b.26.1740989002624;
        Mon, 03 Mar 2025 00:03:22 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-abf0c6ee730sm764757766b.104.2025.03.03.00.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 00:03:22 -0800 (PST)
Date: Mon, 3 Mar 2025 11:03:18 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, devicetree@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v3 3/7] firmware: arm_scmi: imx: Add i.MX95 LMM protocol
Message-ID: <2c8e8e93-4ce7-4260-94bd-eabba0b7732d@stanley.mountain>
References: <20250303-imx-lmm-cpu-v3-0-7695f6f61cfc@nxp.com>
 <20250303-imx-lmm-cpu-v3-3-7695f6f61cfc@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303-imx-lmm-cpu-v3-3-7695f6f61cfc@nxp.com>

On Mon, Mar 03, 2025 at 10:53:24AM +0800, Peng Fan (OSS) wrote:
> +static int scmi_imx_lmm_attributes(const struct scmi_protocol_handle *ph,
> +				   u32 lmid, struct scmi_imx_lmm_info *info)
> +{
> +	struct scmi_msg_imx_lmm_attributes_out *out;
> +	struct scmi_xfer *t;
> +	int ret;
> +
> +	ret = ph->xops->xfer_get_init(ph, SCMI_IMX_LMM_ATTRIBUTES, sizeof(u32), 0, &t);
> +	if (ret)
> +		return ret;
> +
> +	put_unaligned_le32(lmid, t->tx.buf);
> +	ret = ph->xops->do_xfer(ph, t);
> +	if (!ret) {
> +		out = t->rx.buf;
> +		info->lmid = le32_to_cpu(out->lmid);
> +		info->state = le32_to_cpu(out->state);
> +		info->errstatus = le32_to_cpu(out->errstatus);
> +		strscpy(info->name, out->name);
> +		dev_dbg(ph->dev, "i.MX LMM: Logical Machine(%d), name: %s\n",
> +			info->lmid, out->name);

Print info->name instead of out->name.

> +	} else {
> +		dev_err(ph->dev, "i.MX LMM: Failed to get info of Logical Machine(%u)\n", lmid);
> +	}
> +
> +	ph->xops->xfer_put(ph, t);
> +
> +	return ret;
> +}

regards,
dan carpenter


