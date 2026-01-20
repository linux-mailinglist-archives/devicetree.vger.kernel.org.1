Return-Path: <devicetree+bounces-257606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aChQJMn2b2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:42:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 274AC4C6B6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 504015CE3EE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F11542884E;
	Tue, 20 Jan 2026 19:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ilTP+W8u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEC53EFD02
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938997; cv=none; b=QP7lq3IQlLGEWPWVv2dIkTM8730Ce6A5a3udtIu9wIKfG7SwoTnWMgeTAjD0iAyW8DyD2c5ELbcXZ0B0AesW4MXlS6k/1jFJLg3O5XXa4RLbEz93+WbNzctMR22NYF4+7nZ6iz0I6L36PZRgRPfAPzEQE0gSZuFPHoQ9hSXVynw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938997; c=relaxed/simple;
	bh=dpRYr3skIgV0rzJn+6D/Wwyl8T3WJJeqflIDq7vz970=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mq4/EU35qbKOMtLRIiIY8X/p7sW1XYCSsM/wt4WCpnbx0cUMnMhTsVpQgY+JjZQNzHT6tXQLWj1ggcI2SVZqTTKVtCQgIV63G9ImBBGF0UsH1suN74TxpeRObR5dS/DMuutJ10N/XTRVs+Yfk3u7wCw1hIgZwCvKmxkPiZd1eCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ilTP+W8u; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-12332910300so9199758c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768938993; x=1769543793; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lPDgUMFRl+w+AbB4KcmndfGR0As68bgylKNbbH3AGMk=;
        b=ilTP+W8u0C7h7XBeoah7AsJ9JL095ZDFwxa6je9YceSe5kL434AEa3e23rZIbJCd2e
         jnO4xLKmsw5RyE29tSBo1CYXW/XhUGjPEV8BMF3noJo9ZL8fHVkWA5vnGSaSQLiOet2G
         u33Z96XEok44vp/L8jcalhxIbLF2VdgdGVnEmHJyBf+WvA6eY40iDArMrDCHTCvuYbGV
         R2IRMW4ie8d0lDUcYo3zWHSLjXKq85+4R/INtdkQm9SrWFC2O2lwXCSL+pV6WY7K/Y4J
         v/prpxeGXBy2mhWGLzQMm/WfVUt37+/etLvLAhGEDEyKKhHhl6i31LdTJJSmRTJrCn8K
         b7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768938993; x=1769543793;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lPDgUMFRl+w+AbB4KcmndfGR0As68bgylKNbbH3AGMk=;
        b=lsSQ3merGtwpSeZYZwu5GoRKRoSi2eeibf240FwLNyBFDLPUKjHRxdP3D6LLXpFtxm
         TW5e5o92wV5TeCivF9tAgWVxaI7flZuylBPvAVwMtRLXbuxTitYEp35xJWR4eMqLnfmz
         J3vF+72+MWjl+NeuGjrDtfMndKzv9HOYJnmIAfyrrXLPdr+QguELI6DeSsdyqq1riH5p
         dEQYmVbBwv7VbIy2/B919SEsV3jrtAW06Fv41KMxmqsoflZyrGb2/dR/aFbVhJjRWWgM
         woTrXsDuwhPTRwrQX+9tRsNk1NhCt2P3TY1SED++CwW9RNIlsBHAUJ0b95gPJePfgqgH
         G3MA==
X-Forwarded-Encrypted: i=1; AJvYcCVpoFVG8IO/lZWqQP0GCmnYP6Mo7LXbxd2e00eMxXpplpD4QCNEK1A3qL266U37fuvzTMZnb9Zuf9t/@vger.kernel.org
X-Gm-Message-State: AOJu0YwoCmEngolyZvo5fO/rPkiQ0B2S3B6y9hXKv509b4JbNbp6iVvr
	+hG54yI2Arrb31EWWidhT109CduWvOX9MkHqzzjegMfP8wjOsuAJ9uHB
X-Gm-Gg: AY/fxX5NkRj3PIOrFSZeGXCqnHzeQ2SHyYfbzb7hCRc16A6K+5N1mffnR/yePKopn1P
	h9XyLu0t6sHk72y4uXSgy9cf4AjWHwnGw7PpdfvC3ZmwjOci4CKT40l/cCojRbMVWUQDf7Rlt/9
	iZIY4Ik2C+5R24A4M7N1SixQA6oA8PlROrl3b2f4mir4SvawQKpx7RhwWaSST47FfPpaG214ZiW
	zjOcQGVAn6xlSNYiLj43aVXvqHuBcFZen/Uokz5iSbfhzEs4uU/kgTvd2jNqKsQupqdDCuM3E6I
	scbMt5FEwllx2Whi24RO7EKTkGtWavAOM8ohKMunfSFjymQxzWm9Mv8CoQ0vdOxYyzp8oB4ClWg
	fSGaY0N47zJ4chah3bDvt1/BHus3MGhN0BZPjhgs8vhx9VaxEqDtw1agB8/F9bpZ9RH+yP100se
	XGGfAEBmVwFT8RSxtKvcbIw4wLqqvE8hSPwFvrD01agn1DlsXxmrbK
X-Received: by 2002:a05:7022:608b:b0:11e:3e9:3e8a with SMTP id a92af1059eb24-1244a7910d8mr14869120c88.49.1768938993269;
        Tue, 20 Jan 2026 11:56:33 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d631:e554:f0bd:4106])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ad740c5sm23388705c88.8.2026.01.20.11.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:56:32 -0800 (PST)
Date: Tue, 20 Jan 2026 11:56:29 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, sre@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	lgirdwood@gmail.com, broonie@kernel.org, jserv@ccns.ncku.edu.tw, eleanor15x@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-pm@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v4 3/6] dt-bindings: input:
 google,goldfish-events-keypad: Convert to DT schema
Message-ID: <nab4yksjgk7jbofm5fkrafuz5c3dmi2oocdzgoscfj6ua7zwfh@olnrxt7sa3qp>
References: <20260113092602.3197681-1-visitorckw@gmail.com>
 <20260113092602.3197681-4-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113092602.3197681-4-visitorckw@gmail.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257606-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,linuxfoundation.org,ccns.ncku.edu.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 274AC4C6B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 13, 2026 at 09:25:59AM +0000, Kuan-Wei Chiu wrote:
> Convert the Android Goldfish Events Keypad binding to DT schema format.
> Move the file to the input directory to match the subsystem.
> Update the example node name to 'keypad' to comply with generic node
> naming standards.
> 
> Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>

Applied, thank you.

-- 
Dmitry

