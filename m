Return-Path: <devicetree+bounces-251889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CECCCF7FC1
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:11:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F44930136D3
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 11:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C1C030F7E8;
	Tue,  6 Jan 2026 11:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dFQWGgH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C8F199E94
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 11:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767697912; cv=none; b=UNK7XaXx3wTV/HTflbsGe4xBugbuh8ektZH2QnMJyU2ehybdCxhxWo4QLQMxBWbOQWqolGuKZkzLkM+IFWW5fJyZE9YPor8IQtOAb8qhXSOQ8c7X4Fxmt7AH+Kjcoyq9kLrTGYFYUY1i/MnKDRwrQ67jj3Va8e8T6ypd1dti3zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767697912; c=relaxed/simple;
	bh=a2F7YL8leUAOvlvMu4zckGihftKbZ2gJp5pJWtEpoiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bdhMac4TvFY6kyO7jiTHeiqn+7aKHTlAyQ3HDuNKTcYsXDgzN+vXnL4BPIx1L2mjvgCPvDIUJ9Y8o9RB1XK+5oh0OfhjvBiy0MRF9oB6RYrk76MTV6+NBoXPclvmphAjTXemwQ7xOwsAA+spwN2d+XnWPmuql+IkgHUEIIoz/W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dFQWGgH6; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3d7c1321so486060f8f.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 03:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767697909; x=1768302709; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V9SJsn0IaBRHmsN3YyFL5FZJYk6K2cgBjWAKNd98Wh8=;
        b=dFQWGgH6m1jQGnSLu+kyvlzzjUAkIGCNWy22ezn2rEJZ6dWvCiOvwaa1CUUvT+NOyU
         InPA+3RAy8Ae/udWdwHSFMZychv0SvtGOkLYzOPGXsk0L/l7KrS8LQejOUR5nJ1Ysap2
         KsBJ1n4qdM07NlWtnD78GI+tVP9a9VoGGqR3tPxMk50ahs9G/dZ2bzti2pqlD6PoUQGS
         7ATTZ2wDH13LnLsRwX+/IKSCVmLLLwC71oS1AwSsB/sFQS/948JT9/35+JnDzDoeMLBl
         YB5gHa997fhP/pu82pFy9HRZ7wHbJjyG5xuvohvyVE1WC7aW3+otJ/ifn4zFJ6t9r9pr
         LCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767697909; x=1768302709;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9SJsn0IaBRHmsN3YyFL5FZJYk6K2cgBjWAKNd98Wh8=;
        b=wg+UDkYXoAs1ztTvKsWHSe1BnUucyxbp6viL9nkF6ynyEVr/rbteulJa0KufA0gVvR
         CxPJby5ki5bc8rumtIe3SGFbOcot66P2xFPEz+XH2LbrczBJpShhzmK+Ep7utFReg5/o
         PsnzY+bekfKSBdTxUmY3xk5DB010W3XSeEjFewQ1GxQcu5FVEuox/U4BhEh8Jc/W6Ik6
         WGXh7tHZtpJBven5krXgbHnQO3JE/bGZpsEXcJa5pZSxnyos97aBdn1tG9PCzdTaxYHn
         ASK9iu7tcbLEgPRh7b3rqZhbcahZehoa8Lf50JYYVJMb01PAbQMvpzUoEX6Bas8XWZAu
         h2gA==
X-Gm-Message-State: AOJu0YykVLeZWoqyeS8dt/D0J0CJG5Yqa4volmObR2R4xakr4WSRENk1
	6zptjzM3a36dZBXZoZJfmpF57YNZRKL8+sF4QgUyKKF5pkHD7Qonj7q84S8FPQ==
X-Gm-Gg: AY/fxX7CchK2TGLVJsleWAM/YHJtTN/MpEXBSUoc9GcsKYS68PqCBNtYvWmLHc+hpZn
	EoWKlhmWOiTVq6nbUqRMxVxX21r9MYv7E5uoPSlZz7EPjhMwz6+q38SEX8P6OVmiSQoOmum40E2
	GaRBz2MLr31HN8wpDtQOqAD4Ai7zSeCDU7aNi96HkFpg5advSxFYDeYZPwkxxJpQMCTvmAPsHij
	qyLmuI/eFEpWGT0By6AJzQ9dU6w28+Y3ESTMqySGJ4Vqwa9en3UNzNO7TbOz/TAt9o/bkG0qD+b
	wACbRmdnmEqK/nuMmeBNj4OQ6aczL/idv9UK9GmjAd4qq3CV5KVWHLEpEJRbGAd/mNWKR0QvfRw
	kx+HVjXBypjKQUiHn32k8noYRG31NCtKZhle+h5k2LTgrn99IKCktrsrHQpD6VDGZcnqE9GTW6J
	Su6wL6Hcnzq0R4MQovFmDdSMyy8RlRYbfc+6vLSfy4c247GNwjrp6FMKpNbb5LEJ+Di5TZXnIR5
	AdzetbU0Rcz580PF/Xu7FAl/MHCuZSk
X-Google-Smtp-Source: AGHT+IHUuYlVORpetXhgVAXfGMDXsPDVfwvE/C/OPeXgrPCsTr8liGY2193dNTUJMH/upS3YC04ZsQ==
X-Received: by 2002:a05:6000:3105:b0:431:864:d492 with SMTP id ffacd0b85a97d-432bc9efe6bmr3137882f8f.36.1767697908526;
        Tue, 06 Jan 2026 03:11:48 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee5e3sm3797112f8f.35.2026.01.06.03.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:11:48 -0800 (PST)
Date: Tue, 6 Jan 2026 12:11:45 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Yannic Moog <y.moog@phytec.de>, Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/3] arm64: dts: freescale: Add support for Variscite
 DART-MX95
Message-ID: <aVzt8XemmIPz18aQ@Lord-Beerus.station>
References: <20260105102412.6674-1-stefano.r@variscite.com>
 <20260105102412.6674-3-stefano.r@variscite.com>
 <aVzjQEhpv4fenAWF@shlinux89>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVzjQEhpv4fenAWF@shlinux89>

Hi Fabio and Peng,

> 
> CM7 support still not landed, and VPU support also not ready in upstream.
> You may need to drop these reserved nodes.
> 

Thank you for the review and feedback. I'll address all the points
you raised in v4.

I appreciate the work you and the community are doing on i.MX mainline support.
We at Variscite are starting to be committed to actively contributing upstream,
and we're happy to help with upstreaming efforts for the i.MX family,
including driver development and IP block support that may still be missing
or lagging behind vendor BSP.
If there are specific areas where we can assist or collaborate,
please let us know.

Best regards,
Stefano

