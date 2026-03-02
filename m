Return-Path: <devicetree+bounces-270177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIcFIxvMpWl3GwAAu9opvQ
	(envelope-from <devicetree+bounces-270177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:42:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AABE1DDFAC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B83E530CBDE4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D27E426D02;
	Mon,  2 Mar 2026 17:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LNjNhG8g";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="QFDFEh1s"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6E2425CC9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772473195; cv=none; b=PQensk49rBgV7xzlOIrs1XIrwYkhLUexJcYXWxz2K6MvJi0HARR/rZQ2xnyuMnH5uYuhWizgqdhUa/h2iP1S4QmJb5Z6VrOb3Jx+/NeZWNwk82ad/+HoQJDnPRJo9T4tRbPmQO3cS9a9KV6YtqS1zij99GK+39ceS0T87NT8HK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772473195; c=relaxed/simple;
	bh=LkqzEv5GwI2vJW4ZcZ4mnZnF1u/RJgaOFUVjmvhOjjg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MECAt2uvdvoxDB6fo4yU8X4ohM4ZTnjdFPcDhU6d/XHW83/F1tE9i5r69b0wMj9ltOye7LKZthnJimJeP5N6drnK6yH0tt+BW/2QQhaTcxCX7XRdy/e4x0LBwBLCKtWn/w7qluIepD+ZV+2WvxHTM+GUCOpgs7P2IjlOLo7I7JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LNjNhG8g; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=QFDFEh1s; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772473192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ttdWgxDo7GHEMv1uiR0nwTA2j+HTNDLbVV3DlRs7m5I=;
	b=LNjNhG8gJso/q7StPtId4omAkDK5pWwOhrs8W0RWRcxudg0pHySpFQuKKC9RlWQpADYDdL
	cRATTXdJu9E7XvIiMwwtUvBOlK9vMZ5eTKotFmreQGK24Rh4bT+FoCD6Jyc3cnEwQgdha5
	m1mJ6UpmBXHCUuMLOGaabSjRFrgE1kU=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-205-dPPDGyOMMDq-cue-H47-Ng-1; Mon, 02 Mar 2026 12:39:51 -0500
X-MC-Unique: dPPDGyOMMDq-cue-H47-Ng-1
X-Mimecast-MFC-AGG-ID: dPPDGyOMMDq-cue-H47-Ng_1772473191
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-506bfff75edso550712791cf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 09:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772473191; x=1773077991; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ttdWgxDo7GHEMv1uiR0nwTA2j+HTNDLbVV3DlRs7m5I=;
        b=QFDFEh1sHw91aS3NyZs5GsFyhDE2kQ4nfxZGOIk0DjXJsURHvzFDaqaJUWT+QVEp7+
         Y6MzVitLIhSsV6HA6atP8mcnoC5GABZrs3FELZdf59Q3FL5dWsxtfz/Og9wOgWF0yjn7
         u8zOX+ACtL2FTqq/cB0RD4ojAU4qnx9ctaWlWSutqRcSL/g8AriVbtNcGPOofGYOH2KC
         1Lc38BsLmY1vlii+gBFHtCr+nDfTvSo4jMSiZcczP64ejDGLQBklCYX0RLSbhDhCPWpM
         TTVdiePJ7AcPMOBfHRn2FtHdY7pxQmd6bXEF6K7hTTd1eXedvirEVrfrcm7Jj9KIhJZN
         WXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772473191; x=1773077991;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ttdWgxDo7GHEMv1uiR0nwTA2j+HTNDLbVV3DlRs7m5I=;
        b=vUcM5FtTOlNB7sSsAksg71YfoNcgQwx5vNXmuVah8McbsGU5z8SbhTf/S/CvqGCMbc
         mHW5YkhL9iD/QrB/ZoEitYaexUVcfI1ONUe+bkspLBALx7sni38FWxZG619gkGnM553R
         Wj+TrsX48J6mnmfTyUTmD0joprg7tLqd2+MidMnMlw7lDmOY8aaehBE06v1DmZeVbisf
         ebID/TkdmnZu9K1yxCot+j9cawRL4VQl7GJdMGQsD8Ja003rXltvdykCIiL391izNMz7
         GvnxZSWi3SEdwq5Z+BXQUBFPuUqDrblAcE5DmWiHsah91SRgP02Tzrlt8mw/bpWtzX1+
         jNfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAnFqE9dvb2KqvubPduQ9egbczVXW9+A5AK2chtVKWFAxSxotwCfoPowqk0Wlsvr8tehRRUqsl9Ekb@vger.kernel.org
X-Gm-Message-State: AOJu0YzAbZ8S4MiHy0cyN1Gd6QWD99ft4ryja4GLZhhponT6RRg+smgp
	XrLnqTajDKisti3UZWpj1cT3XiKY2pooWoJY8KMvs4stFwhPe53jqrUQj30/XON2o7/XL4J0FOu
	elX6sfWWpWJHq8mtCEda6OfhoT7y0mTNiVlLgrGD3v0rJdoRQgknaysna1SnFX5o=
X-Gm-Gg: ATEYQzwSXC1uSqf30dWmnUmyqCzyKECmmuwhmj3ulf2xphxlg2n21C1+8v/g8V+srxv
	n24/H8docHn8HxhDqcEKRcTc7f9NkmscP8zPitV6Mt5CksEDvP7UnLPYuD6HSShU4t2xUC4JjLD
	CHBj6ebIxQPUvy4wf1QMdkPmb5+2WWMnmsQF0rGivEMScxgKFRaMCgpkP8m1YAc22dlIJ3Klsu2
	WPNGuCNeLWEx/eoMurMeiwE9Z4mW7cShHnxFPPoDCAdp06PHj4+krgDvosy1phV4ULxSsgJD85B
	PaG1b5PqxGv6pi77SRJE9uT737sdlg3jvyO+L3RXlldBETJWYbPabbjJe/QSJK61Q41VFxJo/lP
	z65kMFZsp7Odj/Fj5QBPNbB5jegSgKlrM8LbYaw+J4uPpM/Y2WT17YZ2g
X-Received: by 2002:a05:622a:11c9:b0:507:3d1:433d with SMTP id d75a77b69052e-50752957d21mr151765561cf.57.1772473191262;
        Mon, 02 Mar 2026 09:39:51 -0800 (PST)
X-Received: by 2002:a05:622a:11c9:b0:507:3d1:433d with SMTP id d75a77b69052e-50752957d21mr151765121cf.57.1772473190825;
        Mon, 02 Mar 2026 09:39:50 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899e7627b69sm55195036d6.41.2026.03.02.09.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 09:39:50 -0800 (PST)
Date: Mon, 2 Mar 2026 12:39:48 -0500
From: Brian Masney <bmasney@redhat.com>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: [PATCH v14 4/4] MAINTAINERS: Add entry for ESWIN EIC7700 clock
 driver
Message-ID: <aaXLZLcpMMckerpL@redhat.com>
References: <20260226090513.1696-1-dongxuyang@eswincomputing.com>
 <20260226090702.1922-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226090702.1922-1-dongxuyang@eswincomputing.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 0AABE1DDFAC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	TAGGED_FROM(0.00)[bounces-270177-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[eswincomputing.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ziswiler.com:email]
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 05:07:02PM +0800, dongxuyang@eswincomputing.com wrote:
> From: Xuyang Dong <dongxuyang@eswincomputing.com>
> 
> Add myself as maintainer of ESWIN EIC7700 clock driver
> 
> Tested-by: Marcel Ziswiler <marcel@ziswiler.com> # ebc77
> Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


