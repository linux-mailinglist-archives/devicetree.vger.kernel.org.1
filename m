Return-Path: <devicetree+bounces-277186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG+IDMibummHZgIAu9opvQ
	(envelope-from <devicetree+bounces-277186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:34:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E6F2BB891
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98654305DED8
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB2E392C47;
	Wed, 18 Mar 2026 12:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fYvGtyrF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CDC37DEA2
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773837178; cv=none; b=s/DSYI5WS3OQfzLBU2Uh4ue43X01xAnJvzfVwfjalL7A4b1UWuwfZhZZMk1dJ6U9btFuosdxIvHJWlvDSVIR7Bzr9ei5J/oEZoqkw543QKYmcFDdDb2Oh6PvCXAsXzKIQ1hAWYLt9YF2QYOvAdJsFvXcsf/ZIz9w55EbgARoCVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773837178; c=relaxed/simple;
	bh=IMu1STsZaPjdEMUFZEaMUzKlaotLmNW8IHhZWpsufEM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=iPqWGBpV8Dx+doCqNhEXR7+7ao9ESRiYcz9AE3Oj3BBF1TCFgBMB6akac/lhfmYywajChKttkOcbp9p7//tdpPRFKHWvqyM2E1bYum6rlGXwsYXgro0hwpa3pVWCP24iP4VFvZjPEM2oviisA3afI0fy4PBZYkP8jXmcvvhVMjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fYvGtyrF; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-8296d553142so3195326b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773837177; x=1774441977; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IMu1STsZaPjdEMUFZEaMUzKlaotLmNW8IHhZWpsufEM=;
        b=fYvGtyrFamV6azVn8cEvWWy/Z3aLcNuCHcL1C0NBtFaPahAC9d62aPQ38AxwxNeyTM
         /+aFSVPbGH1cwXHCnTIvr/UM39Z6aVKFyFTZUHTnfglzdahLK1kj4X6+jTwa0tdQXPl7
         L+mZnYPyu5A9LdA720iWfA5A8279VKSuiqzitScwlP80J9R3FMBnenYzT6W85Lefq9j6
         ffrmuHXt7l+LpelkZhYtwxHehf/EL/71ULPWBgJuM2xeWHVYTJNJLjIkvA6lVIMKXftH
         6Ev+14T8DPDzX9KOgeRC22SogKXYjMm82Ya2RDeRY+0sKO18KIuEMFljDM9Y6A8nArif
         srfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773837177; x=1774441977;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IMu1STsZaPjdEMUFZEaMUzKlaotLmNW8IHhZWpsufEM=;
        b=l+urx/I7YSpL84K8kwprHl1jsahoX8wUvLOklcPfwpHyQyvrkH7oZp/c98faHkutVc
         yMHwhg90MvkVxOyxBAObHpXOjhhUDDJrjXO4fcVco19wk1u941gyqMxFsEulmJJP0Q5j
         MkFcHcNzosDEOYim9T9uv4yveSf05zJGd1lxuoafHSW0UOpEziZVY4jlTiDcDkZAC5tn
         ywtc9v98E3Un3hvWJaZBRfaIxhCuQN8r0Ia+r50i15ITVVVjOTmt5EOdPuzsrLyYkfCR
         xoe7vdpr4fiOoMjnuApVoksNaU/DHcZV7f6iBKDLXZifP6NBsFiKFZUhzI9NSwmmAsh8
         nM6A==
X-Forwarded-Encrypted: i=1; AJvYcCWuK6vJNo90V/UTMY5fiORpg/wkmDAg10RclQPdj6op4zxj/Xy5fnZOI8tQx+3uhaR8bInAbfD9GMof@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgz50DmsN/jgqU7wuufOTCdlPQVbsAqlo6wdV2SdVvT6UaQaGS
	PFoAye9C0fDgfSHGErNNcT2Mlf1niODAUU3Q3UqqUuWRz9sJES+0uqac
X-Gm-Gg: ATEYQzw9fXAFBX3rI/WpHDVaZosKn6xxMP+bEtl7HWYwvyjmMGUWAGwWp2Emmc/i12n
	vhhF86ODpv6CoSdezoPCZA4wOihv06zuqzeJaqecjsFswXyTcAHb3zucxVOYO15q5hH66LcOaZW
	jb0LIbUFg9Rt0ZEDzKFyxxFFMcVI9NjKE0HPNojyAJu6ztYFJa/o9B5teTnpzRzf16w2o/uRq6H
	0OTBanyr+0q8HT64JCkM/W1mkyLe7R/VDUEpo4eK45UYCbQEpvvOKQfa3V6QG7Uk0UjOX3aXiEO
	xse6QmXzNrnZ1eYpp1Egw9JxYKKYx3JRRpwb1/JfumFUzl0wLAGcEH++ck+f9EZV5/kc5vpWH3r
	v0c4eazzuRdiFmzwQ6gR1xjU6d7HDAVxKxFhTxkdAlg7Ysj1zic34MmsV4vbVhlS3pxxNOR64pb
	dTqnG8OYD7liwOwBRLl5A=
X-Received: by 2002:a05:6a00:8c02:b0:82a:64c7:8c6d with SMTP id d2e1a72fcca58-82a6ae1f450mr2859794b3a.25.1773837176554;
        Wed, 18 Mar 2026 05:32:56 -0700 (PDT)
Received: from fedora ([122.173.30.71])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bf0cf5fsm3350045b3a.61.2026.03.18.05.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 05:32:56 -0700 (PDT)
Date: Wed, 18 Mar 2026 18:02:18 +0530
From: ShiHao <i.shihao.999@gmail.com>
To: krzk+dt@kernel.org
Cc: robh@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
	bjorn.andersson@oss.qualcomm.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, i.shihao.999@gmail.com
Subject: request for guidence
Message-ID: <abqbUuruxPJsfBo3@fedora>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277186-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ishihao999@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 91E6F2BB891
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello everyone,

I hope everyone is good. I am writing this letter to ask forsome guidance
on GSoC. I wanted some help regarding proposal since the application
period has began i wanted to ask whether to submit my prepared proposal
or not and wait for review by mentors first because the proposal template
is a bit different from google's suggested template that is why i have
some confusions. If anyone has some time to review my drafted proposal i
would be very thankful. Any help would be deeply appreciated

Thanks and regards
 Shi hao

