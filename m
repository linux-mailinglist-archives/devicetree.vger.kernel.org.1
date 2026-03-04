Return-Path: <devicetree+bounces-270857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCrHLJ67p2nfjQAAu9opvQ
	(envelope-from <devicetree+bounces-270857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:57:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 540671FAC90
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3F343061474
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 04:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B63D37F8AD;
	Wed,  4 Mar 2026 04:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EbVVH3Wd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B19037F8BC
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 04:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772600183; cv=none; b=ssGXhb107i17Rb9B9uDirSOy318PBsyQvlOKaz98ZRDa5SA5bC1vuiLwWUgGh2/FLA6IHE35LITatrFkOv0b7aAB7GAuvaWZT8TCgMEwugmN1RreSc+XqkG4R4JUEdkojpfRWI+pHxJ/yTGhcYIFR0+PinPDL11EdJgEUXbogXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772600183; c=relaxed/simple;
	bh=pVGTU58hvCn2z+hoVnvYhtHq0U7buRUP6MUpwb7HYrc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RsdQl2tA9nbGheB0C1dB9D7cQ3R6bys+86AKNSMl+mr5KmALIQ1agXiW7T6oKG12jq83RK9gviCSOkMuFS8H5Z344gG3wFHCmTU8pWvlYdV50Nb+sOdlu8BQaPd4UDknSVpwrsTu2xeKVFtvAXozC+J9QZ2QB73Gylu2G8VgE1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EbVVH3Wd; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2bdecd00ebdso1259554eec.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 20:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772600180; x=1773204980; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yiogvf4BYSe07P/jJTWhOgw9FG4yGWFRZPfv7hu7sWY=;
        b=EbVVH3Wd11YmcUVbENvhG0+wKgcq26yjUiADOy/X1cA9e6N/F9T5fNi9yWD8tYhZIT
         8hHo31cuLiPoz4S1K1GohlESLPS5rdNzSS/6gp4P0RHHhl4Bn7f5j1o43rg+N/CixMi+
         SVlR8xLiopWA6h01MQVpKm/cBOtCKnH3zDWmDm/WSta3AjQvNMVVDARQuNGxyZONCwze
         CsF8To/sXviAJjNHRn8gZmf9nVhGaJk6sXrzQZs5hnmdW4yNH6KQjDrFbfy0BV5nUzzV
         g6Zszsx88A7uC90lIg+ZPQBQF2d0xnGRBiDQcUvulpo18wpDl1N5//uTzPxL/teCCyjY
         K2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772600180; x=1773204980;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yiogvf4BYSe07P/jJTWhOgw9FG4yGWFRZPfv7hu7sWY=;
        b=DXiJUgeEmBTerzE59hu4kbvfEa17xZPm7pq/MPhbtTjGqHQc8TWxMdzXoCp3vYasue
         TTt5L4UZhCfH9wxfOyhB9tSBada72kDsSfG9WEOI1deZ2ibkdnNtAHtZWwanV+yevQLJ
         KtNm5wA+rHQeHxd0oVEFsMC9Dgv0DNZkxDtbRX/y8H7SvdiNZWoakS7E6Nf1g8o1D7hc
         iD7lP8aI8AlT0tAzeDQq4cAlIarMxpVkV4omJOyMETSIlh6cGghqMJna5KKhicjbdGxO
         0dpZSTRAfUPOT5130YGw+Yo7bN2rts1DpfSxPyEmmIk18FmuN2wCIF3wkArh3DgaYalZ
         ZdNg==
X-Forwarded-Encrypted: i=1; AJvYcCXpO1DvveGZfOJdLxAADO7C3+1P1IQZnNmTC8B7MLhN7QTUlbhGLsOy9ngmDIyZMplm0ih9CGNjx++7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz2NEMVdNYuz+mwa8JqPdpr/fVMHmYV9sWB/Mg3wX34BJpJHCf
	FHUSKOvc7uDxpz/QL8Dyn+eneP/6T8ryjUEcHFFvQoeaohqfGQ4t30kZ
X-Gm-Gg: ATEYQzyZefUxSTGUdz8iV7hBDVATxDbofwDn7b+a6zHoHyhsQTF/ZzzzcaoJ7VTaEke
	29Nt42Cgm66gXhRsnspP9Jpfx4cDNZGpqlMAKmUk/HJQJdJqxxo20xEuEvxPnfGIFoeAhpBN5TC
	GSh1ixFK04nmG+dBYvwRzEBzF4AIkHQOeKnKnG6VU79fl0pOC5p5tcntJzQR39TAZsxZ7fwUkwv
	QVNhrsvXukxDIXg8jVNMIc2sjn5BEjzxKQzqE1wg+ys2ddhofMFJ5vIBANUeRid4RdnEsi3F5sn
	zQ0cylh/iFc/I4+kFJ1SG5Wvyse74CqrmYJcnnrOeGL5x5Emu3eT5vQ06sm/xfJTUcoxdfA9ELa
	gPsN6SATGvxdoGGdqdRtEcDnQYXd97irQCDwd4zuMHDvvzmPoyGjxXoXl1cpsM3wJPoS0w3I4ds
	HlZLaBS9RRRz/klN5Eg4Qrndj2zAZTMZjbRHiazg9nhO8hnF7up4a9X3FXmwBMlWjM
X-Received: by 2002:a05:693c:2b0e:b0:2ba:6e87:525f with SMTP id 5a478bee46e88-2be311e17cbmr312357eec.34.1772600180347;
        Tue, 03 Mar 2026 20:56:20 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:a048:d9ec:d217:7d59])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be03fc6fcesm8256880eec.1.2026.03.03.20.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:56:19 -0800 (PST)
Date: Tue, 3 Mar 2026 20:56:16 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 1/4] Input: aw86927 - respect vibration magnitude
 levels
Message-ID: <aae7NQQXJYaTAOGp@google.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
 <20260302-aw86938-driver-v4-1-92c865df9cca@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302-aw86938-driver-v4-1-92c865df9cca@fairphone.com>
X-Rspamd-Queue-Id: 540671FAC90
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270857-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 11:50:25AM +0100, Griffin Kroah-Hartman wrote:
> Previously the gain value was hardcoded. Take the magnitude passed via
> the input API and configure the gain register accordingly.
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  drivers/input/misc/aw86927.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/input/misc/aw86927.c b/drivers/input/misc/aw86927.c
> index 8ad361239cfe3a888628b15e4dbdeed0c9ca3d1a..7f8cadda7c456d7b5448d1e23edf6e3f2918ba32 100644
> --- a/drivers/input/misc/aw86927.c
> +++ b/drivers/input/misc/aw86927.c
> @@ -180,7 +180,7 @@ struct aw86927_data {
>  	struct i2c_client *client;
>  	struct regmap *regmap;
>  	struct gpio_desc *reset_gpio;
> -	bool running;
> +	__u16 level;

Just u16 outside of headers exposed to the userspace.

Adjusted and applied, thank you.

-- 
Dmitry

