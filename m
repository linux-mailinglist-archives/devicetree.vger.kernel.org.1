Return-Path: <devicetree+bounces-216559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 086A5B552A4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:04:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDFB53A6F1C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F572211A35;
	Fri, 12 Sep 2025 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dsJr+Fbu"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F5B221267
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689463; cv=none; b=D+Xpu0Uoi/5PNtd/idfByXLRYmW0XWFBxiyenQYIKp+BMK/nWQSjs5SOM1OgJyDjBXgQRnMjjl5R2pB9Ltx9/3p0fUtJ9QSzlZ8zdMco1XjrN/GUvJX668TSH7mpypPHY3Ez6VlKIHCCE6YBzGShlsOi4k3C7AfXeUqIm1NqiZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689463; c=relaxed/simple;
	bh=2U3DqoOB9c4gUI0P2Jy+1Db4qAN8DMTnVvxyqVJIm5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D7S8Euerh+r+ixHz6V8qRVe5OMCaNbU7v1ad/yqDwiGyf4yLtkKxamesc6rZx5yi3+QPgxJfGpnbWriM/pkISxQWI5idv7xr8pZstzsxjKMlKIHbVbghwQvr0jEidI/S4wy7GKDgtoqF6bGzt/QipipBFPETWBDMTtKs47upUuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dsJr+Fbu; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757689460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=w6+03+6KMi0xIZ+CNaQJK/sgah2Ln0Cdnhj4ONcK25Q=;
	b=dsJr+FbuF9D1QyjAt6Qo0YdPAZXThG3KBcK/mZqxalAHIVAF8LRvWqCt+jnVXkO6B9C5wk
	2VefN5GoXEWwjwJ7Sln1APJfhPo0B6J8mWSbJ9visp/qtGLy43wwgi65hiKvkP4de77r5z
	XNAatKitma6tkupb2PRRBBC/DE82HCI=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-288-yde4iCCwOuKB4FQt9d5DHw-1; Fri, 12 Sep 2025 11:04:19 -0400
X-MC-Unique: yde4iCCwOuKB4FQt9d5DHw-1
X-Mimecast-MFC-AGG-ID: yde4iCCwOuKB4FQt9d5DHw_1757689459
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8217df6d44cso337413485a.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:04:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689459; x=1758294259;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w6+03+6KMi0xIZ+CNaQJK/sgah2Ln0Cdnhj4ONcK25Q=;
        b=n7ifooVowNg5FxWvTdIA7e8uiB4KlcVniQI1J6+byYVOlVXXyG7CW1GTJDTMTb1Vlr
         j0U/YvbQ5s+Otk9pJwb2hOEuHymcWY/Bvb5RMxiMapznz3/iJSkeDrtXTVasIfVnDMht
         869+vHIg2y3NuOTC6rjAbBSOyeTTRl0u9yRR5uXiQA9lsaTA7GLEbQ3lcB1T4MA8ibKP
         T4Z0wHktaVGzYVXl+uy+pK43iJA+7dGM2+3t/XwPGR1aJ97Mcsqhkyyf50qHcJwdOCAq
         CgNH0CeddjMfug7E8X5HX5H731u0jnmcB94BNQukurqPFruWVtAmfe9pLRK3s9Ks0bM+
         OnNA==
X-Forwarded-Encrypted: i=1; AJvYcCU9x1w0aD89XhwRVDTrYbZ9njZ2qEkrgHpuCHwlQ9qxlBOom2VhQBjrS2oCdJU1ljgvvWs/EU0ogoz7@vger.kernel.org
X-Gm-Message-State: AOJu0YxSXU45B3jVugYARhMxvyDOvG/zVzG+dCTVsFr3kXTjcUljVVHU
	4nkYplog055A3KVQSloDxEKYs3LtrsSQJ5sHWfFEBg3UfgGe+K4SrOU8w3hchqtJkTuAvGSoktG
	o4+eR7zV0gHLybYiXX6EW0NEX7uug3qsiR7l9DSCifGZYTniHATVnLzzZSOIqa+8=
X-Gm-Gg: ASbGnctVg87lR2HJu0VWQilmbQ2X2xK2N2FZG4198n7aJuc2fbZWfX7MDYMykXrSUj/
	mSFvkqE2NoOq+s1S7ojpxkPJfyMZz1mvW1PH+KdvPLtggGBcx344UoaGTIcaqqmnm2v9EicPoIc
	fqFs80rnbgadsINBKr4BmEsCzNDdWo6YZ8vxiUpbIXluabNBdU33PUgkyWWhvffQdBYcloRUWEI
	VxLsLBNwk2RT3kxweCF9NNhzr9wOLA4zzetfhPI40OhWXBYl0v2Cd9A0TxfmL00m0XKDnvpLbZP
	Ja/hMue8JdrgPwNPsVDoCgvD1cMqlOdoQjlm7LH5mCSqy0O+paO/kfW+cp/jJ1pza3H57eV71Jv
	M8XVjhd+5BnLAJn+jZLGIMED0Zl9yHw==
X-Received: by 2002:a05:620a:28c4:b0:810:bba9:d089 with SMTP id af79cd13be357-823fc987678mr477704185a.32.1757689453056;
        Fri, 12 Sep 2025 08:04:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEgtgh/Gg0WuKmmKqdI04apG8y63BvE/4WJYY0ss9G0WLraw6KPsoUpne6BKqb/M/2Jd8L2w==
X-Received: by 2002:a05:620a:28c4:b0:810:bba9:d089 with SMTP id af79cd13be357-823fc987678mr477601585a.32.1757689446310;
        Fri, 12 Sep 2025 08:04:06 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820cd704b90sm283525285a.43.2025.09.12.08.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:04:05 -0700 (PDT)
Date: Fri, 12 Sep 2025 11:04:02 -0400
From: Brian Masney <bmasney@redhat.com>
To: Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Patrice Chotard <patrice.chotard@foss.st.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 5/5] dt-bindings: clock: st: flexgen: remove
 deprecated compatibles
Message-ID: <aMQ2Ym1GL3ZbyAOI@redhat.com>
References: <20250912-master-v2-0-2c0b1b891c20@gmail.com>
 <20250912-master-v2-5-2c0b1b891c20@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-master-v2-5-2c0b1b891c20@gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Fri, Sep 12, 2025 at 01:36:12PM +0200, Raphael Gallais-Pou wrote:
> st/stih407-clock.dtsi file has been removed in commit 65322c1daf51
> ("clk: st: flexgen: remove unused compatible").  This file has three
> compatibles which are now dangling.  Remove them from documentation.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


