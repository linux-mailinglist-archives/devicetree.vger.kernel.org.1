Return-Path: <devicetree+bounces-273017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KnIBuXqrmlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:44:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC9923BF32
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:44:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFC88302E939
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54AAB3DA5DB;
	Mon,  9 Mar 2026 15:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Qhub2NDu";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="eiB9tMU2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29983D9045
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773070803; cv=none; b=Z25oqmwpM9MaiLzVn3n2HCodDl6yQTy7/1erq4HBsobiJzqTcVcEDr7gtwoZj2zBuEKgblzDZH9magCVQyAZolJixSTm1OyLLUZKZsOY9UF8XIRnH+uh86TIQyPYDHY1jVbtbvEOcl1gJswb1B3YqoShQObJUPYzZ8HcaCxhR9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773070803; c=relaxed/simple;
	bh=sfB6dzF2hJxL+xZn1sg2gRT//rlMnhqnULg42U5nZi8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOt9p9ODyjttWNVMIcp4LMvYTA3PZ2KiY8766tnOL/jUcmbUUn+LbAwVwzDd1OA92ITXVd2fic0jeS9+2KmpIHHoewMG+iL/0LAoaIIqm+gUb14c5SUdjO9wYFpFqiHw429ozVkZ3jFCozTL2R2I8YxO9yengSrzMqEARSimEQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Qhub2NDu; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=eiB9tMU2; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773070800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=e0jqr9O5Qe+QOiK/NfYBlUp6xE1Lwly1Kq1xM3BGau4=;
	b=Qhub2NDumGTxXdr05E5SxqJFRRBekBqtfY8lcsqMclA7lf/vee+g3evCZZ8wnUceE+RRaP
	tKDf5P6AhYjJnsBnKC2IKZaJpX3hWoXz0r8/eWbSIhkUUevz3V0XXcgZMLgp4npp/Pj1SW
	Rb9JIKeIs0YpwrvLJSkNMJL3MxBYZgo=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-VTe5NuuzNIadP8sUU88b8w-1; Mon, 09 Mar 2026 11:39:58 -0400
X-MC-Unique: VTe5NuuzNIadP8sUU88b8w-1
X-Mimecast-MFC-AGG-ID: VTe5NuuzNIadP8sUU88b8w_1773070798
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7a25c5a9so1001815885a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773070798; x=1773675598; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0jqr9O5Qe+QOiK/NfYBlUp6xE1Lwly1Kq1xM3BGau4=;
        b=eiB9tMU2KN0Uhp/dNeR9bzJDQWR7oaqW3l2lutomZ4oohyLELJ3e98DcAlxTQUXmqk
         5yKGVQTOkQcypYt1MNxaD2G84s6DLkgXVR7fMIoH4RJ5pRIIqj2m1UvCccfQyBrzFZtK
         GeyqhfYyAvFe9sLeVpKKWW+Iv7l2UQjQPMNAAw4lUOYkQ+xZOdx3nlfPPJBlg0xsXN2v
         Bv7Z6AJAV8WeyWyw74Gy9F9Gpbf4X4cpLvCRz8bANmHBphHufpqilRhwrj6V2vDCA6h+
         BI9gtD8mBrWV3LTMsyGCe/A4BSdwLujzVt/p2hNy5tSAHYKMQLzD7Gz68xaNN64nrhGN
         QBDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773070798; x=1773675598;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e0jqr9O5Qe+QOiK/NfYBlUp6xE1Lwly1Kq1xM3BGau4=;
        b=vRD4SYYhLNPSG7Y203ouq0+gYI86ODP6K+rEuif55btHlSeK4lGb90hAK9RFFCKW7N
         Tj1+h2arGIKiGsODfTIjONPTHktYPQmGvtY4YZSLbJeuYWQt5oLaJ+gq3F9dQz2D43re
         K8rnnvkREJpBlopYpeEocuXALI+F8nDxBNkp5ClzndSH3SC4pgQiS6DpvPfregoT3lMX
         khdZkFbAfqoK5FO23sgigogAIi64S2LfiRuLhaM4xKPE2gCN+OW7sSg4MJ9I8j8nUk8X
         7az+wdQXFm4+H9yaak5NJosc1Lveyj47GF63ijp8aR1mpFO4gVrpLuNJZ89kWPoZfB1X
         f6CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNct6QStG0PnBS9/PG2gaR3VscIgeLFAVWe0qKzZ1JtGMexRMxvd4cpkX9mqV1/ktu65DfwzQDI27k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp0Stc8Y7O9ikPyTdMY3c73UVQke77VIxwlAFE8DWgz5SyqcPo
	yRoeBxAeQAEDCRxLROAKjg9AS6N4+EzWq2c8UnxN7JF/nFD0RI0kyWiLYzy1OG+3xCsWBNeXuHc
	IrFXFXstPW42dBV7B3KJKMKDFmNLDeL9OVkkAksJ4tErU0omsNbF8AyZbo2Sb6Yg=
X-Gm-Gg: ATEYQzzaH/5Fz380uwTUWa8omBjDql+TXFNcvKUBvF5cd1e4YQRNwZVXb2VL2hkyf5A
	kdxRIZs6fKd0PkFSJwUJq2wUv0ghjMF8viKp8YeEZAX2L1Da+zjthsBC3MQVJyfrkjxmzCTzplA
	JEeYLErT0qHKNUNJSxw9U5feUh8XCJGBpN3gH/5Pcy5+QM5dpVKJ1JnC5hhuhViWyHxZb7zYprs
	8Ho5vvr8U90tO8K4nHvURmJlhA283Zl0wyRDnvwyxBvjCbuS1VfSfojN6w64o+1WYfolrTik0aH
	U7AnWlqW1yw0EZO10njW91zlW9rIP+SzPAV5on1gAZSFu8sptvI7xTigcQ97Vj9Tn23U9XHuSWc
	rnGbDm5TYh6mRGGRtCUGpqoeitXQ3pxsRThu88Jx5wfzWQV/6w4iYb68Z
X-Received: by 2002:a05:620a:290a:b0:8cd:8f18:d1c0 with SMTP id af79cd13be357-8cd8f18d44dmr228534985a.27.1773070798121;
        Mon, 09 Mar 2026 08:39:58 -0700 (PDT)
X-Received: by 2002:a05:620a:290a:b0:8cd:8f18:d1c0 with SMTP id af79cd13be357-8cd8f18d44dmr228531285a.27.1773070797673;
        Mon, 09 Mar 2026 08:39:57 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd90aae418sm84839885a.26.2026.03.09.08.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:39:57 -0700 (PDT)
Date: Mon, 9 Mar 2026 11:39:55 -0400
From: Brian Masney <bmasney@redhat.com>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, fustini@kernel.org, mpe@kernel.org,
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com,
	agross@kernel.org, agross@oss.tenstorrent.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 3/3] clk: tenstorrent: Add Atlantis clock controller
 driver
Message-ID: <aa7pywbaB7rxLWwX@redhat.com>
References: <20260306-atlantis-clocks-v8-0-6c9b14a4aa8e@oss.tenstorrent.com>
 <20260306-atlantis-clocks-v8-3-6c9b14a4aa8e@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-atlantis-clocks-v8-3-6c9b14a4aa8e@oss.tenstorrent.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Queue-Id: 6DC9923BF32
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273017-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tenstorrent.com:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 11:12:19AM -0600, Anirudh Srinivasan wrote:
> Add driver for clock controller in Tenstorrent Atlantis SoC. This version
> of the driver covers clocks from RCPU subsystem.
> 
> 5 types of clocks generated by this controller: PLLs (PLLs
> with bypass functionality and an additional Gate clk at output), Shared
> Gates (Multiple Gate clks that share an enable bit), standard Muxes,
> Dividers and Gates. All clocks are implemented using custom clk ops and
> use the regmap interface associated with the syscon. All clocks are derived
> from a 24 Mhz oscillator.
> 
> The reset controller is also setup as an auxiliary device of the clock
> controller.
> 
> Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


