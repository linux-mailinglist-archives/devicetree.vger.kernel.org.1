Return-Path: <devicetree+bounces-85867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D9C931A0F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 20:14:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F13CE1C21FBE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 18:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5985961FF0;
	Mon, 15 Jul 2024 18:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="V0oLfcub"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87EC61FCA
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 18:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721067280; cv=none; b=GTqgErJRUG3qd8WtSr7abrL0O7j6Zudmeehw5AUrpPMEi5hMipiuPGXlP6fCV/rXA0eCHROKHZ28GnB6rLjwDy/hfbWnDtaBQtYFWs4pTYQFRl2K9j4PiLp6R/Hrh6isfoaUcpxHGeeiXX4nfpP9Jvx11Grn8rRn0EPldcb45Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721067280; c=relaxed/simple;
	bh=kOPIQAFY0C9jKf9GWSFbVnvhzxm8W7Mj1wAmn5+Ju2k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oet8UA/nAVKUH/Zx2aj59z2yijr+EeLriWq4wg0brh0z3SAe86Hkt8c2r88w3P2w1lzXSlEHpd+O29W4MajcNkXj4aR6qxb41DqLhV98s09lOhJKV/THJw9Cj2KLVVMOnmZaOPPbf1EZhf+VZepT/gsGie2YM5jzc8x1J8v3rzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=V0oLfcub; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1721067277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=h65hcyq2faj4hpcGQ58xMuNAhidSbVZfT6CrANnVJxc=;
	b=V0oLfcubL8+zXpCUJzWzXlL6mnOLYB/JQPhIagl4KFSHAe8idQVDGQrxaqk+Rcmoyzr7yu
	gppBMrWoUNn3LX1Ns1Pyvs/PFDW2MAHUtepgN1gCEgdEc37K1lzZ85OI4up45z9LdZZMA1
	RpjSPwM5VdrPQhfU0XrTz8iJNfS/xH8=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-BagpTJBHOdCgmrVnEnhpFA-1; Mon, 15 Jul 2024 14:14:36 -0400
X-MC-Unique: BagpTJBHOdCgmrVnEnhpFA-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-79f08294f35so473348285a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 11:14:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721067275; x=1721672075;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h65hcyq2faj4hpcGQ58xMuNAhidSbVZfT6CrANnVJxc=;
        b=d5SeZhNzn936Kck6+1ADebUMp2hMDY1ejEyYNlXYXyAzHbHmVkjqypYRYFVUia+a9U
         0//IfVzIYLpzEMTptx7fil2FO1xPPVxonQwBrzQh0eaRzznedUdyZ9OjeG8L8J34QXcb
         u99Hk5c8k2NyZcX4ETjZrvTlRQHHRQ+WEobq852/nZVcnlBkB8iUjgvTL5aSS2KwYkX0
         20lRTCbWwoFdIAzR0cgt1TwdKCAADEqWR/8BX7saaCaOKQ3Qn1UNShr8qG5K4xWm81WT
         OJn69vqNOX7k+oNGHIhVAa0POmzmvp/Yk3wIn1GT/Oq3PKLy8S/ZbQ87BPod6wyPrXL3
         Hd9A==
X-Forwarded-Encrypted: i=1; AJvYcCU2b97+ueEsHmEmSl7kOy9XEFx3/39U/3957pwucJImJ01h1DLCNpiC766lvmk61VdHctlVdKzmPhWDVqYMCSti9wosrAyrnnpZRg==
X-Gm-Message-State: AOJu0YxFvP2QF6kGiajWO1pHRz5CU9r5IqbUjzEKenEs147Z4e9P7Kb8
	amNwR3AsMUBe8Ha0qBdW4EFOVAufLdhIhJt7xLglRFd+xrEbxNKPq++bot1DUK+ZF6SAJ5Jmynb
	w/wAqqsONpFAY3ZPWxqfGyeHOhmXTqObNg+bsI9dH6zKM7YV0OcOaB4I0PPs8kStf/co=
X-Received: by 2002:a05:620a:4724:b0:7a1:456b:fd43 with SMTP id af79cd13be357-7a179f424b7mr61726885a.37.1721067275557;
        Mon, 15 Jul 2024 11:14:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsG+WJZFOfNJsOhrGBT5TVXdo70BHb+PnBtQCyI63G5MKuUpxlC51GnL/HJ/4WDSEQ3Myk0w==
X-Received: by 2002:a05:620a:4724:b0:7a1:456b:fd43 with SMTP id af79cd13be357-7a179f424b7mr61724885a.37.1721067275255;
        Mon, 15 Jul 2024 11:14:35 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a160bbe7f9sm222498485a.43.2024.07.15.11.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:14:34 -0700 (PDT)
Date: Mon, 15 Jul 2024 13:14:32 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Qingqing Zhou <quic_qqzhou@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Mark APPS and PCIE SMMUs as
 DMA coherent
Message-ID: <nulprwjd52j2iq7cpx5nq733cbi6ccdpemq6a7ocglv4ep5jmh@jvs6zof5u535>
References: <20240715071649.25738-1-quic_qqzhou@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715071649.25738-1-quic_qqzhou@quicinc.com>

On Mon, Jul 15, 2024 at 12:46:49PM GMT, Qingqing Zhou wrote:
> The SMMUs on sa8775p are cache-coherent. GPU SMMU is marked as such,
> mark the APPS and PCIE ones as well.
> 
> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>

I think this deserves a Fixes tag as well, not treating it as
dma-coherent is a bug and can lead to difficult to debug errors based on
a quick search through lkml.

Thanks,
Andrew


