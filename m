Return-Path: <devicetree+bounces-136349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A96FCA04DE4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:51:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3463C18879AA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3984F1F708D;
	Tue,  7 Jan 2025 23:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yVBVnSbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E161F709F
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293862; cv=none; b=aMUvOBXG/27k1YpClAgd76YQJ17fD/FwM5Sk6qeYSWKofya+VWhvFuxMm5eSJ5I6vdIF2981o20vi8oEJmGyT0Nn9rs7sPaAEv8iAehjGRUviUXD5/HFX7oNpdfETK8vlY2eB+NLocntk+x7aaUOIb+CemTXJz3az8LAxeg83tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293862; c=relaxed/simple;
	bh=9VpUmzYiTMqpRssvnvfD7S7WSlpD9f7LMaXqYjiaWl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PVdafs2ef6ryVhdYp0waS9yS/B3NVgToxTET2x3qwqywYLjZuAd0I4ORvRAD7KIQfegwNJKOmsxCvXNR4xiqg5+M+t6izgibwYH/H5etAzMoqT8W0B9WYUZCtzr82jNlkCjTR3S/zUrTVBhA2egQjWSnvx4dNmzSVAWCQCuPmKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yVBVnSbp; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71ded02b779so8681295a34.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293859; x=1736898659; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xxe5fK9+PaockwMQ56BVWMGy02hAR06xAVeNpiyd0xw=;
        b=yVBVnSbpqRG6uLjMdgTHjNK952b0ieTTYcBMnENts8CgZ9JJH1IIEPjMTFxE69SYt4
         CBBLpU9sNIxIeWgjQZnV2W8o+uy0cGDU9PpgJ5SUevRyBGU2FxpDEqoIKF/H0SrVo2nu
         /RpZjyxMWPK/hiu2J94ndQtqI20YU9Tu2kDWQjf0mHSwj52i2Y1lCx6FQr9+wM+oC+Rz
         EYEgSxk009jgUuOJGtTnZc2j5xw0mZFbxccWnJGYOl11oXzuSt+dn6upgpin4yj1MSvj
         5Mhj+eMbNiF3dvIWayLo+83DC0ESHtFmNJbEuL98wujMbnLBSUc2VfBwgLVhst7epm5V
         ig7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293859; x=1736898659;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xxe5fK9+PaockwMQ56BVWMGy02hAR06xAVeNpiyd0xw=;
        b=NDFa+wnW96PzKwd7j/NXkBxf/9mFlHwiAGR+CJo3SFA6kMwCc3F7OY3YgZJoVm7L8o
         nTFS1Y7l1kqP+rCKrLZiqsQfQPZ9oPKhn/3jIN8Mf1KXMow3//2wWbPeBDvTM8uW9LKk
         rtqfTekI3p/w+d+KtKTjEjztmVRmzPMPyIIRYEKPgTz9BrVgGGO1ca7Z6R8x06k7L9KZ
         lk+nk//ahzNktgjrNOgfNMtjkcyyG4/MAjTjsGDb2CPfKXcMPUxmcpudXxvYUFthBNQc
         D6Hcl6mbjB89UO/X/SP6kMW9kaGTUTEiqOfVpymOfMx8OhI3RtIPi2eI78UPL4GF/wgs
         X1uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVdeSXeijLFjncd6eIxxaheuh5ooTL3EzTb+eTXl9p29JgeSI9mhmKF+BN99DaiZnnzL+y9t4iwes4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmmkpwsj1krY5XtbGbAYCQgwp5h9yFh5w4QJo/dRz7220dJrMa
	QAI0bpCi42et6IMc2/mxMp9FmTBOSrQhGvv+RU9RfrvbWkQM4VzJrvsiru5vzRA=
X-Gm-Gg: ASbGncugUEzppUaMZh+yPtWqAg3dW/V9rIQ0FV7oVH3FY5R7PGtALn0Rx30jDUuEBmY
	vZgKgRuULaPn/qhPNJDCoNOZmEr0HGhYhBx0FTzURq8LDWCDfFi0jIUGIaNj3W+wCA6TggvuWgs
	DDF6XyPjTWxGwvET8aoe5ixgQ1irglShPTUzcuSkH/pfN8p71Fn5caBfIzLypE3ZVRGx6SlMuRU
	vcu3vuyl+8xhXROIINxDp1aG9Oi1g0y9VZJt2WhvnfAanZY6AU5GMM5xB7sXmUJrSnkYFU71+dL
	IAvtcnT9RXQMRMJSng==
X-Google-Smtp-Source: AGHT+IE7yzxUi5oQvlLU3DlUFKJpeT4/XYqyGq1OtgTEXGDgGaina2HGVk3yHfNdQybXSvDKsrKkKw==
X-Received: by 2002:a05:6830:3748:b0:71d:f239:c0b5 with SMTP id 46e09a7af769-721e2e52e47mr548687a34.18.1736293858780;
        Tue, 07 Jan 2025 15:50:58 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc938998csm10831203a34.0.2025.01.07.15.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:50:58 -0800 (PST)
Message-ID: <5d492f38-b103-4850-8d13-ef1fd1d2c483@baylibre.com>
Date: Tue, 7 Jan 2025 17:50:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 15/15] iio: adc: ad7768-1: add filter type and
 decimation rate attributes
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com, PopPaul2021 <paul.pop@analog.com>
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <b88a167234c49a66792c0d3e182bb40b5b695b5c.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <b88a167234c49a66792c0d3e182bb40b5b695b5c.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:27 AM, Jonathan Santos wrote:
> Separate filter type and decimation rate from the sampling frequency
> attribute. The new filter type attribute enables SINC3 and WIDEBAND
> filters, which were previously unavailable.

See related comments in my reply to the documentation patches about wideband vs.
FIR and decimation rate vs. -3dB cutoff.

> 
> Previously, combining decimation and MCLK divider in the sampling
> frequency obscured performance trade-offs. Lower MCLK divider
> settings increase power usage, while lower decimation rates reduce
> precision by decreasing averaging. By creating a decimation attribute,
> users gain finer control over performance.

It seems like we would also want a power_mode attribute. We already have an
attribute for this for used by accelerometers so there is some precedent for
such an attribute.

> 
> The addition of those attributes allows a wider range of sampling
> frequencies and more access to the device features.



