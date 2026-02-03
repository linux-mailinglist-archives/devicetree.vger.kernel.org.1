Return-Path: <devicetree+bounces-262300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH/SDUcMgmnVOgMAu9opvQ
	(envelope-from <devicetree+bounces-262300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:55:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F71DAD9E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E84230ED4AF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886963ACA67;
	Tue,  3 Feb 2026 14:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pYezj5nE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04293ACA68
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770130305; cv=none; b=LdW46CSVUeiXl1FgwRvzkkA2R1UYEYxJDFROrxB/lEztjr6pZaDYwpRnuDmEGlTy8qUYNcFU4ESrrS4RJyCmp/5aVZhQFXYDNWyR8yvYIfLzublLF+FEhoCDOFbsN+cX0O5qML8sJ+P4/p/2DAfRunl9D5yi5j9KZchZVB0COco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770130305; c=relaxed/simple;
	bh=ucMcN0j4Ae1voA0dJmdcb6b3d9m2avLloAVQpB0Ygvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ika1Al3jAMnyYA3AusGjnBoN+AnMzLNDFJGjD5fTABKjVxemGiZRCqxk0VCcbX+qm3xG+CbrEhhTgSwOXIDi9AFxbwULZT1ylyPUn3Me9Gnc3j1tgJYajMjdOJepYRFVJSprdw3jQ50RFyi5NC+wq4s8ILN/+NL6/3Fzve/5cQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pYezj5nE; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso58529675e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770130302; x=1770735102; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gVDbMP2h4x/mUb6G2s8x3K2KoBv6D/1Du/nOa/GGM5s=;
        b=pYezj5nEdHQ+wv6/8H7xEsT0QwqogATqxZDHieEP8yEpdwIqGcWg2RQV74cdX8N1mr
         EoDPI8qdqohDZ1nq6y2hHsUeOj2O+PV/xRIpLKZt1HUEsN3gg2QYwY3fofseiMg9tCnK
         EyirfrbKiaUog0bD5csvMI7bhLxF2IFol5jRfBpDBsIJaxk452zbFGwm3+5mzA5ltV5g
         xHNxfknxsM9F1RcThoeRHaOxg106BFGJhgFFpiRDqTC8rpVt2lyuyRjPjSg5jpPkAhY5
         9nSVApGjLvtSyIg0FM6q2FxR8FiqqyHfjDvqNJXDENNsGT/HxVdIi0Kp10D+DpuLqaiJ
         NhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770130302; x=1770735102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVDbMP2h4x/mUb6G2s8x3K2KoBv6D/1Du/nOa/GGM5s=;
        b=qJN2u+S3aBh/N55S96is/1ataGwvoGiTcqwk1XExa9oRnH8kK3w9WxAh4qbZyw2sjh
         o4X/Z7VBu5y5wwEfZSli5pUZpA0qBcIMuwXPwIHva91FPQKlMp8SGG2QcxPSPPtVLM9O
         x6JiEc36bTOYM102N7ct8zUk5sglMd3hKOAFIdgkA7CsjDOB1f18hqqskqqXiqdegvcv
         eP4JkBOHoEiFyRjrpK8/HU1Q2XM76cTuZT+a9VzXjN1iDtH4EAnUpkwP2rBpSsrdNTE6
         rADJdaEKL3eWGnVe+e0R86gZbBwZ6JPKH/3sNgjY2xGh8sqxnkS4Vonqw3oLiFXkJDop
         yuKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl5/iFEjc4xvlPlNOv8btvWLuGVkXW6XxcgC5Jo/c9Qf3P77ssEsGMrMg6aSHsXHjv8R10IbKHzkDD@vger.kernel.org
X-Gm-Message-State: AOJu0YxemE0OYeY2VZRGun2FMvgp77U/xsnTtowKvQLU30FJBTHK+txG
	eftCfmYjkNG5BLnHRwuPzJt4ddSdyhJkAakA1X6m1+hhmgcjGURJofddi/W6ucI+jwE=
X-Gm-Gg: AZuq6aIXkQlHQboVBJWvvNaaFNTa29vIv9hd+GTCda0e3PSqdzKcwSUFRnCqbnIBhUU
	guDAhnB67i7piuaor+zCgKWkVPm2bLiygbK7hwkyzh7HY1GVgcUT6FZFXbK68QAe7GxsWepEckx
	56zUvOoOR6e+FY7la4N+aktfPLM1bPfyUA7XdKLLeHdSxtBMtXXjYrijViwXj8XmdDFYZufginT
	YQbvsMiO1Q9ECsvhXP92twDrjWYAxNKPQT4j2lL2dT2MyRfbq8LKM7/s09llOCf8FDNIDXl02ws
	Q2v5UmYIpEHzrYQnGQv0mv0kdbQnM8/UFrdPOojxCIYJ/YmOm5j3xuBN1qvBeJ//WL1K2/ujuz7
	Jkinleix/xCvUBG1kVcXX771rZPHLS5ZO1oIOXqHE0bfICd0aVaItCXP5ZUo6DFXhb2b/X0FJ72
	4vzv0JjVFWXsuOAOYQ
X-Received: by 2002:a05:600c:859b:b0:482:df17:bbbc with SMTP id 5b1f17b1804b1-482df17bd2cmr154388865e9.20.1770130302262;
        Tue, 03 Feb 2026 06:51:42 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dffd47c2sm121508595e9.0.2026.02.03.06.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:51:41 -0800 (PST)
Date: Tue, 3 Feb 2026 17:51:38 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Paolo Abeni <pabeni@redhat.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linaro-s32@linaro.org
Subject: Re: [PATCH v6 0/3] s32g: Use a syscon for GPR
Message-ID: <aYILejxAJef9F8bn@stanley.mountain>
References: <cover.1769764941.git.dan.carpenter@linaro.org>
 <bdb7cd69-7dcd-4e8a-b04a-14a2eb902311@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bdb7cd69-7dcd-4e8a-b04a-14a2eb902311@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262300-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,foss.st.com,lunn.ch,kernel.org,davemloft.net,vger.kernel.org,google.com,nxp.com,oss.nxp.com,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,suse.com,pengutronix.de,linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim]
X-Rspamd-Queue-Id: 93F71DAD9E
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 12:18:54PM +0100, Paolo Abeni wrote:
> On 1/30/26 2:19 PM, Dan Carpenter wrote:
> > 
> > Dan Carpenter (3):
> >   net: stmmac: s32: use a syscon for S32_PHY_INTF_SEL_RGMII
> >   dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
> >   dts: s32g: Add GPR syscon region
> 
> It looks like patch 3/3 depends on 1/3 but it should land in a different
> tree, as patches 1 && 2 looks suitable for 'net-next' and 3/3 should
> probably go via the arm/freescale tree.

Yep.  The driver needs to be updated first before the device tree.
(The new driver is compatible with old device trees, of course).

> 
> We either need explicit ack from freescale maintainers or this should be
> split across subtrees, right?
> 

regards,
dan carpenter

