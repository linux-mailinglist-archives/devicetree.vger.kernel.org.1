Return-Path: <devicetree+bounces-113536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8029A5FCC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36E61281B8D
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3E4199FA0;
	Mon, 21 Oct 2024 09:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rlY6XEmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF59197A88
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729502246; cv=none; b=UN1ztXL2j/R3UNQLXXUk4Oj8cpL0AcT3JCv4CIhuUeu27pNQQaYByCoNFUfkx+rIICQAtvB/+YqT4xNvtRurUnUMQGHX9a9Prc37TYLXDCIX92DkktEJT6Tfy8Sp6sSzpsGFfSIadh7v8Txqg+0BPCTJTXMZQoQAM/gA9ictbv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729502246; c=relaxed/simple;
	bh=SlcExCE5m83JpX5USHKxvDFSoWMIIDgYCllc37lcEyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ibJfKXJofsKqgoTV+u1XWf5T6STHnK3/Dz+7YhWxrPggLIj7eRtx0RX6Xyqg2Y6/qZB1QIaF4gGIyyKWNm+5MVqM73zfjXRkEF7OVdjrbLDg+j4rj5A3t7yUgA0GtbRXfUlkfDbopp0IZTOZVNot2Gc7cOUJjmhjOF7+mKoqfg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rlY6XEmv; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4315baec681so42875935e9.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 02:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729502242; x=1730107042; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L1h1ZxH2zfKDXMJFGr7FqjuquR8vJBZMiFARTAc1c60=;
        b=rlY6XEmvU7Pacao1XXLmW1nOE1ounZsqDgM5Nyf3uN/CtLswhWWbVNRY7QvGSlx8N7
         K4nn6bHGWQsVijSSmh7tLprx7bL7sMm/1+EaujGCTNMYPzsat9ht+UCSNs+oJoVHgo1l
         wujVS3jiZ8h0msIcU1EKic1BwGld2IiLsRXNisa5O8RIh3QcHVz8zI4Ql/kTiIECZ/8g
         UqH+7QlDMWIVAfDa4qzl2+WAUOMrccYntSZl8APMl/X7dkpdjDPYkeFxulfti248sPD4
         pxZ2tHD47e+CaFx4Xv55UfMs8fdoVWXPM+9tpyvRP7vyAlMp6ZskC3q8Aq3+t9sFRmGQ
         eigA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729502242; x=1730107042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1h1ZxH2zfKDXMJFGr7FqjuquR8vJBZMiFARTAc1c60=;
        b=o8uudOphHgxzyoXIngKdzHIn+nMrsS5ktvy09VYY3s+rEnfe7lo+lHZbtnnoZAzP3K
         Yi8qHa7GqKh9/0egIi5vpMI8/O7NWJOyWIG3kw0XT2RBPkgTHdEafbQ4Kalo6XBshHxt
         p9rzEi/fR6aVrbar6FrgMyGbY9DWCFezvMnMN6w/qcOfL3/MjQF6vj09lKYqBSFqpFJf
         9AWpl5FQ10Ztb8x2/sWzH6ipN3nYuxgneQQgiVTHaDBe5fgydVqqamlzLIE+E/6xQdYx
         3Xrg4JZmMnyA1vI+ZsHBjqGg1V3ZpiZ77c5LiKEnapYePHTXcryadu5rq537KljxILeP
         b1fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWww4HtiH1IEPNKIiMDAXkHWKhtCTGhk+AkrL7VBVYv7PjamD4QuvH+buURVbUNkNyk9pxkgWR5uCn5@vger.kernel.org
X-Gm-Message-State: AOJu0YyDLwVWBRIE7Ix2fq6IY+efImRhov+1UWDeJp83Ldh+AEozc+Q3
	kqck/Otqnx8VA6UGJaFhuUulmF/5GUdAzz4UTXzzaybV0VTzjNHs2dAmd7dahq8=
X-Google-Smtp-Source: AGHT+IHhfmCxQTlXb6v9PcWrzQ+IR9TV4+36ukTmYh4+fz+XjFLWPJsl658OnTwNgOhjDqryazYOwQ==
X-Received: by 2002:a05:600c:3d9b:b0:431:40ca:ce6e with SMTP id 5b1f17b1804b1-431616a0986mr76272375e9.31.1729502242054;
        Mon, 21 Oct 2024 02:17:22 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc57esm49951845e9.48.2024.10.21.02.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 02:17:21 -0700 (PDT)
Date: Mon, 21 Oct 2024 12:17:19 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-ID: <ZxYcHyyRP4w7f/dM@linaro.org>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
 <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
 <ZxYWiwMzmU6wneu/@linaro.org>
 <ZxYYCvwTn5V2cw3m@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZxYYCvwTn5V2cw3m@hovoldconsulting.com>

On 24-10-21 10:59:54, Johan Hovold wrote:
> On Mon, Oct 21, 2024 at 11:53:31AM +0300, Abel Vesa wrote:
> > On 24-10-21 09:33:20, Johan Hovold wrote:
> > > On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> > > > The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
> > > 
> > > Again, this is a bit misleading as PCIe6a is using the
> > > 'qcom,x1e80100-qmp-gen4x4-pcie-phy' compatible in both 4-lane and 2-lane
> > > mode even if the original dtsi got this wrong.
> > 
> > But the lane config within the phy driver differs based on the
> > compatible.
> 
> No, it differs based on the value of the TCSR register.

Yep, realized that now. Thanks for confirming.

> 
> > > PCIe6b will be using 'qcom,x1e80100-qmp-gen4x2-pcie-phy' as that one is
> > > a 2-lane PHY.
> > 
> > Wouldn't the PCIe6a also have to switch to gen4x2 compatible on a board
> > where PCIe6b is used?
> 
> Nope, it stays the same (e.g. as the hardware block is the same).
> 
> > > Perhaps you can rephrase this so that it doesn't sound like you are
> > > using compatibles to configure PCIe6a?
> > 
> > But currently we do configure PCIe6a based on compatibles.
> > 
> > What am I missing ?
> 
> No, as we've discussed in multiple threads already:
> 
> 	https://lore.kernel.org/all/ZwPDxd9JJbgDeJTi@hovoldconsulting.com/	
> 	https://lore.kernel.org/lkml/ZtG2dUVkdwBpBbix@hovoldconsulting.com/
> 
> Johan

