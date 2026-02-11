Return-Path: <devicetree+bounces-264569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIPCEODii2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:01:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D527F1209B5
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49E9630067BB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5EB52E62AC;
	Wed, 11 Feb 2026 02:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ngzu9S8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972D1272E63
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775261; cv=none; b=nyoBLETyU/9Um/NCUrtcaUAEt3VNafEMjQ2lilVNMnxTF4ScHlW7mGn9d1OAyuZWpi/aOdkCYlP7pTSPFEKeLW+7ihmwbeJuQixSsD8nDvnZO7EBFi/42mbziG54ji78rjsPB1zElX/VaCin0u4mDq4M6+kg8A15NuxXD3p6NeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775261; c=relaxed/simple;
	bh=A1SS4TKzzKgvQKNJqUbY09euLXdjy02UR4+Fo+uBiuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EM8wEpwGk/rM6tGdWCQL9pJypDPQDpdfLDGr2VkQ08rUf5zWkoa5ObsvCaLUUtdubN9rZDyeKQXXOpJoalatYwscTpyAfrTDGjXiAzKskxVRv1Fl6iBSST7XRxnI5RgcFtWSwXyDECwerIBF1WKCSmAqJ59pAjGfAd+VTa+dnUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ngzu9S8P; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7cfd2423793so988599a34.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775259; x=1771380059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gm/euDJIj38jkfPBdt87UcAMoKQj5lm4rAH2NrGeusg=;
        b=Ngzu9S8PJDrfgp54MnBD0XdTOrJ5RD2O5w++S6oSI4gULw59OeQFw1IO5vzfoqIMTb
         wJdOj2dXVcWBFwC6Vu+xjsKfEQ4Ip5+n+wc27opCQpmiRuHTbDGRUwT8dr4HI6szK4dI
         WzIMvEARGsiw86i5dPI5jp2F1bSiUTWuq6YclTvsU6qfiVOTpTTMKBkI/Ja0fH3BDFw4
         JZfapl2+wD8QYeqOMRHa6uCWbZEBp+mIztkVXZ2KSMa/bahRbm6z+LHDIXH+1sVu6UCy
         s0o9lhPygffrpB0/tgBRab40vN+/7nu968eZu+Vk0GN3btCzNgKChkpJgHMGl8Nv688A
         wkwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775259; x=1771380059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gm/euDJIj38jkfPBdt87UcAMoKQj5lm4rAH2NrGeusg=;
        b=mha/HFXclN99B8zYPOL0HFS+TyzokphSJj9yTOwYvkp5OADZwSQELMlhwuYMVRThMs
         YSXddrNBejG254SWHoEcjjVVC/blcK6CQA2tKTM5p9bf/IP42IfNWflcknAoP50yYES8
         oOOK0GlSMmQUfG8qlLEV1H2rdBU8pILE/CdLg1SpvRKUfYylc36/Pq0Ncd6LW2+rJ9HC
         eMIUSH9V+jLXdNCZz9v21YzTyc5FYlumsFso0mVUsjOY9e+x3fyCb2IU3xZDOmss4MOI
         ZTOnNR07LPDiHdIBi7S/eR3mQkTE2JdA7AKuKihYeotmMPbUmRTejN0lV9yLuKFh4i5E
         0iwg==
X-Forwarded-Encrypted: i=1; AJvYcCXLfYZFw8B5Eb+MAkwnt3n28al624cLqqZDZR/shPgVhthHW7ahscXs+bTYN0M9Kotk01U0NXqKmEVd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4SQgAwEaW4Cn+O/ZMJjWzDWkXNOICvtEDnwXBDcVXpb4np7Nw
	OZJJetFjv1oXwmrSgNcyGwgVQIZoYvHwShNcSk1+HK++NHVFKUZrlrvfu4bjRQ==
X-Gm-Gg: AZuq6aItanezm2BoRnMGhcW0Ovqx3Vy2HVlYICOkMhuKDC0NNEizEdWFkqGdBz1zVGy
	bQG73Nx0xY6tM/2fbBjJry7Hc/9KXd53ZGe4guFc9RGEUclXhnRatFGhpIJoDdDTlBm2s04FRGH
	QZc6HSGoWffbVgpulytPi5NIsupV6SlqTehoLA2vTrf4matN9RwWdl+qQF3B/ivMezAYtjS9XvB
	Db227qnAtUV21eD0MMNXBXS1v8Y/PRrQC9iNG+JKcY2F/6FUqvYuBpbNxm6M53DFtPGYr+7KPCe
	s89vS76bUF7TNg0i5XrVzIXwMMghseTA+KXAkgaNgsDlxC8rpmbsRn7030FJ9DC+zA7tYBt7hs4
	2EZUeJoYzp3fq7IU0xQbhwJ7UgXtl/5zNujCYgaCE1iI9G5hRmRgkWgyrZsM1caScvAGvk4iwWW
	NAJrhJwq7FqsLx7vh5LnN8GbXUZw==
X-Received: by 2002:a05:620a:1789:b0:8b2:eefb:c898 with SMTP id af79cd13be357-8caf2389cc5mr2130416885a.69.1770769291885;
        Tue, 10 Feb 2026 16:21:31 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc823a4sm1881586d6.8.2026.02.10.16.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 16:21:31 -0800 (PST)
Date: Tue, 10 Feb 2026 19:21:58 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v8 0/7] media: i2c: IMX355 for the Pixel 3a
Message-ID: <aYvLppaYsNDDD4DX@rdacayan>
References: <20260210020207.10246-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210020207.10246-1-mailingradian@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264569-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D527F1209B5
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 09:01:59PM -0500, Richard Acayan wrote:
> This adds support for the IMX355 in devicetree and adds support for the
> Pixel 3a front camera.
> 
> Changes since v7 (https://lore.kernel.org/r/20260117040657.27043-1-mailingradian@gmail.com):
> - restrict data-lanes to 4 (4/7)

Apparently the 4th patch has been blocked by Gmail.

