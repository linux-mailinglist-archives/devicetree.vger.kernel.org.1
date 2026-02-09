Return-Path: <devicetree+bounces-264039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLm/Cm32iWmuFAAAu9opvQ
	(envelope-from <devicetree+bounces-264039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:59:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A4511157E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7034A301AA9C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C87537C115;
	Mon,  9 Feb 2026 14:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ioMmyrKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807E37B409
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649184; cv=none; b=T3gvM1y0cTdLMkNVtFv15XRfm16pQo5phsV7hfAQhGctddxtkO7GHx1vi39m9ifGkeiJyQovbiQlGL8az7fsMQz2Z/32vlw0t1IdfXCE0cSvMiVn3/SR7jnf8uZdCAGicPopsGcfY/l+bt/r+NNvj5LqH+3amv6KaQHb31cMpy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649184; c=relaxed/simple;
	bh=DDbQySwtY8GnVjkf5RDP5/xDtisakVvfL2uYOituzWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rOPxJ2m06aBvyTjd7MpK80m7V3lT5IKWlMtAqj4L+0bqXyeg/T7M/BobgO4YSNNi4Wrbqw16xTfg9bvI2Af+YOLEisJ8DQUMCqiWLdNh0blfeDk6MNXpAYqPI7ydE0rr3yricTaoSlxsZ3KPc7EITuqoF2SHzWVLg2L4Q2GKqBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ioMmyrKf; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b6b0500e06so4363783eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770649183; x=1771253983; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=or/TyMMcDi3QCF02Finwtjs3ACbwOGSvS0XrkKNuUkQ=;
        b=ioMmyrKfaGKgoCEbo91HtdX6Tv6+f4SO2xAc0CvVqi9Pq342rOe5hOXkNjvKtnu+ma
         QKEqN+ir8/VjIS1RB4SVi4FQ12563/owQqCYq6IY7lR4cVxyOn+GGbR8cWiS16ll1hte
         glb4SEM/iBEZG+IoXNjhwWcIuMibvQZ436hMHmTOYvP0ibEkYNfj3p9EixoDD+9/CeFl
         6P/1tGKtnYhz+RvDTap+wB4RL4ucaKgSlLOdBqr8JTa6HTNc1ETwlYSKEvQqLsaD0R9q
         IrmArc3jMcCdb/6nN4yZydLTTCnPtykDMDi3lT3PXqoEF02U1wF6Mu9m6fPnukXLVuNq
         EEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770649183; x=1771253983;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=or/TyMMcDi3QCF02Finwtjs3ACbwOGSvS0XrkKNuUkQ=;
        b=QmPnARF3E69z27g619nkG9e8wP04M482M0V7OkSiAGcby3x/CM0BNi81/X3B5GLpt1
         UXGOn5sC+Hbjx57AG2mGijClczCIkuHgrmSpkvuDfywGznLJDBspTg9pJzauo4H4SzO7
         2tEDBHcgMR9m5iVQcIoJ2eGDG6hQ3AgeD+VfPAN6xn16JfgoNCM0m7sg+LO3Mq47+Vev
         x/T0fpM7TFj8O4+BU5ZDI8vgp/Qx7ItRKyKuzQIOsaGNgE3BrpK0+ftI8RWKbfKK/+jB
         KN2qOb2hzFKSPw7DaXGuycTG4H1iMDlzBmfyER35CJxQI6yvpitUOPkjSFr13FxcsO13
         AuwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3Rq9zmlplQ5ZvDZE7pdULQNL4YzSdhpED81lm9h5F8LMhi4vrdaTzwqX+D/lWzh9j+Ro+wO+LXKrp@vger.kernel.org
X-Gm-Message-State: AOJu0YyAPHQQ17kzXCIMnJxlvFL5s+fmq/E2a5wLBtAFyidcFyCTPBQB
	hVdPD4xLyn7icIXJVpHLZ4w5sobLtt/fg+cPr4PdBNAPqedqY06HYpgz
X-Gm-Gg: AZuq6aI5dxa/wCq9FdXsqe2AZE5VzWpOMVycB2InKefTI54if4ivhUA+k6/0GdnWDHa
	gwKVKdM7Tik4AHH3zgJK1qe2VgPuP1qCRekd2dHHSfCth7rP1el3/IMjQ4LTb0K4OPesEKZexjv
	2Aw2Pizq+rtyYvLM4m9VpLK3Cn2YC6GOLEm2cbGDSp9sXVEtc4an2XuCTTIcclmw/QWIbweePJh
	50s/Q6lp5qc2IuaUAjBo2n+ZEnk7s2TspB8BhmrDJ+JGz175a/vPChLNCTyg1kF8buJo91IsDo7
	TN0lfirbhIKfgiqiDF7KpDWnCa8rZBbELvNjqsMoq9pi/RDuZZ+f0Ga2+11rsa7qBf0kRgVaqCO
	ECFt7J9fVYcvfqMRmZT92nLp1ej99p3ovOQoXww+RK2K7Ml27lyZ0dVUb7Y9P+fQWgTaAFbz9Ar
	+f1rY9v4l88yJE7MQzU7LPnQw12bI/OpA4uQRP5VgP6sQwH+uxyA==
X-Received: by 2002:a05:693c:6319:b0:2ba:37a2:4aff with SMTP id 5a478bee46e88-2ba37a258f9mr1540224eec.14.1770649182911;
        Mon, 09 Feb 2026 06:59:42 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d70d:15:1011:7b14])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c3daf7sm7817736eec.20.2026.02.09.06.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:59:42 -0800 (PST)
Date: Mon, 9 Feb 2026 06:59:39 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 2/3] Input: aw86938 - add driver for Awinic AW86938
Message-ID: <aYn13PdUF9MXhmE_@google.com>
References: <20260209-aw86938-driver-v3-0-5c79cff30492@fairphone.com>
 <20260209-aw86938-driver-v3-2-5c79cff30492@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209-aw86938-driver-v3-2-5c79cff30492@fairphone.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264039-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 93A4511157E
X-Rspamd-Action: no action

Hi Griffin,

On Mon, Feb 09, 2026 at 01:59:46PM +0100, Griffin Kroah-Hartman wrote:
> @@ -377,7 +390,7 @@ static int aw86927_play_sine(struct aw86927_data *haptics)
>  		return err;
>  
>  	/* set gain to value lower than 0x80 to avoid distorted playback */
> -	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x7c);
> +	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x45);
>  	if (err)
>  		return err;
>  

Sorry, just noticed this: does this really belong to this patch or maybe
it needs be split?

Thanks.

-- 
Dmitry

