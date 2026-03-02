Return-Path: <devicetree+bounces-270176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNHgD87LpWl3GwAAu9opvQ
	(envelope-from <devicetree+bounces-270176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:41:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AE61DDF63
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:41:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C076C30A7839
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608E04266AF;
	Mon,  2 Mar 2026 17:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HQsg8P9h";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="YmGai651"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304BE30F958
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772473178; cv=none; b=FFTaxtYqFTTir43UgKdFLr+9aJoP+kce5TTQO2APP16ZcaL8TzW+KaQ9xAPcOsAVV126afhDHyQ05wShFkUlC0K9JIB4sXHjta+KCFei9LFuFY9TPZ3a2gVsSaBngQafiF4vSWOiUQpnH/otvKxcGszLTVaUocyvdFU5t1d9EhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772473178; c=relaxed/simple;
	bh=RlhAR/BZC1pyEmOhXOp/MJEF9FHwkEjO+EVjdUQtGYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VTAeuxgUdm2+VwCu2CpHhG28Ead41FJGBPRytem+Jc/coys2mFpbzZRNcZIDcL2qecbSmtKuIi7p9sFi11PAgUbQC9U1gqnoo7YJf1UezWrkiAU4Sk+IAZfjpYVKSvTEj6s2wh6+cBZIO/78kidZHOZwpYzam6ldQ/iC2AseMUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HQsg8P9h; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=YmGai651; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772473176;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tK1ThM3kH0p8guDfS1aiZA1n9SpN23gvDE45GzQuP3I=;
	b=HQsg8P9hB6/3RyYA8S0FeuZgx5718eO5s8taNhwTZ3jDH0prRtRg7iQ96d4ab6TT4OWHir
	OXZkRs+R1+G+LaZC0koXwj5t405dwvbufnLJtURQnUIp78wG1myLO6NmMab2mVlK74JHbO
	1q0NFETxbHgKfN72OWUPVVNoSuLr6yE=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-300-wYaVGHJvOoef734vqTLkgQ-1; Mon, 02 Mar 2026 12:39:35 -0500
X-MC-Unique: wYaVGHJvOoef734vqTLkgQ-1
X-Mimecast-MFC-AGG-ID: wYaVGHJvOoef734vqTLkgQ_1772473174
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899ea295601so27455526d6.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 09:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772473174; x=1773077974; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tK1ThM3kH0p8guDfS1aiZA1n9SpN23gvDE45GzQuP3I=;
        b=YmGai651nNIVuvwQQ3+1N5wv0XpwOwpDGqMfEM5MQNurWr16WWPBzxbdClHgJK+J0A
         IkoTyg8Rbq8tvj5I53pmBOKalRaFGgj8dvbee4y7xxgzQNJ6XlTMbYgTCOIgTny+Ohqk
         KZst2pxH+G3hJiLBCTmrGMU9WKHhGTvWL2FWXPUO8+8Tnh6J+pBC3WMxXZVZztsZewP2
         bBEDqShpS66xj5NzFfUnfWCeZdGJQu2DOsVzFt/itn8DFlwugUW3uRAyAk1fpyxbn7FL
         /1ytDoScRmvU82IAIfIlqJX6DvrmYJeb9++U8tiIk7Z5cg1qU600R89BnN/vbQmHMjmb
         0pIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772473174; x=1773077974;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tK1ThM3kH0p8guDfS1aiZA1n9SpN23gvDE45GzQuP3I=;
        b=fVhiPMnmX+HBTPnyS6o+uwFEb1rYdojb1YbWmhYYJYnWerrI97ewwf8bgzcn18un/D
         P7kbiqnQiZnsQiHlDEnwmz8Rpeepc+n8fwU2x7xjnk+qqI+s8JZ3cSt8XbE+i01efhfC
         G/iHSWPfFR6oQ4lxzP/EcmcEUcqCN8UPAKVgkW++Idd80hsMGqV6Z4N4S6P0UR18dp9E
         fz2s2k3yvvHcCljpoB2IwKdUJw3jmO46hbahyAeBbNM9bOlPPle2tv6iVCa35tm0TWYM
         tk8ISBDm70p0IhAmPo4jsUivUU15/gvEamDLKiEURQbIr75XFk46EkT5XSVjykOHoZfw
         F7Fw==
X-Forwarded-Encrypted: i=1; AJvYcCVSY7RYgUALl1YzpncliwEuq4oBEdn08GPdpF0QeHOgbTb6wmXlALiLyxV8nAcDsFElT1EcWuZeJlX4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy57bFGW4eDbWjS0xaDsATBrETqESSOxPGD1h/UNLfSmsuzt/Pr
	vRSKysDxp8wDdqpe0wDu3AQUCzZ8gSU2qUYD9Et5LsiDRyUv0c7DW8CicGgYr1WVFcHk7kDFYTl
	WLsnr7qjOfSX89tb1iX5NCDSPtwkLNAK+8GFKtFRKvbc2hHpXfk5HheO1rJStoo8=
X-Gm-Gg: ATEYQzyjXl5abFBkhogDHmUuNVpaAtU8FW5rjb/uUB8j049+dBbifGumeee80UtzZfz
	YLjESOdaqwAQ0Le/gddymMUMgXzRliCXbCkP0u40fT3ydu30YV3K31CTRVp4vaO/hJPr3YkUijF
	Qi55p4HUch8zvKNER4OptUUfkD4iD8NOAY5fpH2Iz7vyqrlXpckSIG6Dc9LiRLd3NeXrLfY3z7W
	opfIoTJQ4Jyu6ue/hjRobnOqsy1Crt0/+nwSngc6kvOgP8r4gDu5At6Y7JvNOtU0YunJgqdQVfQ
	4nW30q+zS5di2eZn4BVADeWLY/Wnxd4K9d2JcCWn/b56bLHdkjDhMVS+C2zrRhyozsdEkr2o1GZ
	004yNweQ9ffGcJRCdFec/wqzX1ADyaV4N98rhfNGf7dA4+qXPjt90y+s+
X-Received: by 2002:ac8:7fc1:0:b0:506:a624:1939 with SMTP id d75a77b69052e-507529973d5mr181762521cf.51.1772473173838;
        Mon, 02 Mar 2026 09:39:33 -0800 (PST)
X-Received: by 2002:ac8:7fc1:0:b0:506:a624:1939 with SMTP id d75a77b69052e-507529973d5mr181762001cf.51.1772473173392;
        Mon, 02 Mar 2026 09:39:33 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50744ab3d88sm117733981cf.21.2026.03.02.09.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 09:39:32 -0800 (PST)
Date: Mon, 2 Mar 2026 12:39:31 -0500
From: Brian Masney <bmasney@redhat.com>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: [PATCH v14 2/4] clk: divider: Add
 devm_clk_hw_register_divider_parent_data
Message-ID: <aaXLU6iuY70Six9H@redhat.com>
References: <20260226090513.1696-1-dongxuyang@eswincomputing.com>
 <20260226090630.1812-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226090630.1812-1-dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 95AE61DDF63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	TAGGED_FROM(0.00)[bounces-270176-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,eswincomputing.com:email]
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 05:06:30PM +0800, dongxuyang@eswincomputing.com wrote:
> From: Xuyang Dong <dongxuyang@eswincomputing.com>
> 
> Add the devres variant of clk_hw_register_divider_parent_data() for
> registering a divider clock with parent clk data instead of parent
> name.
> 
> Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


