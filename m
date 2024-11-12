Return-Path: <devicetree+bounces-121037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DEE9C4FD5
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 08:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1984D283484
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 07:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3B120C492;
	Tue, 12 Nov 2024 07:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j25MIWdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4EF20B7EB
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 07:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731397328; cv=none; b=vBE/bSN94fu76y6GMrYUKtLUZ2geoJ2t8WIfz8VLQPr9YFucFIWmb2RhVlhmwIAZL3FiK2Pl8fPwxeY0HSqZgRwGTouq1YHPa0Rxj3GZiBsXoKjCh81stooUoSNewxmcEPLBD3y5obOKEbL1eIfKgkf5te4WJ8rOxUiIuidGpHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731397328; c=relaxed/simple;
	bh=4Zdw5kgKTgwPsGUNYQa35eedlMhMIviirI6Hy+Sd0hg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tc+ENnZniLED+QEYRajCTMyTw4YABHdReSrp9LTDeRRQS3LU7bsk4j+Bivf2FpUfg8rf4jZm+NyRe3jGKdlJ+tSD0OU4t9vQyAV2B1CDKE84tVu6mz2UHkuf3gygdBWgbl4/I4NhWmLEosP5XF029shjLCXxU8VANZTvP7bnRY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=j25MIWdG; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71815313303so3225644a34.1
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 23:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731397325; x=1732002125; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mWb+6hjmOAxlNgDc7JKg2yzzLTEdqJ06FfSb5owKkeM=;
        b=j25MIWdGoDvIVyDNgln+5npG/TeLmJHE8O3Qcv1StG5nkKn1moyBgKUYigN6TNkXod
         9tEaLdyrKhebdGgw/jTwYyWvSREapa1is/A2o3vq97DoGNC06WM7h8Y/09Rdj6WS5UmD
         +cRi9NlMwf1M3R8bNsq8eiRjeXPItW+fcJkkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731397325; x=1732002125;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWb+6hjmOAxlNgDc7JKg2yzzLTEdqJ06FfSb5owKkeM=;
        b=WWzpmCVruGW3+6lm9MsJtJ2aEQoDgsRo/TPYIjRp6prMywCgvXSq0F9cXSgURrCuq/
         yyFjWtnCXYsv+MHeLSLpb1YLSNEetRR/lnebE4Am/Y90QE5z+G+qxZvfUONP2BrPnO3X
         gHQ0BdjMTt5HRrvocLVAHpHbBS2jkK+32Ht7fJSW+JtZcVRnr9q8qDhEhxGwHiJfXhky
         ikq7CrE0J/piAK47vKdSW8Lq6Tg7RRR8f7rYioOFbpayGVB2jGmqcD5MVqgeAPupbER+
         zthX8pfRoaIs+XoS/gjLEPuTh3SmAhXjAzNYSbf2VQgS1fMslUI/AoJ5hbAKOyri/+oh
         0esQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf4X4SBAVsv8I9ek5Jg6HA+FX5bQv943LS/DFTRpLbAVsIEegtogXxc1UhMwyLRVY8313ArlGzzv1E@vger.kernel.org
X-Gm-Message-State: AOJu0YyBVG8wEgWY3A2mkBTSGE+uzEWmMcT/I3KQfVrbzDW01Mk7k4s6
	gDxSdwhiNw3p6ce6VIX2ygA08nXf8G73MMcSF8InnnFhSChRtzg4Q0UoJjXJMw==
X-Google-Smtp-Source: AGHT+IHAivkem+e7/fcFL3MNsRfeSzjTTUbqrvF8zF3iiVeiJL0WKCuRtYmXL80k54VkCTs+Wi5+3g==
X-Received: by 2002:a05:6830:1050:b0:71a:21c9:cd82 with SMTP id 46e09a7af769-71a21c9d013mr9830707a34.0.1731397325430;
        Mon, 11 Nov 2024 23:42:05 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:7cd:9f36:34ae:c525])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f41f67f079sm9823430a12.85.2024.11.11.23.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 23:42:04 -0800 (PST)
Date: Tue, 12 Nov 2024 15:42:01 +0800
From: "Sung-Chi, Li" <lschyi@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas@weissschuh.net>,
	Jean Delvare <jdelvare@suse.com>, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v2] hwmon: (cros_ec) register thermal sensors to thermal
 framework
Message-ID: <ZzMGyaBGX-yLZs8B@google.com>
References: <20241111074904.1059268-1-lschyi@chromium.org>
 <20241111095045.1218986-1-lschyi@chromium.org>
 <4cb3b1c7-86fa-4344-a413-031723f31f1d@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4cb3b1c7-86fa-4344-a413-031723f31f1d@roeck-us.net>

On Mon, Nov 11, 2024 at 09:01:33AM -0800, Guenter Roeck wrote:
> On 11/11/24 01:50, Sung-Chi wrote:
> > From: "Sung-Chi, Li" <lschyi@chromium.org>
> > 
> > cros_ec hwmon driver probes available thermal sensors when probing the
> > driver.  Register these thermal sensors to the thermal framework, such
> > that thermal framework can adopt these sensors as well.
> > 
> > To make cros_ec registrable to thermal framework, the cros_ec dts need
> > the corresponding changes:
> > 
> > &cros_ec {
> > 	#thermal-sensor-cells = <1>;
> > };
> > 
> > Change-Id: I29b638427c715cb44391496881fc61ad53abccaf
> 
> Drop.
> 
> > Signed-off-by: Sung-Chi, Li <lschyi@chromium.org>
> 
> Detailed explanation will be needed: Why not use HWMON_C_REGISTER_TZ ?
> Unless I am missing something, this code just duplicates code from the hwmon core.
> 
> Please do not send follow-up patch series as response to previous ones.
> 
> Guenter
> 

Hi, thank you for pointing out using HWMON_C_REGISTER_TZ. After checking how
HWMON_C_REGSITER_TZ works, I think I only need to add one line into the
cros_ec_hwmon_info, and almost all concerns Thomas pointed out in latest reply
would be resolved automatically (because there would be only one line of change,
and that change is just a hwmon configuration, so should be a valid way of
combining with the thermal system).

Thank all for reviewing and giving inputs, and I will soon send out the one
line patch.

Best,
Sung-Chi, Li

