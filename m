Return-Path: <devicetree+bounces-276916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIDvKsMuummASgIAu9opvQ
	(envelope-from <devicetree+bounces-276916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:49:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B048E2B5CEF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5B7963008686
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 04:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437B41FF5E3;
	Wed, 18 Mar 2026 04:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEETt0hu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52C23B28D
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773809340; cv=none; b=p8mXLkvAlWc6kyUZLZGx79FZMHZlg1jFi9Le0XnwFJnEOG+YFs7ZUoIfrtBc6DYkoeYDQI2fgs7b1QvsDarnfNjKDI5+2XLT+GL0X9pWRX3LFnOBegS05mYS5kOIpXT9boAJssnrcoVRtkBqnrTlXYd9u20sGqhel5wXJi93IXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773809340; c=relaxed/simple;
	bh=17iPzKkUJzPn4E61UcR7m/teEZK5kJ3beqSFLOUuoD0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rru+Aj/1vId7Y0w7AFbTBW8X16Ey+Y3xlCwEOfA/a4U7ydCJTkKupJla03XGTaSVci/aggaX+tjV7jRWq4frJWo7xAG/Z2T1uGtBZLDRXz/d5TGPi/w8l+A2rqteq4RT1S5g4roIPxvbdrBKrofIQxmTnCbaRS4rEAD7JrmNmfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EEETt0hu; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso7747905eec.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 21:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773809338; x=1774414138; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ejLjWRAwoEU5o80iQ+QQ21HclzxMPuHPja9YvmCRZw=;
        b=EEETt0huR+WR1z3OUWA2WqupaidOBI/4vf+bNW4OsgxgIChImYMLJhVKUBg6JVLqVl
         CU/NB3qhdLFt5bqYfjSeg1kKfgkXhbauXbsF3QF1MGJycX0EPUBYlp7rfcAHgYjngcD+
         A6912ib5mRN5+zndexEix63FZrxpuflz0+W2xLdWNuOE5hGwXwRh+A+w/3Ml7E6LIRWG
         NDdeQ9rrfttyzhltN8mKi32LrVAYRydHj8l8CXFo2ymyVBAP04VYBw5qw1oY5xnoXmll
         nTMfg+aHEhtXz0VAhJXEIlaZClM0G2/f0GVjFgFHIYT8KgqsJDJNMNtyaQEA3j0QBFS7
         LWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773809338; x=1774414138;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/ejLjWRAwoEU5o80iQ+QQ21HclzxMPuHPja9YvmCRZw=;
        b=TKlE5moPjOnR86XqA2Ne/JPFwKyKsOsjknpkTPWbwENuNce7X4YAIDC315Kv1y7fB3
         rgt3TWw1gELJYqd1WEWfn7QJaDALzGDsGuP23y0hhhfzTIOu6OUdxGXP3k23xyMOsXiZ
         1awjIsrwco5RWPb7mYrPtop3+r1mZ8K19qUYL6GyeYyZbxiUZZxxts125O223mF/NtjD
         ffur7E+3/WKQPN4IowoPFm5fiTl32heIVq92o36EqdgO/zNAwlkoaegf9Wmc7ksuG8Y1
         M9nS3/772EsV5kPAIZVEj5ehVAGnqT8CTRjGQlrjCPwla/FjnB0ADjMNh7gkI0DpYECJ
         G6yA==
X-Forwarded-Encrypted: i=1; AJvYcCW6jMAZrJarhbqoktQ9Gpdj2HhtIkb+9jRc0e4C6D9ryAuqdYYIB+DC9L+oCNE0RtnX1d0DnM66kD2f@vger.kernel.org
X-Gm-Message-State: AOJu0Ywty+yvZKYIM8gpxoHKVZNO/U6PdtMpT6CUNmmO5Yn7HQPEW4s4
	S+yNOFjg/DHi1hYZX15b4enoIp4Bi+hHSckQdR8/6A74EB36uKswnuas
X-Gm-Gg: ATEYQzw7bfJbVfqmuOzgSuxK+ZVmN77gO/krpnQ6W+Fr5UVmFqkLOeskRd2Yz+kzs2f
	1uoRQpzonkVumxIxqH8LOtfXkHjkENv+k7GcoaCeOPbtUfyWlFyXgamAyd9Zg3Gvg0KBXeSjBsH
	v4e1bkbl6PgM3MeMrFJC6YGquxhz2Nl8kFqEVWIMk2VNx9S8PWxPN6+qbaDrOsaHm1s2+Grf4J6
	sSxD7AHZLj6U/Zn208BAZztbcASq5gO1lhEyIZkX7TH4zE++/LNEJl0v1vYgDXqp/uLFr/xs3ET
	A63xyMHlGya8vAaAPcpjqwcWllkalQaXtRY8/zOtsBMKUI/x7VBu9wPxIGEkwdC/ftd1JTaXxBq
	42j/Pmi1VxDNs8jojtTUq+q+J/mL63JF2gGSgHGTyZLilcvThhgmMJpIoW0ovtk2CiSu+U9EKWe
	NtXKutn8J6QL4HtZuRvYLZjk99vLewy2CyDvfR
X-Received: by 2002:a05:7300:320b:b0:2be:171c:5048 with SMTP id 5a478bee46e88-2c0e5074af8mr957700eec.5.1773809337736;
        Tue, 17 Mar 2026 21:48:57 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e560fb5fsm2902735eec.31.2026.03.17.21.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 21:48:57 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 17 Mar 2026 21:48:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dawei Liu <dawei.liu.jy@renesas.com>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
	skhan@linuxfoundation.org, geert+renesas@glider.be,
	magnus.damm@gmail.com, grant.peltier.jg@renesas.com,
	linda.xin.jg@renesas.com, tabreztalks@gmail.com
Subject: Re: [PATCH v2 1/3] hwmon: (pmbus/isl68137) Remove unused enum chips
Message-ID: <2f1347a9-4284-463e-8ca4-abaced830468@roeck-us.net>
References: <20260316053541.3903-1-dawei.liu.jy@renesas.com>
 <20260318021921.75-1-dawei.liu.jy@renesas.com>
 <20260318021921.75-2-dawei.liu.jy@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318021921.75-2-dawei.liu.jy@renesas.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276916-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lwn.net,linuxfoundation.org,glider.be,gmail.com,renesas.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B048E2B5CEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 10:19:19AM +0800, Dawei Liu wrote:
> The enum chips is not used anywhere in the driver. Device matching
> relies on the variants enum instead. Remove it to clean up the code.
> 
> Signed-off-by: Dawei Liu <dawei.liu.jy@renesas.com>

Applied.

Thanks,
Guenter

