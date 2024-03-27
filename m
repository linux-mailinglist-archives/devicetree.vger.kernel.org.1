Return-Path: <devicetree+bounces-53844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE3D88DB7F
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 11:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFF141F2B286
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 10:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD2E4F201;
	Wed, 27 Mar 2024 10:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lIYUd44L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C858B225D9
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711536379; cv=none; b=Ge0z6GHaomS6pDn0mJNCvXpuadJobIF30ca+LA3DIkiwGnu62Uw5K14N1MGraig02rdKCBZoBAEf9QHS3On29b6TVVqQes9bqCnPHlcJpLQtKjPFk4qHHQHGfaY6RxLjnffWFJKc+mIeW7FrT612foIxURwSQ7eeKSRCovrkUrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711536379; c=relaxed/simple;
	bh=4qNhZd6In4W6BpD2cTnvRVSY7sZSE1eUcfTuvPhG4us=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pLlR4BXtVVwL1XKhRtBIh8Udbc3fkoaGRtnbEVL2rpVnm5N536NO95RzlylW1CJrVBCI0X/wc8XHKFZcOmhk1EEvPcNUwsdEuTAwwlE1ZARvOgLlzXSFlL9++ECHFyM1TYl2iWWyxxGv3X3RlV4Fa9JOtoYubNwrZaPmYIyBtPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lIYUd44L; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a4dfe6564b6so112691166b.3
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 03:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711536376; x=1712141176; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7bMAFuTzgkVK2W2ZWS18PceZ7VDbzSyIzk2OmuZlF/o=;
        b=lIYUd44L7tpV6w2WQj0VJu5eNTxXDSby2RebM/7tvaxpEipdXAO8TJqU+Qs6qHGpR4
         nHHbj0yYmWHtSEh8ed6ZDeSa/NivDDhLCDvUkCRWj40WLGjtWS6WP643tTnQaZ/q1ge2
         x3hsvWlDIRLi9p8vP4Jb29RUZK0YY5l8oEyT4Bwhyub9v9PBj8XKFCGeg/jH7XsYtZHE
         Xe961vDu+L9a+Yad/CJUwEtvtm+XebwWdl72AzV4BOFdwo6/1jdM8QwK0jkZSeylsuN3
         PEGYkjIlVxKCQfRW4smy/dqT+bfGzHVTU0dRFOwCktlP6H0R+vH6iwDHVDoHaB2xS7lJ
         MmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711536376; x=1712141176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bMAFuTzgkVK2W2ZWS18PceZ7VDbzSyIzk2OmuZlF/o=;
        b=Ea8OrNT6WJTYRLr50+7NYnekQYIOmtFr43gdz2rIzRonfYU9xRiKxbzp3EVz+DXrNW
         ekSym55IMOjOEqzQjIhbNT6hXu4Y8qVlkKqfvIR9cLLtxf6uR4U/6V29CaZ26V8wZFys
         BmWEi6lqUFTt4kJg0mACgeU5jxIQs4fzanbRSMh4Ao19bE8Afr9KTlXyboZkxjdFtmPg
         RXejleo6EcqMyJxMtFBoKyOxhTiPA8CcT7KoaJomzAb2IdOoS2qAn4iEvgtDAa960cgY
         fJUscb192PMRKW5QoPP2TXRdRVsZSgMmWTPsRXXvRkuZVVGokR2hTv9HBgHtGTgXCI2l
         z1gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZKJuE0f8fJ+7NnUFIgVl/vYDArcDNYz5r6CgwZRGQxkucYKxiFQggBW1jcsnYjmm8nNOdJkmsKu4EjN0BksRf6PmbKNE03R9tuQ==
X-Gm-Message-State: AOJu0YyIiroillTvR3B/lvG/CgdE5jFg46fec9duElug8jQvHY9WvRsy
	wchNMPzR3hxw+oWCxN6yFDvvziEEMxBPU+/CL725g+mvl/6rDWssnq/v7vCnKt4=
X-Google-Smtp-Source: AGHT+IGqXcP4a7y/1sAfahWl3DUL7IV+aXO1Cv/OupNWGZLq9Wf7bfIgd7Fmu5SqyGqlldsHQezFoA==
X-Received: by 2002:a17:906:f594:b0:a4e:9d3:cc8b with SMTP id cm20-20020a170906f59400b00a4e09d3cc8bmr698757ejd.40.1711536375884;
        Wed, 27 Mar 2024 03:46:15 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id o9-20020a170906774900b00a46a2ac0dbasm5268238ejn.197.2024.03.27.03.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 03:46:15 -0700 (PDT)
Date: Wed, 27 Mar 2024 13:46:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>,
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>
Subject: Re: [PATCH v6 3/4] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
Message-ID: <4879ad5d-165c-4118-81f7-8f6348a5a5d4@moroto.mountain>
References: <20240323-pinctrl-scmi-v6-0-a895243257c0@nxp.com>
 <20240323-pinctrl-scmi-v6-3-a895243257c0@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240323-pinctrl-scmi-v6-3-a895243257c0@nxp.com>

Looks really nice.  Just a few small comments below.

On Sat, Mar 23, 2024 at 08:15:16PM +0800, Peng Fan (OSS) wrote:
> +
> +struct scmi_msg_func_set {
> +	__le32 identifier;
> +	__le32 function_id;
> +	__le32 flags;
> +};

This scmi_msg_func_set struct is unused.  Delete.

> +static void
> +iter_pinctrl_settings_get_prepare_message(void *message, u32 desc_index,
> +					  const void *priv)
> +{
> +	struct scmi_msg_settings_get *msg = message;
> +	const struct scmi_settings_get_ipriv *p = priv;
> +	u32 attributes;
> +
> +	attributes = FIELD_PREP(CONFIG_FLAG_MASK, p->flag) |
> +		     FIELD_PREP(SELECTOR_MASK, p->type);
> +
> +	if (p->flag == 1)
> +		attributes |= FIELD_PREP(SKIP_CONFIGS_MASK, desc_index);
> +	else if (!p->flag)

This is a nit-pick but could you change these !p->flag conditions to
p->flag == 0?  It's a number zero, not a bool.

> +		attributes |= FIELD_PREP(CONFIG_TYPE_MASK, p->config_types[0]);
> +
> +	msg->attributes = cpu_to_le32(attributes);
> +	msg->identifier = cpu_to_le32(p->selector);
> +}
> +
> +static int
> +iter_pinctrl_settings_get_update_state(struct scmi_iterator_state *st,
> +				       const void *response, void *priv)
> +{
> +	const struct scmi_resp_settings_get *r = response;
> +	struct scmi_settings_get_ipriv *p = priv;
> +
> +	if (p->flag == 1) {
> +		st->num_returned = le32_get_bits(r->num_configs, GENMASK(7, 0));
> +		st->num_remaining = le32_get_bits(r->num_configs,
> +						  GENMASK(31, 24));
> +	} else {
> +		st->num_returned = 1;
> +		st->num_remaining = 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +iter_pinctrl_settings_get_process_response(const struct scmi_protocol_handle *ph,
> +				       const void *response,
> +				       struct scmi_iterator_state *st,
> +				       void *priv)
> +{
> +	const struct scmi_resp_settings_get *r = response;
> +	struct scmi_settings_get_ipriv *p = priv;
> +
> +	if (!p->flag) {


if (p->flag == 0) {

> +		if (p->config_types[0] !=
> +		    le32_get_bits(r->configs[st->loop_idx * 2], GENMASK(7, 0)))
> +			return -EINVAL;
> +	} else if (p->flag == 1) {
> +		p->config_types[st->desc_index + st->loop_idx] =
> +			le32_get_bits(r->configs[st->loop_idx * 2],
> +				      GENMASK(7, 0));
> +	} else if (p->flag == 2) {
> +		return 0;
> +	}
> +
> +	p->config_values[st->desc_index + st->loop_idx] =
> +		le32_to_cpu(r->configs[st->loop_idx * 2 + 1]);
> +
> +	return 0;
> +}
> +
> +static int
> +scmi_pinctrl_settings_get(const struct scmi_protocol_handle *ph, u32 selector,
> +			  enum scmi_pinctrl_selector_type type,
> +			  enum scmi_pinctrl_conf_type config_type,
> +			  u32 *config_value)
> +{
> +	int ret;
> +	void *iter;
> +	struct scmi_iterator_ops ops = {
> +		.prepare_message = iter_pinctrl_settings_get_prepare_message,
> +		.update_state = iter_pinctrl_settings_get_update_state,
> +		.process_response = iter_pinctrl_settings_get_process_response,
> +	};
> +	struct scmi_settings_get_ipriv ipriv = {
> +		.selector = selector,
> +		.type = type,
> +		.flag = 0,

->flag should be 0-2.

> +		.config_types = &config_type,
> +		.config_values = config_value,
> +	};
> +
> +	if (!config_value || type == FUNCTION_TYPE)
             ^^^^^^^^^^^^
config_value should be optional for flag == 2.

regards,
dan carpenter

> +		return -EINVAL;
> +
> +	ret = scmi_pinctrl_validate_id(ph, selector, type);
> +	if (ret)
> +		return ret;
> +
> +	iter = ph->hops->iter_response_init(ph, &ops, 1, PINCTRL_SETTINGS_GET,
> +					    sizeof(struct scmi_msg_settings_get),
> +					    &ipriv);
> +
> +	if (IS_ERR(iter))
> +		return PTR_ERR(iter);
> +
> +	return ph->hops->iter_response_run(iter);
> +}
> +


