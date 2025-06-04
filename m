Return-Path: <devicetree+bounces-182725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45015ACDCC6
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9E1A3A5B4E
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 11:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7F828EA6E;
	Wed,  4 Jun 2025 11:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UBBOEj0P"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEDC28ECC0
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 11:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749037076; cv=none; b=sWpAQbqWft3QUH1quYIUnn2v1SrZalK4Rc+4/NZgfXLU8VbVH/nr39XmzSynKZLepdHvj19bal/ibL5c0nG0BCoy4jSxJjy00u9EGFjma/j3314OXmGj045LgB1RIf8ULukWtyhaOitwE/rp7N6Ig8fLFLY4TVapohnrwlGHF9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749037076; c=relaxed/simple;
	bh=F10fiqsLhF2Mq8dlwYrpyg7iKDkWmXkB/v0erCCXch4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=F6jstTf+u1qJcELy4o8aS+RzAyyxxDBHrMD4FCm5XHEpkYhWRH1LfswRa+wac8AP/C+01BmlgglLWTqT0Imj+JLWdVf10/mQsYWEq4ou2cGnnJRBIQjuQbGXLylgY4hYZxGM4OIc4SgjPDm7EqhUsdPAAt3opugm0bjgGr4UNpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UBBOEj0P; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749037074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8yGTTsgiDWY8J2g+V2j1fiTS+GMay2l9LmYid1VFYpE=;
	b=UBBOEj0PpSHSjl0GNp/qTOLD44OWiwHa1djifk12uWHWlg5uef9wQA9PoSqPYvujmQwgdj
	vzT8fwB6IBlDqYUwC04SAafwtCt6jLR5ln2c1gp2JJ7HWS5vlrnhkCfIJmf16KQGA5Vjxe
	qcL2nsxCaGTOHTNE9O8IfOaljUjLT1Y=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-688-Rmv-i9gUN-m-Ahdn3bwGZA-1; Wed, 04 Jun 2025 07:37:52 -0400
X-MC-Unique: Rmv-i9gUN-m-Ahdn3bwGZA-1
X-Mimecast-MFC-AGG-ID: Rmv-i9gUN-m-Ahdn3bwGZA_1749037071
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3a4e6d426b1so426431f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 04:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749037071; x=1749641871;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8yGTTsgiDWY8J2g+V2j1fiTS+GMay2l9LmYid1VFYpE=;
        b=bOrhw4+ung8/TIFCMABn99Kv+0scmjBXzFZmlAIRAwi2EA7admkfM0VFKHx3aMoxd1
         TCWy8/B4XPS5WerlnRb3fP43CEOQVHgpsMRaOkrb26/1Xnk2F3hqM9/JlMP0qaCswxzn
         tM7Xve27LJrqfxA7AI40Lsauk0ffOXI9X6HHhsUjHK0Nf9Z7uMokkqOlPB3MDqw8jlNQ
         IOR8yDzOUA808oZZiLQ4vIaXw7eM7enI3Nl3qPrR3np8p2AHcAICDp06BlkGCOb2HNn2
         RiPMvpPmB8Dg1XhnPepmKNPO36y4JtaLNtCsZxXWCZmQFBuT8JlfrkaJni6IJ6YblzMs
         zpug==
X-Forwarded-Encrypted: i=1; AJvYcCUaiqlN5xegaL999RO6Xb9/+/9i76G+jU0Gy5lBy+olBXxV7g12brt4WCIxPBAkiuogsVR+eHoM/wNp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa3sXjbbMj5g42TbRv8B7ncLcP7NUDzJ9LLXnXDz6Qe2luNtmA
	gqBIoNG3ffvdx6AEfRaY/JL9J/2Hfote4Hjbn/5V1G+CZdNntV1fdRQE2a/WciorFq1qb7s9Krc
	p+PGwVLNFuVNQNgQ0CIqrCWAtZKSpsQarH7A8U4oZrTzHs5CVZ3FN5ZnskpWQIyU=
X-Gm-Gg: ASbGncvdg6lS69ygKtCQttOXr75j6K5JqcRI2KGVwUeudVUG2HOS0K7yGz3E/JbpP05
	jK3VLcfnQ+Xli3RKAu208zeU5QhEd4+QSwHhwfoINT1kR4JnvZ/2R1o43fFBu+EjP7w7an1Vylj
	qiOTg/liOv9B+OtTT/3UypbJgTK2bVnbCZe9yofI2+kd2cFFvX/U0Fihsmb+u2Op4Y+YRxyGV29
	QdTdMGi26IYf/NOeLj5/hwVXHePxGQvMGMwHW/xtqR9vbXy6J3VL3cooTqwOrmzFodnHr4ZzJXV
	8E5DT7VMDuCv5YIxNAJ1hYtzqB7tagteaAILvGzGwF8B9upoOdxOgr/bedX/t84nS4Ovfg==
X-Received: by 2002:a05:6000:2204:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a51d507a12mr2123883f8f.3.1749037071501;
        Wed, 04 Jun 2025 04:37:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv9JPJbgrjB229TymXofASXM6iZs/ATYKLOE2MEqqHr8KFbOvdQ2US8CPOluWqVOJ3OvEbgQ==
X-Received: by 2002:a05:6000:2204:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a51d507a12mr2123854f8f.3.1749037071124;
        Wed, 04 Jun 2025 04:37:51 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f009748fsm21172908f8f.80.2025.06.04.04.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:37:50 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add DSI panel support for
 gameforce-ace
In-Reply-To: <20250603193930.323607-5-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-5-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:37:49 +0200
Message-ID: <875xhbagaa.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Chris Morgan <macroalpha82@gmail.com> writes:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Enable the DSI controller, DSI DCPHY, and Huiling hl055fhav028c
> 1080x1920 panel for the Gameforce Ace.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


