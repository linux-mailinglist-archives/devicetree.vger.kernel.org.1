Return-Path: <devicetree+bounces-229967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B1DBFE292
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 22:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 711753A5719
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 20:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3204A2F9984;
	Wed, 22 Oct 2025 20:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g/fH0Rcx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B996E2EAD16
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 20:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761164775; cv=none; b=Jb2tVjjeYL6NlAuRm5Jvs0Xy8cYbNbhfNZseZP34NVEWR5+s/w2iXcAoe5l6l7f3IjFSxdPCYXI6+sZJThIIMUUBi4x+77cUe3lxGFV3txdwvJ4gy2ZUD4MiO8e9PpmMynqzpwyKQrrv0dAtaLLtKOEgoqyRW62M9k4Jc8VvHEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761164775; c=relaxed/simple;
	bh=UsE2MC6YhiU2H2YxopFmG19GYWLjhkDN5teQLVlPj+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RemAUIHF601Ghp170ymjh+YxRjEJtxScQkuN47r2OxkRPr/6Uc2f2yvOYpr9y/6+tuqTViW8VGz4uHGd0MqDNPLlHaMZxwjD+gHG6e8QCo9+OL+TN68P4i+ImmUNfRyrB3RoK85EcfJdX3hJM/tV7NV5dMcLCeomnKrRkZ2EO/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g/fH0Rcx; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7a26dab3a97so44404b3a.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 13:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761164773; x=1761769573; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T8eeYBeVEIY6XvODE4oNhMEO0a9ohRRG70mMGclTsoo=;
        b=g/fH0RcxhIMeRv9EGpLbgcfa05Fayz2AZmPaBVyQg2saHaNZYqpxwFun3keFTcw5hh
         eywukNJRTLJq8AUudtUSxxd3DNZN9ilnnt1h2w9cssVzkRnc7xn7gKnXrrplkyLTXbUL
         WGewi5g0x75zHFLZKKLYnFy5TWxg2As4mFHzEgrlC/5gM915Rv0n4R0v1vJOqqeN69+r
         kj353/s4I/5qXqHSdCOW9mvwuWwlIboWc89xfq5v2qHsKMuLxktCWqVY7qtOWdQdI2if
         KVRar/oCGYEnnFK/go6eEwBAkyPkRZ9s5JjcTxgxS131qqA86Ng+mUUAS4/BmtwL6GMC
         JZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761164773; x=1761769573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8eeYBeVEIY6XvODE4oNhMEO0a9ohRRG70mMGclTsoo=;
        b=PkQVffnq6ZmAV1x8ltJvhMyURRW0Mag1nSfH7F98W9TOb9+Hh4xwmql07rJjQfFYK+
         OGamEJKGvxZkrMzw6CX/RQpDwAp+ecaqKR/8cpjHUJMWyObzBDRtxjzGTTmdZIez1dVe
         YQQMJ7nwWXWt5pYJmzyD2VkF0NvG6vZkYKPz5AM05VCbOdlUMK59Nzmiax0IGuq7OJ2p
         +MSI6Wt/igqyef6gEGVaJ6xgQBAKg34l7RVERLS6sytp7oJm0Soo/hkUR/uDOyj/YQ+F
         waf5UdonbMmjqXdXJNSMGksv8QHTkZyESs9HC8uh17/RrhIZdgqo6bWThXvBRFZdzP7R
         rXlQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7Le3pEXWs5VKCHz+nwppWG51eDMWOnsznfDzap9IEKI8nvdDdDMeHvGgLTfBGFGGyp+XZweZp7/mN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxh039cL/j1fP/MhoT1D7wzyhKE2XsBg52YfUztGY8BdYQo97b
	APoID3WFniLhe4+Q+niujQl1oB8taJIqK/1HeW0EaT2lHdAiS4XHTCyO
X-Gm-Gg: ASbGncsS4Uwj/5rpa4z8GrWbqZggG5f9VxowpfsDIkkU4nXIOAwKikUsnbKuj5dpn1C
	wkO9sycitJbVu1ETv1IjHSvbuc2NmpaOVhZ4AzI7pymayB4BqZ388jic5rpWwc1Aagyjb93/h5F
	QD6WWDYmIWSHpLAGTjmBXQghHow6HwDSNSd6GvzLsWbh5onhxSTDCu3Zov9NJyZ6DKLmdS6IcEu
	Z+pMFTIb8TcWCtkVHCQjGFzfy2r326R34brb4Lko9RTuBIgbs2ye+S2mex2hNcpB64pAIrbY5oG
	vbSBLxu43rRqimcS39SRC+3z3TblklhS8uSv+jSyUOBaKQ+fob1G93ak7SS9ynG6zMXynCEfSOh
	f+oG9dGSB9SXAR1CxWNFKV91e+JdmhOvH07EqEHHZ2sVlDp94Kb0mseikagQyfXYq2vewF0cRS0
	yzlCbvROa2P9Gk8xjydWTRw/WHDl1fp8LXrCe0r1+Rx+xeH6oc0g==
X-Google-Smtp-Source: AGHT+IFDRCcByl//79aXbsGB2yKo3kBq184UaG8KGH4X6om7TJOgKw+yz9TH2hch3mYKqlgj9G617w==
X-Received: by 2002:a05:6a20:72a3:b0:331:e662:c973 with SMTP id adf61e73a8af0-334a8607001mr29327304637.32.1761164773019;
        Wed, 22 Oct 2025 13:26:13 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:53a9:459c:bdc:6273])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a619d5sm123324b3a.1.2025.10.22.13.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 13:26:12 -0700 (PDT)
Date: Wed, 22 Oct 2025 13:26:10 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v4 1/2] dt-bindings: touchscreen: trivial-touch: add
 reset-gpios and wakeup-source
Message-ID: <dp2qoiiigb3zv3w2osyloiugasgypbgj6lcnikcekqpq2vb7wz@q5qpzmlfei2i>
References: <20251021201924.2881098-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021201924.2881098-1-Frank.Li@nxp.com>

On Tue, Oct 21, 2025 at 04:19:17PM -0400, Frank Li wrote:
> Add optional reset-gpios and wakeup-source properties.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry

