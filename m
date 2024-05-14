Return-Path: <devicetree+bounces-66899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9C18C5883
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 17:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B31D71F2224B
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 15:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5CC17EB87;
	Tue, 14 May 2024 15:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J9AvAyz7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86D21448C3
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 15:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715699505; cv=none; b=fOaQ9jKho5vE8SbmkORtwaZFe76XoqCJJM1wkHSEkVczJsimkaspTcwX7PRf5IhMVeBS4DX22YomGNn646FSLOdsr/YFyDCDOr3Hm78dPL1nHdo7X0FvRImNbqt3WYXsZ5B432CdeFnx3H+0gQVIiAA0DPjSzbB0YQnvtd6CkV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715699505; c=relaxed/simple;
	bh=NL1KHWtYv3QKUfmEMXyKfHmHt/nVGsCsOJA2nvTmHeo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tHynzjvyz8rqOtISEOXxMPYmnAjOU3JYNtte/r6Z7gO1x0xeU7Qd9bmfEoFiyeqaD8krhoPO4b2cb0/M1h/GHWXUCSIDBYpXH6WGQ8HNVXzUG3x+PhyNnKVS2i6UB1X3YXXponbMsbcUq71H2nEz1LkKGG8YhEGMvjCJSidGNDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J9AvAyz7; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1715699502;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4cnIUuYkHWIx+FjkGcvXg8Ni+ZK2m6H2U3SaL0bU3Wk=;
	b=J9AvAyz73u9zQ4l9zLAwM4JqEzghgC+UQKn1861gHIP7I6vJrA+0NkoXhHs22YGqv9XAhF
	JsQYMBXzX7yeH9yCH7EIcM3hVu+wB05ivGhvb7MH5MAlsfWtYLNcenOw1okSsRvDBoUTmj
	cOlCmbsxy7df4OMZeASPv6/XkPRa0Rw=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-Ozl3eAIZNbeq_cj2pwukuQ-1; Tue, 14 May 2024 11:11:41 -0400
X-MC-Unique: Ozl3eAIZNbeq_cj2pwukuQ-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-792929ff543so679994985a.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 08:11:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715699501; x=1716304301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cnIUuYkHWIx+FjkGcvXg8Ni+ZK2m6H2U3SaL0bU3Wk=;
        b=pKQW9PR5SeS+KRJTYKcfxTFI4X6Zy0LmrlhXEokVpDNVDhkgw6AXX1JaAOlUB7rk2l
         XOnG7HvjZzWmSqA87twrfSfZwmRVeM3csTMfYUbI0xkZvwKPw2B1bGYn4NE0D35Wjjza
         V89JIYETkTxBrBEEhI2GHjBnYuRSin5NT0TU6Ojae0671toaRxdeDfoyB7VDF2KLc2+s
         FT9nD8G/hOxD4QfHNvyxQHVH3/oKEb25hoqfRJ2TvMed+MXxfWHmfGQlM/pqZruZQOGM
         NiWHZYJvjruyCXav0rU103qSVCevMfIqQOmXhJ713cIW8R6JhxEyWn036FuA02VISn36
         k4/g==
X-Forwarded-Encrypted: i=1; AJvYcCXUg+Cul9V1qwL61vXH3Dkra59CO6osDRcK0/Djgws7pQtCuasBt/oLlzkLAKtOTRhD1BP8cnjek0HyesPyHqCN5nArYDv3isxJhQ==
X-Gm-Message-State: AOJu0YzmXtWX7SeNJGbdVlQT6qqwG007oUstmZ82dekntaWHqUOTF9wS
	WlgzX19FKuhuNROXaz2Uj8y2vLnSO27wgcWTEIe4cGMkaBmhRgJLGP8cG/3g26+DQzJv9dlMHzD
	0x2fqxErFgvU6Cz+xGl3x9gFsls3BBKAKtWPePHV1z0XMTfauiMXMc4TAe6I=
X-Received: by 2002:a05:620a:1248:b0:792:ba5c:85ea with SMTP id af79cd13be357-792c75a0384mr1329258085a.18.1715699498429;
        Tue, 14 May 2024 08:11:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4S4VGlqFkjBvHME2OCbJc+xM35zlrwB2nmBbAdAlvnOFUj9Ev1YE2Zow33l3IJrgZpEtiKg==
X-Received: by 2002:a05:620a:1248:b0:792:ba5c:85ea with SMTP id af79cd13be357-792c75a0384mr1329254585a.18.1715699497938;
        Tue, 14 May 2024 08:11:37 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-792e4c1076dsm165732485a.130.2024.05.14.08.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 08:11:37 -0700 (PDT)
Date: Tue, 14 May 2024 10:11:35 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Sagar Cheluvegowda <quic_scheluve@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Mark Ethernet devices on sa8775p as DMA-coherent
Message-ID: <3werahgyztwoznysqijjk5nz25fexx7r2yas6osw4qqbb4k27c@euv6wu47seuv>
References: <20240507-mark_ethernet_devices_dma_coherent-v3-0-dbe70d0fa971@quicinc.com>
 <5z22b7vrugyxqj7h25qevyd5aj5tsofqqyxqn7mfy4dl4wk7zw@fipvp44y4kbb>
 <20240514074142.007261f2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240514074142.007261f2@kernel.org>

On Tue, May 14, 2024 at 07:41:42AM GMT, Jakub Kicinski wrote:
> On Tue, 14 May 2024 09:21:08 -0500 Andrew Halaney wrote:
> > I don't know how to figure out who takes this patch in the end based on
> > the output above :)
> 
> bindings/net is usually going via netdev, but my reading of Krzysztof's
> comment was that there will be a v4...
> 

Ahh, I read that differently. I'll ask Sagar to respin with that comment
taken into consideration!

But ignoring that, let me know if there's a good way to know who really
picks things up outside of experience contributing. It's Sagar's first
submission upstream, etc, so I've been fielding some first time
contribution questions and realized I didn't have a good answer to that
other than troll through lkml or the git log and see who picked those up
in the past!

Thanks,
Andrew


