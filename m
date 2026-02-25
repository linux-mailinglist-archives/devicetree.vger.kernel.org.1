Return-Path: <devicetree+bounces-268282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cALtIm/TnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:48:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ECC195FD2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA85330465EC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AEF2392C4F;
	Wed, 25 Feb 2026 10:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUyC7rmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3192532A3D1
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016247; cv=none; b=sOt5+gNWIKkfqsFD/1qc/wXv1AAFV0S+3ZicLaF4x2NXGj7PzOXzbN2D/wc3O1rC9I0MDMA30flKigbHg8dP6ssjV0KEyPKSMhN05T/QQhHZKMo/2EHMdpQtm4VP6s5A/yreESRaUBbXoU+GIVw5qF77MqEt8qfnJG9GRsloxVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016247; c=relaxed/simple;
	bh=WgAXcvLFOLlS2CrV7fMpnmt29OISe3ahfs2U6BLXuUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d1UhU8AhY1tvgjY6NNsdfHnw3JyZoehnHuWHE0TIGLEz1eXLLgip/1RHOG0Fu77dwWYB9ifgRs/raPd5Jbp5yJfP2gbmge1BWYO8SYtRF2mY4y6z6+9mwj3JpfxUwSFS7jnQGxdB9e8WYIxO06HezMH8szMqWxkaLuJa1RphShk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iUyC7rmJ; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-8272c559597so229539b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772016245; x=1772621045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dOtyPf4DV0kGbhPpq+32kw+kEiZwwmgV8bS/8w37MW4=;
        b=iUyC7rmJr0h+XUS/rpcVokWVJfwWdRkHKjNR9fZu+2LWE8ETl4la7f86memOBkaYsg
         KViTEflgkz3U2ge0KgFYoVTziKf1AeOstX96BnyEPmuSXxk+/wyEBuRzDGho5+s1g83t
         ZcZRrRfY/BpgPh/05utMqEs2oCXJ9zYm42qf0ucTAe2ciMNya9/Q/jMQD862fCvPT+3A
         eGb63LLo2EytsfIznQWEuhnJ72exEtFig8b8NVH9YijIOlk5ohOG9JaX05LCZqpRm3D6
         YLEtkBzCzSwl0FoNEHryfeAwFHhVlSGUxtDOyZHjciOgcc93OrQTPNx3rRt+nHQ2RAQi
         /4Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772016245; x=1772621045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dOtyPf4DV0kGbhPpq+32kw+kEiZwwmgV8bS/8w37MW4=;
        b=DgQEBfEvQStdvYaI4zs83IKTLabpnb87tAXmABw2oMDC4Drodx+DTRkyBGHs4sZXuD
         eihxpNy91sQmjjpoLJpZvM/hJfG55nwf8w8jEybjVbMdiQhA2hrP/0Se7k/eGUCgh/At
         h88UBrHkyoqVJ9l1CTgRKZlkD1aopeyi/9AaEw1SaV+phxSbzlZVVtVs3LzI1NqlPD+d
         buZjw/3jndq48nwu6SdQ8GvgQDL2ZOdI/0vdUUwNSCsE7f0EMFKoxtchDuiUg6hmaZxN
         7ynnEcOFoNwchavJMP9JkKYYlYQtTyRsvib6+hgUJmEWBSfu3673eAeTmZHfa2NR7mUW
         CfwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWASpK0ek02wXrUCqA3scrPAZneaqIcSuYd9wpeJAvAB9rCQ72nM9By4R/ieI1FPHovQcK8pZ5RgPBH@vger.kernel.org
X-Gm-Message-State: AOJu0YwRJnUz1GlA3xWYFSy7SRZgVSXCetYR1u1hx8I029IBDExrlLvW
	aUhrmWXYXEKmXP45KO1x+6J9HP7hoTdSiB5x+F4wlbhWtTUTD/RLlVXQ
X-Gm-Gg: ATEYQzzCFSsb6dSNfnLz3f3UDJrAfzfR2wxkLQdPwUGc61gb5B9aChp5p2cn2Jk8MPe
	5phwOCMYFKSQQ4T7Btxnzfs7oRbh7msTZW87wYa1uM1B1vZOlY/0R0mQNHkTp+UlnJm+iPZ1FJ0
	rWUyw6pzZDeMrIVzjee5VIO6pv8HnGahIJ1X7JjufoNndGtjSG00HVLsF9RCbjdi1bKp471WaqF
	P6bk1oceAn0KbKcsb7k0xDi06b6NioEypFq7rf6IlVXIWlMrZ3B1D957UeKnMnHTMzDA52bBnnK
	T3RBt2zjgmSFTFvM3uu8NvZRXIGGwrvN069hAnSK13RpMXVQqlxv4de8g7kcLCNhlFqzD9PcuRi
	QAbQficE/IiNeNWtspY5z5G0CJ95HEWD/DdJ8yUX9u2LdZFXkyEdXswyuyHoVv/lDWkpAi9PKzx
	6n5fXrkinekME9W9ekCD8lXg==
X-Received: by 2002:a05:6a00:b8c:b0:824:a4c4:3b3a with SMTP id d2e1a72fcca58-826da8bdbcemr14510549b3a.7.1772016245518;
        Wed, 25 Feb 2026 02:44:05 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd86c93fsm13820247b3a.38.2026.02.25.02.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 02:44:05 -0800 (PST)
Date: Wed, 25 Feb 2026 18:43:42 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Inochi Amaoto <inochiama@gmail.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Longbin Li <looong.bin@gmail.com>, 
	Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B
 compatible
Message-ID: <aZ7SHVTkDeES_r72@inochi.infowork>
References: <20260120013706.436742-1-inochiama@gmail.com>
 <20260120013706.436742-2-inochiama@gmail.com>
 <aZ7PLPFVnWjaBDpa@vaman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ7PLPFVnWjaBDpa@vaman>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268282-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[synopsys.com,kernel.org,outlook.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,whut.edu.cn,vger.kernel.org,lists.linux.dev,lists.infradead.org,gentoo.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 09ECC195FD2
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 04:00:04PM +0530, Vinod Koul wrote:
> On 20-01-26, 09:37, Inochi Amaoto wrote:
> > The DMA controller on CV1800B needs to use the DMA phandle args
> > as the channel number instead of hardware handshake number, so
> > add a new compatible for the DMA controller on CV1800B.
> 
> Applied this manually, please check if that is okay after push
> 

Hi Vinod,
 
I have send a new version for v7.0-rc1.
https://lore.kernel.org/all/20260225104042.1138901-1-inochiama@gmail.com

Can you try it?

Regards,
Inochi

> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> > index a393a33c8908..0b5c8314e25e 100644
> > --- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> > +++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
> > @@ -20,6 +20,7 @@ properties:
> >      enum:
> >        - snps,axi-dma-1.01a
> >        - intel,kmb-axi-dma
> > +      - sophgo,cv1800b-axi-dma
> >        - starfive,jh7110-axi-dma
> >        - starfive,jh8100-axi-dma
> >  
> > -- 
> > 2.52.0
> 
> -- 
> ~Vinod

