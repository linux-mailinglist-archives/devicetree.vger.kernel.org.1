Return-Path: <devicetree+bounces-31405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B80CD82B14D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 16:06:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4842C1F27E7F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1CD3C48D;
	Thu, 11 Jan 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LFZfW7ji"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2D74B5AD
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 15:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704985580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4NyWYyJWIFLvqgVXLzjaVdG5ra7Nvuql968RMbOsilM=;
	b=LFZfW7jicS54Q1GJp+gMFHQyAHLhLmwMvqfg78W7797MtejLN3XaqBZg43hucoBC4tPAEU
	35h6PT8PJiN0iJEuw1nmRKRyv+syUPzV4zu2moha5oulJDxgRT5oEKqm8+fBOIuivxQ+Yb
	TsFEYGsRznkzBNaZtcyUTiP5OrXlH8I=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-JMZd5c8NMMa1xNGkDqP6xA-1; Thu, 11 Jan 2024 10:06:19 -0500
X-MC-Unique: JMZd5c8NMMa1xNGkDqP6xA-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-78335f7af59so256308385a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 07:06:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704985578; x=1705590378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4NyWYyJWIFLvqgVXLzjaVdG5ra7Nvuql968RMbOsilM=;
        b=RjDv1uivrmMv3stOTIEEvN/0bUu2sCqSrAKNhNp5FuSHWjw9puUq1C/fYxP1ldFM13
         EBol76NV537E5pPf0XZdQpPx9Ef4vGd4YklzQkJe+P8SYI9PLFsdaCdkIwEb8JXxcqHa
         xaxwQusr/C/KObapwoh+FBVml828MlYct7MfjiBQ50XdpJNuKJhpJQrC8r5U9o+m0EaB
         PmsKrjk/e7gEArXZzovjrXkuFdGqd3MBQxyEr3fehfDygFq033Uqtjpoe8GbOzByxejl
         am6gi7Q+HeOiUrCGTqFwQPAIovbKmUVRLdlQidO+mi9v/b2mUirazGQoHRhSzcn5qaZB
         Ygjg==
X-Gm-Message-State: AOJu0YwxPtgBpBjYuQb04zwL2KNEQujxqYCqeHEEGHzwCuujrzZAqjsN
	0XnzHSS2cLkyU/3hsjV330QX9UcxrDiBOcuKal6D7Q5uXq7JiT29bwCCSqFYi4CJf8d9A9hblBy
	5dPf8Wj4EXFlct2Xnf9YzR0IdCA0uHQ==
X-Received: by 2002:ae9:f109:0:b0:783:2c5f:939c with SMTP id k9-20020ae9f109000000b007832c5f939cmr1424750qkg.39.1704985578193;
        Thu, 11 Jan 2024 07:06:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZ5KysuSrSEUxaDqgCcoAWvvoCJTJvmkb4vE0TaVYFriF7WasRsG2VBwYO6XFSBITehv4rSw==
X-Received: by 2002:ae9:f109:0:b0:783:2c5f:939c with SMTP id k9-20020ae9f109000000b007832c5f939cmr1424735qkg.39.1704985577923;
        Thu, 11 Jan 2024 07:06:17 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::47])
        by smtp.gmail.com with ESMTPSA id h27-20020a05620a10bb00b0076db5b792basm390174qkk.75.2024.01.11.07.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 07:06:17 -0800 (PST)
Date: Thu, 11 Jan 2024 09:06:15 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Lucas Karpinski <lkarpins@redhat.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sa8540p-ride: disable pcie2a node
Message-ID: <ea4ucaogzewpxqiwg3fegipnhj3mpfxcvm455a3ow6vs4maqeb@usgbirpaeqmj>
References: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
 <ZZ_1ARhDxYNk7Gt2@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZZ_1ARhDxYNk7Gt2@x1>

On Thu, Jan 11, 2024 at 09:02:41AM -0500, Brian Masney wrote:
> On Tue, Jan 09, 2024 at 10:20:50AM -0500, Lucas Karpinski wrote:
> > pcie2a and pcie3a both cause interrupt storms to occur. However, when
> > both are enabled simultaneously, the two combined interrupt storms will
> > lead to rcu stalls. Red Hat is the only company still using this board
> > and since we still need pcie3a, just disable pcie2a.
> > 
> > Signed-off-by: Lucas Karpinski <lkarpins@redhat.com>
> 
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> 
> To elaborate further: Leaving both pcie2a and pcie3a enabled will lead
> to rcu stalls and the board fails to boot when both are enabled. We
> have the latest firmware that we've been able to get from QC.
> Disabling one of the pcie nodes works around the boot issue. There's
> nothing interesting on pcie2a on the development board, and pcie3a is
> enabled because it has 10GB ethernet that works upstream.
> 
> The interrupt storm on pcie3a can still occur on this platform, however
> that's a separate issue.

Related work-around to that in case anyone is interested in the paper
trail:

    https://lore.kernel.org/all/89c13962f5502a89d48f1efb7a6203d155a7e18d.camel@redhat.com/


