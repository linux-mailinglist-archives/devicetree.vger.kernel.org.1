Return-Path: <devicetree+bounces-258143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KM6GGehScWkKCQAAu9opvQ
	(envelope-from <devicetree+bounces-258143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:27:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5EF5ECAD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 792934E489D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F91426EBC;
	Wed, 21 Jan 2026 22:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aHF5QIx8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD0C40FDA9
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 22:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769034465; cv=none; b=Pe0uwZgMIwhWBFaDSnT7TV+83TVUvEDQ+YHTncYLGpM2ps/PMnwwfqrOtQw5OyLViYgeynMle6DKvNKzG2fEz/RRmh5Nejk4aArAqqKAo5wuXvOiXR6pFbFtJgQKK08ySxIteFbL5gHV9tik58xCviz6y39vl+N6oXCvFi/ukvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769034465; c=relaxed/simple;
	bh=dcc6XHJt7zhCvM2k/wZEktvho6S1vYD46R0gJ7cFcok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aFkI+BllfoMsLF8BrbVMyjMcWhzPKkkcIF1Trzl6rzYE6mi1Oh+w3muZjO9gUpxHkTwxHN6cPlPXI2SvEd/DxpQPMwsnk5ct2ls91dDjfAreXysrtS5uQZdRu4oYnwgkP5KtZaceYApxukTFjKkfE+Q6kgxLUciT42bm+aK5uA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aHF5QIx8; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b729f4c154so16773eec.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 14:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769034462; x=1769639262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4XYXlIMcgZLCM9s1q5+yMZLxyDYaGJIq0MWW9UYa1v8=;
        b=aHF5QIx8740RH0Qx+yvy8biuedJL1TzqTyjEjoNzzGN/Gh6jwYFAncYrF+SDrtb/Nb
         vhgnCvjwMQ8yLBnE7kxxBhJ1emhXBbzuE0T7WabX/hgTiGeMvGZOlj9QN8krjh4fTASa
         uV6S0nHCt/JTZfVKxnHkSPL8/oLk7NkuTFJx/SqgImVsUoHE7JsA/mTqEjBCXtu+1iGj
         AI5sGTbR5xmPhAkV3WjHHAkq2YyerpKUm2E3uUVeKoVgb3tS3r8cM5Bq2Py8DwPwEf6s
         opnlFRzTTQgT/G2mia9+mKuTQSsAp9k/h+Y4Kf8i3aFxwqhTGm0KeEsH0l5lf64thhSK
         XFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769034462; x=1769639262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4XYXlIMcgZLCM9s1q5+yMZLxyDYaGJIq0MWW9UYa1v8=;
        b=XiSmA9l4u0XmC295p+JQU/UgwloyQe0j4E6p+IqkDLeOalvKoTYLQFcno97w46hQOk
         csi6/DZpR/XDgXfzZMc7Rt6XKK5lv2jKf6KGaqgP/23Jgcx2Q4A2DkJxhJdo4CWNdXeQ
         unQLq6wJUEHM2h1CZ7zS/+lYzf6G/lt2I4IWxgAm9zscLtfvyeoeTvBa/gsSGQIbbROP
         k+SoL8gZyV1HaideNa0ZPFasjt4p8TAfPKBXT7pQ3p1OVsMB7MKmV2G5DPUTz34GNg9c
         YTJsu4NWwunVsE7rG1mFHdBBx77LEAjTmmSrWQJLsTxjeW+s19Xscd/Wa6KOs3/dOdSc
         I17Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHqWZrMB6761wqvAj1/fJ3WTWMhAByYG8Nz849VEQf6NZ0/Xps0Qm7xFYJviIH1ZBZ1DceOmAIZwqd@vger.kernel.org
X-Gm-Message-State: AOJu0YxpumlAsOIg52kziYwh63Z92F9c8TNLT23pfOBgSjPqknYDXUWZ
	j49TG1zeb4LCkYWhXMPqgeYfLmINu82un8cOaHocjJZYI7VcWzeNsSNs1fM3tA==
X-Gm-Gg: AZuq6aJ4xTin537ETCFh7tdRVl6+8tHHHE6U6yGnK3jsYtxqotLkloimpeH5hC8hwl+
	DTcC30J7Y2qZ8OjqYBHEIp19GMLGgqPhze8L9Szihqs6tXCRZCJVOQWqgXA/NZOv4AZox5WjBNb
	esYxWoWvp+F8lXCjvUVA7WQZSasR/02yPCXyyUn7iAQvYhtzc14ad488EsYkrK6uEpv0GlMdCpv
	zH5m7prRgPNF46QQBZo0A9X78W2mZBNJntB8pZMkl+fkFyeCdtEt/8aZiVuGNmkGzhpuX72wveP
	JLc+BbEp3gQltAvarlYW5dVWPbi6M6TCpiJ3dXqU+wv9QC37IMDIsC6Oh1CEGkP+rs08iaDqSwc
	3IRzMJAiNLTFzNsuufQ6wYCKToQlP2Pf3MyipTRo94EeOO6qA5dq2lt9VgCKteWOQcMvNhYWyb/
	tvQkFjrVA2UMkpZOskfJVNh3/Xb7nVDA3uqxa+F6Hnt2eQNslaNf8/
X-Received: by 2002:a05:7301:7bc4:b0:2b7:1a4a:d564 with SMTP id 5a478bee46e88-2b71a4b62c2mr1515970eec.42.1769034461980;
        Wed, 21 Jan 2026 14:27:41 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b70d7f729bsm6694050eec.16.2026.01.21.14.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 14:27:41 -0800 (PST)
Date: Wed, 21 Jan 2026 14:27:38 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: daniel_peng@pegatron.corp-partner.google.com
Cc: linux-input@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech
 FT8112
Message-ID: <cmq5ywzrlmzvlinquctnxnm67h6xmgpigcu3fler56nrg2fyl6@jzm6o5f3g5ki>
References: <20251117094041.300083-1-Daniel_Peng@pegatron.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117094041.300083-1-Daniel_Peng@pegatron.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-258143-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: CD5EF5ECAD
X-Rspamd-Action: no action

On Mon, Nov 17, 2025 at 05:40:40PM +0800, daniel_peng@pegatron.corp-partner.google.com wrote:
> From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
> 
> Create new binding file for the FocalTech FT8112 due to
> new touchscreen chip. Confirm its compatible, reg for the
> device via vendor, and set the interrupt and reset gpio
> to map for Skywalker platform.
> FocalTech FT8112 also uses vcc33/vccio power supply.
> 
> Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

Applied the lot, thank you.

-- 
Dmitry

