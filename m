Return-Path: <devicetree+bounces-277225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KahF9Wsumn9aQIAu9opvQ
	(envelope-from <devicetree+bounces-277225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:47:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B60642BC490
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 418E93063D60
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C0E3D903E;
	Wed, 18 Mar 2026 13:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f7sIA6uG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05953D9030
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841400; cv=none; b=IVkr8AoTGEog9V2gdPGjhLRRuMRPJYTDRYXE2dE1G1TRZqJNEFO7gdcFcEsmM4yiYznydlbojWEMkWfXnEPdlYUnARDh1pAeMFP8wqdSAEYgBDlbzjRoXkzdCULLt8goGus8zZBgz6PcLPQDdbo17178+ERpjWyLnN22EkBz6fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841400; c=relaxed/simple;
	bh=Cskur/oJWWMgQH0YzbU+HGUR3bspCta2LHxiWHMWlvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XC5IuCaB0YvSvYPDmX5sxxPTVkjL9k40lHUO+s1Z1iP99WSb6zhqOm01kR/IEmzhCTDDvqQGh11zIeXBPO1CMJZkISRWkrckeMgD6cZ8G8V0sdCvcjpKxvDPz7TUFVYYIU/vG7edB2vg8CZUGNbToVldR5wqIZvAtUQtmBSYt84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f7sIA6uG; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2aecefc7503so34337005ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773841398; x=1774446198; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YOjv3HKVw2A2EQGvUiJ0UgLsqhpTybuAA6IKyMd7Rpw=;
        b=f7sIA6uGrzxxLKvyj5ib6LRTAGBkLyi00162OrgKlu0i0QdNFvrhnNPXcQASr6gto2
         nmzEFoHZ33qmj8RqMfl7rdwBYpOOdHTWkMZYidyPdDdA2Rs/WnZFULhgoGiSf+SckRA9
         18QVwGamlGkNtNRBJjhOG0kDJ9jHFzO7jPqSsaTGm0n8Eh+TJGb5bV1/zHDILoKB2zPW
         MxprKC4lJaAFptKPj6yv5ebdjc7bXt3d8Eb+l4jxLo/jsuaEnp7GkQoKM/opXCLgJJIY
         y3seUsCfLY1dHuMTwHBGSMyh1XW9tYNxI9RPcBNA2Pz9f/gsM0ACXbTvmSLETLg8Almb
         3z8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841398; x=1774446198;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOjv3HKVw2A2EQGvUiJ0UgLsqhpTybuAA6IKyMd7Rpw=;
        b=BVKSeBEA5ppK5y2E8hzBwaXzsz/Hvba7Xk7prxde6hzBdh18TNHytmSr8DE+Wlr+K6
         heCLBbDFWdQb2Zs/s8DWyJ8Dv5E2iF6EJ/5pgKQIEyeqfabGsLxAfCrVMUS3ig3GoNot
         qiZR39uzM4pSZT+L9hel3wQSIznmCE71wha6GcCCBym/oDDb9wWDyNKueDxsC2Ubg0V1
         7ohExC/Eml2v8oNN4X93oj82dUofwihAPuNzrL4MbFNO3PmMDkz+yeeWEtDLiH3MdoKN
         WMIyvbe4DpmAomJk1Ga3dPfCAGAYKDlDP5whl++5py+sxabc/+DvA8ZdmCAhhY7eEwTm
         +mBA==
X-Forwarded-Encrypted: i=1; AJvYcCXatFDWxZxIQGMb42IuvpEr/BmRVVqQgUsMbkaUiBN/Oecc9N18HLgn341TE2wafPwA2+FXoh97cwoQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzTR0BKg5RjDGtUCOxctoVMXMNA0yxZdrEOKL2sWAXbQwH7GTYb
	F81IKAagcuLX5U3k8c1Kaay3IIxbyI4xtB6p1Spg5OyyYJ9/8p2QY8OH
X-Gm-Gg: ATEYQzznSYdSkYf1iVRqrEUBDsjDRr4nCEvqFXTTFqMawtZCLf8Gr43yEQ9dU0RCyDH
	wW2fe/H2riwpaGWlguxo2EQJdh6ACzX5YaXkC+cTpanrho9gJKVuEi6W7cO94NqB9Xla51IinAn
	J7HyFAFxFZGKKjn+qK+bYqpXO7IR4XMPbOsmrIxAHo7ejvSEaKukDgOHAeU8eeu0HoJUI/kzhnA
	bqX3pDnFOSPYAzMpranV9MBwJCWCakfbEjXoWtqH1lIsrd1UjVOeC+MBq5VH7rodNSZ/FNDlBh0
	aDPt0no9N5QY9MlWQ4207T3+2mvcHBimkVnHqyrOGcegdU4855mu7rP1XfS2ZOV1QUYSb31TBR/
	BQtsLr/+ZWwTFzMwwc0a8ohDpWEfOTflIHenZwrW+wGRF7m9OTQeARKvnT3+7M7TI3qQIL35p/T
	bsUdI9zN4Sz3Y0UA206K7SHfjwAGbSiA==
X-Received: by 2002:a17:902:e5d2:b0:2ab:230d:2d96 with SMTP id d9443c01a7336-2b06e332a7cmr33660975ad.11.1773841398152;
        Wed, 18 Mar 2026 06:43:18 -0700 (PDT)
Received: from fedora ([122.173.30.71])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e5f12d9sm26987275ad.39.2026.03.18.06.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 06:43:17 -0700 (PDT)
Date: Wed, 18 Mar 2026 19:12:41 +0530
From: ShiHao <i.shihao.999@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
	bjorn.andersson@oss.qualcomm.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: request for guidence
Message-ID: <abqr0Qpcx_2BQINg@fedora>
References: <abqbUuruxPJsfBo3@fedora>
 <ccce197c-c514-43c8-8026-534966bb0438@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ccce197c-c514-43c8-8026-534966bb0438@kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277225-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ishihao999@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B60642BC490
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 01:53:25PM +0100, Krzysztof Kozlowski wrote:
 
> Hey,
> 
> None of the people you Cc-ed here is involved in GSoC. You reached Linux
> kernel community, which has nothing to do with GSoC. I suggest
> contacting GSoC through whatever contact form the provided you on the
> application.
> 
> Best regards,
> Krzysztof


hello Krzysztof,

      Thanks for your response. However i mailed them and got no
      response. It was instructed on the page  to contact respective
      mainling list. Also my mentors seems to be busy I submitted several
      DT conversion got no rely till now. The application period has began
      i don't know whom should i discuss all this then my mentros.

Best regards
 shihao

