Return-Path: <devicetree+bounces-263081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC+aGTXDhGk45QMAu9opvQ
	(envelope-from <devicetree+bounces-263081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:20:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F5F5247
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 17:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0772301175E
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 16:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0B2436361;
	Thu,  5 Feb 2026 16:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O5V3iN/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3603B42188A
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 16:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770308230; cv=none; b=hKg9bmzP16dsWgW8/Mdpyqp88OJpNRadv3v9FFRtrZM2m3LlkXgdpAjQJqHzv26s06Gm/CLeKpVRqcA+tqBZAR4AuOv0ewJ6+Ka1PMLRTm1KktdbZUN8E/swuhGQ7+G5dbU55PxcnhxPm4+0bZPwW70nceq+2eS9lx0bAgVOB70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770308230; c=relaxed/simple;
	bh=4qKd5am21e2qY8GbvAvO7yb/uK0mfY4YXXzwNfMgzuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QHyWhcpsNixBC0N/yUu7ZMBJk9bbq34SPpUETT9NqiwMBUSlpkPIux5nd2LlLxI7nzH/PvkjL9G0+A5Hu8hV6sSCQqLyY3Wgz5+S11D56oeUr7voLn5vqyT+khdqZSRy5k1+fxA7t0Yayw1ow5OVC/ZOx3eFKJ5k+IN2K9a6esY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O5V3iN/5; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-124a1b4dd40so411931c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770308229; x=1770913029; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vn73AtIowjRCivEj8TUze3MNY0GOrWSfsuprRXiaUyY=;
        b=O5V3iN/5IJ7o8O4d6fCFajHnBp8xndWZzS19V81jXiuW+zYM0D75fPaNdDIxKbIt92
         emGYY/DQWUJKZnsbXuzvGL/kwhUDMKmhFHmLxJ2c+TYhZbeOiJrz4JJiFl8VMVwyDliA
         JSy43YD5I+VCLAxizCOuJmVqFl+B7Z/M+ZYmtunpsMe8urVQ3Ys1OanQ/ogjhTgPq4QN
         w2MdgFISrx8xQDMCu20OE611i6Bv+93la25Sc2SBm8MiFFnM4Iu+3jqaiZqLRYio6qET
         GdT2LN3UjsDlSCPtw/6bf7OlA61KaLqKwF9TDv7nSqGChL3EodZhSxL/2jc2ylhy5fWj
         s0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770308229; x=1770913029;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vn73AtIowjRCivEj8TUze3MNY0GOrWSfsuprRXiaUyY=;
        b=ho3pCwB9yWm1blTQHCoLiGvqBPG5RtdaqnfYjucQVfWOSNUo6ALrKS7JBVq3KC3suS
         Dq+sTm6vWeEAsyM/YSYk/GkBZXAZa3S31zYBpKIIJEarNMLuV8MLVbwY8UI/cEopwtB/
         V2sKm1A/YuKSSjxLD8ssl3rvBKYtNINr2vkvjOitfvNLOnZGvok0BLvropw8gJPoNrIl
         BdLyiFg4WHTLjFYrbqSC6AEj+OXyBSGqIiy0IfsxBEDPfXK/8Mt3ntVmBsa2s0IeOVsE
         iRKpzDSkqFXD40SufMS/72aqpxhbT+gF0sNBl6W/4gVxZanTk5tauSTW6ErOpLBwLaz5
         W0ww==
X-Forwarded-Encrypted: i=1; AJvYcCVNv17Rn9zTHO2uoqRBS6fN58lBfGLHB+YzCcEluqsbm4yoXrCMJpSLy9ySUQRpILBusy/hVaSIZN5T@vger.kernel.org
X-Gm-Message-State: AOJu0YxTvZLtiFb20cwIro48NDm08IzrpqsSPYRsvZl6+rPV9WG64PIr
	kFeWvRpsEZ29SXDUoX9YTEFTNSAHvKsAoAkSCP+T95JvAT5GgF+R7w8p
X-Gm-Gg: AZuq6aIvQ5Lksz6jYSnz1y+n59KMH/BaF65DoUn/P5TGBa21c/kPMd12fQeizZ9Erk2
	IP01vbj5M37NUOr+a957L3l9niDpLIDyYwthMyHW1qKw7hkD4bG2IuDanPyZjhGDjFZemyyLQV+
	9He/JuhKFAtx3lvFY3wX83TaC1bXqc78PIAU1dIEItFJyGWbO4QtyUq7fbNJVYzwKszsHLUcvf5
	xjvQ0x8hC3W9gaiSfXzJRmZBptUmoMT+IjxAu/tn0NDmkpAzHD3+DSvbK+MLt0Li3XVvcHVlUow
	jLnB7UKOkLG/5nsrQcdzKnivrw34jplPC/KHyNXkrQJ/0588ufMUfL36P+MYQNMA4AgwAIcVCea
	EnpJ8LI7MCLrDPzJmeY/tFiR8nUQZGEMUi9EQuCAX0lTnqVLVgPQtX3in6MB+Plwh3mwcTdPMUp
	NTurjQd/wMJkQP0cRxO45DCuQ8qZxKNl6mmOc=
X-Received: by 2002:a05:7022:2496:b0:11b:2de8:6271 with SMTP id a92af1059eb24-126f47cfc0cmr3066033c88.39.1770308229162;
        Thu, 05 Feb 2026 08:17:09 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f503ecf4sm4763850c88.15.2026.02.05.08.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:17:08 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 08:17:07 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Carl Lee <carl.lee@amd.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Hsu <ythsu0511@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	peter.shen@amd.com, colin.huang2@amd.com
Subject: Re: [PATCH v2 1/3] dt-bindings: hwmon: pmbus: mpq8785: add MPQ8786
 support
Message-ID: <79a6a2bc-4894-4ff9-8a11-5ed71195cf09@roeck-us.net>
References: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-0-3744cd9b2850@amd.com>
 <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-1-3744cd9b2850@amd.com>
 <20260205-cordial-warping-pronghorn-aeebe7@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-cordial-warping-pronghorn-aeebe7@quoll>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263081-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:email,roeck-us.net:mid]
X-Rspamd-Queue-Id: B80F5F5247
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:46:29PM +0100, Krzysztof Kozlowski wrote:
> On Thu, Feb 05, 2026 at 06:01:37PM +0800, Carl Lee wrote:
> > Add device type support for MPQ8786
> > 
> > Signed-off-by: Carl Lee <carl.lee@amd.com>
> > ---
> >  Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
> > index 90970a0433e9..aec7397a29f9 100644
> > --- a/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
> > +++ b/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
> > @@ -19,6 +19,7 @@ properties:
> >        - mps,mpm3695-25
> >        - mps,mpm82504
> >        - mps,mpq8785
> > +      - mps,mpq8786
> 
> Your driver code says they are the same, so compatible. Express it with
> fallback or provide real rationale in commit msg.
> 

Agreed. The mpq8785 datasheet is public, but the mpq8786 datasheet isn't.
That makes it all but impossible to determine if there are indeed no
notable differences between the chips.

Guenter

