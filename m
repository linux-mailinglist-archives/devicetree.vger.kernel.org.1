Return-Path: <devicetree+bounces-216551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A9B55256
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A15021C2153F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B96E30F7F7;
	Fri, 12 Sep 2025 14:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iKIr1OvP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6811B312817
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757688679; cv=none; b=OJMaf2utlRb1H2tDVwKsz5OSGMaPMTrhLhx1WZqoAqMywfcZ4Gm6XOtlpVL+K70lOCJvM7J/S5+cZi5f5PWvlUM1xe2j1a+bqlufWJVR11HsXPpKvw95p5a9Efrlci2pl6s5QOCam3svCyJbhNrohtbTt9woOYv4eDnl/jSQAPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757688679; c=relaxed/simple;
	bh=uk6E5Paty7fp1wof3TD0JBLDuNVPgNqH8AUiWEIMf+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Juk3jS/TthqGhLSN9ryiZcAvBjwNos8+IoUb1j8MohufW9gZsvYBeNAj6ONsQTFlVnf78C0voqX+UtxjnRvYl36fbZqsxXpXpfk0ifigxZjrxxEjluKbsaJZBhshgJQTA+0pG44b08Dd5zgeScGFfUVoAlElTpxN58sMnvm50Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iKIr1OvP; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757688676;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NU+SVzKeTWD0+BhYK3td1Pqzo+tTZOjwzHuyU7qJoZg=;
	b=iKIr1OvPFqOM54Bae9o3VBrP3eoAxITH+vi3c6A7mMF0kd9dGC5uDB2KWmFPn1TV0/H6N4
	eroVOKHkrBPUGeluYpGWf1b0QgURUNHQcBxmCRuYMSbOjWhugnEwENwNrqZlnDGyj42Axd
	htq6FZiKxI+wVbAEswQqXzAlc+MgbII=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-3nDhPLjjP5u_AOLcdt2WQw-1; Fri, 12 Sep 2025 10:51:14 -0400
X-MC-Unique: 3nDhPLjjP5u_AOLcdt2WQw-1
X-Mimecast-MFC-AGG-ID: 3nDhPLjjP5u_AOLcdt2WQw_1757688674
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b345aff439so56774581cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:51:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757688674; x=1758293474;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NU+SVzKeTWD0+BhYK3td1Pqzo+tTZOjwzHuyU7qJoZg=;
        b=MITEMvm+jzuWAq5vrmUUIujJfqOTq9m1LaxOj+GIwr7Y+N1ProB3HjMtzebT7vno7c
         hMxSZ1Stz/CJswzaFyjjFAdTTGGK+c92fn5LS6pAYyvhK/oDDqOKITF+TIYtlEn78KUw
         bQY+XJ7J5IOgRU+vbbtrx+09hTbsgwgu7b+zR7ru43gIXVIq3WiHxAy69mNCSGRXbQSN
         nDAAqGuBVyVU7g3pG/kdAc3DmUywPER/izeE0QT9cgCBd99UWstMX+5CP9aj+FrArVXc
         RAR3+ZEvuQPZh7rKTKmTTFH+kVHV5dyolM6IWi3j9WEXNyalKh1fMhTBSBB/XAiiJs2D
         GKKA==
X-Forwarded-Encrypted: i=1; AJvYcCXnElvVWndzJvqCgmaEECyd6bQtTyrNqui+aqFmHJxa15XQ3IlfF/ex3pLKGocb6zFSnuvLlaJTuD8l@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc3wTnSRpR8GR+JV8lgksAFwPEgFbdHEF+yJnj3T2pzMoC7c75
	ZCLF6nnun8ywP/K7mF+XzyesCDkX1ljOPY6EV+dQj8/+c6C4txsLHdnGidHiqEHZN0DQdKcLdeI
	coepv8o/BQ8z76yQRfu746G8PL/28OW2KPbfgcT7UUhFU1x2p+qAC0btahPOqHgw=
X-Gm-Gg: ASbGncsxu6ieerZFyYTPDYpAOmuD63yzRvmfOAhR8K9Je2XLL21pZxWSb/DzjScHQPp
	oII7/WHsv46mdTrMsCnCnTsB++lqQ3md1AaPq8Y8ZoeIDUMAU/Rj/Iu6Id8b5TwIXaFVgXeNXTT
	4NS69I213bMI6bNmOZHeglo5EFCy8EMD8cg8B7bv/SbD9crlq/BhvASmXjeGD9Q8x3kPBs57ISj
	mhAqB2fwqSplWPqik5t4u+AQfuFbxND/MySCqoXe0LYChnIBrtIbj5WOd1eYuW6/QDz0CjV19za
	GZEIXJcZcq9tO9kZ1EKOYWgiG+JMQcKGNlORe4Z2pzDWP13BuCMXsBeYYYzad8vTm5w5043bAjV
	cKMhvWjZrnOcKDortrbJMxerJ9KueKg==
X-Received: by 2002:a05:622a:1803:b0:4b3:4b6d:ec52 with SMTP id d75a77b69052e-4b77d0cc905mr42168401cf.32.1757688674175;
        Fri, 12 Sep 2025 07:51:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKHaF5tvFQHHNEZPu3AfsN41wRwe2BP++0UPlIuNaDPH6QWUiaDDqVyOq53mlk8SSAOAXHkw==
X-Received: by 2002:a05:622a:1803:b0:4b3:4b6d:ec52 with SMTP id d75a77b69052e-4b77d0cc905mr42167931cf.32.1757688673567;
        Fri, 12 Sep 2025 07:51:13 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639dcae6dsm25920811cf.39.2025.09.12.07.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:51:12 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:51:09 -0400
From: Brian Masney <bmasney@redhat.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: clock: Add spread spectrum definition
Message-ID: <aMQzXdVHOGoT9y4C@redhat.com>
References: <20250912-clk-ssc-version1-v3-0-fd1e07476ba1@nxp.com>
 <20250912-clk-ssc-version1-v3-1-fd1e07476ba1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-clk-ssc-version1-v3-1-fd1e07476ba1@nxp.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Fri, Sep 12, 2025 at 11:35:50AM +0800, Peng Fan wrote:
> Per dt-schema, the modulation methods are: down-spread(3), up-spread(2),
> center-spread(1), no-spread(0). So define them in dt-bindings to avoid
> write the magic number in device tree.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


