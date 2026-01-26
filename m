Return-Path: <devicetree+bounces-259542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNqqN3OCd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:04:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF889E5C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 660983026A81
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64A23358CE;
	Mon, 26 Jan 2026 15:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MF+6NGSH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746B238DF9
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439797; cv=none; b=XTwtiEy4k08YrzaVQVt43eGrubJc1H5cD/mDcamNjOnfsOhGItyu+0q8GcNpG6VGHs+zTi4H0NcdQT8dFTCFegax9LpQqF0IaTfE5whvbX9RVALqHbPAW+Cc5hc+tbcCeYPwvjY7LJVfs05U/AKPCp5TDZPA4mtd7GzZjs2RsyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439797; c=relaxed/simple;
	bh=El3mE8Nsj6TZMNH4YjgXkSNQcNjZsn2dIrPIMTmdC9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aW0q1s6qynfc+0s0+tdZGCedvay9wFYGyOYOHlIoyKF5DZ4q6qNgaMNTWl3T0aotWOyBh7qY1H5naijywLuGhNESTfGo1NEyBNluhaPfSFJnHVSHWSPFwqRV2JUHnTZ3nPVXdx7kY7AgrGO3XrmzmQWrmgiXwsPciUlcfjh2x+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MF+6NGSH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so67717075e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439795; x=1770044595; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=El3mE8Nsj6TZMNH4YjgXkSNQcNjZsn2dIrPIMTmdC9I=;
        b=MF+6NGSHKgeZe4a+wv0hiVEvlkkhgkFuVgcQSYzho0b7JVQhig+e77GSEG0IMpnxN/
         JwIfDIjFJ2K0001tkPpEk18JKljrxVKSUA+cWXXpG/DXgRi0D661eSWLTYjoZNvUvmxI
         oThl3GYgf2tYtuVdJWB3Vms59CHGt8qovDXQ3olM1UxtgZVx8IvSnoJB3LKh/Ixeh9ao
         EqBgUqn2AT1Yl6JlHSdEq3klRsjaJFBmDMIzgRaY3Zf6in4BGYsfmGs+iRxSXrtRzda4
         Mxk1NVvHMZTfFbKFkwp4Y9Wrqx83iE451TN25lVlqNnwrQl+dSIXw1Tu8YaKi/ZSIA8M
         qECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439795; x=1770044595;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=El3mE8Nsj6TZMNH4YjgXkSNQcNjZsn2dIrPIMTmdC9I=;
        b=njTvcDXd9na3GOhMnj5/HrwROK3XmI1rB+K4z749ckkY5SXGofbAzVjupnuhQCbnAL
         hYoRrC2+mPENo9lqnOdyfPLZjbp3AXDqx9SgTm5cVcfp5z2JO8FaruPF6m7VBthbF5mX
         AXb4pGYXNLuZg2kzDbxIXb+QZ4KJ3IKh8iKXYUKGrF5/MADlrMGOU1urwZqutRfAa3n0
         CJlXIcs0Rkr7qKSX9r9Hx9/o7mjiS0z/H26c90qWgIa+KpvL4+Ky67UZZYGCYTmftVON
         M5uDeluSovZADTr1ZbwDv8b59S0WHb3FVzVyAQsEvwbbEsWW/2wRRmj8a4zAd+EB/NRk
         lBNw==
X-Forwarded-Encrypted: i=1; AJvYcCXIHesHMaQSlrWxXSSLmf3Qk1h0DOHgboba/1BJKOwLrXv9Tk9NGzmekcZIS+QalRrz4ebiYnYu458D@vger.kernel.org
X-Gm-Message-State: AOJu0YzTyA78GRDSPQzOEbf1wiGw7R28Zw3zmjAp9gpoZ8GIiUGZrrMT
	pJGEHNyV1DBeykkCcOd2ktpdfVN8pIT5AZWtA3YOcMmR+47Augstd25J
X-Gm-Gg: AZuq6aImCwbTG6yYq4GTTbkySeUaAtBACr/T99mh3VZWYZappzRCyec3myKWZrPxjs3
	zGLdY3GN7vnTanrmcBO2VDGTHzkfsW8l3BHR5jjR+Bd2gi5aotMuOGw53wFXBp9AIWGrHsyHFxy
	TJYcUnxLm8DQoz/EGuoY+NEpYrk0aheFRSfdhCrTnxFsIyLm22VxFJhQEmwtSjzvxMc4KdLMDLH
	f5A2LiLhsTZBLxlLWK9iVGCmJqwUMfPbRQqDcxgj3P8G6M43iDnjrsOxqWptA8/AmwHuDkiweYc
	IEzEf3Bg5v0+R7O/aTq+JFa6jcjURURrzXimEH4Wz+K2Zj8J2Ui3CDpBmT6/0oF2uSvrEROLHcp
	rtZ8awFXh8o0tpBtTcVDzhhkJM6cJp0fw3qLFzJsNDXcrqDf63Q8jw/WRrwKQaY7gLFDNmlrSrs
	uApLbzLKwc35FHvoptA6FH8F537iiWH5DIhvW/0QQeaxU=
X-Received: by 2002:a05:600c:1382:b0:477:fcb:2256 with SMTP id 5b1f17b1804b1-4805cf66a5dmr73588065e9.17.1769439793920;
        Mon, 26 Jan 2026 07:03:13 -0800 (PST)
Received: from [10.25.211.45] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f745c5sm31743469f8f.32.2026.01.26.07.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 07:03:13 -0800 (PST)
Message-ID: <3e14a3a2-8686-42ce-8ea7-4a2380b2acdd@gmail.com>
Date: Mon, 26 Jan 2026 07:03:15 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl,mqs: make gpr optional for
 SM-based SoCs
To: Mark Brown <broonie@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Chancel Liu <chancel.liu@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20260120150329.1486-1-laurentiumihalcea111@gmail.com>
 <20260120150329.1486-2-laurentiumihalcea111@gmail.com>
 <aW+q4lrdYJEciNS/@lizhi-Precision-Tower-5810>
 <3d98306c-0e13-4bd9-9cfd-0a2ddcadef3e@sirena.org.uk>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <3d98306c-0e13-4bd9-9cfd-0a2ddcadef3e@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259542-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 3EAF889E5C
X-Rspamd-Action: no action


On 1/26/2026 6:16 AM, Mark Brown wrote:
> On Tue, Jan 20, 2026 at 11:18:42AM -0500, Frank Li wrote:
>> On Tue, Jan 20, 2026 at 07:03:28AM -0800, Laurentiu Mihalcea wrote:
>>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>>
>>> For SM-based SoCs (i.e. MX95, MX943), GPR configuration is performed by
>>> the SM coprocessor. Thus, the programming model needs no handle to the
>>> GPR node. Make it optional.
>> "programming model" look like software configuration.
>>
>> Thus, GPR is transparent to software and does not need to be described in the
>> device tree. Make it optional.
> I was expecting a new version of this with Frank's comments rolled in.

Hey Mark,

Sorry for taking ages with this. Got your message while preparing the patches. Just sent V2 a few mins. ago.

Thanks,

Laurentiu


