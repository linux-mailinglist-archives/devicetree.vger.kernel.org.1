Return-Path: <devicetree+bounces-248027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1FDCCDFE3
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 00:44:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E431430245F3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 23:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050561D7E41;
	Thu, 18 Dec 2025 23:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bEjX6jNQ";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="ghN4aU3/"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA120311
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766101046; cv=none; b=i/d5T5v9dn73NmMMC1+kmrBe53W0yqxt22yOetptDZUTRkBIc0MpvNqigGGxaNrFYisO/J50ltAf5v1LlD/Er5BvehXJ1BOaTPjhq1Gy+NoDXWD2ZSpmBorynpLVOXvmvo2kpikbq7KCN7fSUyOR4iBQxc3wf3eUV7ojO0PodhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766101046; c=relaxed/simple;
	bh=xrSMLIzsznJyXKpBxy2WiFFTsuEi8RHkrAWj8MUnxYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TksExud4+LlutLGrG7t/lWoV05gWfHCXRQ0zW6T9kuEDiVFm6axTnIExEAqkrlfu6r3ampDkUHpm+lwRSe1rP9rI18hEDBUmZTU44NzqVVkPQ645TVGNq6HSAGkIcONs4iVErfmeJZMMqaR/2ODn/Diu0Q4+TtZezU99KzisJes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bEjX6jNQ; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=ghN4aU3/; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766101044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=taL4VecI32GOlELm8+8Vnt26fKCO2BjXM3Lzuu9k69E=;
	b=bEjX6jNQ9YVK5N6BE8QwuKMKN09IHvdWm5gskXjYbU8ccNTMzMO5ofTwVl/bT7byXs2k0n
	djbROJznMLsdcuxMWEtpbH4/DblqZAWii71Pv1+IvKsfHjuUZju8mv9/GT3Ebp7EfkCN3o
	u/5AuwSvVHRgAQ7K3agwGl8M3drYgO4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-49-jIs427uQPwaSek3HPI2r-A-1; Thu, 18 Dec 2025 18:37:22 -0500
X-MC-Unique: jIs427uQPwaSek3HPI2r-A-1
X-Mimecast-MFC-AGG-ID: jIs427uQPwaSek3HPI2r-A_1766101042
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb0ae16a63so128842185a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766101042; x=1766705842; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=taL4VecI32GOlELm8+8Vnt26fKCO2BjXM3Lzuu9k69E=;
        b=ghN4aU3/blCCHiK67/oqzMlWTd9amggWI6uzjyYYWuK6OptDfnzENd+HA4hnggrIyM
         jVGjISZODF+4VF94SLI1rscxeFmbn2HEcqmeN3rMfXSzilUjtsC3AKyKVG+eEWyGDORd
         2V2uHT+PP1PB5ycuU5G1Pp2DjZn0qJqpcwyidFeoCfLfBcKHUPipmqGhuRJyZbkQL6Kp
         sotIfBSSdeSE5U3h8PP835xpdKmxQ+xE+ZJqHCQ+oh/xe4qwKa0XAtQBLFVU+fP8gSnw
         +d8DnPX3pexQYC2AyvNIzax2JwU8StOlkF59PahoWZuep/MyDGE78Vz8eMpJ1tk9HMFp
         lOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766101042; x=1766705842;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=taL4VecI32GOlELm8+8Vnt26fKCO2BjXM3Lzuu9k69E=;
        b=PCZ855yMHf1xWX8jb76q8e66lBCFHjcfg9Gl7MFaZNlInn482KrmKXk6fAJsnZxtpx
         ctgVMFI2ye0nf3KF0OHXn1oK4l0UdRpHi+qxflcsxaPdoBP4AyiQvSwVt0qlBhA7KOek
         4x0jVi6MhZuC7bwji4dGv6OwdEkM6xIJUHnIU6Wsl4gjU+Pb6P7NGlL1djGaM8OCQWc7
         fx+N6ieaZ1KFBGMftEjJ2pa68EM69xYiGwX3ziEpYaRq0dVayi0byWB3sui5X1Xc5sYT
         0E5I0x6WAbHIUXWA08gDn/2XyN9fp5pMDxQua/im8tcbvpvQJg9Z5ELVokD490WwadAa
         fhNg==
X-Forwarded-Encrypted: i=1; AJvYcCUFNHi1S+iv9GfABCQDK+xhW5U9WVdQgm+RDa6KInCxE3RN9dohcNQ6wRaa7v3d8c+ubDz83CghGdH/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcb8Kai7Nr6tRclEWQxbjcYjrdqMEt9xjZXCRSLWwwAd2VcQkZ
	Mf0MJNEzUonhenQW0ZLfdaDr6HNrD8YsVhPif9VN7zgEAj93F9Ay2H1iFtiQxKzAKFXmM1oCtzb
	v1cNqER8BszRDPV74LqtZ+4ruSXtNDEqiR6B+4eNZCG4I1LWHRRprn39hQsaUIm4=
X-Gm-Gg: AY/fxX6pm7aI+ZTLuPkjInIS2w+BsT7nZEohmbPd4D5nZgCL3EEmbF05ZzoVUTE2vtE
	bH6aHkOyipJB+PJGi6Ua//QW8xVq/gMm6OQnOjR9rINHTtwYebKQs/KcRtEk2YRDuuHW1qCPlz+
	sLPPB84rsBrZoOK1NWJWCK+CqpfmKsGLV4GbKP9dVhioHAvj3Psd5qn+i1R03yVRgxCabJYDJcP
	iJJaeAZew8CR48W10+JATuNAuLlyHzL43bcSeRlT6FobJQ8SQroXHvHX8/hBkx+dnfcX/gZQTJf
	ulyVw9RLNCfRYK344RsIAfAKlrJ8p6vz2hdc4e2rmavY/dBgQpZP4Jkc8bB0H5z98tmcsyo6jaE
	Lc4bDoMc=
X-Received: by 2002:a05:620a:2845:b0:8b2:a4ec:6f5 with SMTP id af79cd13be357-8c08fbc8df3mr229402285a.11.1766101041954;
        Thu, 18 Dec 2025 15:37:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3jIAaZOF2kHstHYRyO1BtEzZDtmYfFo47TmQj/apy+4o6oNz5pTegY6y4DTnGxbC+K1Y2Qg==
X-Received: by 2002:a05:620a:2845:b0:8b2:a4ec:6f5 with SMTP id af79cd13be357-8c08fbc8df3mr229399685a.11.1766101041544;
        Thu, 18 Dec 2025 15:37:21 -0800 (PST)
Received: from redhat.com ([2600:382:812c:5c2a:d26d:b7f:4624:dd34])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0973efa97sm54606385a.39.2025.12.18.15.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 15:37:19 -0800 (PST)
Date: Thu, 18 Dec 2025 18:37:16 -0500
From: Brian Masney <bmasney@redhat.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/6] clk: anlogic: add cru support for Anlogic DR1V90
 SoC
Message-ID: <aUSQLB1fmYgQe_Fg@redhat.com>
References: <20251216-dr1v90-cru-v3-0-52cc938d1db0@pigmoral.tech>
 <20251216-dr1v90-cru-v3-3-52cc938d1db0@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-dr1v90-cru-v3-3-52cc938d1db0@pigmoral.tech>
User-Agent: Mutt/2.2.14 (2025-02-20)

Hi Junhui,

On Tue, Dec 16, 2025 at 11:39:43AM +0800, Junhui Liu wrote:
> +static long cru_div_gate_round_rate(struct clk_hw *hw, unsigned long rate,
> +				    unsigned long *prate)
> +{
> +	struct clk_divider *divider = to_clk_divider(hw);
> +
> +	return divider_round_rate(hw, rate, prate, divider->table,
> +				  divider->width, divider->flags);
> +}

The round_rate clk op is deprecated and I'm really close to being able
to remove this from the clk core. Please only use determine_rate()
below.

> +static int cru_div_gate_determine_rate(struct clk_hw *hw,
> +				       struct clk_rate_request *req)
> +{
> +	struct cru_div_gate *div_gate = hw_to_cru_div_gate(hw);
> +	struct clk_divider *divider = &div_gate->divider;
> +	unsigned long maxdiv, mindiv;
> +	int div = 0;
> +
> +	maxdiv = clk_div_mask(divider->width) + 1;
> +	mindiv = div_gate->min + 1;
> +
> +	div = DIV_ROUND_UP_ULL(req->best_parent_rate, req->rate);
> +	div = div > maxdiv ? maxdiv : div;
> +	div = div < mindiv ? mindiv : div;
> +
> +	req->rate = DIV_ROUND_UP_ULL(req->best_parent_rate, div);
> +
> +	return 0;
> +}

[snip]

> +const struct clk_ops dr1_cru_div_gate_ops = {
> +	.enable = cru_div_gate_enable,
> +	.disable = cru_div_gate_disable,
> +	.is_enabled = cru_div_gate_is_enabled,
> +	.recalc_rate = cru_div_gate_recalc_rate,
> +	.round_rate = cru_div_gate_round_rate,
> +	.determine_rate = cru_div_gate_determine_rate,

When round_rate() and determine_rate() are both defined in the provider,
only the determine_rate() will be used. Just drop your round_rate()
implementation.

I didn't look into anything else on this patch. This showed up on my
search for new implementations.

Brian


