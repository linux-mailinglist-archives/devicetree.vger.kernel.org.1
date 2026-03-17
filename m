Return-Path: <devicetree+bounces-276803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHXEBO2VuWkJKwIAu9opvQ
	(envelope-from <devicetree+bounces-276803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:57:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D97E2B0635
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18D78309A3D8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B674C36EABC;
	Tue, 17 Mar 2026 17:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G1DlZiTv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB71C3446C5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770095; cv=none; b=Vi5QyajxGsuEs5HRowjM6oQSbAaEkkFHsnnMb4Zrj1+gSyDCZabJaKFirZRNTrbwlM8WSMH0j/D7Svhv5IGz8fyHg9xFfTncYf/5KrG7Uip6ijW/t7r+i+n9hZ1TaeOEdWydbwuyCCfr4N4sUV4yRi+A02afw1rS87BWVYy2w/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770095; c=relaxed/simple;
	bh=z0YQQ7N6xv1F5FzMr4utq3fAfsBWen8n68XRV+cgnrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AYKAfsiKCHayasKSfbq9tXRE7jX9qWWQOwgqjzOumM1eArVg4pjeiPjKEPsyz5elQUeGGRTAW6P3J5sKwT0Lo0Lytkx4anY5ScwzN/UvoJa7mz64KD1ZNyhPGfhIj6NZFPZd4KBepW/y8EN0K2L+3aVXPY//BwdTIpZyrsHj0wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G1DlZiTv; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so3296348a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773770090; x=1774374890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B9Xtnzk8DVE/O67gpaznOnmd6kpDI3WBU5cVEoFIiNY=;
        b=G1DlZiTvXnOaugtQtBnY1KRrCwqAsj83uXBPxvyKErrRmvD2tgjfujKuuOYJpTPnQt
         o9HK2ld2YNSeSKVrd7/a1lWX28DiCQPdFLGHBK6Yv2sbzVmpeXlPDvF0cmA520zW1tuK
         l5KUEJ9cJB5TGfEBgJfbpgmy2cPnStJFQe9KvXojEITJ6fe1tOfPhD2gtEOv0qMns7+M
         C13rl5bv18+szMyF7KA50XwH2q+4KDYP0iQEQxPp1P5Dtv7bxp/IWkKkNjv9GfzVPanB
         l0g82xykukjZKdFkWTKsD7Ct5/WYzVdJUETmpbMIDV+LyC77lkDuNIrCw4uPRD0ZgDR0
         X1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770090; x=1774374890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B9Xtnzk8DVE/O67gpaznOnmd6kpDI3WBU5cVEoFIiNY=;
        b=HDo6+fmVreAksZlpap9/hh3Fxf7de1MdbYt7YRevNFUytVNONbBhU8es+pObaKX42S
         3dpFJcEOtp3NGlKlodr1LQi9b6jYMY6nriF7fTj71m+05wkOWldqlvo/rsfB+lH/LUzB
         XU4KgboHCbSY6ZqaPW0fMhAF6kz+65Nw9FwGTc3S1P6bpy0FBzGGsGUSDMXY6PnSFiTe
         ikXLxzA2dvz0u7M18dtB48nSwDoxggpbf5G5QobO3GErh3T5sb2YgmaVfAg/l5+56rvg
         AUwKL1Xg/SaLshwvc20f7cjr2ODh8M6WQs26ya+Tockolgnmahzo3kq89hbGmbJlVxK7
         zjBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYZ4YaGlubkWCGG9Ui3z5u/1nnvLwEpa2JGnVOWdU3TagfKQ+Sd+5K0z8OKpzSLwdmO+di2hqcMpKy@vger.kernel.org
X-Gm-Message-State: AOJu0YxoFSe43gdox/4v420/YeDK71ZaQb6d8VifIZIFXP89SKCfZ06i
	IQYVLYVnHmuneo9VqZPU1sO91F1GYQAS2nCB72lEKvy9p2Nhba0svXLZ
X-Gm-Gg: ATEYQzx3yPSlgSz0DznruLyT9FSksTD/wmB5wfsCm40cbzNZaebgXM3IYhPzMMDiV7V
	gAFzDGpT79xyxvsyBA6mElUG5Kqu91HWXhQNugQQFMyX67L+3uRlDSIYpo474NGehHW2jVoOcPU
	2sCkf0kgXTZWESGrgbLBz5SDY8hSuF14f5Z/XEh0bcL/AsZUr98piMvKMWloaelDTWq0B5x7/sq
	NgBdy9MUketb4ZWnjGtm1+75bD862QPE6DMwZ3kIvQZOEYvXJeHt/JuAxCRgN+uLD3tPrxPvJNx
	wusa5P0vwxHpqqC8o8XTWW6fEZpWQXZrPuHz0g3hF7AC21/ZuUofKPsfavVO0Sbjcw7VLFFbdYt
	iMbo1GYvE97SPFfL9RUWZ0hmm4Jb65wgMUUerkbmt0j7d2Y06aWiD2aZu2IXrej1om6MDcuEqRP
	zHZpnsM+a/J7AvL5yWAvJivVDskgaGomyMqlFTUFebUYFl
X-Received: by 2002:a17:90a:1001:b0:35b:90e7:c453 with SMTP id 98e67ed59e1d1-35bb9e3b99fmr213317a91.6.1773770090083;
        Tue, 17 Mar 2026 10:54:50 -0700 (PDT)
Received: from localhost ([2401:4900:88f5:ac25:fbd0:e3bd:86f9:3d41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badb90b8esm3559843a91.11.2026.03.17.10.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:54:48 -0700 (PDT)
Date: Tue, 17 Mar 2026 23:24:45 +0530
From: Kalyani P <kalyanipatra2003@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com
Subject: Re: [PATCH] dt-bindings: display: convert via,vt8500-fb binding to
 YAML
Message-ID: <jjfjhxnwdom3ejtwxe66k3auuerqcza6rbnidjgav3ee4mhijw@ecvgg2446kct>
References: <20260317172955.250192-2-kalyanipatra2003@gmail.com>
 <f1423235-cbea-47c9-be4f-82b24fb2e590@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <f1423235-cbea-47c9-be4f-82b24fb2e590@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276803-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,nxp.com,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kalyanipatra2003@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7D97E2B0635
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 06:38:21PM +0100, Krzysztof Kozlowski wrote:
>Please carefully follow GSoC requirements. Really, really carefully.
>
>For example one of the required steps is to run checkpatch. You did not
>fulfill that requirement.
Understood. I'll re-run the checkpatch to confirm no errors and warnings are present.

>
>I have doubts you have hardware or manual, so this should be the driver
>or platform maintainer.
I'll update the maintainers field appropriately and send a revised version. 
Thank you for looking into it. 

Warm Regards, 
Kalyani Patra


