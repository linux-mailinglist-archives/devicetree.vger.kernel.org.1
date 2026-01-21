Return-Path: <devicetree+bounces-257754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPPECHB7cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:08:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A38F1529A8
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E31A6500C65
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC5244BC95;
	Wed, 21 Jan 2026 07:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fmm91OLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB52443DA25
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979245; cv=none; b=LozTUndLbv+SxfKKuKaSuwZLj9BUGXgUG3jjkwHB8WAy8HdBq4H3VNlDGaCC297aVunlzFesinTbDEuOz2vQ+kVA+y8J3lqKIQn/WHd5L4IFqRtoY6xOfjElaEobB8gi+TtDJXs4dHnnWJ7LYN2JYZIQbva8vBAsB0VLons7iVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979245; c=relaxed/simple;
	bh=3vZWeqb1PFQC1eAlnP8mrvwsQV20ikgQpMxSZkinDXU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qTEwAlM3I/qet51/RZSp+CA2pGyvtTTcKiiEGQzYzpneVY3aDkUjAKYL6dSrTi/rQzKGXU+W+gkpPKTTrTmIEaDLNxbrQa52PKWzgwLHG+ibPGfgOGA4OK3g7J5Pl9xRNbua5LjZr6dcborPCGviCSL4h9M53c9T1SuoaAxcCHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fmm91OLL; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c5513f598c0so2409803a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768979240; x=1769584040; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EKCBa6LC63ySO6wxtyOEHj7+hfHaWtIUCg/hVqZDPyQ=;
        b=Fmm91OLLBUQtgi7PoVtjkJCzIHrr89hHI6aai530le0QiIew/Z1zbwDEUWuWrQiyWq
         jGcma/paQZNmXoUUkyNBY7YfYPX+55fMD+c7F4yJ4qxhWtz1a8QueXJ4OzxJOeD8GTgE
         H5kPk1AAOjHs1UxaAwjWRDgw2lzQRVkh2I9eWZOoEKBgNaiXCF8tavMCBGAT3DywwtUT
         CvaNRejNW0BFPLkSnURTPQ4gd4jq4P2Qej/QsoCveAeUtwlYz5ch3n1Gy5V2rY6lH6RY
         3tXQTR+dujKdDBwGUDOluNIQCFY5N1isJTIr0R05hN2IZwE10tmpJg+k1ywLTchlaoOQ
         p0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768979240; x=1769584040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EKCBa6LC63ySO6wxtyOEHj7+hfHaWtIUCg/hVqZDPyQ=;
        b=DeN74t/krAwf2gkf6qcq7+2SpKvcMB2F5g+2bR8Qaq+niY5rJgiwNXVdCaF7lVGdnF
         LtN9mMQWx35Fr5OsUM1YgI2sB54ZXm6Qs3CCPezcTTqVI853MsGIQydslEV0qGbVq1gJ
         /T6jRKQwTnlaSRQjiDtsMAgCPw0LvQaeYAAtAKlOFD3zG0/+xky6egZslIcZF3B9+QqM
         PbsHvGmm2+rhTZQukbgzkA1mqq9cbUhl8D6c1CIQw7t5vSys2sh1TGCbqDFCBKmXpeay
         PObjtQTULFInk2ba92ipNtw7gvw25J2R+K9BdSk2wV1z6RkF8Zm8wiAEfJvbza3dny0S
         Wsmg==
X-Forwarded-Encrypted: i=1; AJvYcCXjhKXL3Yy/Trq3UF7qoLj7mpJkpVRoYVe4S3mW9OTGgyTfVH9ujI1VUigHjSJ/m6gu3fvQSuUghnzJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw033i9tmcMDwFKtMbkadlO/RUrmg90vMaPZe6/m/WffNaoE421
	kDsfDxf+MiGH/iAwIuBowctVB1k9RKRvolE4G4PIsCCrzdDCNk1ZGd/1csqv56Xqs00=
X-Gm-Gg: AZuq6aIPAPVi9fsCRNwflBc7sbDy04TEqcTXWLf3X/qUo/5qaJIMFk4A5PdSX8EiTMI
	0x2rn7XVB+rKc/N3VgVkY7pXfctscDTvgy6U4eY9Sqt/ZyzIGraM5RcIlViR+mrnSPfOWZpRfHA
	ZDIFfRX9SiGAJR2cTtSEegkDIo7ocRL0FBbwtPYuEvOQynLtrqeO+AAxxe2ZnGaBpWz5swys5Yx
	gddNxxaZlRxmf+Ui4Hl14qMmdDlug3oIceKdo1mcTjRxzJ4zxMUgrO/nnYUtxKxvj1WFRQHXHjr
	qt9USSxEUNX8TTrrpzwM/jMBkEz4jgYZxcccZAwVD7dzmisST9VG7RFZ9L9MJySFE+a6sfLKuV/
	o4QjWL1iTD/undskMCK1HN1m2sZrxKFXb3AF3YyQsucr9pLrqeMa0dA0cgf/Li3tx0PmvjmYK9K
	8+xdbbaqnd2Cw=
X-Received: by 2002:a17:903:1110:b0:271:479d:3dcb with SMTP id d9443c01a7336-2a717518996mr160044275ad.6.1768979240300;
        Tue, 20 Jan 2026 23:07:20 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9f0dsm143860365ad.31.2026.01.20.23.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 23:07:19 -0800 (PST)
Date: Wed, 21 Jan 2026 12:37:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dhruva Gole <d-gole@ti.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kendall Willis <k-willis@ti.com>, Sebin Francis <sebin.francis@ti.com>, Bryan Brattlof <bb@ti.com>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] cpufreq: ti: Add support for AM62L3 SoC
Message-ID: <jix4pxfxdxyald22fpobt2hmobox27z6fgroo4pevvt645kj44@s5lxh2ifo4q2>
References: <20260120-am62l-cpufreq-v3-0-8c69b80168a3@ti.com>
 <yjpk2duxzham3ky7bvsu3majkjlypkvnc23dsxenfx4ykejpcp@uuohmp63qhwk>
 <20260121063840.tngolbewageekveb@lcpd911>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121063840.tngolbewageekveb@lcpd911>
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257754-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,linaro.org:dkim,ti.com:email]
X-Rspamd-Queue-Id: A38F1529A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 21-01-26, 12:08, Dhruva Gole wrote:
> On Jan 21, 2026 at 11:58:23 +0530, Viresh Kumar wrote:
> > On 20-01-26, 17:17, Dhruva Gole wrote:
> > > Hello,
> > > 
> > > This series adds CPU frequency scaling support for the TI AM62L3 SoC.
> > > 
> > > The AM62L3 is a low-power, low-cost SoC from Texas Instruments. This
> > > series enables cpufreq support by:
> > > 1. Adding the SoC to the cpufreq-dt-platdev blocklist to prevent the generic driver from probing.
> > > 2. Extending the ti-cpufreq driver to support AM62L3 speed grading by reading the efuse.
> > > 3. Updating the device tree with the necessary operating points and clock configurations.
> > > 
> > > Tested on AM62L3 EVM [1]
> > > 
> > > [1] https://gist.github.com/DhruvaG2000/6dcceb80cf7bbd1e624ec210532538cb
> > > 
> > > Signed-off-by: Dhruva Gole <d-gole@ti.com>
> > 
> > I should be applying only patch 1 and 3 ?

Ahh, I meant 1 and 2.

> >From what I spoke with Nishanth yesterday, the DT patch (3/3) will have to go via
> his tree as it's ti-k3.
> 
> The first 2 patches are the cpufreq subsystem ones, once you apply those
> and they are integrated Nishanth can pick up the DT patch.

Applied. Thanks.

-- 
viresh

