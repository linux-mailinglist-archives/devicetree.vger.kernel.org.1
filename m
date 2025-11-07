Return-Path: <devicetree+bounces-236205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD2FC4125A
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 18:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3968A188B5DC
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 17:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E58A334C25;
	Fri,  7 Nov 2025 17:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JzlRLGiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FD72DF148
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 17:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762537760; cv=none; b=gsjdjVpg9pOCTm8+rtXabIx04TnvNfQgNyyYP+/xZXNjoSvQWzWOgsvsgCYVNJTPStQ2qq4C/bbmy7QcTyDWZ6lxoSnq1AsutayTEbo49KNG3ZGYaBbwUr+Qumul66VZ2nNxkD1yvUjplnQSBArCsCQdcfZAT11J8sfaQMmyGbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762537760; c=relaxed/simple;
	bh=OCNdxRW1IYaC1j6PkP1OCghDlVuNLB2cyrdqHo1Qdqs=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a07XE3NVfogOVjbhBqtu71WROwlrhhmQd6b0pSQP2sNSv6RRx4rnOzUBl16V/yFvLg4ZdYWVzaVw7yUH3l3/vA44nPh8MAi+C0Qdb9uHReOT4CzMYkI5CvHv/pEw4nCiBIehRiIkmZLnwcTk0jBOtltMjbZZ/I8SFikYvC3j+aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JzlRLGiF; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-429c48e05aeso635568f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 09:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762537758; x=1763142558; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cmq9pT7Misz9s4VB/B7TdNfaf15j6zAigKUGG6pS/SY=;
        b=JzlRLGiFKf1ol41cI2IrFXYPlBuEi+3y7Uj0j7QO3ail9SSUcMHUDYtWTJRT4Y99JH
         l5FoiZjWFZMlFu+yfACJUgoUAw0ePvsMnWeeAS1ifOCO1N/CRxVUOi+Sl1YTEwwT8iuu
         mhfv1J+L+vNwgHM1Pq8kMYP1gkk22OtsZgPpSmD0gJbl0dYYdPdLSJ0mnxy3uE5u540i
         nBX4Al3GPQyCiR90XKNLDodKH0OyhllxgZPua508W201bYjzLJKluWV0QZ9PFbmY3hDc
         5yhslRN7BfGd6ZJ6CO9xjp1jCJA5qPe4TQJFAVCdnBxwf1uuHn3sQRPfhdz17ZeH71V3
         gD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762537758; x=1763142558;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cmq9pT7Misz9s4VB/B7TdNfaf15j6zAigKUGG6pS/SY=;
        b=R6Cq2WoZGVEmwdDMZOnaBQ53Tj6TMSAUuCfi6Nx53Zi4Ng7IxgCCyyUA0KCAP3YHxB
         X1WN+Pt2tEOyzKHewjqlZ6sO2ouYVQG1FeXCTkzYLPwhC5WY+xkhAdIPe9n3xFnqTzcI
         3VDEhb/1Z0S6qq6GKJq8+hrd+n1d7XbH8l5j2VK2gIDSVaFVMw1OT6pbTa/HdbtYOWrk
         no1tG+2SrcfRQyla06ce2Vqkn/og4s2cunzgM67kooOdUiYBdeTHAmtIyuT9y+/bvIDd
         xdBP6/yLWB1bd0LP/5Tn+wgnXHUyzhvhC07lMHGukSDs1GlYB4Nb8EQ6ATbwIyCXGYU4
         tK2w==
X-Forwarded-Encrypted: i=1; AJvYcCUjxHofjMT8GMYB11t6ESwJ+74Y1DZ5G3kyGNtOyTSAhbYBdh8KSh3HJHvpVQvoKxUq/fqPLIAi//1f@vger.kernel.org
X-Gm-Message-State: AOJu0YwWNOxAY2/POEx28IGrsQoanmEX7IVgxt1KDKH8HVoRRg6je/nG
	YS7+zROcxd29sHmunHMB4fTFSM9ooJihGRXV3Tjtb1DBdyZzkUCaXjzE
X-Gm-Gg: ASbGncuxFpjrYrder/zO56VA/c9BV+/SP9C8v1tqVYXpdPY1DLex1WyKkKFt9iDsmgY
	WVZPFZynwnsjYLnyd48u92M7KT/JnYL75zxm+fUZjwoZqXbsET3WOtpgHKdzn5fOOTuwf4HyVxI
	7XfoOZSOe4mUAJ0718kVMGBh6qAnH/TrdvOapBUumyb4oA/6KVWt0yzv0kzfhT/bUiWn18NgWJK
	mcAf6QCtm4iiWZaeQsbqkTLZN8qUemnZqvodx5IDvnxBqdsuLypNn3Q89zRLZnOcvdYOF9OvQMx
	kSyLb5l8uSa3EPgeuvHNFsW5dN+1JMgcDJKLlXtMzzN8AiF8dCs5xLc7Lm/uYqpVycz/84jVeT5
	enzoMbZupi8ssnBvTdzdWKod1cbNgckyNFVWumSzvE5wjla/kv3M94qPGRdfN9kxJVkLxhAvvcr
	F9dzXi21Sl1b7BaUUeAKRzyCGADJPB
X-Google-Smtp-Source: AGHT+IGejCZdNQWYzzYKXyulx7D4hGO+/hfj3nCbt4DKHyJm8dB3hqEzCyD5AYyGNe1UabBQmO/UtQ==
X-Received: by 2002:a05:6000:250c:b0:429:8bb2:d0ce with SMTP id ffacd0b85a97d-42b26fb47d7mr2445454f8f.18.1762537757448;
        Fri, 07 Nov 2025 09:49:17 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42abe63e07asm6575381f8f.17.2025.11.07.09.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 09:49:17 -0800 (PST)
Message-ID: <690e311d.5d0a0220.2f18f8.2b28@mx.google.com>
X-Google-Original-Message-ID: <aQ4xGRCSkjsVWQRt@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 18:49:13 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Sean Wang <sean.wang@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: pinctrl: airoha: Document AN7583 Pin
 Controller
References: <20251106235713.1794668-1-ansuelsmth@gmail.com>
 <20251106235713.1794668-5-ansuelsmth@gmail.com>
 <20251107-washstand-motivator-c5e5e5d30dae@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-washstand-motivator-c5e5e5d30dae@spud>

On Fri, Nov 07, 2025 at 05:24:21PM +0000, Conor Dooley wrote:
> On Fri, Nov 07, 2025 at 12:57:07AM +0100, Christian Marangi wrote:
> > Document Airoha AN7583 Pin Controller based on Airoha EN7581 with some
> > minor difference on some function group (PCM and LED gpio).
> > 
> > To not bloat the EN7581 schema with massive if condition, use a
> > dedicated YAML schema for Airoha AN7583.
> 
> You went to more effort than I would have here with that conditional!
>

Well it was suggested by Rob and it's honestly a copy paste of en7581
with the relevant thing changed.

> > +patternProperties:
> > +  '-pins$':
> > +    type: object
> > +
> > +    patternProperties:
> > +      '^mux(-|$)':
> > +        type: object
> 
> What's up with this regex? Why does it allow either - or $?

It's to permit either mux-* or unique node name with mux. Pattern is
also used by mt7622 or other schema. Other use mux- to require a name
after the mux.

Example

./xlnx,zynqmp-pinctrl.yaml:37:      '^mux':
./xlnx,pinctrl-zynq.yaml:45:      '^mux':
./xlnx,versal-pinctrl.yaml:34:      '^mux':
./microchip,pic64gx-pinctrl-gpio2.yaml:27:  '^mux-':
./microchip,mpfs-pinctrl-iomux0.yaml:33:  '^mux-':
./airoha,en7581-pinctrl.yaml:51:      '^mux(-|$)':
./mediatek,mt7622-pinctrl.yaml:72:      '^mux(-|$)':
./nuvoton,wpcm450-pinctrl.yaml:64:  "^mux-":

-- 
	Ansuel

